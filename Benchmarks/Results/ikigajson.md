
## Comparing results between 'ikigajson' and 'jbird'

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
|                ikigajson                 |      2416 |      2623 |      2642 |      2666 |      2697 |      3082 |      3380 |       376 |
|                  jbird                   |      1301 |      1432 |      1443 |      1457 |      1481 |      1745 |      2072 |       685 |
|                    Δ                     |     -1115 |     -1191 |     -1199 |     -1209 |     -1216 |     -1337 |     -1308 |       309 |
|              Improvement %               |        46 |        45 |        45 |        45 |        45 |        43 |        39 |       309 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      2420 |      2630 |      2648 |      2673 |      2703 |      3095 |      3387 |       376 |
|                  jbird                   |      1305 |      1436 |      1448 |      1462 |      1487 |      1749 |      2083 |       685 |
|                    Δ                     |     -1115 |     -1194 |     -1200 |     -1211 |     -1216 |     -1346 |     -1304 |       309 |
|              Improvement %               |        46 |        45 |        45 |        45 |        45 |        43 |        39 |       309 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       414 |       381 |       379 |       375 |       371 |       325 |       296 |       376 |
|                  jbird                   |       769 |       699 |       693 |       686 |       676 |       573 |       483 |       685 |
|                    Δ                     |       355 |       318 |       314 |       311 |       305 |       248 |       187 |       309 |
|              Improvement %               |        86 |        83 |        83 |        83 |        82 |        76 |        63 |       309 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        31 |        33 |        33 |        33 |        33 |        33 |        33 |       376 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       685 |
|                    Δ                     |         3 |         3 |         3 |         3 |         3 |         3 |         3 |       309 |
|              Improvement %               |       -10 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       309 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       376 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       685 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       309 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       309 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       376 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       685 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       309 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       309 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       376 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       685 |
|                    Δ                     |     10531 |     10531 |     10531 |     10531 |     10531 |     10531 |     10531 |       309 |
|              Improvement %               |    -95736 |    -95736 |    -95736 |    -95736 |    -95736 |    -95736 |    -95736 |       309 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      2599 |      2599 |      2599 |      2599 |      2599 |      2599 |      2599 |       376 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       685 |
|                    Δ                     |      2633 |      2633 |      2633 |      2633 |      2633 |      2633 |      2633 |       309 |
|              Improvement %               |      -101 |      -101 |      -101 |      -101 |      -101 |      -101 |      -101 |       309 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        62 |        62 |        63 |        63 |        63 |        63 |        63 |       376 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       685 |
|                    Δ                     |       -30 |       -30 |       -31 |       -31 |       -31 |       -31 |       -30 |       309 |
|              Improvement %               |        48 |        48 |        49 |        49 |        49 |        49 |        48 |       309 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       376 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       685 |
|                    Δ                     |     10531 |     10531 |     10531 |     10531 |     10531 |     10531 |     10531 |       309 |
|              Improvement %               |    -95736 |    -95736 |    -95736 |    -95736 |    -95736 |    -95736 |    -95736 |       309 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      2481 |      2697 |      2724 |      2789 |      2875 |      2947 |      3006 |       363 |
|                  jbird                   |      1352 |      1480 |      1490 |      1504 |      1521 |      1565 |      1646 |       667 |
|                    Δ                     |     -1129 |     -1217 |     -1234 |     -1285 |     -1354 |     -1382 |     -1360 |       304 |
|              Improvement %               |        46 |        45 |        45 |        46 |        47 |        47 |        45 |       304 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      2484 |      2701 |      2730 |      2793 |      2884 |      2951 |      3010 |       363 |
|                  jbird                   |      1356 |      1483 |      1495 |      1510 |      1525 |      1569 |      1650 |       667 |
|                    Δ                     |     -1128 |     -1218 |     -1235 |     -1283 |     -1359 |     -1382 |     -1360 |       304 |
|              Improvement %               |        45 |        45 |        45 |        46 |        47 |        47 |        45 |       304 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       403 |       371 |       367 |       359 |       348 |       339 |       333 |       363 |
|                  jbird                   |       740 |       676 |       671 |       665 |       658 |       639 |       608 |       667 |
|                    Δ                     |       337 |       305 |       304 |       306 |       310 |       300 |       275 |       304 |
|              Improvement %               |        84 |        82 |        83 |        85 |        89 |        88 |        83 |       304 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        31 |        33 |        33 |        33 |        35 |        35 |        35 |       363 |
|                  jbird                   |        34 |        39 |        39 |        39 |        39 |        39 |        39 |       667 |
|                    Δ                     |         3 |         6 |         6 |         6 |         4 |         4 |         4 |       304 |
|              Improvement %               |       -10 |       -18 |       -18 |       -18 |       -11 |       -11 |       -11 |       304 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       363 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       667 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       304 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       304 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       363 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       667 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       304 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       304 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       363 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       667 |
|                    Δ                     |     10531 |     10531 |     10531 |     10531 |     10531 |     10531 |     10531 |       304 |
|              Improvement %               |    -95736 |    -95736 |    -95736 |    -95736 |    -95736 |    -95736 |    -95736 |       304 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      2599 |      2599 |      2599 |      2599 |      2599 |      2599 |      2599 |       363 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       667 |
|                    Δ                     |      2633 |      2633 |      2633 |      2633 |      2633 |      2633 |      2633 |       304 |
|              Improvement %               |      -101 |      -101 |      -101 |      -101 |      -101 |      -101 |      -101 |       304 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        63 |        63 |        63 |        63 |        63 |        64 |        65 |       363 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       667 |
|                    Δ                     |       -30 |       -30 |       -30 |       -30 |       -30 |       -31 |       -31 |       304 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       304 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       363 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       667 |
|                    Δ                     |     10531 |     10531 |     10531 |     10531 |     10531 |     10531 |     10531 |       304 |
|              Improvement %               |    -95736 |    -95736 |    -95736 |    -95736 |    -95736 |    -95736 |    -95736 |       304 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       587 |       654 |       660 |       670 |       676 |       697 |       763 |      1495 |
|                  jbird                   |       324 |       355 |       360 |       368 |       380 |       416 |       457 |      2698 |
|                    Δ                     |      -263 |      -299 |      -300 |      -302 |      -296 |      -281 |      -306 |      1203 |
|              Improvement %               |        45 |        46 |        45 |        45 |        44 |        40 |        40 |      1203 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       591 |       658 |       665 |       674 |       680 |       701 |       767 |      1495 |
|                  jbird                   |       327 |       359 |       364 |       373 |       384 |       420 |       460 |      2698 |
|                    Δ                     |      -264 |      -299 |      -301 |      -301 |      -296 |      -281 |      -307 |      1203 |
|              Improvement %               |        45 |        45 |        45 |        45 |        44 |        40 |        40 |      1203 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      1702 |      1529 |      1515 |      1494 |      1480 |      1435 |      1311 |      1495 |
|                  jbird                   |      3090 |      2817 |      2775 |      2717 |      2631 |      2405 |      2188 |      2698 |
|                    Δ                     |      1388 |      1288 |      1260 |      1223 |      1151 |       970 |       877 |      1203 |
|              Improvement %               |        82 |        84 |        83 |        82 |        78 |        68 |        67 |      1203 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      1495 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2698 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      1203 |
|              Improvement %               |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1203 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1495 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2698 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1203 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1203 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1495 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2698 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1203 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1203 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         9 |         9 |         9 |         9 |         9 |         9 |         9 |      1495 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2698 |
|                    Δ                     |      2633 |      2633 |      2633 |      2633 |      2633 |      2633 |      2633 |      1203 |
|              Improvement %               |    -29256 |    -29256 |    -29256 |    -29256 |    -29256 |    -29256 |    -29256 |      1203 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       633 |       633 |       633 |       633 |       633 |       633 |       633 |      1495 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2698 |
|                    Δ                     |       741 |       741 |       741 |       741 |       741 |       741 |       741 |      1203 |
|              Improvement %               |      -117 |      -117 |      -117 |      -117 |      -117 |      -117 |      -117 |      1203 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1495 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2698 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1203 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      1203 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         9 |         9 |         9 |         9 |         9 |         9 |         9 |      1495 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2698 |
|                    Δ                     |      2633 |      2633 |      2633 |      2633 |      2633 |      2633 |      2633 |      1203 |
|              Improvement %               |    -29256 |    -29256 |    -29256 |    -29256 |    -29256 |    -29256 |    -29256 |      1203 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       608 |       669 |       675 |       682 |       692 |       726 |       776 |      1464 |
|                  jbird                   |       346 |       380 |       385 |       392 |       403 |       421 |       457 |      2535 |
|                    Δ                     |      -262 |      -289 |      -290 |      -290 |      -289 |      -305 |      -319 |      1071 |
|              Improvement %               |        43 |        43 |        43 |        43 |        42 |        42 |        41 |      1071 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       611 |       673 |       678 |       686 |       696 |       731 |       779 |      1464 |
|                  jbird                   |       350 |       384 |       389 |       396 |       407 |       424 |       469 |      2535 |
|                    Δ                     |      -261 |      -289 |      -289 |      -290 |      -289 |      -307 |      -310 |      1071 |
|              Improvement %               |        43 |        43 |        43 |        42 |        42 |        42 |        40 |      1071 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      1645 |      1495 |      1483 |      1467 |      1446 |      1379 |      1289 |      1464 |
|                  jbird                   |      2886 |      2631 |      2599 |      2555 |      2485 |      2379 |      2190 |      2535 |
|                    Δ                     |      1241 |      1136 |      1116 |      1088 |      1039 |      1000 |       901 |      1071 |
|              Improvement %               |        75 |        76 |        75 |        74 |        72 |        73 |        70 |      1071 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      1464 |
|                  jbird                   |        31 |        32 |        32 |        33 |        33 |        33 |        33 |      2535 |
|                    Δ                     |         1 |         1 |         1 |         2 |         2 |         2 |         2 |      1071 |
|              Improvement %               |        -3 |        -3 |        -3 |        -6 |        -6 |        -6 |        -6 |      1071 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1464 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2535 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1071 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1071 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1464 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2535 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1071 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1071 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         9 |         9 |         9 |         9 |         9 |         9 |         9 |      1464 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2535 |
|                    Δ                     |      2633 |      2633 |      2633 |      2633 |      2633 |      2633 |      2633 |      1071 |
|              Improvement %               |    -29256 |    -29256 |    -29256 |    -29256 |    -29256 |    -29256 |    -29256 |      1071 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       633 |       633 |       633 |       633 |       633 |       633 |       633 |      1464 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2535 |
|                    Δ                     |       741 |       741 |       741 |       741 |       741 |       741 |       741 |      1071 |
|              Improvement %               |      -117 |      -117 |      -117 |      -117 |      -117 |      -117 |      -117 |      1071 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1464 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      2535 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1071 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        47 |      1071 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         9 |         9 |         9 |         9 |         9 |         9 |         9 |      1464 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2535 |
|                    Δ                     |      2633 |      2633 |      2633 |      2633 |      2633 |      2633 |      2633 |      1071 |
|              Improvement %               |    -29256 |    -29256 |    -29256 |    -29256 |    -29256 |    -29256 |    -29256 |      1071 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      1178 |      1308 |      1316 |      1325 |      1343 |      1382 |      1505 |       754 |
|                  jbird                   |       665 |       726 |       732 |       739 |       748 |       784 |       838 |      1349 |
|                    Δ                     |      -513 |      -582 |      -584 |      -586 |      -595 |      -598 |      -667 |       595 |
|              Improvement %               |        44 |        44 |        44 |        44 |        44 |        43 |        44 |       595 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      1181 |      1312 |      1320 |      1330 |      1349 |      1388 |      1509 |       754 |
|                  jbird                   |       669 |       730 |       736 |       743 |       753 |       789 |       841 |      1349 |
|                    Δ                     |      -512 |      -582 |      -584 |      -587 |      -596 |      -599 |      -668 |       595 |
|              Improvement %               |        43 |        44 |        44 |        44 |        44 |        43 |        44 |       595 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       849 |       765 |       760 |       755 |       745 |       723 |       664 |       754 |
|                  jbird                   |      1503 |      1378 |      1367 |      1354 |      1338 |      1276 |      1194 |      1349 |
|                    Δ                     |       654 |       613 |       607 |       599 |       593 |       553 |       530 |       595 |
|              Improvement %               |        77 |        80 |        80 |        79 |        80 |        76 |        80 |       595 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        30 |        32 |        32 |        32 |        32 |        32 |        32 |       754 |
|                  jbird                   |        32 |        34 |        34 |        34 |        34 |        35 |        35 |      1349 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         3 |         3 |       595 |
|              Improvement %               |        -7 |        -6 |        -6 |        -6 |        -6 |        -9 |        -9 |       595 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       754 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1349 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       595 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       595 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       754 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1349 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       595 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       595 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        10 |        10 |        10 |        10 |        10 |        10 |        10 |       754 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1349 |
|                    Δ                     |      5266 |      5266 |      5266 |      5266 |      5266 |      5266 |      5266 |       595 |
|              Improvement %               |    -52660 |    -52660 |    -52660 |    -52660 |    -52660 |    -52660 |    -52660 |       595 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      1288 |      1288 |      1288 |      1288 |      1288 |      1288 |      1288 |       754 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1349 |
|                    Δ                     |      1460 |      1460 |      1460 |      1460 |      1460 |      1460 |      1460 |       595 |
|              Improvement %               |      -113 |      -113 |      -113 |      -113 |      -113 |      -113 |      -113 |       595 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        31 |        31 |        31 |        31 |        31 |        31 |        32 |       754 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1349 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       595 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        47 |       595 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        10 |        10 |        10 |        10 |        10 |        10 |        10 |       754 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1349 |
|                    Δ                     |      5266 |      5266 |      5266 |      5266 |      5266 |      5266 |      5266 |       595 |
|              Improvement %               |    -52660 |    -52660 |    -52660 |    -52660 |    -52660 |    -52660 |    -52660 |       595 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      1211 |      1336 |      1345 |      1358 |      1377 |      1422 |      1478 |       738 |
|                  jbird                   |       689 |       756 |       760 |       765 |       772 |       800 |       828 |      1301 |
|                    Δ                     |      -522 |      -580 |      -585 |      -593 |      -605 |      -622 |      -650 |       563 |
|              Improvement %               |        43 |        43 |        43 |        44 |        44 |        44 |        44 |       563 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      1214 |      1340 |      1350 |      1362 |      1380 |      1425 |      1482 |       738 |
|                  jbird                   |       692 |       759 |       764 |       770 |       777 |       803 |       832 |      1301 |
|                    Δ                     |      -522 |      -581 |      -586 |      -592 |      -603 |      -622 |      -650 |       563 |
|              Improvement %               |        43 |        43 |        43 |        43 |        44 |        44 |        44 |       563 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       826 |       749 |       744 |       737 |       727 |       703 |       676 |       738 |
|                  jbird                   |      1452 |      1324 |      1315 |      1307 |      1296 |      1251 |      1207 |      1301 |
|                    Δ                     |       626 |       575 |       571 |       570 |       569 |       548 |       531 |       563 |
|              Improvement %               |        76 |        77 |        77 |        77 |        78 |        78 |        79 |       563 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        30 |        32 |        32 |        32 |        32 |        32 |        32 |       738 |
|                  jbird                   |        32 |        34 |        34 |        34 |        34 |        34 |        34 |      1301 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       563 |
|              Improvement %               |        -7 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       563 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       738 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1301 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       563 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       563 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       738 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1301 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       563 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       563 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        10 |        10 |        10 |        10 |        10 |        10 |        10 |       738 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1301 |
|                    Δ                     |      5266 |      5266 |      5266 |      5266 |      5266 |      5266 |      5266 |       563 |
|              Improvement %               |    -52660 |    -52660 |    -52660 |    -52660 |    -52660 |    -52660 |    -52660 |       563 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      1288 |      1288 |      1288 |      1288 |      1288 |      1288 |      1288 |       738 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1301 |
|                    Δ                     |      1460 |      1460 |      1460 |      1460 |      1460 |      1460 |      1460 |       563 |
|              Improvement %               |      -113 |      -113 |      -113 |      -113 |      -113 |      -113 |      -113 |       563 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       738 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1301 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -16 |       -16 |       563 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        48 |       563 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        10 |        10 |        10 |        10 |        10 |        10 |        10 |       738 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1301 |
|                    Δ                     |      5266 |      5266 |      5266 |      5266 |      5266 |      5266 |      5266 |       563 |
|              Improvement %               |    -52660 |    -52660 |    -52660 |    -52660 |    -52660 |    -52660 |    -52660 |       563 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        77 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         8 |       138 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -5 |        61 |
|              Improvement %               |        46 |        46 |        46 |        46 |        46 |        46 |        38 |        61 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        77 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         8 |       138 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -5 |        61 |
|              Improvement %               |        46 |        46 |        46 |        46 |        46 |        46 |        38 |        61 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        80 |        77 |        77 |        76 |        76 |        75 |        75 |        77 |
|                  jbird                   |       146 |       139 |       138 |       138 |       137 |       135 |       133 |       138 |
|                    Δ                     |        66 |        62 |        61 |        62 |        61 |        60 |        58 |        61 |
|              Improvement %               |        82 |        81 |        79 |        82 |        80 |        80 |        77 |        61 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        39 |        40 |        40 |        40 |        40 |        40 |        40 |        77 |
|                  jbird                   |        56 |        59 |        59 |        59 |        59 |        59 |        59 |       138 |
|                    Δ                     |        17 |        19 |        19 |        19 |        19 |        19 |        19 |        61 |
|              Improvement %               |       -44 |       -48 |       -48 |       -48 |       -48 |       -48 |       -48 |        61 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        77 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        61 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        61 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        77 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        61 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        61 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        77 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       138 |
|                    Δ                     |     52581 |     52581 |     52581 |     52581 |     52581 |     52581 |     52581 |        61 |
|              Improvement %               |   -404469 |   -404469 |   -404469 |   -404469 |   -404469 |   -404469 |   -404469 |        61 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        15 |        15 |        15 |        15 |        15 |        15 |        15 |        77 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       138 |
|                    Δ                     |        10 |        10 |        10 |        10 |        10 |        10 |        10 |        61 |
|              Improvement %               |       -67 |       -67 |       -67 |       -67 |       -67 |       -67 |       -67 |        61 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       312 |       312 |       312 |       312 |       312 |       314 |       314 |        77 |
|                  jbird                   |       157 |       158 |       158 |       158 |       158 |       158 |       159 |       138 |
|                    Δ                     |      -155 |      -154 |      -154 |      -154 |      -154 |      -156 |      -155 |        61 |
|              Improvement %               |        50 |        49 |        49 |        49 |        49 |        50 |        49 |        61 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        77 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       138 |
|                    Δ                     |     52581 |     52581 |     52581 |     52581 |     52581 |     52581 |     52581 |        61 |
|              Improvement %               |   -404469 |   -404469 |   -404469 |   -404469 |   -404469 |   -404469 |   -404469 |        61 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        13 |        13 |        13 |        13 |        14 |        14 |        14 |        75 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       130 |
|                    Δ                     |        -6 |        -5 |        -5 |        -5 |        -6 |        -6 |        -6 |        55 |
|              Improvement %               |        46 |        38 |        38 |        38 |        43 |        43 |        43 |        55 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        13 |        13 |        13 |        14 |        14 |        14 |        14 |        75 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       130 |
|                    Δ                     |        -6 |        -5 |        -5 |        -6 |        -6 |        -6 |        -6 |        55 |
|              Improvement %               |        46 |        38 |        38 |        43 |        43 |        43 |        43 |        55 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        77 |        75 |        75 |        74 |        73 |        73 |        73 |        75 |
|                  jbird                   |       136 |       131 |       130 |       129 |       128 |       127 |       127 |       130 |
|                    Δ                     |        59 |        56 |        55 |        55 |        55 |        54 |        54 |        55 |
|              Improvement %               |        77 |        75 |        73 |        74 |        75 |        74 |        74 |        55 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        40 |        40 |        40 |        40 |        40 |        40 |        40 |        75 |
|                  jbird                   |        56 |        59 |        59 |        59 |        59 |        59 |        59 |       130 |
|                    Δ                     |        16 |        19 |        19 |        19 |        19 |        19 |        19 |        55 |
|              Improvement %               |       -40 |       -48 |       -48 |       -48 |       -48 |       -48 |       -48 |        55 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        75 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       130 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        55 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        55 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        75 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       130 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        55 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        55 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        75 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       130 |
|                    Δ                     |     52581 |     52581 |     52581 |     52581 |     52581 |     52581 |     52581 |        55 |
|              Improvement %               |   -404469 |   -404469 |   -404469 |   -404469 |   -404469 |   -404469 |   -404469 |        55 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        15 |        15 |        15 |        15 |        15 |        15 |        15 |        75 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       130 |
|                    Δ                     |        10 |        10 |        10 |        10 |        10 |        10 |        10 |        55 |
|              Improvement %               |       -67 |       -67 |       -67 |       -67 |       -67 |       -67 |       -67 |        55 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       317 |       317 |       317 |       317 |       317 |       318 |       318 |        75 |
|                  jbird                   |       163 |       163 |       163 |       163 |       163 |       164 |       165 |       130 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -153 |        55 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        48 |        48 |        55 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        75 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       130 |
|                    Δ                     |     52581 |     52581 |     52581 |     52581 |     52581 |     52581 |     52581 |        55 |
|              Improvement %               |   -404469 |   -404469 |   -404469 |   -404469 |   -404469 |   -404469 |   -404469 |        55 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       148 |       163 |       166 |       168 |       171 |       184 |      9310 |      5734 |
|                  jbird                   |        84 |        94 |        95 |        96 |        99 |       114 |       128 |      9773 |
|                    Δ                     |       -64 |       -69 |       -71 |       -72 |       -72 |       -70 |     -9182 |      4039 |
|              Improvement %               |        43 |        42 |        43 |        43 |        42 |        38 |        99 |      4039 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       151 |       167 |       169 |       171 |       174 |       188 |       223 |      5734 |
|                  jbird                   |        87 |        98 |        99 |       100 |       104 |       118 |       131 |      9773 |
|                    Δ                     |       -64 |       -69 |       -70 |       -71 |       -70 |       -70 |       -92 |      4039 |
|              Improvement %               |        42 |        41 |        41 |        42 |        40 |        37 |        41 |      4039 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      6774 |      6135 |      6039 |      5967 |      5867 |      5447 |       107 |      5734 |
|                  jbird                   |     11905 |     10655 |     10543 |     10439 |     10087 |      8791 |      7835 |      9773 |
|                    Δ                     |      5131 |      4520 |      4504 |      4472 |      4220 |      3344 |      7728 |      4039 |
|              Improvement %               |        76 |        74 |        75 |        75 |        72 |        61 |      7222 |      4039 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      5734 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9773 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4039 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4039 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5734 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9773 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4039 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4039 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5734 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9773 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4039 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4039 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      5734 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9773 |
|                    Δ                     |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      4039 |
|              Improvement %               |     -9443 |     -9443 |     -9443 |     -9443 |     -9443 |     -9443 |     -9443 |      4039 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       141 |       141 |       141 |       141 |       141 |       141 |       141 |      5734 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9773 |
|                    Δ                     |       203 |       203 |       203 |       203 |       203 |       203 |       203 |      4039 |
|              Improvement %               |      -144 |      -144 |      -144 |      -144 |      -144 |      -144 |      -144 |      4039 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      3890 |      3901 |      3901 |      3901 |      3901 |      3930 |      4110 |      5734 |
|                  jbird                   |      1976 |      1977 |      1978 |      1979 |      1982 |      2009 |      2090 |      9773 |
|                    Δ                     |     -1914 |     -1924 |     -1923 |     -1922 |     -1919 |     -1921 |     -2020 |      4039 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      4039 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      5734 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9773 |
|                    Δ                     |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      4039 |
|              Improvement %               |     -9443 |     -9443 |     -9443 |     -9443 |     -9443 |     -9443 |     -9443 |      4039 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       151 |       168 |       170 |       173 |       176 |       190 |      8420 |      5572 |
|                  jbird                   |        87 |        98 |       100 |       101 |       104 |       122 |       266 |      9302 |
|                    Δ                     |       -64 |       -70 |       -70 |       -72 |       -72 |       -68 |     -8154 |      3730 |
|              Improvement %               |        42 |        42 |        41 |        42 |        41 |        36 |        97 |      3730 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       155 |       172 |       174 |       177 |       180 |       194 |       219 |      5572 |
|                  jbird                   |        90 |       102 |       103 |       105 |       109 |       125 |       245 |      9302 |
|                    Δ                     |       -65 |       -70 |       -71 |       -72 |       -71 |       -69 |        26 |      3730 |
|              Improvement %               |        42 |        41 |        41 |        41 |        39 |        36 |       -12 |      3730 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      6604 |      5947 |      5867 |      5775 |      5683 |      5263 |       119 |      5572 |
|                  jbird                   |     11489 |     10199 |     10055 |      9911 |      9591 |      8231 |      3766 |      9302 |
|                    Δ                     |      4885 |      4252 |      4188 |      4136 |      3908 |      2968 |      3647 |      3730 |
|              Improvement %               |        74 |        71 |        71 |        72 |        69 |        56 |      3065 |      3730 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      5572 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9302 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      3730 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      3730 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5572 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9302 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      3730 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      3730 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5572 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9302 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      3730 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      3730 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      5572 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9302 |
|                    Δ                     |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      3730 |
|              Improvement %               |     -9443 |     -9443 |     -9443 |     -9443 |     -9443 |     -9443 |     -9443 |      3730 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       141 |       141 |       141 |       141 |       141 |       141 |       141 |      5572 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9302 |
|                    Δ                     |       203 |       203 |       203 |       203 |       203 |       203 |       203 |      3730 |
|              Improvement %               |      -144 |      -144 |      -144 |      -144 |      -144 |      -144 |      -144 |      3730 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      3957 |      3957 |      3957 |      3957 |      3957 |      3987 |      4167 |      5572 |
|                  jbird                   |      2039 |      2047 |      2048 |      2049 |      2051 |      2079 |      2159 |      9302 |
|                    Δ                     |     -1918 |     -1910 |     -1909 |     -1908 |     -1906 |     -1908 |     -2008 |      3730 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |      3730 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      5572 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9302 |
|                    Δ                     |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      3730 |
|              Improvement %               |     -9443 |     -9443 |     -9443 |     -9443 |     -9443 |     -9443 |     -9443 |      3730 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       577 |       649 |       656 |       668 |       682 |       714 |       766 |      1499 |
|                  jbird                   |       101 |       114 |       114 |       118 |       119 |       124 |       254 |      8165 |
|                    Δ                     |      -476 |      -535 |      -542 |      -550 |      -563 |      -590 |      -512 |      6666 |
|              Improvement %               |        82 |        82 |        83 |        82 |        83 |        83 |        67 |      6666 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       581 |       653 |       660 |       672 |       687 |       720 |       770 |      1499 |
|                  jbird                   |       104 |       117 |       118 |       122 |       122 |       130 |       243 |      8165 |
|                    Δ                     |      -477 |      -536 |      -542 |      -550 |      -565 |      -590 |      -527 |      6666 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        82 |        68 |      6666 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      1732 |      1541 |      1524 |      1499 |      1466 |      1401 |      1306 |      1499 |
|                  jbird                   |      9946 |      8799 |      8759 |      8471 |      8431 |      8071 |      3937 |      8165 |
|                    Δ                     |      8214 |      7258 |      7235 |      6972 |      6965 |      6670 |      2631 |      6666 |
|              Improvement %               |       474 |       471 |       475 |       465 |       475 |       476 |       201 |      6666 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      1499 |
|                  jbird                   |        30 |        32 |        32 |        33 |        33 |        33 |        33 |      8165 |
|                    Δ                     |         0 |         1 |         1 |         2 |         2 |         2 |         2 |      6666 |
|              Improvement %               |         0 |        -3 |        -3 |        -6 |        -6 |        -6 |        -6 |      6666 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1499 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8165 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      6666 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      6666 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1499 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8165 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      6666 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      6666 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         9 |         9 |         9 |         9 |         9 |         9 |         9 |      1499 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8165 |
|                    Δ                     |        19 |        19 |        19 |        19 |        19 |        19 |        19 |      6666 |
|              Improvement %               |      -211 |      -211 |      -211 |      -211 |      -211 |      -211 |      -211 |      6666 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       436 |       436 |       436 |       436 |       436 |       436 |       436 |      1499 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      8165 |
|                    Δ                     |       722 |       722 |       722 |       722 |       722 |       722 |       722 |      6666 |
|              Improvement %               |      -166 |      -166 |      -166 |      -166 |      -166 |      -166 |      -166 |      6666 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        17 |        17 |        17 |        17 |        17 |        17 |        18 |      1499 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         4 |      8165 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |      6666 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        82 |        78 |      6666 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         9 |         9 |         9 |         9 |         9 |         9 |         9 |      1499 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8165 |
|                    Δ                     |        19 |        19 |        19 |        19 |        19 |        19 |        19 |      6666 |
|              Improvement %               |      -211 |      -211 |      -211 |      -211 |      -211 |      -211 |      -211 |      6666 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        74 |
|                  jbird                   |         6 |         6 |         6 |         6 |         6 |         6 |         7 |       168 |
|                    Δ                     |        -7 |        -8 |        -8 |        -8 |        -8 |        -8 |        -7 |        94 |
|              Improvement %               |        54 |        57 |        57 |        57 |        57 |        57 |        50 |        94 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        74 |
|                  jbird                   |         6 |         6 |         6 |         6 |         6 |         6 |         7 |       168 |
|                    Δ                     |        -7 |        -8 |        -8 |        -8 |        -8 |        -8 |        -7 |        94 |
|              Improvement %               |        54 |        57 |        57 |        57 |        57 |        57 |        50 |        94 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        76 |        74 |        73 |        73 |        72 |        72 |        72 |        74 |
|                  jbird                   |       178 |       171 |       169 |       167 |       164 |       158 |       153 |       168 |
|                    Δ                     |       102 |        97 |        96 |        94 |        92 |        86 |        81 |        94 |
|              Improvement %               |       134 |       131 |       132 |       129 |       128 |       119 |       112 |        94 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        37 |        37 |        37 |        37 |        37 |        37 |        37 |        74 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       168 |
|                    Δ                     |        11 |        15 |        15 |        15 |        15 |        15 |        15 |        94 |
|              Improvement %               |       -30 |       -41 |       -41 |       -41 |       -41 |       -41 |       -41 |        94 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        74 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       168 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        94 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        94 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        74 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       168 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        94 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        94 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        74 |
|                  jbird                   |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |       168 |
|                    Δ                     |     56079 |     56079 |     56079 |     56079 |     56079 |     56079 |     56079 |        94 |
|              Improvement %               |   -431377 |   -431377 |   -431377 |   -431377 |   -431377 |   -431377 |   -431377 |        94 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        10 |        10 |        10 |        10 |        10 |        10 |        10 |        74 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       168 |
|                    Δ                     |         9 |         9 |         9 |         9 |         9 |         9 |         9 |        94 |
|              Improvement %               |       -90 |       -90 |       -90 |       -90 |       -90 |       -90 |       -90 |        94 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       345 |       345 |       345 |       345 |       345 |       346 |       346 |        74 |
|                  jbird                   |       159 |       159 |       159 |       159 |       159 |       160 |       160 |       168 |
|                    Δ                     |      -186 |      -186 |      -186 |      -186 |      -186 |      -186 |      -186 |        94 |
|              Improvement %               |        54 |        54 |        54 |        54 |        54 |        54 |        54 |        94 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        74 |
|                  jbird                   |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |       168 |
|                    Δ                     |     56079 |     56079 |     56079 |     56079 |     56079 |     56079 |     56079 |        94 |
|              Improvement %               |   -431377 |   -431377 |   -431377 |   -431377 |   -431377 |   -431377 |   -431377 |        94 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        42 |        47 |        48 |        49 |        50 |        64 |       153 |     18139 |
|                  jbird                   |        29 |        33 |        33 |        34 |        35 |        42 |       108 |     24621 |
|                    Δ                     |       -13 |       -14 |       -15 |       -15 |       -15 |       -22 |       -45 |      6482 |
|              Improvement %               |        31 |        30 |        31 |        31 |        30 |        34 |        29 |      6482 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        45 |        51 |        51 |        53 |        54 |        68 |       171 |     18139 |
|                  jbird                   |        32 |        36 |        37 |        38 |        40 |        47 |       106 |     24621 |
|                    Δ                     |       -13 |       -15 |       -14 |       -15 |       -14 |       -21 |       -65 |      6482 |
|              Improvement %               |        29 |        29 |        27 |        28 |        26 |        31 |        38 |      6482 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        24 |        21 |        21 |        20 |        20 |        16 |         7 |     18139 |
|                  jbird                   |        35 |        31 |        30 |        30 |        28 |        24 |         9 |     24621 |
|                    Δ                     |        11 |        10 |         9 |        10 |         8 |         8 |         2 |      6482 |
|              Improvement %               |        46 |        48 |        43 |        50 |        40 |        50 |        29 |      6482 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     18139 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     24621 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      6482 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      6482 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     18139 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24621 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      6482 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      6482 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     18139 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24621 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      6482 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      6482 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     18139 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     24621 |
|                    Δ                     |       150 |       150 |       150 |       150 |       150 |       150 |       150 |      6482 |
|              Improvement %               |     -3750 |     -3750 |     -3750 |     -3750 |     -3750 |     -3750 |     -3750 |      6482 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       135 |       135 |       135 |       135 |       135 |       135 |       135 |     18139 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     24621 |
|                    Δ                     |       -44 |       -44 |       -44 |       -44 |       -44 |       -44 |       -44 |      6482 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      6482 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      1292 |      1299 |      1299 |      1299 |      1299 |      1307 |      1369 |     18139 |
|                  jbird                   |       726 |       739 |       739 |       739 |       739 |       757 |       816 |     24621 |
|                    Δ                     |      -566 |      -560 |      -560 |      -560 |      -560 |      -550 |      -553 |      6482 |
|              Improvement %               |        44 |        43 |        43 |        43 |        43 |        42 |        40 |      6482 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     18139 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     24621 |
|                    Δ                     |       150 |       150 |       150 |       150 |       150 |       150 |       150 |      6482 |
|              Improvement %               |     -3750 |     -3750 |     -3750 |     -3750 |     -3750 |     -3750 |     -3750 |      6482 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       397 |       440 |       445 |       451 |       458 |       476 |       508 |      2208 |
|                  jbird                   |        88 |        98 |        99 |        99 |       101 |       111 |       148 |      9437 |
|                    Δ                     |      -309 |      -342 |      -346 |      -352 |      -357 |      -365 |      -360 |      7229 |
|              Improvement %               |        78 |        78 |        78 |        78 |        78 |        77 |        71 |      7229 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       401 |       444 |       448 |       455 |       462 |       482 |       517 |      2208 |
|                  jbird                   |        91 |       102 |       102 |       103 |       105 |       115 |       154 |      9437 |
|                    Δ                     |      -310 |      -342 |      -346 |      -352 |      -357 |      -367 |      -363 |      7229 |
|              Improvement %               |        77 |        77 |        77 |        77 |        77 |        76 |        70 |      7229 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      2516 |      2275 |      2251 |      2221 |      2185 |      2101 |      1970 |      2208 |
|                  jbird                   |     11385 |     10191 |     10143 |     10087 |      9887 |      9015 |      6753 |      9437 |
|                    Δ                     |      8869 |      7916 |      7892 |      7866 |      7702 |      6914 |      4783 |      7229 |
|              Improvement %               |       353 |       348 |       351 |       354 |       352 |       329 |       243 |      7229 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      2208 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9437 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7229 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7229 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2208 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9437 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7229 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7229 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2208 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9437 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7229 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7229 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2208 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9437 |
|                    Δ                     |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      7229 |
|              Improvement %               |      -125 |      -125 |      -125 |      -125 |      -125 |      -125 |      -125 |      7229 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       305 |       305 |       305 |       305 |       305 |       305 |       305 |      2208 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9437 |
|                    Δ                     |       356 |       356 |       356 |       356 |       356 |       356 |       356 |      7229 |
|              Improvement %               |      -117 |      -117 |      -117 |      -117 |      -117 |      -117 |      -117 |      7229 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        10 |        10 |        10 |        10 |        10 |        10 |        11 |      2208 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      9437 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |      7229 |
|              Improvement %               |        70 |        70 |        70 |        70 |        70 |        70 |        73 |      7229 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2208 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9437 |
|                    Δ                     |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      7229 |
|              Improvement %               |      -125 |      -125 |      -125 |      -125 |      -125 |      -125 |      -125 |      7229 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       211 |       231 |       237 |       240 |       247 |       295 |       310 |      4084 |
|                  jbird                   |        59 |        67 |        68 |        70 |        71 |        80 |       133 |     13311 |
|                    Δ                     |      -152 |      -164 |      -169 |      -170 |      -176 |      -215 |      -177 |      9227 |
|              Improvement %               |        72 |        71 |        71 |        71 |        71 |        73 |        57 |      9227 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       215 |       235 |       240 |       243 |       251 |       301 |       314 |      4084 |
|                  jbird                   |        62 |        71 |        72 |        73 |        75 |        84 |       148 |     13311 |
|                    Δ                     |      -153 |      -164 |      -168 |      -170 |      -176 |      -217 |      -166 |      9227 |
|              Improvement %               |        71 |        70 |        70 |        70 |        70 |        72 |        53 |      9227 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      4733 |      4327 |      4227 |      4175 |      4057 |      3387 |      3222 |      4084 |
|                  jbird                   |     17070 |     14919 |     14711 |     14399 |     14095 |     12527 |      7540 |     13311 |
|                    Δ                     |     12337 |     10592 |     10484 |     10224 |     10038 |      9140 |      4318 |      9227 |
|              Improvement %               |       261 |       245 |       248 |       245 |       247 |       270 |       134 |      9227 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      4084 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     13311 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9227 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9227 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4084 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13311 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9227 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9227 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4084 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13311 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9227 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9227 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      4084 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13311 |
|                    Δ                     |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      9227 |
|              Improvement %               |       -43 |       -43 |       -43 |       -43 |       -43 |       -43 |       -43 |      9227 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       141 |       141 |       141 |       141 |       141 |       141 |       141 |      4084 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     13311 |
|                    Δ                     |       188 |       188 |       188 |       188 |       188 |       188 |       188 |      9227 |
|              Improvement %               |      -133 |      -133 |      -133 |      -133 |      -133 |      -133 |      -133 |      9227 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      5299 |      5304 |      5304 |      5304 |      5304 |      5333 |      5547 |      4084 |
|                  jbird                   |      1573 |      1586 |      1586 |      1586 |      1586 |      1593 |      1733 |     13311 |
|                    Δ                     |     -3726 |     -3718 |     -3718 |     -3718 |     -3718 |     -3740 |     -3814 |      9227 |
|              Improvement %               |        70 |        70 |        70 |        70 |        70 |        70 |        69 |      9227 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      4084 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13311 |
|                    Δ                     |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      9227 |
|              Improvement %               |       -43 |       -43 |       -43 |       -43 |       -43 |       -43 |       -43 |      9227 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        12 |        13 |        13 |        13 |        14 |        17 |        50 |     50411 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        14 |        36 |     56325 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -3 |        -3 |       -14 |      5914 |
|              Improvement %               |        17 |        15 |        15 |        15 |        21 |        18 |        28 |      5914 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        15 |        17 |        17 |        17 |        17 |        22 |        45 |     50411 |
|                  jbird                   |        13 |        15 |        15 |        15 |        15 |        19 |        42 |     56325 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -3 |        -3 |      5914 |
|              Improvement %               |        13 |        12 |        12 |        12 |        12 |        14 |         7 |      5914 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        86 |        76 |        75 |        75 |        74 |        60 |        20 |     50411 |
|                  jbird                   |       104 |        92 |        91 |        90 |        88 |        72 |        27 |     56325 |
|                    Δ                     |        18 |        16 |        16 |        15 |        14 |        12 |         7 |      5914 |
|              Improvement %               |        21 |        21 |        21 |        20 |        19 |        20 |        35 |      5914 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     50411 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     56325 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5914 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5914 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     50411 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     56325 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5914 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5914 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     50411 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     56325 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5914 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5914 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     50411 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     56325 |
|                    Δ                     |        73 |        73 |        73 |        73 |        73 |        73 |        73 |      5914 |
|              Improvement %               |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |      5914 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        70 |        70 |        70 |        70 |        70 |        70 |        70 |     50411 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     56325 |
|                    Δ                     |        56 |        56 |        56 |        56 |        56 |        56 |        56 |      5914 |
|              Improvement %               |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |      5914 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       270 |       282 |       282 |       282 |       282 |       283 |       317 |     50411 |
|                  jbird                   |       225 |       234 |       234 |       234 |       234 |       238 |       296 |     56325 |
|                    Δ                     |       -45 |       -48 |       -48 |       -48 |       -48 |       -45 |       -21 |      5914 |
|              Improvement %               |        17 |        17 |        17 |        17 |        17 |        16 |         7 |      5914 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     50411 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     56325 |
|                    Δ                     |        73 |        73 |        73 |        73 |        73 |        73 |        73 |      5914 |
|              Improvement %               |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |      5914 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      1979 |      2107 |      2120 |      2148 |      2230 |      2410 |      2484 |       465 |
|                  jbird                   |      1026 |      1111 |      1117 |      1126 |      1145 |      1190 |      1285 |       887 |
|                    Δ                     |      -953 |      -996 |     -1003 |     -1022 |     -1085 |     -1220 |     -1199 |       422 |
|              Improvement %               |        48 |        47 |        47 |        48 |        49 |        51 |        48 |       422 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      1984 |      2111 |      2124 |      2152 |      2234 |      2417 |      2489 |       465 |
|                  jbird                   |      1029 |      1114 |      1121 |      1132 |      1150 |      1189 |      1288 |       887 |
|                    Δ                     |      -955 |      -997 |     -1003 |     -1020 |     -1084 |     -1228 |     -1201 |       422 |
|              Improvement %               |        48 |        47 |        47 |        47 |        49 |        51 |        48 |       422 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |       505 |       475 |       472 |       466 |       448 |       415 |       403 |       465 |
|                  jbird                   |       975 |       901 |       895 |       888 |       874 |       841 |       778 |       887 |
|                    Δ                     |       470 |       426 |       423 |       422 |       426 |       426 |       375 |       422 |
|              Improvement %               |        93 |        90 |        90 |        91 |        95 |       103 |        93 |       422 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        30 |        32 |        32 |        32 |        32 |        34 |        34 |       465 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       887 |
|                    Δ                     |         3 |         3 |         3 |         3 |         3 |         1 |         1 |       422 |
|              Improvement %               |       -10 |        -9 |        -9 |        -9 |        -9 |        -3 |        -3 |       422 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       465 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       887 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       422 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       422 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       465 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       887 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       422 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       422 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        10 |        10 |        10 |        10 |        10 |        10 |        10 |       465 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       887 |
|                    Δ                     |      4041 |      4041 |      4041 |      4041 |      4041 |      4041 |      4041 |       422 |
|              Improvement %               |    -40410 |    -40410 |    -40410 |    -40410 |    -40410 |    -40410 |    -40410 |       422 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |      1812 |      1812 |      1812 |      1812 |      1812 |      1812 |      1812 |       465 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       887 |
|                    Δ                     |      2099 |      2099 |      2099 |      2099 |      2099 |      2099 |      2099 |       422 |
|              Improvement %               |      -116 |      -116 |      -116 |      -116 |      -116 |      -116 |      -116 |       422 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        47 |        47 |        47 |        47 |        47 |        47 |        48 |       465 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       887 |
|                    Δ                     |       -23 |       -23 |       -23 |       -23 |       -23 |       -22 |       -23 |       422 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        47 |        48 |       422 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                ikigajson                 |        10 |        10 |        10 |        10 |        10 |        10 |        10 |       465 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       887 |
|                    Δ                     |      4041 |      4041 |      4041 |      4041 |      4041 |      4041 |      4041 |       422 |
|              Improvement %               |    -40410 |    -40410 |    -40410 |    -40410 |    -40410 |    -40410 |    -40410 |       422 |

<p>
</details>

