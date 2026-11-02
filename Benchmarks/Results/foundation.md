
## Comparing results between 'foundation' and 'jbird'

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
|                foundation                |      2604 |      2785 |      2845 |      2882 |      2914 |      2990 |      3046 |       352 |
|                  jbird                   |      1333 |      1454 |      1465 |      1483 |      1508 |      1938 |      2143 |       675 |
|                    Δ                     |     -1271 |     -1331 |     -1380 |     -1399 |     -1406 |     -1052 |      -903 |       323 |
|              Improvement %               |        49 |        48 |        49 |        49 |        48 |        35 |        30 |       323 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2611 |      2789 |      2847 |      2886 |      2916 |      2972 |      3048 |       352 |
|                  jbird                   |      1334 |      1456 |      1468 |      1485 |      1509 |      1940 |      2145 |       675 |
|                    Δ                     |     -1277 |     -1333 |     -1379 |     -1401 |     -1407 |     -1032 |      -903 |       323 |
|              Improvement %               |        49 |        48 |        48 |        49 |        48 |        35 |        30 |       323 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       384 |       359 |       352 |       347 |       343 |       335 |       328 |       352 |
|                  jbird                   |       750 |       688 |       682 |       675 |       663 |       516 |       467 |       675 |
|                    Δ                     |       366 |       329 |       330 |       328 |       320 |       181 |       139 |       323 |
|              Improvement %               |        95 |        92 |        94 |        95 |        93 |        54 |        42 |       323 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       183 |       337 |       491 |       582 |       634 |       641 |       352 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       675 |
|                    Δ                     |         2 |      -147 |      -301 |      -455 |      -546 |      -598 |      -605 |       323 |
|              Improvement %               |        -6 |        80 |        89 |        93 |        94 |        94 |        94 |       323 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |   1398064 |   1398783 |   1398783 |   1398783 |   1398783 |   1398783 |   1402160 |       352 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       675 |
|                    Δ                     |  -1398064 |  -1398783 |  -1398783 |  -1398783 |  -1398783 |  -1398783 |  -1402160 |       323 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       323 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     14798 |     14799 |     14799 |     14799 |     14799 |     14799 |     14799 |       352 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       675 |
|                    Δ                     |    -14798 |    -14799 |    -14799 |    -14799 |    -14799 |    -14799 |    -14799 |       323 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       323 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       352 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       675 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       323 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       323 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1471 |      1471 |      1471 |      1471 |      1471 |      1471 |      1475 |       352 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       675 |
|                    Δ                     |      3761 |      3761 |      3761 |      3761 |      3761 |      3761 |      3757 |       323 |
|              Improvement %               |      -256 |      -256 |      -256 |      -256 |      -256 |      -256 |      -255 |       323 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        66 |        66 |       352 |
|                  jbird                   |        31 |        31 |        31 |        31 |        31 |        32 |        33 |       675 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       -33 |       323 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        50 |       323 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         9 |         9 |         9 |         9 |         9 |         9 |         9 |       352 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       675 |
|                    Δ                     |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |       323 |
|              Improvement %               |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |       323 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2702 |      2871 |      2902 |      2961 |      2998 |      3074 |      3205 |       343 |
|                  jbird                   |      1361 |      1508 |      1520 |      1532 |      1550 |      1589 |      1661 |       656 |
|                    Δ                     |     -1341 |     -1363 |     -1382 |     -1429 |     -1448 |     -1485 |     -1544 |       313 |
|              Improvement %               |        50 |        47 |        48 |        48 |        48 |        48 |        48 |       313 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2704 |      2873 |      2904 |      2963 |      3002 |      3076 |      3207 |       343 |
|                  jbird                   |      1363 |      1510 |      1521 |      1535 |      1554 |      1594 |      1663 |       656 |
|                    Δ                     |     -1341 |     -1363 |     -1383 |     -1428 |     -1448 |     -1482 |     -1544 |       313 |
|              Improvement %               |        50 |        47 |        48 |        48 |        48 |        48 |        48 |       313 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       370 |       348 |       345 |       338 |       334 |       325 |       312 |       343 |
|                  jbird                   |       735 |       663 |       658 |       653 |       645 |       629 |       602 |       656 |
|                    Δ                     |       365 |       315 |       313 |       315 |       311 |       304 |       290 |       313 |
|              Improvement %               |        99 |        91 |        91 |        93 |        93 |        94 |        93 |       313 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       180 |       332 |       477 |       566 |       618 |       626 |       343 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       656 |
|                    Δ                     |         2 |      -144 |      -296 |      -441 |      -530 |      -582 |      -590 |       313 |
|              Improvement %               |        -6 |        80 |        89 |        92 |        94 |        94 |        94 |       313 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |   1398064 |   1398783 |   1398783 |   1398783 |   1398783 |   1398783 |   1402160 |       343 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       656 |
|                    Δ                     |  -1398064 |  -1398783 |  -1398783 |  -1398783 |  -1398783 |  -1398783 |  -1402160 |       313 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       313 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     14798 |     14799 |     14799 |     14799 |     14799 |     14799 |     14799 |       343 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       656 |
|                    Δ                     |    -14798 |    -14799 |    -14799 |    -14799 |    -14799 |    -14799 |    -14799 |       313 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       313 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       343 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       656 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       313 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       313 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1471 |      1471 |      1471 |      1471 |      1471 |      1471 |      1475 |       343 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       656 |
|                    Δ                     |      3761 |      3761 |      3761 |      3761 |      3761 |      3761 |      3757 |       313 |
|              Improvement %               |      -256 |      -256 |      -256 |      -256 |      -256 |      -256 |      -255 |       313 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        66 |        66 |        66 |        66 |        66 |        67 |        67 |       343 |
|                  jbird                   |        32 |        32 |        32 |        32 |        33 |        33 |        34 |       656 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -33 |       -34 |       -33 |       313 |
|              Improvement %               |        52 |        52 |        52 |        52 |        50 |        51 |        49 |       313 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         9 |         9 |         9 |         9 |         9 |         9 |         9 |       343 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       656 |
|                    Δ                     |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |       313 |
|              Improvement %               |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |       313 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       627 |       698 |       709 |       718 |       728 |       753 |       808 |      1403 |
|                  jbird                   |       331 |       364 |       367 |       372 |       377 |       398 |       447 |      2688 |
|                    Δ                     |      -296 |      -334 |      -342 |      -346 |      -351 |      -355 |      -361 |      1285 |
|              Improvement %               |        47 |        48 |        48 |        48 |        48 |        47 |        45 |      1285 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       628 |       700 |       711 |       720 |       731 |       755 |       809 |      1403 |
|                  jbird                   |       333 |       365 |       369 |       373 |       379 |       400 |       451 |      2688 |
|                    Δ                     |      -295 |      -335 |      -342 |      -347 |      -352 |      -355 |      -358 |      1285 |
|              Improvement %               |        47 |        48 |        48 |        48 |        48 |        47 |        44 |      1285 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1596 |      1433 |      1411 |      1392 |      1374 |      1329 |      1238 |      1403 |
|                  jbird                   |      3018 |      2751 |      2725 |      2693 |      2653 |      2513 |      2235 |      2688 |
|                    Δ                     |      1422 |      1318 |      1314 |      1301 |      1279 |      1184 |       997 |      1285 |
|              Improvement %               |        89 |        92 |        93 |        93 |        93 |        89 |        81 |      1285 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       180 |       334 |       492 |       582 |       642 |       649 |      1403 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2688 |
|                    Δ                     |         0 |      -148 |      -302 |      -460 |      -550 |      -610 |      -617 |      1285 |
|              Improvement %               |         0 |        82 |        90 |        93 |        95 |        95 |        95 |      1285 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |    354736 |    354815 |    354815 |    354815 |    354815 |    354815 |    358832 |      1403 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2688 |
|                    Δ                     |   -354736 |   -354815 |   -354815 |   -354815 |   -354815 |   -354815 |   -358832 |      1285 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1285 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3747 |      1403 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2688 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |      1285 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1285 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1403 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2688 |
|                    Δ                     |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1112 |      1285 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      1285 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       379 |       379 |       379 |       379 |       379 |       383 |      1403 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2688 |
|                    Δ                     |       995 |       995 |       995 |       995 |       995 |       995 |       991 |      1285 |
|              Improvement %               |      -263 |      -263 |      -263 |      -263 |      -263 |      -263 |      -259 |      1285 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     16185 |     16228 |     16237 |     16253 |     16278 |     16671 |     17001 |      1403 |
|                  jbird                   |      7841 |      7844 |      7848 |      7848 |      7860 |      7909 |      8285 |      2688 |
|                    Δ                     |     -8344 |     -8384 |     -8389 |     -8405 |     -8418 |     -8762 |     -8716 |      1285 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        51 |      1285 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      1403 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2688 |
|                    Δ                     |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      1285 |
|              Improvement %               |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |      1285 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       647 |       712 |       720 |       729 |       738 |       778 |       825 |      1378 |
|                  jbird                   |       345 |       376 |       381 |       386 |       391 |       410 |       500 |      2597 |
|                    Δ                     |      -302 |      -336 |      -339 |      -343 |      -347 |      -368 |      -325 |      1219 |
|              Improvement %               |        47 |        47 |        47 |        47 |        47 |        47 |        39 |      1219 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       648 |       714 |       722 |       731 |       741 |       778 |       828 |      1378 |
|                  jbird                   |       347 |       378 |       383 |       388 |       393 |       413 |       487 |      2597 |
|                    Δ                     |      -301 |      -336 |      -339 |      -343 |      -348 |      -365 |      -341 |      1219 |
|              Improvement %               |        46 |        47 |        47 |        47 |        47 |        47 |        41 |      1219 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1546 |      1405 |      1389 |      1373 |      1355 |      1285 |      1212 |      1378 |
|                  jbird                   |      2898 |      2659 |      2623 |      2593 |      2557 |      2439 |      2001 |      2597 |
|                    Δ                     |      1352 |      1254 |      1234 |      1220 |      1202 |      1154 |       789 |      1219 |
|              Improvement %               |        87 |        89 |        89 |        89 |        89 |        90 |        65 |      1219 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       178 |       335 |       484 |       575 |       628 |       635 |      1378 |
|                  jbird                   |        31 |        32 |        32 |        33 |        33 |        33 |        33 |      2597 |
|                    Δ                     |         0 |      -146 |      -303 |      -451 |      -542 |      -595 |      -602 |      1219 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |      1219 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |    354736 |    354815 |    354815 |    354815 |    354815 |    354815 |    358832 |      1378 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2597 |
|                    Δ                     |   -354736 |   -354815 |   -354815 |   -354815 |   -354815 |   -354815 |   -358832 |      1219 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1219 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3747 |      1378 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2597 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |      1219 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1219 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1378 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2597 |
|                    Δ                     |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1112 |      1219 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      1219 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       379 |       379 |       379 |       379 |       379 |       383 |      1378 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2597 |
|                    Δ                     |       995 |       995 |       995 |       995 |       995 |       995 |       991 |      1219 |
|              Improvement %               |      -263 |      -263 |      -263 |      -263 |      -263 |      -263 |      -259 |      1219 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     16441 |     16482 |     16490 |     16507 |     16531 |     16859 |     17256 |      1378 |
|                  jbird                   |      8118 |      8122 |      8122 |      8122 |      8139 |      8192 |      8563 |      2597 |
|                    Δ                     |     -8323 |     -8360 |     -8368 |     -8385 |     -8392 |     -8667 |     -8693 |      1219 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        50 |      1219 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      1378 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2597 |
|                    Δ                     |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      1219 |
|              Improvement %               |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |      1219 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1293 |      1383 |      1395 |      1406 |      1421 |      1464 |      1474 |       714 |
|                  jbird                   |       653 |       717 |       723 |       730 |       742 |       769 |       825 |      1374 |
|                    Δ                     |      -640 |      -666 |      -672 |      -676 |      -679 |      -695 |      -649 |       660 |
|              Improvement %               |        49 |        48 |        48 |        48 |        48 |        47 |        44 |       660 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1296 |      1385 |      1397 |      1408 |      1424 |      1466 |      1482 |       714 |
|                  jbird                   |       655 |       719 |       726 |       732 |       743 |       770 |       827 |      1374 |
|                    Δ                     |      -641 |      -666 |      -671 |      -676 |      -681 |      -696 |      -655 |       660 |
|              Improvement %               |        49 |        48 |        48 |        48 |        48 |        47 |        44 |       660 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       773 |       723 |       717 |       711 |       704 |       683 |       679 |       714 |
|                  jbird                   |      1531 |      1395 |      1382 |      1370 |      1349 |      1302 |      1213 |      1374 |
|                    Δ                     |       758 |       672 |       665 |       659 |       645 |       619 |       534 |       660 |
|              Improvement %               |        98 |        93 |        93 |        93 |        92 |        91 |        79 |       660 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       183 |       341 |       493 |       593 |       646 |       654 |       714 |
|                  jbird                   |        32 |        33 |        33 |        34 |        34 |        34 |        34 |      1374 |
|                    Δ                     |         1 |      -150 |      -308 |      -459 |      -559 |      -612 |      -620 |       660 |
|              Improvement %               |        -3 |        82 |        90 |        93 |        94 |        95 |        95 |       660 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |    702512 |    702975 |    702975 |    702975 |    702975 |    702975 |    706608 |       714 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1374 |
|                    Δ                     |   -702512 |   -702975 |   -702975 |   -702975 |   -702975 |   -702975 |   -706608 |       660 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       660 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7431 |       714 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1374 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |       660 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       660 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       714 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1374 |
|                    Δ                     |     -2162 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |       660 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       660 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       743 |       743 |       743 |       743 |       743 |       747 |       714 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1374 |
|                    Δ                     |      2005 |      2005 |      2005 |      2005 |      2005 |      2005 |      2001 |       660 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -270 |      -270 |      -268 |       660 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        33 |        33 |       714 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1374 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -17 |       -16 |       660 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        52 |        48 |       660 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |       714 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1374 |
|                    Δ                     |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |       660 |
|              Improvement %               |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |       660 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1302 |      1432 |      1444 |      1456 |      1476 |      1573 |      1599 |       689 |
|                  jbird                   |       676 |       750 |       758 |       766 |       776 |       806 |       832 |      1312 |
|                    Δ                     |      -626 |      -682 |      -686 |      -690 |      -700 |      -767 |      -767 |       623 |
|              Improvement %               |        48 |        48 |        48 |        47 |        47 |        49 |        48 |       623 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1303 |      1434 |      1446 |      1458 |      1479 |      1575 |      1601 |       689 |
|                  jbird                   |       677 |       751 |       759 |       769 |       778 |       809 |       840 |      1312 |
|                    Δ                     |      -626 |      -683 |      -687 |      -689 |      -701 |      -766 |      -761 |       623 |
|              Improvement %               |        48 |        48 |        48 |        47 |        47 |        49 |        48 |       623 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       768 |       699 |       693 |       687 |       678 |       636 |       625 |       689 |
|                  jbird                   |      1480 |      1335 |      1320 |      1305 |      1289 |      1240 |      1202 |      1312 |
|                    Δ                     |       712 |       636 |       627 |       618 |       611 |       604 |       577 |       623 |
|              Improvement %               |        93 |        91 |        90 |        90 |        90 |        95 |        92 |       623 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       181 |       332 |       477 |       568 |       628 |       628 |       689 |
|                  jbird                   |        32 |        33 |        33 |        34 |        34 |        34 |        34 |      1312 |
|                    Δ                     |         1 |      -148 |      -299 |      -443 |      -534 |      -594 |      -594 |       623 |
|              Improvement %               |        -3 |        82 |        90 |        93 |        94 |        95 |        95 |       623 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |    702512 |    702975 |    702975 |    702975 |    702975 |    702975 |    706608 |       689 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1312 |
|                    Δ                     |   -702512 |   -702975 |   -702975 |   -702975 |   -702975 |   -702975 |   -706608 |       623 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       623 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7431 |       689 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1312 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |       623 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       623 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       689 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1312 |
|                    Δ                     |     -2162 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |       623 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       623 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       743 |       743 |       743 |       743 |       743 |       747 |       689 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1312 |
|                    Δ                     |      2005 |      2005 |      2005 |      2005 |      2005 |      2005 |      2001 |       623 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -270 |      -270 |      -268 |       623 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       689 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1312 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -18 |       -17 |       623 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        50 |       623 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |       689 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1312 |
|                    Δ                     |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |       623 |
|              Improvement %               |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |       623 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     13399 |     13844 |     13902 |     14025 |     14107 |     14168 |     14168 |        72 |
|                  jbird                   |      6908 |      7168 |      7266 |      7365 |      7414 |      7578 |      7596 |       138 |
|                    Δ                     |     -6491 |     -6676 |     -6636 |     -6660 |     -6693 |     -6590 |     -6572 |        66 |
|              Improvement %               |        48 |        48 |        48 |        47 |        47 |        47 |        46 |        66 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     13397 |     13853 |     13910 |     14033 |     14115 |     14177 |     14177 |        72 |
|                  jbird                   |      6901 |      7172 |      7266 |      7369 |      7422 |      7586 |      7606 |       138 |
|                    Δ                     |     -6496 |     -6681 |     -6644 |     -6664 |     -6693 |     -6591 |     -6571 |        66 |
|              Improvement %               |        48 |        48 |        48 |        47 |        47 |        46 |        46 |        66 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        72 |        72 |        71 |        71 |        71 |        71 |        72 |
|                  jbird                   |       145 |       140 |       138 |       136 |       135 |       132 |       132 |       138 |
|                    Δ                     |        70 |        68 |        66 |        65 |        64 |        61 |        61 |        66 |
|              Improvement %               |        93 |        94 |        92 |        92 |        90 |        86 |        86 |        66 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        48 |       193 |       345 |       500 |       602 |       656 |       656 |        72 |
|                  jbird                   |        56 |        59 |        59 |        59 |        59 |        59 |        59 |       138 |
|                    Δ                     |         8 |      -134 |      -286 |      -441 |      -543 |      -597 |      -597 |        66 |
|              Improvement %               |       -17 |        69 |        83 |        88 |        90 |        91 |        91 |        66 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |   6962480 |   6962608 |   6962608 |   6962608 |   6962608 |   6962608 |   6962608 |        72 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |  -6962480 |  -6962608 |  -6962608 |  -6962608 |  -6962608 |  -6962608 |  -6962608 |        66 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        66 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     73742 |     73743 |     73743 |     73743 |     73743 |     73743 |     73743 |        72 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |    -73742 |    -73743 |    -73743 |    -73743 |    -73743 |    -73743 |    -73743 |        66 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        66 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        72 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       138 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        66 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        66 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7232 |      7233 |      7233 |      7233 |      7233 |      7233 |      7233 |        72 |
|                  jbird                   |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |       138 |
|                    Δ                     |     18137 |     18136 |     18136 |     18136 |     18136 |     18136 |     18136 |        66 |
|              Improvement %               |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |        66 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       323 |       323 |       323 |       323 |       323 |       325 |       325 |        72 |
|                  jbird                   |       157 |       157 |       157 |       157 |       157 |       158 |       159 |       138 |
|                    Δ                     |      -166 |      -166 |      -166 |      -166 |      -166 |      -167 |      -166 |        66 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        66 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        72 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       138 |
|                    Δ                     |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |        66 |
|              Improvement %               |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |        66 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     14019 |     14369 |     14434 |     14541 |     14639 |     14834 |     14834 |        70 |
|                  jbird                   |      7061 |      7516 |      7574 |      7627 |      7696 |      8143 |      8284 |       132 |
|                    Δ                     |     -6958 |     -6853 |     -6860 |     -6914 |     -6943 |     -6691 |     -6550 |        62 |
|              Improvement %               |        50 |        48 |        48 |        48 |        47 |        45 |        44 |        62 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     14016 |     14377 |     14442 |     14549 |     14647 |     14840 |     14840 |        70 |
|                  jbird                   |      7062 |      7520 |      7578 |      7635 |      7700 |      8151 |      8291 |       132 |
|                    Δ                     |     -6954 |     -6857 |     -6864 |     -6914 |     -6947 |     -6689 |     -6549 |        62 |
|              Improvement %               |        50 |        48 |        48 |        48 |        47 |        45 |        44 |        62 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        71 |        70 |        69 |        69 |        68 |        67 |        67 |        70 |
|                  jbird                   |       142 |       133 |       132 |       131 |       130 |       123 |       121 |       132 |
|                    Δ                     |        71 |        63 |        63 |        62 |        62 |        56 |        54 |        62 |
|              Improvement %               |       100 |        90 |        91 |        90 |        91 |        84 |        81 |        62 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        47 |       192 |       336 |       496 |       584 |       641 |       641 |        70 |
|                  jbird                   |        56 |        59 |        59 |        59 |        59 |        59 |        59 |       132 |
|                    Δ                     |         9 |      -133 |      -277 |      -437 |      -525 |      -582 |      -582 |        62 |
|              Improvement %               |       -19 |        69 |        82 |        88 |        90 |        91 |        91 |        62 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |   6962480 |   6962608 |   6962608 |   6962608 |   6962608 |   6962608 |   6962608 |        70 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       132 |
|                    Δ                     |  -6962480 |  -6962608 |  -6962608 |  -6962608 |  -6962608 |  -6962608 |  -6962608 |        62 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        62 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     73742 |     73743 |     73743 |     73743 |     73743 |     73743 |     73743 |        70 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       132 |
|                    Δ                     |    -73742 |    -73743 |    -73743 |    -73743 |    -73743 |    -73743 |    -73743 |        62 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        62 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        70 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       132 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        62 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        62 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7232 |      7233 |      7233 |      7233 |      7233 |      7233 |      7233 |        70 |
|                  jbird                   |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |       132 |
|                    Δ                     |     18137 |     18136 |     18136 |     18136 |     18136 |     18136 |     18136 |        62 |
|              Improvement %               |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |        62 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       328 |       328 |       328 |       328 |       329 |       332 |       332 |        70 |
|                  jbird                   |       162 |       162 |       163 |       163 |       163 |       164 |       164 |       132 |
|                    Δ                     |      -166 |      -166 |      -165 |      -165 |      -166 |      -168 |      -168 |        62 |
|              Improvement %               |        51 |        51 |        50 |        50 |        50 |        51 |        51 |        62 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        70 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       132 |
|                    Δ                     |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |        62 |
|              Improvement %               |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |        62 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       156 |       174 |       178 |       182 |       185 |       201 |       255 |      5498 |
|                  jbird                   |        83 |        91 |        94 |        95 |        96 |       108 |       138 |     10341 |
|                    Δ                     |       -73 |       -83 |       -84 |       -87 |       -89 |       -93 |      -117 |      4843 |
|              Improvement %               |        47 |        48 |        47 |        48 |        48 |        46 |        46 |      4843 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       157 |       176 |       180 |       183 |       187 |       203 |       265 |      5498 |
|                  jbird                   |        85 |        93 |        96 |        96 |        98 |       110 |       141 |     10341 |
|                    Δ                     |       -72 |       -83 |       -84 |       -87 |       -89 |       -93 |      -124 |      4843 |
|              Improvement %               |        46 |        47 |        47 |        48 |        48 |        46 |        47 |      4843 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6424 |      5735 |      5615 |      5507 |      5399 |      4979 |      3927 |      5498 |
|                  jbird                   |     12000 |     10983 |     10647 |     10551 |     10423 |      9311 |      7220 |     10341 |
|                    Δ                     |      5576 |      5248 |      5032 |      5044 |      5024 |      4332 |      3293 |      4843 |
|              Improvement %               |        87 |        92 |        90 |        92 |        93 |        87 |        84 |      4843 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       188 |       347 |       508 |       603 |       659 |       667 |      5498 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10341 |
|                    Δ                     |         0 |      -157 |      -316 |      -477 |      -572 |      -628 |      -636 |      4843 |
|              Improvement %               |         0 |        84 |        91 |        94 |        95 |        95 |        95 |      4843 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     93744 |     93759 |     93759 |     93759 |     93759 |     93759 |     97840 |      5498 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10341 |
|                    Δ                     |    -93744 |    -93759 |    -93759 |    -93759 |    -93759 |    -93759 |    -97840 |      4843 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4843 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       981 |       981 |       981 |       981 |       981 |       981 |       982 |      5498 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10341 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -982 |      4843 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4843 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      5498 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10341 |
|                    Δ                     |      -318 |      -318 |      -318 |      -318 |      -318 |      -318 |      -319 |      4843 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      4843 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       106 |       106 |       106 |       106 |       106 |       106 |       110 |      5498 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10341 |
|                    Δ                     |       238 |       238 |       238 |       238 |       238 |       238 |       234 |      4843 |
|              Improvement %               |      -225 |      -225 |      -225 |      -225 |      -225 |      -225 |      -213 |      4843 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4075 |      4104 |      4114 |      4127 |      4135 |      4219 |      4332 |      5498 |
|                  jbird                   |      1962 |      1963 |      1964 |      1964 |      1967 |      1986 |      2081 |     10341 |
|                    Δ                     |     -2113 |     -2141 |     -2150 |     -2163 |     -2168 |     -2233 |     -2251 |      4843 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        52 |      4843 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      5498 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10341 |
|                    Δ                     |       663 |       663 |       663 |       663 |       663 |       663 |       663 |      4843 |
|              Improvement %               |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |      4843 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       162 |       181 |       185 |       188 |       193 |       209 |       231 |      5297 |
|                  jbird                   |        86 |        95 |        97 |        97 |        99 |       110 |       134 |     10040 |
|                    Δ                     |       -76 |       -86 |       -88 |       -91 |       -94 |       -99 |       -97 |      4743 |
|              Improvement %               |        47 |        48 |        48 |        48 |        49 |        47 |        42 |      4743 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       164 |       183 |       186 |       190 |       195 |       211 |       234 |      5297 |
|                  jbird                   |        88 |        96 |        98 |        99 |       101 |       112 |       137 |     10040 |
|                    Δ                     |       -76 |       -87 |       -88 |       -91 |       -94 |       -99 |       -97 |      4743 |
|              Improvement %               |        46 |        48 |        47 |        48 |        48 |        47 |        41 |      4743 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6154 |      5519 |      5415 |      5319 |      5195 |      4787 |      4336 |      5297 |
|                  jbird                   |     11617 |     10583 |     10351 |     10271 |     10119 |      9079 |      7447 |     10040 |
|                    Δ                     |      5463 |      5064 |      4936 |      4952 |      4924 |      4292 |      3111 |      4743 |
|              Improvement %               |        89 |        92 |        91 |        93 |        95 |        90 |        72 |      4743 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       183 |       339 |       491 |       585 |       640 |       647 |      5297 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10040 |
|                    Δ                     |         0 |      -152 |      -308 |      -460 |      -554 |      -609 |      -616 |      4743 |
|              Improvement %               |         0 |        83 |        91 |        94 |        95 |        95 |        95 |      4743 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     93744 |     93759 |     93759 |     93759 |     93759 |     93759 |     97840 |      5297 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10040 |
|                    Δ                     |    -93744 |    -93759 |    -93759 |    -93759 |    -93759 |    -93759 |    -97840 |      4743 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4743 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       981 |       981 |       981 |       981 |       981 |       981 |       982 |      5297 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10040 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -982 |      4743 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4743 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      5297 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10040 |
|                    Δ                     |      -318 |      -318 |      -318 |      -318 |      -318 |      -318 |      -319 |      4743 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      4743 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       106 |       106 |       106 |       106 |       106 |       106 |       110 |      5297 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10040 |
|                    Δ                     |       238 |       238 |       238 |       238 |       238 |       238 |       234 |      4743 |
|              Improvement %               |      -225 |      -225 |      -225 |      -225 |      -225 |      -225 |      -213 |      4743 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4136 |      4168 |      4178 |      4190 |      4198 |      4289 |      4376 |      5297 |
|                  jbird                   |      2031 |      2032 |      2033 |      2034 |      2037 |      2052 |      2180 |     10040 |
|                    Δ                     |     -2105 |     -2136 |     -2145 |     -2156 |     -2161 |     -2237 |     -2196 |      4743 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        52 |        50 |      4743 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      5297 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10040 |
|                    Δ                     |       663 |       663 |       663 |       663 |       663 |       663 |       663 |      4743 |
|              Improvement %               |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |      4743 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       289 |       321 |       324 |       327 |       333 |       356 |       390 |      3041 |
|                  jbird                   |       102 |       114 |       114 |       118 |       120 |       131 |       181 |      8377 |
|                    Δ                     |      -187 |      -207 |      -210 |      -209 |      -213 |      -225 |      -209 |      5336 |
|              Improvement %               |        65 |        64 |        65 |        64 |        64 |        63 |        54 |      5336 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       291 |       323 |       325 |       329 |       336 |       357 |       391 |      3041 |
|                  jbird                   |       103 |       116 |       116 |       119 |       122 |       133 |       184 |      8377 |
|                    Δ                     |      -188 |      -207 |      -209 |      -210 |      -214 |      -224 |      -207 |      5336 |
|              Improvement %               |        65 |        64 |        64 |        64 |        64 |        63 |        53 |      5336 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3459 |      3115 |      3093 |      3057 |      3003 |      2813 |      2567 |      3041 |
|                  jbird                   |      9824 |      8783 |      8759 |      8511 |      8335 |      7627 |      5530 |      8377 |
|                    Δ                     |      6365 |      5668 |      5666 |      5454 |      5332 |      4814 |      2963 |      5336 |
|              Improvement %               |       184 |       182 |       183 |       178 |       178 |       171 |       115 |      5336 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |        91 |       154 |       216 |       254 |       276 |       279 |      3041 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |      8377 |
|                    Δ                     |         0 |       -59 |      -122 |      -184 |      -222 |      -244 |      -247 |      5336 |
|              Improvement %               |         0 |        65 |        79 |        85 |        87 |        88 |        89 |      5336 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     80032 |     80063 |     80063 |     80063 |     80063 |     80063 |     84128 |      3041 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8377 |
|                    Δ                     |    -80032 |    -80063 |    -80063 |    -80063 |    -80063 |    -80063 |    -84128 |      5336 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5336 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         2 |         2 |         2 |         2 |         2 |         2 |         3 |      3041 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8377 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -3 |      5336 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5336 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        14 |      3041 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8377 |
|                    Δ                     |        15 |        15 |        15 |        15 |        15 |        15 |        14 |      5336 |
|              Improvement %               |      -115 |      -115 |      -115 |      -115 |      -115 |      -115 |      -100 |      5336 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       350 |       350 |       350 |       350 |       350 |       350 |       354 |      3041 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      8377 |
|                    Δ                     |       808 |       808 |       808 |       808 |       808 |       808 |       804 |      5336 |
|              Improvement %               |      -231 |      -231 |      -231 |      -231 |      -231 |      -231 |      -227 |      5336 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8605 |      8634 |      8634 |      8634 |      8643 |      8675 |      8970 |      3041 |
|                  jbird                   |      3329 |      3330 |      3330 |      3330 |      3332 |      3346 |      3765 |      8377 |
|                    Δ                     |     -5276 |     -5304 |     -5304 |     -5304 |     -5311 |     -5329 |     -5205 |      5336 |
|              Improvement %               |        61 |        61 |        61 |        61 |        61 |        61 |        58 |      5336 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |      3041 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8377 |
|                    Δ                     |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      5336 |
|              Improvement %               |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      5336 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     12474 |     12919 |     13025 |     13099 |     13214 |     13426 |     13426 |        77 |
|                  jbird                   |      5615 |      5911 |      5980 |      6050 |      6119 |      6238 |      6281 |       167 |
|                    Δ                     |     -6859 |     -7008 |     -7045 |     -7049 |     -7095 |     -7188 |     -7145 |        90 |
|              Improvement %               |        55 |        54 |        54 |        54 |        54 |        54 |        53 |        90 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     12473 |     12927 |     13033 |     13107 |     13222 |     13433 |     13433 |        77 |
|                  jbird                   |      5617 |      5915 |      5980 |      6058 |      6128 |      6238 |      6287 |       167 |
|                    Δ                     |     -6856 |     -7012 |     -7053 |     -7049 |     -7094 |     -7195 |     -7146 |        90 |
|              Improvement %               |        55 |        54 |        54 |        54 |        54 |        54 |        53 |        90 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        77 |        77 |        76 |        76 |        74 |        74 |        77 |
|                  jbird                   |       178 |       169 |       167 |       165 |       163 |       160 |       159 |       167 |
|                    Δ                     |        98 |        92 |        90 |        89 |        87 |        86 |        85 |        90 |
|              Improvement %               |       122 |       119 |       117 |       117 |       114 |       116 |       115 |        90 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        47 |       208 |       369 |       530 |       636 |       693 |       693 |        77 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       167 |
|                    Δ                     |         1 |      -156 |      -317 |      -478 |      -584 |      -641 |      -641 |        90 |
|              Improvement %               |        -2 |        75 |        86 |        90 |        92 |        92 |        92 |        90 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |   5790800 |   5790928 |   5790928 |   5790928 |   5790928 |   5790928 |   5790928 |        77 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       167 |
|                    Δ                     |  -5790800 |  -5790928 |  -5790928 |  -5790928 |  -5790928 |  -5790928 |  -5790928 |        90 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        90 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |    167131 |    167132 |    167132 |    167132 |    167132 |    167132 |    167132 |        77 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       167 |
|                    Δ                     |   -167131 |   -167132 |   -167132 |   -167132 |   -167132 |   -167132 |   -167132 |        90 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        90 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        77 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       167 |
|                    Δ                     |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |        90 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |        90 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6894 |      6894 |      6894 |      6894 |      6894 |      6894 |      6894 |        77 |
|                  jbird                   |     19440 |     19440 |     19440 |     19440 |     19440 |     19440 |     19440 |       167 |
|                    Δ                     |     12546 |     12546 |     12546 |     12546 |     12546 |     12546 |     12546 |        90 |
|              Improvement %               |      -182 |      -182 |      -182 |      -182 |      -182 |      -182 |      -182 |        90 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       317 |       317 |       317 |       317 |       317 |       321 |       321 |        77 |
|                  jbird                   |       158 |       158 |       158 |       158 |       158 |       159 |       160 |       167 |
|                    Δ                     |      -159 |      -159 |      -159 |      -159 |      -159 |      -162 |      -161 |        90 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        90 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       264 |       264 |       264 |       264 |       264 |       264 |       264 |        77 |
|                  jbird                   |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |       167 |
|                    Δ                     |     55828 |     55828 |     55828 |     55828 |     55828 |     55828 |     55828 |        90 |
|              Improvement %               |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |        90 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        76 |        78 |        84 |        86 |        96 |       112 |     11998 |
|                  jbird                   |        29 |        32 |        33 |        33 |        33 |        40 |        61 |     27786 |
|                    Δ                     |       -46 |       -44 |       -45 |       -51 |       -53 |       -56 |       -51 |     15788 |
|              Improvement %               |        61 |        58 |        58 |        61 |        62 |        58 |        46 |     15788 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        78 |        79 |        86 |        88 |        98 |       119 |     11998 |
|                  jbird                   |        30 |        34 |        34 |        35 |        35 |        42 |        56 |     27786 |
|                    Δ                     |       -47 |       -44 |       -45 |       -51 |       -53 |       -56 |       -63 |     15788 |
|              Improvement %               |        61 |        56 |        57 |        59 |        60 |        57 |        53 |     15788 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        12 |        10 |         9 |     11998 |
|                  jbird                   |        35 |        31 |        31 |        30 |        30 |        25 |        16 |     27786 |
|                    Δ                     |        22 |        18 |        18 |        18 |        18 |        15 |         7 |     15788 |
|              Improvement %               |       169 |       138 |       138 |       150 |       150 |       150 |        78 |     15788 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |        52 |        74 |        97 |       109 |       118 |       119 |     11998 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     27786 |
|                    Δ                     |         0 |       -21 |       -43 |       -66 |       -78 |       -87 |       -88 |     15788 |
|              Improvement %               |         0 |        40 |        58 |        68 |        72 |        74 |        74 |     15788 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4864 |      4867 |      4867 |      4867 |      4867 |      4867 |      8960 |     11998 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     27786 |
|                    Δ                     |     -4864 |     -4867 |     -4867 |     -4867 |     -4867 |     -4867 |     -8960 |     15788 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     15788 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       152 |       152 |       152 |       152 |       152 |       152 |       153 |     11998 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     27786 |
|                    Δ                     |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -153 |     15788 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     15788 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |     11998 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     27786 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |        -1 |     15788 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         1 |     15788 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        17 |     11998 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     27786 |
|                    Δ                     |        78 |        78 |        78 |        78 |        78 |        78 |        74 |     15788 |
|              Improvement %               |      -600 |      -600 |      -600 |      -600 |      -600 |      -600 |      -435 |     15788 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1140 |      1141 |      1142 |      1148 |      1149 |      1162 |      1255 |     11998 |
|                  jbird                   |       739 |       739 |       739 |       739 |       739 |       757 |       804 |     27786 |
|                    Δ                     |      -401 |      -402 |      -403 |      -409 |      -410 |      -405 |      -451 |     15788 |
|              Improvement %               |        35 |        35 |        35 |        36 |        36 |        35 |        36 |     15788 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     11998 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     27786 |
|                    Δ                     |       152 |       152 |       152 |       152 |       152 |       152 |       152 |     15788 |
|              Improvement %               |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     15788 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       237 |       267 |       271 |       274 |       279 |       298 |       340 |      3638 |
|                  jbird                   |        87 |        97 |        97 |        99 |       100 |       111 |       153 |      9878 |
|                    Δ                     |      -150 |      -170 |      -174 |      -175 |      -179 |      -187 |      -187 |      6240 |
|              Improvement %               |        63 |        64 |        64 |        64 |        64 |        63 |        55 |      6240 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       238 |       269 |       273 |       276 |       281 |       300 |       332 |      3638 |
|                  jbird                   |        88 |        99 |        99 |       100 |       102 |       113 |       156 |      9878 |
|                    Δ                     |      -150 |      -170 |      -174 |      -176 |      -179 |      -187 |      -176 |      6240 |
|              Improvement %               |        63 |        63 |        64 |        64 |        64 |        62 |        53 |      6240 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4228 |      3749 |      3693 |      3645 |      3585 |      3353 |      2938 |      3638 |
|                  jbird                   |     11539 |     10311 |     10279 |     10159 |     10007 |      9015 |      6545 |      9878 |
|                    Δ                     |      7311 |      6562 |      6586 |      6514 |      6422 |      5662 |      3607 |      6240 |
|              Improvement %               |       173 |       175 |       178 |       179 |       179 |       169 |       123 |      6240 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       109 |       189 |       266 |       318 |       344 |       348 |      3638 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9878 |
|                    Δ                     |         0 |       -78 |      -158 |      -235 |      -287 |      -313 |      -317 |      6240 |
|              Improvement %               |         0 |        72 |        84 |        88 |        90 |        91 |        91 |      6240 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     71232 |     71295 |     71295 |     71295 |     71295 |     71295 |     75328 |      3638 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9878 |
|                    Δ                     |    -71232 |    -71295 |    -71295 |    -71295 |    -71295 |    -71295 |    -75328 |      6240 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      6240 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       802 |       802 |       802 |       802 |       802 |       802 |       803 |      3638 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9878 |
|                    Δ                     |      -802 |      -802 |      -802 |      -802 |      -802 |      -802 |      -803 |      6240 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      6240 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3638 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9878 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      6240 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      6240 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       210 |       210 |       210 |       210 |       210 |       210 |       214 |      3638 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9878 |
|                    Δ                     |       451 |       451 |       451 |       451 |       451 |       451 |       447 |      6240 |
|              Improvement %               |      -215 |      -215 |      -215 |      -215 |      -215 |      -215 |      -209 |      6240 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7036 |      7049 |      7049 |      7057 |      7066 |      7094 |      7369 |      3638 |
|                  jbird                   |      2575 |      2576 |      2576 |      2576 |      2578 |      2589 |      2817 |      9878 |
|                    Δ                     |     -4461 |     -4473 |     -4473 |     -4481 |     -4488 |     -4505 |     -4552 |      6240 |
|              Improvement %               |        63 |        63 |        63 |        63 |        64 |        64 |        62 |      6240 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      3638 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9878 |
|                    Δ                     |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      6240 |
|              Improvement %               |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |      6240 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       368 |       408 |       410 |       414 |       421 |       442 |       499 |      2407 |
|                  jbird                   |        58 |        65 |        66 |        67 |        70 |        78 |       209 |     14338 |
|                    Δ                     |      -310 |      -343 |      -344 |      -347 |      -351 |      -364 |      -290 |     11931 |
|              Improvement %               |        84 |        84 |        84 |        84 |        83 |        82 |        58 |     11931 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       369 |       409 |       412 |       416 |       423 |       444 |       492 |      2407 |
|                  jbird                   |        60 |        67 |        68 |        69 |        71 |        80 |       197 |     14338 |
|                    Δ                     |      -309 |      -342 |      -344 |      -347 |      -352 |      -364 |      -295 |     11931 |
|              Improvement %               |        84 |        84 |        83 |        83 |        83 |        82 |        60 |     11931 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2719 |      2455 |      2439 |      2415 |      2379 |      2263 |      2003 |      2407 |
|                  jbird                   |     17217 |     15399 |     15191 |     14927 |     14399 |     12807 |      4781 |     14338 |
|                    Δ                     |     14498 |     12944 |     12752 |     12512 |     12020 |     10544 |      2778 |     11931 |
|              Improvement %               |       533 |       527 |       523 |       518 |       505 |       466 |       139 |     11931 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       106 |       184 |       260 |       306 |       332 |       336 |      2407 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     14338 |
|                    Δ                     |         0 |       -75 |      -153 |      -229 |      -275 |      -301 |      -305 |     11931 |
|              Improvement %               |         0 |        71 |        83 |        88 |        90 |        91 |        91 |     11931 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     88992 |     89023 |     89023 |     89023 |     89023 |     89023 |     93088 |      2407 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14338 |
|                    Δ                     |    -88992 |    -89023 |    -89023 |    -89023 |    -89023 |    -89023 |    -93088 |     11931 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11931 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2088 |      2089 |      2089 |      2089 |      2089 |      2089 |      2089 |      2407 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14338 |
|                    Δ                     |     -2088 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     11931 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11931 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2677 |      2677 |      2677 |      2677 |      2677 |      2677 |      2678 |      2407 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     14338 |
|                    Δ                     |     -2667 |     -2667 |     -2667 |     -2667 |     -2667 |     -2667 |     -2668 |     11931 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     11931 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       190 |       190 |       190 |       190 |       190 |       190 |       194 |      2407 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     14338 |
|                    Δ                     |       139 |       139 |       139 |       139 |       139 |       139 |       135 |     11931 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -70 |     11931 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8705 |      8716 |      8724 |      8733 |      8741 |      8921 |      9200 |      2407 |
|                  jbird                   |      1588 |      1588 |      1588 |      1589 |      1589 |      1595 |      1750 |     14338 |
|                    Δ                     |     -7117 |     -7128 |     -7136 |     -7144 |     -7152 |     -7326 |     -7450 |     11931 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        82 |        81 |     11931 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       589 |       589 |       589 |       589 |       589 |       589 |       589 |      2407 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     14338 |
|                    Δ                     |      -579 |      -579 |      -579 |      -579 |      -579 |      -579 |      -579 |     11931 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |     11931 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        70 |        77 |        80 |        82 |        84 |        93 |       121 |     12020 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        13 |        40 |     72754 |
|                    Δ                     |       -61 |       -67 |       -70 |       -72 |       -74 |       -80 |       -81 |     60734 |
|              Improvement %               |        87 |        87 |        88 |        88 |        88 |        86 |        67 |     60734 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        71 |        79 |        82 |        84 |        86 |        95 |       113 |     12020 |
|                  jbird                   |        10 |        12 |        12 |        12 |        12 |        15 |        38 |     72754 |
|                    Δ                     |       -61 |       -67 |       -70 |       -72 |       -74 |       -80 |       -75 |     60734 |
|              Improvement %               |        86 |        85 |        85 |        86 |        86 |        84 |        66 |     60734 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        13 |        13 |        12 |        12 |        11 |         8 |     12020 |
|                  jbird                   |       112 |        98 |        98 |        97 |        96 |        77 |        25 |     72754 |
|                    Δ                     |        98 |        85 |        85 |        85 |        84 |        66 |        17 |     60734 |
|              Improvement %               |       700 |       654 |       654 |       708 |       700 |       600 |       212 |     60734 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       217 |       412 |       610 |       727 |       795 |       805 |     12020 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     72754 |
|                    Δ                     |         0 |      -186 |      -381 |      -579 |      -696 |      -764 |      -774 |     60734 |
|              Improvement %               |         0 |        86 |        92 |        95 |        96 |        96 |        96 |     60734 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |     57648 |     57663 |     57663 |     57663 |     57663 |     57663 |     61744 |     12020 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     72754 |
|                    Δ                     |    -57648 |    -57663 |    -57663 |    -57663 |    -57663 |    -57663 |    -61744 |     60734 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     60734 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        80 |        80 |        80 |        80 |        80 |        81 |     12020 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     72754 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -81 |     60734 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     60734 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |     12020 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     72754 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |     60734 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |     60734 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        67 |        68 |        68 |        68 |        68 |        68 |        72 |     12020 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     72754 |
|                    Δ                     |        59 |        58 |        58 |        58 |        58 |        58 |        54 |     60734 |
|              Improvement %               |       -88 |       -85 |       -85 |       -85 |       -85 |       -85 |       -75 |     60734 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1863 |      1872 |      1879 |      1887 |      1894 |      1906 |      1985 |     12020 |
|                  jbird                   |       231 |       231 |       231 |       231 |       232 |       236 |       319 |     72754 |
|                    Δ                     |     -1632 |     -1641 |     -1648 |     -1656 |     -1662 |     -1670 |     -1666 |     60734 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        84 |     60734 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     12020 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     72754 |
|                    Δ                     |        73 |        73 |        73 |        73 |        73 |        73 |        73 |     60734 |
|              Improvement %               |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     60734 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1948 |      2107 |      2122 |      2136 |      2159 |      2202 |      2211 |       471 |
|                  jbird                   |      1045 |      1125 |      1137 |      1148 |      1162 |      1204 |      1293 |       876 |
|                    Δ                     |      -903 |      -982 |      -985 |      -988 |      -997 |      -998 |      -918 |       405 |
|              Improvement %               |        46 |        47 |        46 |        46 |        46 |        45 |        42 |       405 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1952 |      2109 |      2124 |      2138 |      2163 |      2202 |      2214 |       471 |
|                  jbird                   |      1047 |      1127 |      1139 |      1150 |      1164 |      1204 |      1295 |       876 |
|                    Δ                     |      -905 |      -982 |      -985 |      -988 |      -999 |      -998 |      -919 |       405 |
|              Improvement %               |        46 |        47 |        46 |        46 |        46 |        45 |        42 |       405 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       513 |       475 |       472 |       468 |       463 |       454 |       452 |       471 |
|                  jbird                   |       957 |       889 |       880 |       872 |       861 |       831 |       773 |       876 |
|                    Δ                     |       444 |       414 |       408 |       404 |       398 |       377 |       321 |       405 |
|              Improvement %               |        87 |        87 |        86 |        86 |        86 |        83 |        71 |       405 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       127 |       224 |       325 |       383 |       417 |       421 |       471 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       876 |
|                    Δ                     |         2 |       -92 |      -189 |      -290 |      -348 |      -382 |      -386 |       405 |
|              Improvement %               |        -6 |        72 |        84 |        89 |        91 |        92 |        92 |       405 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |    669235 |    669695 |    669695 |    669695 |    669695 |    669695 |    673331 |       471 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       876 |
|                    Δ                     |   -669235 |   -669695 |   -669695 |   -669695 |   -669695 |   -669695 |   -673331 |       405 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       405 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6133 |      6134 |      6134 |      6134 |      6134 |      6134 |      6134 |       471 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       876 |
|                    Δ                     |     -6133 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |       405 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       405 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6636 |      6637 |      6637 |      6637 |      6637 |      6637 |      6637 |       471 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       876 |
|                    Δ                     |     -2585 |     -2586 |     -2586 |     -2586 |     -2586 |     -2586 |     -2586 |       405 |
|              Improvement %               |        39 |        39 |        39 |        39 |        39 |        39 |        39 |       405 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       882 |       882 |       882 |       882 |       882 |       882 |       886 |       471 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       876 |
|                    Δ                     |      3029 |      3029 |      3029 |      3029 |      3029 |      3029 |      3025 |       405 |
|              Improvement %               |      -343 |      -343 |      -343 |      -343 |      -343 |      -343 |      -341 |       405 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        44 |        44 |        44 |        44 |        44 |        45 |        45 |       471 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       876 |
|                    Δ                     |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       405 |
|              Improvement %               |        45 |        45 |        45 |        45 |        45 |        44 |        44 |       405 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       503 |       503 |       503 |       503 |       503 |       503 |       503 |       471 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       876 |
|                    Δ                     |      3548 |      3548 |      3548 |      3548 |      3548 |      3548 |      3548 |       405 |
|              Improvement %               |      -705 |      -705 |      -705 |      -705 |      -705 |      -705 |      -705 |       405 |

<p>
</details>

