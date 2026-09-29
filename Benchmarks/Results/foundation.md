
## Comparing results between 'foundation' and 'jbird'

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
|                foundation                |      2545 |      2748 |      2771 |      2796 |      2853 |      3736 |      4292 |       357 |
|                  jbird                   |      1301 |      1432 |      1443 |      1457 |      1481 |      1745 |      2072 |       685 |
|                    Δ                     |     -1244 |     -1316 |     -1328 |     -1339 |     -1372 |     -1991 |     -2220 |       328 |
|              Improvement %               |        49 |        48 |        48 |        48 |        48 |        53 |        52 |       328 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2549 |      2753 |      2777 |      2802 |      2857 |      3742 |      4308 |       357 |
|                  jbird                   |      1305 |      1436 |      1448 |      1462 |      1487 |      1749 |      2083 |       685 |
|                    Δ                     |     -1244 |     -1317 |     -1329 |     -1340 |     -1370 |     -1993 |     -2225 |       328 |
|              Improvement %               |        49 |        48 |        48 |        48 |        48 |        53 |        52 |       328 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       393 |       364 |       361 |       358 |       351 |       268 |       233 |       357 |
|                  jbird                   |       769 |       699 |       693 |       686 |       676 |       573 |       483 |       685 |
|                    Δ                     |       376 |       335 |       332 |       328 |       325 |       305 |       250 |       328 |
|              Improvement %               |        96 |        92 |        92 |        92 |        93 |       114 |       107 |       328 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       187 |       339 |       493 |       592 |       645 |       652 |       357 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       685 |
|                    Δ                     |         2 |      -151 |      -303 |      -457 |      -556 |      -609 |      -616 |       328 |
|              Improvement %               |        -6 |        81 |        89 |        93 |        94 |        94 |        94 |       328 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1398 |      1399 |      1399 |      1399 |      1399 |      1399 |      1402 |       357 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       685 |
|                    Δ                     |     -1398 |     -1399 |     -1399 |     -1399 |     -1399 |     -1399 |     -1402 |       328 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       328 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       357 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       685 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       328 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       328 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       357 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       685 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       328 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       328 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1471 |      1471 |      1471 |      1471 |      1471 |      1471 |      1475 |       357 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       685 |
|                    Δ                     |      3761 |      3761 |      3761 |      3761 |      3761 |      3761 |      3757 |       328 |
|              Improvement %               |      -256 |      -256 |      -256 |      -256 |      -256 |      -256 |      -255 |       328 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        66 |        66 |       357 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       685 |
|                    Δ                     |       -33 |       -33 |       -33 |       -33 |       -33 |       -34 |       -33 |       328 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        52 |        50 |       328 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         9 |         9 |         9 |         9 |         9 |         9 |         9 |       357 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       685 |
|                    Δ                     |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |       328 |
|              Improvement %               |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |       328 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2646 |      2855 |      2882 |      2922 |      3064 |      3205 |      3245 |       343 |
|                  jbird                   |      1352 |      1480 |      1490 |      1504 |      1521 |      1565 |      1646 |       667 |
|                    Δ                     |     -1294 |     -1375 |     -1392 |     -1418 |     -1543 |     -1640 |     -1599 |       324 |
|              Improvement %               |        49 |        48 |        48 |        49 |        50 |        51 |        49 |       324 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2652 |      2859 |      2886 |      2929 |      3068 |      3191 |      3245 |       343 |
|                  jbird                   |      1356 |      1483 |      1495 |      1510 |      1525 |      1569 |      1650 |       667 |
|                    Δ                     |     -1296 |     -1376 |     -1391 |     -1419 |     -1543 |     -1622 |     -1595 |       324 |
|              Improvement %               |        49 |        48 |        48 |        48 |        50 |        51 |        49 |       324 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       378 |       350 |       347 |       342 |       327 |       312 |       308 |       343 |
|                  jbird                   |       740 |       676 |       671 |       665 |       658 |       639 |       608 |       667 |
|                    Δ                     |       362 |       326 |       324 |       323 |       331 |       327 |       300 |       324 |
|              Improvement %               |        96 |        93 |        93 |        94 |       101 |       105 |        97 |       324 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       178 |       326 |       476 |       569 |       621 |       628 |       343 |
|                  jbird                   |        34 |        39 |        39 |        39 |        39 |        39 |        39 |       667 |
|                    Δ                     |         2 |      -139 |      -287 |      -437 |      -530 |      -582 |      -589 |       324 |
|              Improvement %               |        -6 |        78 |        88 |        92 |        93 |        94 |        94 |       324 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1398 |      1399 |      1399 |      1399 |      1399 |      1399 |      1402 |       343 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       667 |
|                    Δ                     |     -1398 |     -1399 |     -1399 |     -1399 |     -1399 |     -1399 |     -1402 |       324 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       324 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       343 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       667 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       324 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       324 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       343 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       667 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       324 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       324 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1471 |      1471 |      1471 |      1471 |      1471 |      1471 |      1475 |       343 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       667 |
|                    Δ                     |      3761 |      3761 |      3761 |      3761 |      3761 |      3761 |      3757 |       324 |
|              Improvement %               |      -256 |      -256 |      -256 |      -256 |      -256 |      -256 |      -255 |       324 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        66 |        66 |        66 |        66 |        66 |        66 |        67 |       343 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       667 |
|                    Δ                     |       -33 |       -33 |       -33 |       -33 |       -33 |       -33 |       -33 |       324 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        49 |       324 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         9 |         9 |         9 |         9 |         9 |         9 |         9 |       343 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       667 |
|                    Δ                     |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |       324 |
|              Improvement %               |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |       324 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       642 |       698 |       706 |       715 |       730 |       764 |       801 |      1398 |
|                  jbird                   |       324 |       355 |       360 |       368 |       380 |       416 |       457 |      2698 |
|                    Δ                     |      -318 |      -343 |      -346 |      -347 |      -350 |      -348 |      -344 |      1300 |
|              Improvement %               |        50 |        49 |        49 |        49 |        48 |        46 |        43 |      1300 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       645 |       702 |       709 |       720 |       734 |       765 |       804 |      1398 |
|                  jbird                   |       327 |       359 |       364 |       373 |       384 |       420 |       460 |      2698 |
|                    Δ                     |      -318 |      -343 |      -345 |      -347 |      -350 |      -345 |      -344 |      1300 |
|              Improvement %               |        49 |        49 |        49 |        48 |        48 |        45 |        43 |      1300 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1558 |      1433 |      1418 |      1399 |      1371 |      1309 |      1249 |      1398 |
|                  jbird                   |      3090 |      2817 |      2775 |      2717 |      2631 |      2405 |      2188 |      2698 |
|                    Δ                     |      1532 |      1384 |      1357 |      1318 |      1260 |      1096 |       939 |      1300 |
|              Improvement %               |        98 |        97 |        96 |        94 |        92 |        84 |        75 |      1300 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       183 |       338 |       492 |       579 |       640 |       640 |      1398 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2698 |
|                    Δ                     |         0 |      -151 |      -306 |      -460 |      -547 |      -608 |      -608 |      1300 |
|              Improvement %               |         0 |        83 |        91 |        93 |        94 |        95 |        95 |      1300 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |      1398 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2698 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      1300 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1300 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3747 |      1398 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2698 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |      1300 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1300 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1398 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2698 |
|                    Δ                     |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1112 |      1300 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      1300 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       379 |       379 |       379 |       379 |       379 |       383 |      1398 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2698 |
|                    Δ                     |       995 |       995 |       995 |       995 |       995 |       995 |       991 |      1300 |
|              Improvement %               |      -263 |      -263 |      -263 |      -263 |      -263 |      -263 |      -259 |      1300 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1398 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2698 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |      1300 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        53 |        53 |      1300 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      1398 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2698 |
|                    Δ                     |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      1300 |
|              Improvement %               |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |      1300 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       661 |       720 |       727 |       734 |       744 |       771 |       799 |      1361 |
|                  jbird                   |       346 |       380 |       385 |       392 |       403 |       421 |       457 |      2535 |
|                    Δ                     |      -315 |      -340 |      -342 |      -342 |      -341 |      -350 |      -342 |      1174 |
|              Improvement %               |        48 |        47 |        47 |        47 |        46 |        45 |        43 |      1174 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       665 |       723 |       731 |       739 |       749 |       775 |       802 |      1361 |
|                  jbird                   |       350 |       384 |       389 |       396 |       407 |       424 |       469 |      2535 |
|                    Δ                     |      -315 |      -339 |      -342 |      -343 |      -342 |      -351 |      -333 |      1174 |
|              Improvement %               |        47 |        47 |        47 |        46 |        46 |        45 |        42 |      1174 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1512 |      1390 |      1376 |      1362 |      1345 |      1298 |      1252 |      1361 |
|                  jbird                   |      2886 |      2631 |      2599 |      2555 |      2485 |      2379 |      2190 |      2535 |
|                    Δ                     |      1374 |      1241 |      1223 |      1193 |      1140 |      1081 |       938 |      1174 |
|              Improvement %               |        91 |        89 |        89 |        88 |        85 |        83 |        75 |      1174 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       174 |       330 |       482 |       566 |       620 |       628 |      1361 |
|                  jbird                   |        31 |        32 |        32 |        33 |        33 |        33 |        33 |      2535 |
|                    Δ                     |         0 |      -142 |      -298 |      -449 |      -533 |      -587 |      -595 |      1174 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |      1174 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |      1361 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2535 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      1174 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1174 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3747 |      1361 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2535 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |      1174 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1174 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1361 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2535 |
|                    Δ                     |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1112 |      1174 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      1174 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       379 |       379 |       379 |       379 |       379 |       383 |      1361 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2535 |
|                    Δ                     |       995 |       995 |       995 |       995 |       995 |       995 |       991 |      1174 |
|              Improvement %               |      -263 |      -263 |      -263 |      -263 |      -263 |      -263 |      -259 |      1174 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        17 |        17 |        17 |        17 |        17 |        17 |      1361 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      2535 |
|                    Δ                     |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |      1174 |
|              Improvement %               |        50 |        53 |        53 |        53 |        53 |        53 |        47 |      1174 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      1361 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2535 |
|                    Δ                     |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      1174 |
|              Improvement %               |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |      1174 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1262 |      1389 |      1400 |      1413 |      1428 |      1464 |      1503 |       711 |
|                  jbird                   |       665 |       726 |       732 |       739 |       748 |       784 |       838 |      1349 |
|                    Δ                     |      -597 |      -663 |      -668 |      -674 |      -680 |      -680 |      -665 |       638 |
|              Improvement %               |        47 |        48 |        48 |        48 |        48 |        46 |        44 |       638 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1266 |      1393 |      1404 |      1417 |      1435 |      1468 |      1506 |       711 |
|                  jbird                   |       669 |       730 |       736 |       743 |       753 |       789 |       841 |      1349 |
|                    Δ                     |      -597 |      -663 |      -668 |      -674 |      -682 |      -679 |      -665 |       638 |
|              Improvement %               |        47 |        48 |        48 |        48 |        48 |        46 |        44 |       638 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       792 |       721 |       715 |       708 |       700 |       683 |       665 |       711 |
|                  jbird                   |      1503 |      1378 |      1367 |      1354 |      1338 |      1276 |      1194 |      1349 |
|                    Δ                     |       711 |       657 |       652 |       646 |       638 |       593 |       529 |       638 |
|              Improvement %               |        90 |        91 |        91 |        91 |        91 |        87 |        80 |       638 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       183 |       339 |       493 |       586 |       642 |       649 |       711 |
|                  jbird                   |        32 |        34 |        34 |        34 |        34 |        35 |        35 |      1349 |
|                    Δ                     |         1 |      -149 |      -305 |      -459 |      -552 |      -607 |      -614 |       638 |
|              Improvement %               |        -3 |        81 |        90 |        93 |        94 |        95 |        95 |       638 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       703 |       703 |       703 |       703 |       703 |       703 |       707 |       711 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1349 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -707 |       638 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       638 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7431 |       711 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1349 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |       638 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       638 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       711 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1349 |
|                    Δ                     |     -2162 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |       638 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       638 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       743 |       743 |       743 |       743 |       743 |       747 |       711 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1349 |
|                    Δ                     |      2005 |      2005 |      2005 |      2005 |      2005 |      2005 |      2001 |       638 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -270 |      -270 |      -268 |       638 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        33 |        33 |        33 |        33 |       711 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1349 |
|                    Δ                     |       -16 |       -16 |       -16 |       -17 |       -17 |       -17 |       -16 |       638 |
|              Improvement %               |        50 |        50 |        50 |        52 |        52 |        52 |        48 |       638 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |       711 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1349 |
|                    Δ                     |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |       638 |
|              Improvement %               |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |       638 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1318 |      1426 |      1436 |      1450 |      1461 |      1505 |      1589 |       692 |
|                  jbird                   |       689 |       756 |       760 |       765 |       772 |       800 |       828 |      1301 |
|                    Δ                     |      -629 |      -670 |      -676 |      -685 |      -689 |      -705 |      -761 |       609 |
|              Improvement %               |        48 |        47 |        47 |        47 |        47 |        47 |        48 |       609 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1321 |      1431 |      1440 |      1454 |      1466 |      1509 |      1592 |       692 |
|                  jbird                   |       692 |       759 |       764 |       770 |       777 |       803 |       832 |      1301 |
|                    Δ                     |      -629 |      -672 |      -676 |      -684 |      -689 |      -706 |      -760 |       609 |
|              Improvement %               |        48 |        47 |        47 |        47 |        47 |        47 |        48 |       609 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       759 |       701 |       697 |       690 |       685 |       665 |       629 |       692 |
|                  jbird                   |      1452 |      1324 |      1315 |      1307 |      1296 |      1251 |      1207 |      1301 |
|                    Δ                     |       693 |       623 |       618 |       617 |       611 |       586 |       578 |       609 |
|              Improvement %               |        91 |        89 |        89 |        89 |        89 |        88 |        92 |       609 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       177 |       334 |       482 |       575 |       628 |       635 |       692 |
|                  jbird                   |        32 |        34 |        34 |        34 |        34 |        34 |        34 |      1301 |
|                    Δ                     |         1 |      -143 |      -300 |      -448 |      -541 |      -594 |      -601 |       609 |
|              Improvement %               |        -3 |        81 |        90 |        93 |        94 |        95 |        95 |       609 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       703 |       703 |       703 |       703 |       703 |       703 |       707 |       692 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1301 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -707 |       609 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       609 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7431 |       692 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1301 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |       609 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       609 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       692 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1301 |
|                    Δ                     |     -2162 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |       609 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       609 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       743 |       743 |       743 |       743 |       743 |       747 |       692 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1301 |
|                    Δ                     |      2005 |      2005 |      2005 |      2005 |      2005 |      2005 |      2001 |       609 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -270 |      -270 |      -268 |       609 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       692 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1301 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -18 |       -17 |       609 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        50 |       609 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |       692 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1301 |
|                    Δ                     |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |       609 |
|              Improvement %               |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |       609 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        73 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         8 |       138 |
|                    Δ                     |        -6 |        -7 |        -7 |        -7 |        -7 |        -7 |        -6 |        65 |
|              Improvement %               |        46 |        50 |        50 |        50 |        50 |        50 |        43 |        65 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        73 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         8 |       138 |
|                    Δ                     |        -6 |        -7 |        -7 |        -7 |        -7 |        -7 |        -6 |        65 |
|              Improvement %               |        46 |        50 |        50 |        50 |        50 |        50 |        43 |        65 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        73 |        72 |        72 |        71 |        70 |        70 |        73 |
|                  jbird                   |       146 |       139 |       138 |       138 |       137 |       135 |       133 |       138 |
|                    Δ                     |        71 |        66 |        66 |        66 |        66 |        65 |        63 |        65 |
|              Improvement %               |        95 |        90 |        92 |        92 |        93 |        93 |        90 |        65 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        47 |       199 |       356 |       511 |       609 |       665 |       665 |        73 |
|                  jbird                   |        56 |        59 |        59 |        59 |        59 |        59 |        59 |       138 |
|                    Δ                     |         9 |      -140 |      -297 |      -452 |      -550 |      -606 |      -606 |        65 |
|              Improvement %               |       -19 |        70 |        83 |        88 |        90 |        91 |        91 |        65 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        73 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |        65 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        65 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        73 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        65 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        65 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        73 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       138 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        65 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        65 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7232 |      7233 |      7233 |      7233 |      7233 |      7233 |      7233 |        73 |
|                  jbird                   |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |       138 |
|                    Δ                     |     18137 |     18136 |     18136 |     18136 |     18136 |     18136 |     18136 |        65 |
|              Improvement %               |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |        65 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       324 |       324 |       324 |       325 |       325 |       325 |        73 |
|                  jbird                   |       157 |       158 |       158 |       158 |       158 |       158 |       159 |       138 |
|                    Δ                     |      -167 |      -166 |      -166 |      -166 |      -167 |      -167 |      -166 |        65 |
|              Improvement %               |        52 |        51 |        51 |        51 |        51 |        51 |        51 |        65 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        73 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       138 |
|                    Δ                     |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |        65 |
|              Improvement %               |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |        65 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        15 |        15 |        70 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       130 |
|                    Δ                     |        -7 |        -6 |        -6 |        -6 |        -6 |        -7 |        -7 |        60 |
|              Improvement %               |        50 |        43 |        43 |        43 |        43 |        47 |        47 |        60 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        15 |        15 |        15 |        70 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       130 |
|                    Δ                     |        -7 |        -6 |        -6 |        -6 |        -7 |        -7 |        -7 |        60 |
|              Improvement %               |        50 |        43 |        43 |        43 |        47 |        47 |        47 |        60 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        72 |        70 |        70 |        69 |        69 |        69 |        69 |        70 |
|                  jbird                   |       136 |       131 |       130 |       129 |       128 |       127 |       127 |       130 |
|                    Δ                     |        64 |        61 |        60 |        60 |        59 |        58 |        58 |        60 |
|              Improvement %               |        89 |        87 |        86 |        87 |        86 |        84 |        84 |        60 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        47 |       191 |       342 |       492 |       582 |       642 |       642 |        70 |
|                  jbird                   |        56 |        59 |        59 |        59 |        59 |        59 |        59 |       130 |
|                    Δ                     |         9 |      -132 |      -283 |      -433 |      -523 |      -583 |      -583 |        60 |
|              Improvement %               |       -19 |        69 |        83 |        88 |        90 |        91 |        91 |        60 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        70 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       130 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |        60 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        60 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        70 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       130 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        60 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        60 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        70 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       130 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        60 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        60 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7232 |      7233 |      7233 |      7233 |      7233 |      7233 |      7233 |        70 |
|                  jbird                   |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |       130 |
|                    Δ                     |     18137 |     18136 |     18136 |     18136 |     18136 |     18136 |     18136 |        60 |
|              Improvement %               |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |        60 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       329 |       329 |       329 |       329 |       329 |       331 |       331 |        70 |
|                  jbird                   |       163 |       163 |       163 |       163 |       163 |       164 |       165 |       130 |
|                    Δ                     |      -166 |      -166 |      -166 |      -166 |      -166 |      -167 |      -166 |        60 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        60 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        70 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       130 |
|                    Δ                     |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |        60 |
|              Improvement %               |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |        60 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       161 |       176 |       182 |       185 |       189 |       203 |       236 |      5317 |
|                  jbird                   |        84 |        94 |        95 |        96 |        99 |       114 |       128 |      9773 |
|                    Δ                     |       -77 |       -82 |       -87 |       -89 |       -90 |       -89 |      -108 |      4456 |
|              Improvement %               |        48 |        47 |        48 |        48 |        48 |        44 |        46 |      4456 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       164 |       180 |       185 |       188 |       193 |       208 |       238 |      5317 |
|                  jbird                   |        87 |        98 |        99 |       100 |       104 |       118 |       131 |      9773 |
|                    Δ                     |       -77 |       -82 |       -86 |       -88 |       -89 |       -90 |      -107 |      4456 |
|              Improvement %               |        47 |        46 |        46 |        47 |        46 |        43 |        45 |      4456 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6214 |      5679 |      5507 |      5423 |      5303 |      4935 |      4233 |      5317 |
|                  jbird                   |     11905 |     10655 |     10543 |     10439 |     10087 |      8791 |      7835 |      9773 |
|                    Δ                     |      5691 |      4976 |      5036 |      5016 |      4784 |      3856 |      3602 |      4456 |
|              Improvement %               |        92 |        88 |        91 |        92 |        90 |        78 |        85 |      4456 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       183 |       337 |       489 |       581 |       643 |       643 |      5317 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9773 |
|                    Δ                     |         0 |      -152 |      -306 |      -458 |      -550 |      -612 |      -612 |      4456 |
|              Improvement %               |         0 |        83 |        91 |        94 |        95 |        95 |        95 |      4456 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      5317 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9773 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      4456 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4456 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       981 |       981 |       981 |       981 |       981 |       981 |       982 |      5317 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9773 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -982 |      4456 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4456 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      5317 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9773 |
|                    Δ                     |      -318 |      -318 |      -318 |      -318 |      -318 |      -318 |      -319 |      4456 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      4456 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       106 |       106 |       106 |       106 |       106 |       106 |       110 |      5317 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9773 |
|                    Δ                     |       238 |       238 |       238 |       238 |       238 |       238 |       234 |      4456 |
|              Improvement %               |      -225 |      -225 |      -225 |      -225 |      -225 |      -225 |      -213 |      4456 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4092 |      4119 |      4127 |      4137 |      4147 |      4235 |      4341 |      5317 |
|                  jbird                   |      1976 |      1977 |      1978 |      1979 |      1982 |      2009 |      2090 |      9773 |
|                    Δ                     |     -2116 |     -2142 |     -2149 |     -2158 |     -2165 |     -2226 |     -2251 |      4456 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        52 |      4456 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      5317 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9773 |
|                    Δ                     |       663 |       663 |       663 |       663 |       663 |       663 |       663 |      4456 |
|              Improvement %               |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |      4456 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       169 |       185 |       189 |       192 |       195 |       207 |       272 |      5102 |
|                  jbird                   |        87 |        98 |       100 |       101 |       104 |       122 |       266 |      9302 |
|                    Δ                     |       -82 |       -87 |       -89 |       -91 |       -91 |       -85 |        -6 |      4200 |
|              Improvement %               |        49 |        47 |        47 |        47 |        47 |        41 |         2 |      4200 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       173 |       189 |       193 |       196 |       199 |       211 |       297 |      5102 |
|                  jbird                   |        90 |       102 |       103 |       105 |       109 |       125 |       245 |      9302 |
|                    Δ                     |       -83 |       -87 |       -90 |       -91 |       -90 |       -86 |       -52 |      4200 |
|              Improvement %               |        48 |        46 |        47 |        46 |        45 |        41 |        18 |      4200 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5911 |      5395 |      5287 |      5211 |      5119 |      4835 |      3676 |      5102 |
|                  jbird                   |     11489 |     10199 |     10055 |      9911 |      9591 |      8231 |      3766 |      9302 |
|                    Δ                     |      5578 |      4804 |      4768 |      4700 |      4472 |      3396 |        90 |      4200 |
|              Improvement %               |        94 |        89 |        90 |        90 |        87 |        70 |         2 |      4200 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       177 |       323 |       473 |       563 |       615 |       622 |      5102 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9302 |
|                    Δ                     |         0 |      -146 |      -292 |      -442 |      -532 |      -584 |      -591 |      4200 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |      4200 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      5102 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9302 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      4200 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4200 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       981 |       981 |       981 |       981 |       981 |       981 |       982 |      5102 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9302 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -982 |      4200 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4200 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      5102 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9302 |
|                    Δ                     |      -318 |      -318 |      -318 |      -318 |      -318 |      -318 |      -319 |      4200 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      4200 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       106 |       106 |       106 |       106 |       106 |       106 |       110 |      5102 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9302 |
|                    Δ                     |       238 |       238 |       238 |       238 |       238 |       238 |       234 |      4200 |
|              Improvement %               |      -225 |      -225 |      -225 |      -225 |      -225 |      -225 |      -213 |      4200 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4155 |      4180 |      4190 |      4202 |      4211 |      4297 |      4404 |      5102 |
|                  jbird                   |      2039 |      2047 |      2048 |      2049 |      2051 |      2079 |      2159 |      9302 |
|                    Δ                     |     -2116 |     -2133 |     -2142 |     -2153 |     -2160 |     -2218 |     -2245 |      4200 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        52 |        51 |      4200 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      5102 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9302 |
|                    Δ                     |       663 |       663 |       663 |       663 |       663 |       663 |       663 |      4200 |
|              Improvement %               |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |      4200 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       297 |       318 |       322 |       329 |       336 |       355 |       373 |      3018 |
|                  jbird                   |       101 |       114 |       114 |       118 |       119 |       124 |       254 |      8165 |
|                    Δ                     |      -196 |      -204 |      -208 |      -211 |      -217 |      -231 |      -119 |      5147 |
|              Improvement %               |        66 |        64 |        65 |        64 |        65 |        65 |        32 |      5147 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       301 |       322 |       326 |       333 |       341 |       359 |       377 |      3018 |
|                  jbird                   |       104 |       117 |       118 |       122 |       122 |       130 |       243 |      8165 |
|                    Δ                     |      -197 |      -205 |      -208 |      -211 |      -219 |      -229 |      -134 |      5147 |
|              Improvement %               |        65 |        64 |        64 |        63 |        64 |        64 |        36 |      5147 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3366 |      3149 |      3105 |      3045 |      2975 |      2819 |      2682 |      3018 |
|                  jbird                   |      9946 |      8799 |      8759 |      8471 |      8431 |      8071 |      3937 |      8165 |
|                    Δ                     |      6580 |      5650 |      5654 |      5426 |      5456 |      5252 |      1255 |      5147 |
|              Improvement %               |       195 |       179 |       182 |       178 |       183 |       186 |        47 |      5147 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |        91 |       154 |       215 |       252 |       276 |       279 |      3018 |
|                  jbird                   |        30 |        32 |        32 |        33 |        33 |        33 |        33 |      8165 |
|                    Δ                     |         0 |       -59 |      -122 |      -182 |      -219 |      -243 |      -246 |      5147 |
|              Improvement %               |         0 |        65 |        79 |        85 |        87 |        88 |        88 |      5147 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        80 |        80 |        80 |        80 |        80 |        84 |      3018 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8165 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -84 |      5147 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5147 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         2 |         2 |         2 |         2 |         2 |         2 |         3 |      3018 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8165 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -3 |      5147 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5147 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        14 |      3018 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8165 |
|                    Δ                     |        15 |        15 |        15 |        15 |        15 |        15 |        14 |      5147 |
|              Improvement %               |      -115 |      -115 |      -115 |      -115 |      -115 |      -115 |      -100 |      5147 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       350 |       350 |       350 |       350 |       350 |       350 |       354 |      3018 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      8165 |
|                    Δ                     |       808 |       808 |       808 |       808 |       808 |       808 |       804 |      5147 |
|              Improvement %               |      -231 |      -231 |      -231 |      -231 |      -231 |      -231 |      -227 |      5147 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8614 |      8643 |      8643 |      8651 |      8651 |      8684 |      8957 |      3018 |
|                  jbird                   |      3311 |      3322 |      3322 |      3322 |      3324 |      3340 |      3744 |      8165 |
|                    Δ                     |     -5303 |     -5321 |     -5321 |     -5329 |     -5327 |     -5344 |     -5213 |      5147 |
|              Improvement %               |        62 |        62 |        62 |        62 |        62 |        62 |        58 |      5147 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |      3018 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8165 |
|                    Δ                     |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      5147 |
|              Improvement %               |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      5147 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        12 |        12 |        13 |        13 |        17 |        17 |        79 |
|                  jbird                   |         6 |         6 |         6 |         6 |         6 |         6 |         7 |       168 |
|                    Δ                     |        -6 |        -6 |        -6 |        -7 |        -7 |       -11 |       -10 |        89 |
|              Improvement %               |        50 |        50 |        50 |        54 |        54 |        65 |        59 |        89 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        12 |        13 |        13 |        13 |        17 |        17 |        79 |
|                  jbird                   |         6 |         6 |         6 |         6 |         6 |         6 |         7 |       168 |
|                    Δ                     |        -6 |        -6 |        -7 |        -7 |        -7 |       -11 |       -10 |        89 |
|              Improvement %               |        50 |        50 |        54 |        54 |        54 |        65 |        59 |        89 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        81 |        80 |        79 |        79 |        58 |        58 |        79 |
|                  jbird                   |       178 |       171 |       169 |       167 |       164 |       158 |       153 |       168 |
|                    Δ                     |        94 |        90 |        89 |        88 |        85 |       100 |        95 |        89 |
|              Improvement %               |       112 |       111 |       111 |       111 |       108 |       172 |       164 |        89 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        47 |       208 |       376 |       551 |       652 |       709 |       709 |        79 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       168 |
|                    Δ                     |         1 |      -156 |      -324 |      -499 |      -600 |      -657 |      -657 |        89 |
|              Improvement %               |        -2 |        75 |        86 |        91 |        92 |        93 |        93 |        89 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |        79 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       168 |
|                    Δ                     |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |        89 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        89 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        79 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       168 |
|                    Δ                     |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |        89 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        89 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        79 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       168 |
|                    Δ                     |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |        89 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |        89 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6894 |      6894 |      6894 |      6894 |      6894 |      6894 |      6894 |        79 |
|                  jbird                   |     19440 |     19440 |     19440 |     19440 |     19440 |     19440 |     19440 |       168 |
|                    Δ                     |     12546 |     12546 |     12546 |     12546 |     12546 |     12546 |     12546 |        89 |
|              Improvement %               |      -182 |      -182 |      -182 |      -182 |      -182 |      -182 |      -182 |        89 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       310 |       310 |       310 |       310 |       310 |       314 |       314 |        79 |
|                  jbird                   |       159 |       159 |       159 |       159 |       159 |       160 |       160 |       168 |
|                    Δ                     |      -151 |      -151 |      -151 |      -151 |      -151 |      -154 |      -154 |        89 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        49 |        49 |        89 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       264 |       264 |       264 |       264 |       264 |       264 |       264 |        79 |
|                  jbird                   |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |       168 |
|                    Δ                     |     55828 |     55828 |     55828 |     55828 |     55828 |     55828 |     55828 |        89 |
|              Improvement %               |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |        89 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        79 |        83 |        86 |        88 |        95 |      9521 |     11027 |
|                  jbird                   |        29 |        33 |        33 |        34 |        35 |        42 |       108 |     24621 |
|                    Δ                     |       -48 |       -46 |       -50 |       -52 |       -53 |       -53 |     -9413 |     13594 |
|              Improvement %               |        62 |        58 |        60 |        60 |        60 |        56 |        99 |     13594 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        82 |        87 |        90 |        91 |       100 |       156 |     11027 |
|                  jbird                   |        32 |        36 |        37 |        38 |        40 |        47 |       106 |     24621 |
|                    Δ                     |       -48 |       -46 |       -50 |       -52 |       -51 |       -53 |       -50 |     13594 |
|              Improvement %               |        60 |        56 |        57 |        58 |        56 |        53 |        32 |     13594 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        12 |        12 |        11 |        11 |         0 |     11027 |
|                  jbird                   |        35 |        31 |        30 |        30 |        28 |        24 |         9 |     24621 |
|                    Δ                     |        22 |        18 |        18 |        18 |        17 |        13 |         9 |     13594 |
|              Improvement %               |       169 |       138 |       150 |       150 |       155 |       118 |         0 |     13594 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |        51 |        71 |        91 |       103 |       110 |       111 |     11027 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     24621 |
|                    Δ                     |         0 |       -20 |       -40 |       -60 |       -72 |       -79 |       -80 |     13594 |
|              Improvement %               |         0 |        39 |        56 |        66 |        70 |        72 |        72 |     13594 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4864 |      4867 |      4867 |      4867 |      4867 |      4867 |      8960 |     11027 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24621 |
|                    Δ                     |     -4864 |     -4867 |     -4867 |     -4867 |     -4867 |     -4867 |     -8960 |     13594 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13594 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       152 |       152 |       152 |       152 |       152 |       152 |       153 |     11027 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24621 |
|                    Δ                     |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -153 |     13594 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13594 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |     11027 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     24621 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |        -1 |     13594 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         1 |     13594 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        17 |     11027 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     24621 |
|                    Δ                     |        78 |        78 |        78 |        78 |        78 |        78 |        74 |     13594 |
|              Improvement %               |      -600 |      -600 |      -600 |      -600 |      -600 |      -600 |      -435 |     13594 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1128 |      1140 |      1141 |      1148 |      1148 |      1161 |      1252 |     11027 |
|                  jbird                   |       726 |       739 |       739 |       739 |       739 |       757 |       816 |     24621 |
|                    Δ                     |      -402 |      -401 |      -402 |      -409 |      -409 |      -404 |      -436 |     13594 |
|              Improvement %               |        36 |        35 |        35 |        36 |        36 |        35 |        35 |     13594 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     11027 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     24621 |
|                    Δ                     |       152 |       152 |       152 |       152 |       152 |       152 |       152 |     13594 |
|              Improvement %               |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     13594 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       243 |       273 |       276 |       279 |       286 |       328 |       348 |      3511 |
|                  jbird                   |        88 |        98 |        99 |        99 |       101 |       111 |       148 |      9437 |
|                    Δ                     |      -155 |      -175 |      -177 |      -180 |      -185 |      -217 |      -200 |      5926 |
|              Improvement %               |        64 |        64 |        64 |        65 |        65 |        66 |        57 |      5926 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       246 |       276 |       280 |       283 |       290 |       333 |       353 |      3511 |
|                  jbird                   |        91 |       102 |       102 |       103 |       105 |       115 |       154 |      9437 |
|                    Δ                     |      -155 |      -174 |      -178 |      -180 |      -185 |      -218 |      -199 |      5926 |
|              Improvement %               |        63 |        63 |        64 |        64 |        64 |        65 |        56 |      5926 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4116 |      3669 |      3617 |      3585 |      3499 |      3049 |      2874 |      3511 |
|                  jbird                   |     11385 |     10191 |     10143 |     10087 |      9887 |      9015 |      6753 |      9437 |
|                    Δ                     |      7269 |      6522 |      6526 |      6502 |      6388 |      5966 |      3879 |      5926 |
|              Improvement %               |       177 |       178 |       180 |       181 |       183 |       196 |       135 |      5926 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       106 |       182 |       261 |       309 |       336 |       339 |      3511 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9437 |
|                    Δ                     |         0 |       -75 |      -151 |      -230 |      -278 |      -305 |      -308 |      5926 |
|              Improvement %               |         0 |        71 |        83 |        88 |        90 |        91 |        91 |      5926 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        71 |        71 |        71 |        71 |        71 |        71 |        75 |      3511 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9437 |
|                    Δ                     |       -71 |       -71 |       -71 |       -71 |       -71 |       -71 |       -75 |      5926 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5926 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       802 |       802 |       802 |       802 |       802 |       802 |       803 |      3511 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9437 |
|                    Δ                     |      -802 |      -802 |      -802 |      -802 |      -802 |      -802 |      -803 |      5926 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5926 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3511 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9437 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      5926 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      5926 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       210 |       210 |       210 |       210 |       210 |       210 |       214 |      3511 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9437 |
|                    Δ                     |       451 |       451 |       451 |       451 |       451 |       451 |       447 |      5926 |
|              Improvement %               |      -215 |      -215 |      -215 |      -215 |      -215 |      -215 |      -209 |      5926 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7052 |      7066 |      7066 |      7074 |      7078 |      7111 |      7207 |      3511 |
|                  jbird                   |      2571 |      2572 |      2572 |      2572 |      2572 |      2587 |      2840 |      9437 |
|                    Δ                     |     -4481 |     -4494 |     -4494 |     -4502 |     -4506 |     -4524 |     -4367 |      5926 |
|              Improvement %               |        64 |        64 |        64 |        64 |        64 |        64 |        61 |      5926 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      3511 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9437 |
|                    Δ                     |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      5926 |
|              Improvement %               |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |      5926 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       418 |       424 |       430 |       438 |       463 |       571 |      2314 |
|                  jbird                   |        59 |        67 |        68 |        70 |        71 |        80 |       133 |     13311 |
|                    Δ                     |      -320 |      -351 |      -356 |      -360 |      -367 |      -383 |      -438 |     10997 |
|              Improvement %               |        84 |        84 |        84 |        84 |        84 |        83 |        77 |     10997 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       382 |       422 |       428 |       434 |       442 |       466 |       558 |      2314 |
|                  jbird                   |        62 |        71 |        72 |        73 |        75 |        84 |       148 |     13311 |
|                    Δ                     |      -320 |      -351 |      -356 |      -361 |      -367 |      -382 |      -410 |     10997 |
|              Improvement %               |        84 |        83 |        83 |        83 |        83 |        82 |        73 |     10997 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2639 |      2393 |      2363 |      2329 |      2287 |      2161 |      1751 |      2314 |
|                  jbird                   |     17070 |     14919 |     14711 |     14399 |     14095 |     12527 |      7540 |     13311 |
|                    Δ                     |     14431 |     12526 |     12348 |     12070 |     11808 |     10366 |      5789 |     10997 |
|              Improvement %               |       547 |       523 |       523 |       518 |       516 |       480 |       331 |     10997 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       102 |       177 |       250 |       292 |       319 |       322 |      2314 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     13311 |
|                    Δ                     |         0 |       -71 |      -146 |      -219 |      -261 |      -288 |      -291 |     10997 |
|              Improvement %               |         0 |        70 |        82 |        88 |        89 |        90 |        90 |     10997 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        89 |        89 |        89 |        89 |        89 |        89 |        93 |      2314 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13311 |
|                    Δ                     |       -89 |       -89 |       -89 |       -89 |       -89 |       -89 |       -93 |     10997 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10997 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2088 |      2089 |      2089 |      2089 |      2089 |      2089 |      2089 |      2314 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13311 |
|                    Δ                     |     -2088 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     10997 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10997 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2314 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13311 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |     10997 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     10997 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       202 |       202 |       202 |       202 |       202 |       202 |       206 |      2314 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     13311 |
|                    Δ                     |       127 |       127 |       127 |       127 |       127 |       127 |       123 |     10997 |
|              Improvement %               |       -63 |       -63 |       -63 |       -63 |       -63 |       -63 |       -60 |     10997 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9040 |      9052 |      9060 |      9069 |      9085 |      9273 |      9546 |      2314 |
|                  jbird                   |      1573 |      1586 |      1586 |      1586 |      1586 |      1593 |      1733 |     13311 |
|                    Δ                     |     -7467 |     -7466 |     -7474 |     -7483 |     -7499 |     -7680 |     -7813 |     10997 |
|              Improvement %               |        83 |        82 |        82 |        83 |        83 |        83 |        82 |     10997 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       879 |       879 |       879 |       879 |       879 |       879 |       879 |      2314 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13311 |
|                    Δ                     |      -869 |      -869 |      -869 |      -869 |      -869 |      -869 |      -869 |     10997 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |     10997 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        72 |        81 |        83 |        84 |        86 |        93 |       121 |     11118 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        14 |        36 |     56325 |
|                    Δ                     |       -62 |       -70 |       -72 |       -73 |       -75 |       -79 |       -85 |     45207 |
|              Improvement %               |        86 |        86 |        87 |        87 |        87 |        85 |        70 |     45207 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        85 |        86 |        88 |        90 |        97 |       120 |     11118 |
|                  jbird                   |        13 |        15 |        15 |        15 |        15 |        19 |        42 |     56325 |
|                    Δ                     |       -63 |       -70 |       -71 |       -73 |       -75 |       -78 |       -78 |     45207 |
|              Improvement %               |        83 |        82 |        83 |        83 |        83 |        80 |        65 |     45207 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        12 |        12 |        12 |        12 |        11 |         8 |     11118 |
|                  jbird                   |       104 |        92 |        91 |        90 |        88 |        72 |        27 |     56325 |
|                    Δ                     |        90 |        80 |        79 |        78 |        76 |        61 |        19 |     45207 |
|              Improvement %               |       643 |       667 |       658 |       650 |       633 |       555 |       238 |     45207 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       209 |       386 |       569 |       670 |       743 |       743 |     11118 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     56325 |
|                    Δ                     |         0 |      -178 |      -355 |      -538 |      -639 |      -712 |      -712 |     45207 |
|              Improvement %               |         0 |        85 |        92 |        95 |        95 |        96 |        96 |     45207 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        58 |        58 |        58 |        58 |        58 |        58 |        62 |     11118 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     56325 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -62 |     45207 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     45207 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        80 |        80 |        80 |        80 |        80 |        81 |     11118 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     56325 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -81 |     45207 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     45207 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |     11118 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     56325 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |     45207 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |     45207 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        67 |        68 |        68 |        68 |        68 |        68 |        72 |     11118 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     56325 |
|                    Δ                     |        59 |        58 |        58 |        58 |        58 |        58 |        54 |     45207 |
|              Improvement %               |       -88 |       -85 |       -85 |       -85 |       -85 |       -85 |       -75 |     45207 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1858 |      1875 |      1882 |      1890 |      1897 |      1919 |      2023 |     11118 |
|                  jbird                   |       225 |       234 |       234 |       234 |       234 |       238 |       296 |     56325 |
|                    Δ                     |     -1633 |     -1641 |     -1648 |     -1656 |     -1663 |     -1681 |     -1727 |     45207 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        85 |     45207 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     11118 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     56325 |
|                    Δ                     |        73 |        73 |        73 |        73 |        73 |        73 |        73 |     45207 |
|              Improvement %               |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     45207 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1928 |      2082 |      2099 |      2146 |      2175 |      2236 |      2286 |       472 |
|                  jbird                   |      1026 |      1111 |      1117 |      1126 |      1145 |      1190 |      1285 |       887 |
|                    Δ                     |      -902 |      -971 |      -982 |     -1020 |     -1030 |     -1046 |     -1001 |       415 |
|              Improvement %               |        47 |        47 |        47 |        48 |        47 |        47 |        44 |       415 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1932 |      2087 |      2105 |      2150 |      2179 |      2243 |      2290 |       472 |
|                  jbird                   |      1029 |      1114 |      1121 |      1132 |      1150 |      1189 |      1288 |       887 |
|                    Δ                     |      -903 |      -973 |      -984 |     -1018 |     -1029 |     -1054 |     -1002 |       415 |
|              Improvement %               |        47 |        47 |        47 |        47 |        47 |        47 |        44 |       415 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       519 |       480 |       476 |       466 |       460 |       447 |       438 |       472 |
|                  jbird                   |       975 |       901 |       895 |       888 |       874 |       841 |       778 |       887 |
|                    Δ                     |       456 |       421 |       419 |       422 |       414 |       394 |       340 |       415 |
|              Improvement %               |        88 |        88 |        88 |        91 |        90 |        88 |        78 |       415 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       126 |       226 |       323 |       382 |       416 |       420 |       472 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       887 |
|                    Δ                     |         2 |       -91 |      -191 |      -288 |      -347 |      -381 |      -385 |       415 |
|              Improvement %               |        -6 |        72 |        85 |        89 |        91 |        92 |        92 |       415 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       669 |       670 |       670 |       670 |       670 |       670 |       673 |       472 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       887 |
|                    Δ                     |      -669 |      -670 |      -670 |      -670 |      -670 |      -670 |      -673 |       415 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       415 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6133 |      6134 |      6134 |      6134 |      6134 |      6134 |      6134 |       472 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       887 |
|                    Δ                     |     -6133 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |       415 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       415 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6636 |      6637 |      6637 |      6637 |      6637 |      6637 |      6637 |       472 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       887 |
|                    Δ                     |     -2585 |     -2586 |     -2586 |     -2586 |     -2586 |     -2586 |     -2586 |       415 |
|              Improvement %               |        39 |        39 |        39 |        39 |        39 |        39 |        39 |       415 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       882 |       882 |       882 |       882 |       882 |       882 |       886 |       472 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       887 |
|                    Δ                     |      3029 |      3029 |      3029 |      3029 |      3029 |      3029 |      3025 |       415 |
|              Improvement %               |      -343 |      -343 |      -343 |      -343 |      -343 |      -343 |      -341 |       415 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        44 |        44 |        44 |        44 |        44 |        45 |        45 |       472 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       887 |
|                    Δ                     |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       415 |
|              Improvement %               |        45 |        45 |        45 |        45 |        45 |        44 |        44 |       415 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       503 |       503 |       503 |       503 |       503 |       503 |       503 |       472 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       887 |
|                    Δ                     |      3548 |      3548 |      3548 |      3548 |      3548 |      3548 |      3548 |       415 |
|              Improvement %               |      -705 |      -705 |      -705 |      -705 |      -705 |      -705 |      -705 |       415 |

<p>
</details>

