## JBird vs Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2577 |      2757 |      2787 |      2810 |      2834 |      2914 |      3121 |       359 |
|                  jbird                   |      1417 |      1508 |      1536 |      1559 |      1584 |      1895 |      2282 |       648 |
|                    Δ                     |     -1160 |     -1249 |     -1251 |     -1251 |     -1250 |     -1019 |      -839 |       289 |
|              Improvement %               |        45 |        45 |        45 |        45 |        44 |        35 |        27 |       289 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2573 |      2757 |      2787 |      2814 |      2834 |      2918 |      3126 |       359 |
|                  jbird                   |      1418 |      1510 |      1537 |      1560 |      1586 |      1903 |      2278 |       648 |
|                    Δ                     |     -1155 |     -1247 |     -1250 |     -1254 |     -1248 |     -1015 |      -848 |       289 |
|              Improvement %               |        45 |        45 |        45 |        45 |        44 |        35 |        27 |       289 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       388 |       363 |       359 |       356 |       353 |       343 |       320 |       359 |
|                  jbird                   |       706 |       663 |       651 |       642 |       631 |       528 |       438 |       648 |
|                    Δ                     |       318 |       300 |       292 |       286 |       278 |       185 |       118 |       289 |
|              Improvement %               |        82 |        83 |        81 |        80 |        79 |        54 |        37 |       289 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       183 |       340 |       497 |       592 |       647 |       655 |       359 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       648 |
|                    Δ                     |         2 |      -147 |      -304 |      -461 |      -556 |      -611 |      -619 |       289 |
|              Improvement %               |        -6 |        80 |        89 |        93 |        94 |        94 |        95 |       289 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1398 |      1399 |      1399 |      1399 |      1399 |      1399 |      1402 |       359 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       648 |
|                    Δ                     |     -1398 |     -1399 |     -1399 |     -1399 |     -1399 |     -1399 |     -1402 |       289 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       289 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       359 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       648 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       289 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       289 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       359 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       648 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       289 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       289 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1471 |      1471 |      1471 |      1471 |      1471 |      1471 |      1475 |       359 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       648 |
|                    Δ                     |      3761 |      3761 |      3761 |      3761 |      3761 |      3761 |      3757 |       289 |
|              Improvement %               |      -256 |      -256 |      -256 |      -256 |      -256 |      -256 |      -255 |       289 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        66 |        66 |       359 |
|                  jbird                   |        38 |        38 |        38 |        38 |        38 |        38 |        39 |       648 |
|                    Δ                     |       -27 |       -27 |       -27 |       -27 |       -27 |       -28 |       -27 |       289 |
|              Improvement %               |        42 |        42 |        42 |        42 |        42 |        42 |        41 |       289 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         9 |         9 |         9 |         9 |         9 |         9 |         9 |       359 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       648 |
|                    Δ                     |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |       289 |
|              Improvement %               |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |       289 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2712 |      2882 |      2904 |      2929 |      2949 |      3009 |      3033 |       344 |
|                  jbird                   |      1453 |      1554 |      1571 |      1586 |      1608 |      1692 |      1766 |       636 |
|                    Δ                     |     -1259 |     -1328 |     -1333 |     -1343 |     -1341 |     -1317 |     -1267 |       292 |
|              Improvement %               |        46 |        46 |        46 |        46 |        45 |        44 |        42 |       292 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2714 |      2882 |      2906 |      2931 |      2947 |      3011 |      3040 |       344 |
|                  jbird                   |      1455 |      1556 |      1573 |      1588 |      1609 |      1694 |      1756 |       636 |
|                    Δ                     |     -1259 |     -1326 |     -1333 |     -1343 |     -1338 |     -1317 |     -1284 |       292 |
|              Improvement %               |        46 |        46 |        46 |        46 |        45 |        44 |        42 |       292 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       369 |       347 |       344 |       342 |       339 |       333 |       330 |       344 |
|                  jbird                   |       688 |       643 |       637 |       630 |       622 |       591 |       566 |       636 |
|                    Δ                     |       319 |       296 |       293 |       288 |       283 |       258 |       236 |       292 |
|              Improvement %               |        86 |        85 |        85 |        84 |        83 |        77 |        72 |       292 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       178 |       328 |       474 |       568 |       622 |       627 |       344 |
|                  jbird                   |        34 |        39 |        39 |        39 |        39 |        39 |        39 |       636 |
|                    Δ                     |         2 |      -139 |      -289 |      -435 |      -529 |      -583 |      -588 |       292 |
|              Improvement %               |        -6 |        78 |        88 |        92 |        93 |        94 |        94 |       292 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1398 |      1399 |      1399 |      1399 |      1399 |      1399 |      1402 |       344 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       636 |
|                    Δ                     |     -1398 |     -1399 |     -1399 |     -1399 |     -1399 |     -1399 |     -1402 |       292 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       292 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       344 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       636 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       292 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       292 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       344 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       636 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       292 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       292 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1471 |      1471 |      1471 |      1471 |      1471 |      1471 |      1475 |       344 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       636 |
|                    Δ                     |      3761 |      3761 |      3761 |      3761 |      3761 |      3761 |      3757 |       292 |
|              Improvement %               |      -256 |      -256 |      -256 |      -256 |      -256 |      -256 |      -255 |       292 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        66 |        66 |        66 |        66 |        66 |        67 |        67 |       344 |
|                  jbird                   |        39 |        39 |        39 |        39 |        39 |        39 |        40 |       636 |
|                    Δ                     |       -27 |       -27 |       -27 |       -27 |       -27 |       -28 |       -27 |       292 |
|              Improvement %               |        41 |        41 |        41 |        41 |        41 |        42 |        40 |       292 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         9 |         9 |         9 |         9 |         9 |         9 |         9 |       344 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       636 |
|                    Δ                     |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |       292 |
|              Improvement %               |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |       292 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       634 |       697 |       708 |       718 |       729 |       759 |       796 |      1407 |
|                  jbird                   |       356 |       383 |       391 |       398 |       407 |       432 |       486 |      2538 |
|                    Δ                     |      -278 |      -314 |      -317 |      -320 |      -322 |      -327 |      -310 |      1131 |
|              Improvement %               |        44 |        45 |        45 |        45 |        44 |        43 |        39 |      1131 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       635 |       698 |       709 |       720 |       731 |       758 |       802 |      1407 |
|                  jbird                   |       358 |       384 |       392 |       399 |       409 |       434 |       487 |      2538 |
|                    Δ                     |      -277 |      -314 |      -317 |      -321 |      -322 |      -324 |      -315 |      1131 |
|              Improvement %               |        44 |        45 |        45 |        45 |        44 |        43 |        39 |      1131 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1578 |      1435 |      1414 |      1392 |      1372 |      1317 |      1256 |      1407 |
|                  jbird                   |      2805 |      2613 |      2561 |      2515 |      2457 |      2313 |      2060 |      2538 |
|                    Δ                     |      1227 |      1178 |      1147 |      1123 |      1085 |       996 |       804 |      1131 |
|              Improvement %               |        78 |        82 |        81 |        81 |        79 |        76 |        64 |      1131 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       185 |       335 |       496 |       586 |       642 |       649 |      1407 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2538 |
|                    Δ                     |         1 |      -153 |      -303 |      -464 |      -554 |      -610 |      -617 |      1131 |
|              Improvement %               |        -3 |        83 |        90 |        94 |        95 |        95 |        95 |      1131 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |      1407 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2538 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      1131 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1131 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3747 |      1407 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2538 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |      1131 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1131 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1407 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2538 |
|                    Δ                     |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1112 |      1131 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      1131 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       379 |       379 |       379 |       379 |       379 |       383 |      1407 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2538 |
|                    Δ                     |       995 |       995 |       995 |       995 |       995 |       995 |       991 |      1131 |
|              Improvement %               |      -263 |      -263 |      -263 |      -263 |      -263 |      -263 |      -259 |      1131 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1407 |
|                  jbird                   |         9 |         9 |         9 |         9 |        10 |        10 |        10 |      2538 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -6 |        -7 |        -7 |      1131 |
|              Improvement %               |        44 |        44 |        44 |        44 |        38 |        41 |        41 |      1131 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      1407 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2538 |
|                    Δ                     |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      1131 |
|              Improvement %               |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |      1131 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       662 |       724 |       736 |       751 |       763 |       796 |       921 |      1351 |
|                  jbird                   |       362 |       386 |       394 |       402 |       411 |       438 |       510 |      2515 |
|                    Δ                     |      -300 |      -338 |      -342 |      -349 |      -352 |      -358 |      -411 |      1164 |
|              Improvement %               |        45 |        47 |        46 |        46 |        46 |        45 |        45 |      1164 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       663 |       725 |       737 |       752 |       764 |       798 |       916 |      1351 |
|                  jbird                   |       363 |       387 |       395 |       403 |       412 |       440 |       504 |      2515 |
|                    Δ                     |      -300 |      -338 |      -342 |      -349 |      -352 |      -358 |      -412 |      1164 |
|              Improvement %               |        45 |        47 |        46 |        46 |        46 |        45 |        45 |      1164 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1511 |      1382 |      1358 |      1333 |      1310 |      1256 |      1085 |      1351 |
|                  jbird                   |      2766 |      2595 |      2539 |      2489 |      2433 |      2287 |      1960 |      2515 |
|                    Δ                     |      1255 |      1213 |      1181 |      1156 |      1123 |      1031 |       875 |      1164 |
|              Improvement %               |        83 |        88 |        87 |        87 |        86 |        82 |        81 |      1164 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       176 |       327 |       471 |       566 |       616 |       623 |      1351 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      2515 |
|                    Δ                     |         1 |      -143 |      -294 |      -438 |      -533 |      -583 |      -590 |      1164 |
|              Improvement %               |        -3 |        81 |        90 |        93 |        94 |        95 |        95 |      1164 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |      1351 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2515 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      1164 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1164 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3747 |      1351 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2515 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |      1164 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1164 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1351 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2515 |
|                    Δ                     |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1112 |      1164 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      1164 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       379 |       379 |       379 |       379 |       379 |       383 |      1351 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2515 |
|                    Δ                     |       995 |       995 |       995 |       995 |       995 |       995 |       991 |      1164 |
|              Improvement %               |      -263 |      -263 |      -263 |      -263 |      -263 |      -263 |      -259 |      1164 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        17 |        17 |        17 |      1351 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      2515 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -7 |        -7 |        -7 |      1164 |
|              Improvement %               |        38 |        38 |        38 |        38 |        41 |        41 |        41 |      1164 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      1351 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2515 |
|                    Δ                     |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      1164 |
|              Improvement %               |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |      1164 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1264 |      1385 |      1410 |      1428 |      1446 |      1490 |      1566 |       710 |
|                  jbird                   |       706 |       756 |       770 |       785 |       804 |       836 |       885 |      1291 |
|                    Δ                     |      -558 |      -629 |      -640 |      -643 |      -642 |      -654 |      -681 |       581 |
|              Improvement %               |        44 |        45 |        45 |        45 |        44 |        44 |        43 |       581 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1265 |      1386 |      1411 |      1431 |      1447 |      1488 |      1562 |       710 |
|                  jbird                   |       708 |       758 |       771 |       787 |       805 |       838 |       881 |      1291 |
|                    Δ                     |      -557 |      -628 |      -640 |      -644 |      -642 |      -650 |      -681 |       581 |
|              Improvement %               |        44 |        45 |        45 |        45 |        44 |        44 |        44 |       581 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       791 |       722 |       710 |       700 |       692 |       672 |       639 |       710 |
|                  jbird                   |      1416 |      1322 |      1299 |      1273 |      1244 |      1197 |      1130 |      1291 |
|                    Δ                     |       625 |       600 |       589 |       573 |       552 |       525 |       491 |       581 |
|              Improvement %               |        79 |        83 |        83 |        82 |        80 |        78 |        77 |       581 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       182 |       339 |       493 |       589 |       641 |       648 |       710 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1291 |
|                    Δ                     |         0 |      -149 |      -306 |      -460 |      -556 |      -608 |      -615 |       581 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |       581 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       703 |       703 |       703 |       703 |       703 |       703 |       707 |       710 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1291 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -707 |       581 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       581 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7431 |       710 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1291 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |       581 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       581 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       710 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1291 |
|                    Δ                     |     -2162 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |       581 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       581 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       743 |       743 |       743 |       743 |       743 |       747 |       710 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1291 |
|                    Δ                     |      2005 |      2005 |      2005 |      2005 |      2005 |      2005 |      2001 |       581 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -270 |      -270 |      -268 |       581 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        33 |        33 |       710 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        20 |      1291 |
|                    Δ                     |       -13 |       -13 |       -13 |       -13 |       -13 |       -14 |       -13 |       581 |
|              Improvement %               |        41 |        41 |        41 |        41 |        41 |        42 |        39 |       581 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |       710 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1291 |
|                    Δ                     |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |       581 |
|              Improvement %               |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |       581 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1306 |      1437 |      1452 |      1468 |      1489 |      1522 |      1676 |       687 |
|                  jbird                   |       724 |       773 |       787 |       799 |       812 |       855 |       928 |      1266 |
|                    Δ                     |      -582 |      -664 |      -665 |      -669 |      -677 |      -667 |      -748 |       579 |
|              Improvement %               |        45 |        46 |        46 |        46 |        45 |        44 |        45 |       579 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1307 |      1439 |      1453 |      1470 |      1491 |      1527 |      1678 |       687 |
|                  jbird                   |       725 |       774 |       788 |       801 |       813 |       850 |       923 |      1266 |
|                    Δ                     |      -582 |      -665 |      -665 |      -669 |      -678 |      -677 |      -755 |       579 |
|              Improvement %               |        45 |        46 |        46 |        46 |        45 |        44 |        45 |       579 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       766 |       696 |       689 |       681 |       672 |       657 |       597 |       687 |
|                  jbird                   |      1382 |      1294 |      1271 |      1251 |      1232 |      1171 |      1078 |      1266 |
|                    Δ                     |       616 |       598 |       582 |       570 |       560 |       514 |       481 |       579 |
|              Improvement %               |        80 |        86 |        84 |        84 |        83 |        78 |        81 |       579 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       180 |       325 |       482 |       569 |       623 |       631 |       687 |
|                  jbird                   |        31 |        35 |        35 |        35 |        35 |        35 |        35 |      1266 |
|                    Δ                     |         0 |      -145 |      -290 |      -447 |      -534 |      -588 |      -596 |       579 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |       579 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       703 |       703 |       703 |       703 |       703 |       703 |       707 |       687 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1266 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -707 |       579 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       579 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7431 |       687 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1266 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |       579 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       579 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       687 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1266 |
|                    Δ                     |     -2162 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |       579 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       579 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       743 |       743 |       743 |       743 |       743 |       747 |       687 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1266 |
|                    Δ                     |      2005 |      2005 |      2005 |      2005 |      2005 |      2005 |      2001 |       579 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -270 |      -270 |      -268 |       579 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       687 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        20 |      1266 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -15 |       -14 |       579 |
|              Improvement %               |        42 |        42 |        42 |        42 |        42 |        44 |        41 |       579 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |       687 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1266 |
|                    Δ                     |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |       579 |
|              Improvement %               |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |       579 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        73 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       132 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        59 |
|              Improvement %               |        46 |        43 |        43 |        43 |        43 |        43 |        43 |        59 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        73 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       132 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        59 |
|              Improvement %               |        46 |        43 |        43 |        43 |        43 |        43 |        43 |        59 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        74 |        73 |        71 |        71 |        70 |        70 |        73 |
|                  jbird                   |       139 |       133 |       131 |       130 |       129 |       128 |       128 |       132 |
|                    Δ                     |        63 |        59 |        58 |        59 |        58 |        58 |        58 |        59 |
|              Improvement %               |        83 |        80 |        79 |        83 |        82 |        83 |        83 |        59 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        46 |       197 |       353 |       508 |       605 |       667 |       667 |        73 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       132 |
|                    Δ                     |         9 |      -139 |      -295 |      -450 |      -547 |      -609 |      -609 |        59 |
|              Improvement %               |       -20 |        71 |        84 |        89 |        90 |        91 |        91 |        59 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        73 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       132 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |        59 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        59 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        73 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       132 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        59 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        59 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        73 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       132 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        59 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        59 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7232 |      7233 |      7233 |      7233 |      7233 |      7233 |      7233 |        73 |
|                  jbird                   |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |       132 |
|                    Δ                     |     18137 |     18136 |     18136 |     18136 |     18136 |     18136 |     18136 |        59 |
|              Improvement %               |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |        59 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       322 |       323 |       323 |       323 |       323 |       325 |       325 |        73 |
|                  jbird                   |       190 |       190 |       190 |       190 |       190 |       191 |       191 |       132 |
|                    Δ                     |      -132 |      -133 |      -133 |      -133 |      -133 |      -134 |      -134 |        59 |
|              Improvement %               |        41 |        41 |        41 |        41 |        41 |        41 |        41 |        59 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        73 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       132 |
|                    Δ                     |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |        59 |
|              Improvement %               |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |        59 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        15 |        15 |        15 |        70 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       128 |
|                    Δ                     |        -7 |        -6 |        -6 |        -6 |        -7 |        -7 |        -7 |        58 |
|              Improvement %               |        50 |        43 |        43 |        43 |        47 |        47 |        47 |        58 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        15 |        15 |        15 |        70 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       128 |
|                    Δ                     |        -7 |        -6 |        -6 |        -6 |        -7 |        -7 |        -7 |        58 |
|              Improvement %               |        50 |        43 |        43 |        43 |        47 |        47 |        47 |        58 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        72 |        70 |        70 |        69 |        69 |        68 |        68 |        70 |
|                  jbird                   |       134 |       129 |       128 |       126 |       125 |       123 |       120 |       128 |
|                    Δ                     |        62 |        59 |        58 |        57 |        56 |        55 |        52 |        58 |
|              Improvement %               |        86 |        84 |        83 |        83 |        81 |        81 |        76 |        58 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        47 |       193 |       336 |       493 |       579 |       642 |       642 |        70 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       128 |
|                    Δ                     |         8 |      -135 |      -278 |      -435 |      -521 |      -584 |      -584 |        58 |
|              Improvement %               |       -17 |        70 |        83 |        88 |        90 |        91 |        91 |        58 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        70 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       128 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |        58 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        58 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        70 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       128 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        58 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        58 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        70 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       128 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        58 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        58 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7232 |      7233 |      7233 |      7233 |      7233 |      7233 |      7233 |        70 |
|                  jbird                   |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |       128 |
|                    Δ                     |     18137 |     18136 |     18136 |     18136 |     18136 |     18136 |     18136 |        58 |
|              Improvement %               |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |        58 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       327 |       328 |       328 |       328 |       328 |       330 |       330 |        70 |
|                  jbird                   |       193 |       193 |       193 |       193 |       193 |       194 |       195 |       128 |
|                    Δ                     |      -134 |      -135 |      -135 |      -135 |      -135 |      -136 |      -135 |        58 |
|              Improvement %               |        41 |        41 |        41 |        41 |        41 |        41 |        41 |        58 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        70 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       128 |
|                    Δ                     |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |        58 |
|              Improvement %               |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |        58 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       158 |       174 |       180 |       185 |       190 |       203 |       229 |      5446 |
|                  jbird                   |        88 |        92 |        98 |       101 |       103 |       114 |       138 |      9940 |
|                    Δ                     |       -70 |       -82 |       -82 |       -84 |       -87 |       -89 |       -91 |      4494 |
|              Improvement %               |        44 |        47 |        46 |        45 |        46 |        44 |        40 |      4494 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       160 |       176 |       182 |       186 |       192 |       206 |       229 |      5446 |
|                  jbird                   |        89 |        93 |        99 |       103 |       105 |       116 |       140 |      9940 |
|                    Δ                     |       -71 |       -83 |       -83 |       -83 |       -87 |       -90 |       -89 |      4494 |
|              Improvement %               |        44 |        47 |        46 |        45 |        45 |        44 |        39 |      4494 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6312 |      5743 |      5551 |      5411 |      5263 |      4923 |      4368 |      5446 |
|                  jbird                   |     11374 |     10911 |     10223 |      9911 |      9703 |      8783 |      7246 |      9940 |
|                    Δ                     |      5062 |      5168 |      4672 |      4500 |      4440 |      3860 |      2878 |      4494 |
|              Improvement %               |        80 |        90 |        84 |        83 |        84 |        78 |        66 |      4494 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       188 |       346 |       501 |       597 |       654 |       662 |      5446 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9940 |
|                    Δ                     |         0 |      -157 |      -315 |      -470 |      -566 |      -623 |      -631 |      4494 |
|              Improvement %               |         0 |        84 |        91 |        94 |        95 |        95 |        95 |      4494 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      5446 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9940 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      4494 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4494 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       981 |       981 |       981 |       981 |       981 |       981 |       982 |      5446 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9940 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -982 |      4494 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4494 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      5446 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9940 |
|                    Δ                     |      -318 |      -318 |      -318 |      -318 |      -318 |      -318 |      -319 |      4494 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      4494 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       106 |       106 |       106 |       106 |       106 |       106 |       110 |      5446 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9940 |
|                    Δ                     |       238 |       238 |       238 |       238 |       238 |       238 |       234 |      4494 |
|              Improvement %               |      -225 |      -225 |      -225 |      -225 |      -225 |      -225 |      -213 |      4494 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4077 |      4102 |      4112 |      4125 |      4133 |      4219 |      4294 |      5446 |
|                  jbird                   |      2366 |      2367 |      2370 |      2370 |      2374 |      2390 |      2496 |      9940 |
|                    Δ                     |     -1711 |     -1735 |     -1742 |     -1755 |     -1759 |     -1829 |     -1798 |      4494 |
|              Improvement %               |        42 |        42 |        42 |        43 |        43 |        43 |        42 |      4494 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      5446 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9940 |
|                    Δ                     |       663 |       663 |       663 |       663 |       663 |       663 |       663 |      4494 |
|              Improvement %               |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |      4494 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       165 |       180 |       187 |       192 |       198 |       216 |       275 |      5254 |
|                  jbird                   |        90 |        94 |       100 |       103 |       106 |       117 |       168 |      9728 |
|                    Δ                     |       -75 |       -86 |       -87 |       -89 |       -92 |       -99 |      -107 |      4474 |
|              Improvement %               |        45 |        48 |        47 |        46 |        46 |        46 |        39 |      4474 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       166 |       182 |       189 |       193 |       200 |       216 |       270 |      5254 |
|                  jbird                   |        92 |        95 |       101 |       104 |       107 |       119 |       161 |      9728 |
|                    Δ                     |       -74 |       -87 |       -88 |       -89 |       -93 |       -97 |      -109 |      4474 |
|              Improvement %               |        45 |        48 |        47 |        46 |        46 |        45 |        40 |      4474 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6074 |      5559 |      5351 |      5215 |      5055 |      4639 |      3630 |      5254 |
|                  jbird                   |     11085 |     10663 |     10039 |      9735 |      9463 |      8567 |      5945 |      9728 |
|                    Δ                     |      5011 |      5104 |      4688 |      4520 |      4408 |      3928 |      2315 |      4474 |
|              Improvement %               |        82 |        92 |        88 |        87 |        87 |        85 |        64 |      4474 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       177 |       336 |       483 |       582 |       635 |       642 |      5254 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9728 |
|                    Δ                     |         0 |      -146 |      -305 |      -452 |      -551 |      -604 |      -611 |      4474 |
|              Improvement %               |         0 |        82 |        91 |        94 |        95 |        95 |        95 |      4474 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      5254 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9728 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      4474 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4474 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       981 |       981 |       981 |       981 |       981 |       981 |       982 |      5254 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9728 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -982 |      4474 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4474 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      5254 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9728 |
|                    Δ                     |      -318 |      -318 |      -318 |      -318 |      -318 |      -318 |      -319 |      4474 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      4474 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       106 |       106 |       106 |       106 |       106 |       106 |       110 |      5254 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9728 |
|                    Δ                     |       238 |       238 |       238 |       238 |       238 |       238 |       234 |      4474 |
|              Improvement %               |      -225 |      -225 |      -225 |      -225 |      -225 |      -225 |      -213 |      4474 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4140 |      4166 |      4174 |      4186 |      4198 |      4256 |      4318 |      5254 |
|                  jbird                   |      2414 |      2415 |      2417 |      2417 |      2421 |      2439 |      2533 |      9728 |
|                    Δ                     |     -1726 |     -1751 |     -1757 |     -1769 |     -1777 |     -1817 |     -1785 |      4474 |
|              Improvement %               |        42 |        42 |        42 |        42 |        42 |        43 |        41 |      4474 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      5254 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9728 |
|                    Δ                     |       663 |       663 |       663 |       663 |       663 |       663 |       663 |      4474 |
|              Improvement %               |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |      4474 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       282 |       315 |       319 |       325 |       332 |       350 |       378 |      3095 |
|                  jbird                   |       110 |       121 |       124 |       131 |       136 |       147 |       189 |      7741 |
|                    Δ                     |      -172 |      -194 |      -195 |      -194 |      -196 |      -203 |      -189 |      4646 |
|              Improvement %               |        61 |        62 |        61 |        60 |        59 |        58 |        50 |      4646 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       284 |       316 |       320 |       326 |       334 |       350 |       378 |      3095 |
|                  jbird                   |       112 |       122 |       126 |       133 |       138 |       149 |       192 |      7741 |
|                    Δ                     |      -172 |      -194 |      -194 |      -193 |      -196 |      -201 |      -186 |      4646 |
|              Improvement %               |        61 |        61 |        61 |        59 |        59 |        57 |        49 |      4646 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3541 |      3181 |      3137 |      3083 |      3011 |      2861 |      2646 |      3095 |
|                  jbird                   |      9053 |      8303 |      8067 |      7611 |      7355 |      6815 |      5285 |      7741 |
|                    Δ                     |      5512 |      5122 |      4930 |      4528 |      4344 |      3954 |      2639 |      4646 |
|              Improvement %               |       156 |       161 |       157 |       147 |       144 |       138 |       100 |      4646 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |        92 |       156 |       220 |       258 |       282 |       285 |      3095 |
|                  jbird                   |        30 |        31 |        32 |        32 |        32 |        32 |        32 |      7741 |
|                    Δ                     |         0 |       -61 |      -124 |      -188 |      -226 |      -250 |      -253 |      4646 |
|              Improvement %               |         0 |        66 |        79 |        85 |        88 |        89 |        89 |      4646 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        80 |        80 |        80 |        80 |        80 |        84 |      3095 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7741 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -84 |      4646 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4646 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         2 |         2 |         2 |         2 |         2 |         2 |         3 |      3095 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7741 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -3 |      4646 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4646 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        14 |      3095 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7741 |
|                    Δ                     |        15 |        15 |        15 |        15 |        15 |        15 |        14 |      4646 |
|              Improvement %               |      -115 |      -115 |      -115 |      -115 |      -115 |      -115 |      -100 |      4646 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       350 |       350 |       350 |       350 |       350 |       350 |       354 |      3095 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      7741 |
|                    Δ                     |       808 |       808 |       808 |       808 |       808 |       808 |       804 |      4646 |
|              Improvement %               |      -231 |      -231 |      -231 |      -231 |      -231 |      -231 |      -227 |      4646 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8630 |      8659 |      8659 |      8659 |      8667 |      8692 |      8739 |      3095 |
|                  jbird                   |      3651 |      3652 |      3652 |      3652 |      3654 |      3668 |      4082 |      7741 |
|                    Δ                     |     -4979 |     -5007 |     -5007 |     -5007 |     -5013 |     -5024 |     -4657 |      4646 |
|              Improvement %               |        58 |        58 |        58 |        58 |        58 |        58 |        53 |      4646 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |      3095 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7741 |
|                    Δ                     |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      4646 |
|              Improvement %               |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      4646 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        12 |        13 |        13 |        13 |        13 |        13 |        79 |
|                  jbird                   |         5 |         5 |         5 |         6 |         6 |         6 |         6 |       183 |
|                    Δ                     |        -7 |        -7 |        -8 |        -7 |        -7 |        -7 |        -7 |       104 |
|              Improvement %               |        58 |        58 |        62 |        54 |        54 |        54 |        54 |       104 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        12 |        13 |        13 |        13 |        13 |        13 |        79 |
|                  jbird                   |         5 |         5 |         5 |         6 |         6 |         6 |         6 |       183 |
|                    Δ                     |        -7 |        -7 |        -8 |        -7 |        -7 |        -7 |        -7 |       104 |
|              Improvement %               |        58 |        58 |        62 |        54 |        54 |        54 |        54 |       104 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        83 |        80 |        80 |        78 |        75 |        74 |        74 |        79 |
|                  jbird                   |       196 |       185 |       183 |       181 |       179 |       176 |       165 |       183 |
|                    Δ                     |       113 |       105 |       103 |       103 |       104 |       102 |        91 |       104 |
|              Improvement %               |       136 |       131 |       129 |       132 |       139 |       138 |       123 |       104 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        46 |       210 |       378 |       551 |       649 |       707 |       707 |        79 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       183 |
|                    Δ                     |         2 |      -158 |      -326 |      -499 |      -597 |      -655 |      -655 |       104 |
|              Improvement %               |        -4 |        75 |        86 |        91 |        92 |        93 |        93 |       104 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |        79 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       183 |
|                    Δ                     |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |       104 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       104 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        79 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       183 |
|                    Δ                     |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |       104 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       104 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        79 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       183 |
|                    Δ                     |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |       104 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |       104 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6894 |      6894 |      6894 |      6894 |      6894 |      6894 |      6894 |        79 |
|                  jbird                   |     19440 |     19440 |     19440 |     19440 |     19440 |     19440 |     19440 |       183 |
|                    Δ                     |     12546 |     12546 |     12546 |     12546 |     12546 |     12546 |     12546 |       104 |
|              Improvement %               |      -182 |      -182 |      -182 |      -182 |      -182 |      -182 |      -182 |       104 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       316 |       317 |       317 |       317 |       317 |       318 |       318 |        79 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       155 |       156 |       183 |
|                    Δ                     |      -162 |      -163 |      -163 |      -163 |      -163 |      -163 |      -162 |       104 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       104 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       264 |       264 |       264 |       264 |       264 |       264 |       264 |        79 |
|                  jbird                   |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |       183 |
|                    Δ                     |     55828 |     55828 |     55828 |     55828 |     55828 |     55828 |     55828 |       104 |
|              Improvement %               |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |       104 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        76 |        77 |        78 |        85 |        98 |       128 |     12244 |
|                  jbird                   |        50 |        51 |        52 |        57 |        58 |        68 |        85 |     17580 |
|                    Δ                     |       -25 |       -25 |       -25 |       -21 |       -27 |       -30 |       -43 |      5336 |
|              Improvement %               |        33 |        33 |        32 |        27 |        32 |        31 |        34 |      5336 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        77 |        78 |        80 |        86 |        99 |       121 |     12244 |
|                  jbird                   |        51 |        53 |        53 |        58 |        59 |        70 |        87 |     17580 |
|                    Δ                     |       -25 |       -24 |       -25 |       -22 |       -27 |       -29 |       -34 |      5336 |
|              Improvement %               |        33 |        31 |        32 |        28 |        31 |        29 |        28 |      5336 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        12 |        10 |         8 |     12244 |
|                  jbird                   |        20 |        20 |        19 |        18 |        17 |        15 |        12 |     17580 |
|                    Δ                     |         7 |         7 |         6 |         5 |         5 |         5 |         4 |      5336 |
|              Improvement %               |        54 |        54 |        46 |        38 |        42 |        50 |        50 |      5336 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |        52 |        75 |        98 |       110 |       119 |       119 |     12244 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     17580 |
|                    Δ                     |         0 |       -22 |       -45 |       -68 |       -80 |       -89 |       -89 |      5336 |
|              Improvement %               |         0 |        42 |        60 |        69 |        73 |        75 |        75 |      5336 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4864 |      4867 |      4867 |      4867 |      4867 |      4867 |      8960 |     12244 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     17580 |
|                    Δ                     |     -4864 |     -4867 |     -4867 |     -4867 |     -4867 |     -4867 |     -8960 |      5336 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5336 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       152 |       152 |       152 |       152 |       152 |       152 |       153 |     12244 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     17580 |
|                    Δ                     |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -153 |      5336 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5336 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |     12244 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     17580 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |        -1 |      5336 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         1 |      5336 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        17 |     12244 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     17580 |
|                    Δ                     |        78 |        78 |        78 |        78 |        78 |        78 |        74 |      5336 |
|              Improvement %               |      -600 |      -600 |      -600 |      -600 |      -600 |      -600 |      -435 |      5336 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1139 |      1140 |      1141 |      1148 |      1148 |      1161 |      1186 |     12244 |
|                  jbird                   |      1349 |      1350 |      1351 |      1351 |      1351 |      1368 |      1412 |     17580 |
|                    Δ                     |       210 |       210 |       210 |       203 |       203 |       207 |       226 |      5336 |
|              Improvement %               |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |       -19 |      5336 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     12244 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     17580 |
|                    Δ                     |       152 |       152 |       152 |       152 |       152 |       152 |       152 |      5336 |
|              Improvement %               |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |      5336 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       237 |       265 |       271 |       277 |       284 |       301 |       326 |      3647 |
|                  jbird                   |        95 |        99 |       103 |       109 |       112 |       126 |       189 |      9277 |
|                    Δ                     |      -142 |      -166 |      -168 |      -168 |      -172 |      -175 |      -137 |      5630 |
|              Improvement %               |        60 |        63 |        62 |        61 |        61 |        58 |        42 |      5630 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       239 |       266 |       272 |       278 |       285 |       301 |       328 |      3647 |
|                  jbird                   |        97 |       100 |       105 |       110 |       114 |       126 |       176 |      9277 |
|                    Δ                     |      -142 |      -166 |      -167 |      -168 |      -171 |      -175 |      -152 |      5630 |
|              Improvement %               |        59 |        62 |        61 |        60 |        60 |        58 |        46 |      5630 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4213 |      3781 |      3699 |      3613 |      3525 |      3327 |      3065 |      3647 |
|                  jbird                   |     10494 |     10119 |      9711 |      9191 |      8927 |      7939 |      5298 |      9277 |
|                    Δ                     |      6281 |      6338 |      6012 |      5578 |      5402 |      4612 |      2233 |      5630 |
|              Improvement %               |       149 |       168 |       163 |       154 |       153 |       139 |        73 |      5630 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       108 |       189 |       269 |       318 |       348 |       348 |      3647 |
|                  jbird                   |        30 |        31 |        31 |        31 |        32 |        32 |        32 |      9277 |
|                    Δ                     |         0 |       -77 |      -158 |      -238 |      -286 |      -316 |      -316 |      5630 |
|              Improvement %               |         0 |        71 |        84 |        88 |        90 |        91 |        91 |      5630 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        71 |        71 |        71 |        71 |        71 |        71 |        75 |      3647 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9277 |
|                    Δ                     |       -71 |       -71 |       -71 |       -71 |       -71 |       -71 |       -75 |      5630 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5630 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       802 |       802 |       802 |       802 |       802 |       802 |       803 |      3647 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9277 |
|                    Δ                     |      -802 |      -802 |      -802 |      -802 |      -802 |      -802 |      -803 |      5630 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5630 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3647 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9277 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      5630 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      5630 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       210 |       210 |       210 |       210 |       210 |       210 |       214 |      3647 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9277 |
|                    Δ                     |       451 |       451 |       451 |       451 |       451 |       451 |       447 |      5630 |
|              Improvement %               |      -215 |      -215 |      -215 |      -215 |      -215 |      -215 |      -209 |      5630 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7041 |      7057 |      7057 |      7062 |      7070 |      7098 |      7203 |      3647 |
|                  jbird                   |      2605 |      2607 |      2607 |      2607 |      2607 |      2623 |      2856 |      9277 |
|                    Δ                     |     -4436 |     -4450 |     -4450 |     -4455 |     -4463 |     -4475 |     -4347 |      5630 |
|              Improvement %               |        63 |        63 |        63 |        63 |        63 |        63 |        60 |      5630 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      3647 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9277 |
|                    Δ                     |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      5630 |
|              Improvement %               |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |      5630 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       366 |       399 |       403 |       411 |       419 |       440 |       460 |      2449 |
|                  jbird                   |        60 |        65 |        68 |        72 |        76 |        85 |       122 |     13924 |
|                    Δ                     |      -306 |      -334 |      -335 |      -339 |      -343 |      -355 |      -338 |     11475 |
|              Improvement %               |        84 |        84 |        83 |        82 |        82 |        81 |        73 |     11475 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       367 |       400 |       405 |       412 |       420 |       439 |       462 |      2449 |
|                  jbird                   |        61 |        66 |        69 |        73 |        78 |        87 |       125 |     13924 |
|                    Δ                     |      -306 |      -334 |      -336 |      -339 |      -342 |      -352 |      -337 |     11475 |
|              Improvement %               |        83 |        84 |        83 |        82 |        81 |        80 |        73 |     11475 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2733 |      2509 |      2479 |      2435 |      2391 |      2277 |      2172 |      2449 |
|                  jbird                   |     16771 |     15487 |     14735 |     13903 |     13103 |     11735 |      8225 |     13924 |
|                    Δ                     |     14038 |     12978 |     12256 |     11468 |     10712 |      9458 |      6053 |     11475 |
|              Improvement %               |       514 |       517 |       494 |       471 |       448 |       415 |       279 |     11475 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       108 |       185 |       263 |       310 |       337 |       341 |      2449 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     13924 |
|                    Δ                     |         0 |       -77 |      -154 |      -232 |      -279 |      -306 |      -310 |     11475 |
|              Improvement %               |         0 |        71 |        83 |        88 |        90 |        91 |        91 |     11475 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        89 |        89 |        89 |        89 |        89 |        89 |        93 |      2449 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13924 |
|                    Δ                     |       -89 |       -89 |       -89 |       -89 |       -89 |       -89 |       -93 |     11475 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11475 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2088 |      2089 |      2089 |      2089 |      2089 |      2089 |      2089 |      2449 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13924 |
|                    Δ                     |     -2088 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     11475 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11475 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2677 |      2677 |      2677 |      2677 |      2677 |      2677 |      2678 |      2449 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13924 |
|                    Δ                     |     -2667 |     -2667 |     -2667 |     -2667 |     -2667 |     -2667 |     -2668 |     11475 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     11475 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       190 |       190 |       190 |       190 |       190 |       190 |       194 |      2449 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     13924 |
|                    Δ                     |       139 |       139 |       139 |       139 |       139 |       139 |       135 |     11475 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -70 |     11475 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8697 |      8708 |      8716 |      8724 |      8733 |      8929 |      9125 |      2449 |
|                  jbird                   |      1574 |      1574 |      1574 |      1575 |      1575 |      1582 |      1708 |     13924 |
|                    Δ                     |     -7123 |     -7134 |     -7142 |     -7149 |     -7158 |     -7347 |     -7417 |     11475 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        82 |        81 |     11475 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       589 |       589 |       589 |       589 |       589 |       589 |       589 |      2449 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13924 |
|                    Δ                     |      -579 |      -579 |      -579 |      -579 |      -579 |      -579 |      -579 |     11475 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |     11475 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        69 |        75 |        79 |        83 |        87 |       100 |       172 |     11994 |
|                  jbird                   |        23 |        24 |        26 |        27 |        29 |        35 |        56 |     33749 |
|                    Δ                     |       -46 |       -51 |       -53 |       -56 |       -58 |       -65 |      -116 |     21755 |
|              Improvement %               |        67 |        68 |        67 |        67 |        67 |        65 |        67 |     21755 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        71 |        77 |        81 |        85 |        89 |       100 |       168 |     11994 |
|                  jbird                   |        25 |        26 |        28 |        28 |        31 |        37 |        53 |     33749 |
|                    Δ                     |       -46 |       -51 |       -53 |       -57 |       -58 |       -63 |      -115 |     21755 |
|              Improvement %               |        65 |        66 |        65 |        67 |        65 |        63 |        68 |     21755 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        13 |        13 |        12 |        12 |        10 |         6 |     11994 |
|                  jbird                   |        43 |        42 |        38 |        37 |        34 |        29 |        18 |     33749 |
|                    Δ                     |        29 |        29 |        25 |        25 |        22 |        19 |        12 |     21755 |
|              Improvement %               |       207 |       223 |       192 |       208 |       183 |       190 |       200 |     21755 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       221 |       410 |       605 |       726 |       792 |       801 |     11994 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     33749 |
|                    Δ                     |         0 |      -191 |      -380 |      -575 |      -696 |      -762 |      -771 |     21755 |
|              Improvement %               |         0 |        86 |        93 |        95 |        96 |        96 |        96 |     21755 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        58 |        58 |        58 |        58 |        58 |        58 |        62 |     11994 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     33749 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -62 |     21755 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     21755 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        80 |        80 |        80 |        80 |        80 |        81 |     11994 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     33749 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -81 |     21755 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     21755 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |     11994 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     33749 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |     21755 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |     21755 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        67 |        68 |        68 |        68 |        68 |        68 |        72 |     11994 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     33749 |
|                    Δ                     |        59 |        58 |        58 |        58 |        58 |        58 |        54 |     21755 |
|              Improvement %               |       -88 |       -85 |       -85 |       -85 |       -85 |       -85 |       -75 |     21755 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1855 |      1871 |      1879 |      1886 |      1894 |      1910 |      1940 |     11994 |
|                  jbird                   |       826 |       826 |       826 |       826 |       826 |       831 |       889 |     33749 |
|                    Δ                     |     -1029 |     -1045 |     -1053 |     -1060 |     -1068 |     -1079 |     -1051 |     21755 |
|              Improvement %               |        55 |        56 |        56 |        56 |        56 |        56 |        54 |     21755 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     11994 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     33749 |
|                    Δ                     |        73 |        73 |        73 |        73 |        73 |        73 |        73 |     21755 |
|              Improvement %               |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     21755 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1934 |      2071 |      2101 |      2120 |      2140 |      2216 |      2227 |       477 |
|                  jbird                   |      1024 |      1085 |      1101 |      1116 |      1133 |      1180 |      1282 |       906 |
|                    Δ                     |      -910 |      -986 |     -1000 |     -1004 |     -1007 |     -1036 |      -945 |       429 |
|              Improvement %               |        47 |        48 |        48 |        47 |        47 |        47 |        42 |       429 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1936 |      2071 |      2101 |      2120 |      2142 |      2216 |      2228 |       477 |
|                  jbird                   |      1026 |      1087 |      1103 |      1117 |      1134 |      1181 |      1277 |       906 |
|                    Δ                     |      -910 |      -984 |      -998 |     -1003 |     -1008 |     -1035 |      -951 |       429 |
|              Improvement %               |        47 |        48 |        48 |        47 |        47 |        47 |        43 |       429 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       517 |       483 |       476 |       472 |       468 |       452 |       449 |       477 |
|                  jbird                   |       976 |       921 |       909 |       896 |       884 |       848 |       780 |       906 |
|                    Δ                     |       459 |       438 |       433 |       424 |       416 |       396 |       331 |       429 |
|              Improvement %               |        89 |        91 |        91 |        90 |        89 |        88 |        74 |       429 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       128 |       228 |       327 |       388 |       421 |       425 |       477 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       906 |
|                    Δ                     |         1 |       -93 |      -193 |      -292 |      -353 |      -386 |      -390 |       429 |
|              Improvement %               |        -3 |        73 |        85 |        89 |        91 |        92 |        92 |       429 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       669 |       670 |       670 |       670 |       670 |       670 |       673 |       477 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       906 |
|                    Δ                     |      -669 |      -670 |      -670 |      -670 |      -670 |      -670 |      -673 |       429 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       429 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6133 |      6134 |      6134 |      6134 |      6134 |      6134 |      6134 |       477 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       906 |
|                    Δ                     |     -6133 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |       429 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       429 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6636 |      6637 |      6637 |      6637 |      6637 |      6637 |      6637 |       477 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       906 |
|                    Δ                     |     -2585 |     -2586 |     -2586 |     -2586 |     -2586 |     -2586 |     -2586 |       429 |
|              Improvement %               |        39 |        39 |        39 |        39 |        39 |        39 |        39 |       429 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       882 |       882 |       882 |       882 |       882 |       882 |       886 |       477 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       906 |
|                    Δ                     |      3029 |      3029 |      3029 |      3029 |      3029 |      3029 |      3025 |       429 |
|              Improvement %               |      -343 |      -343 |      -343 |      -343 |      -343 |      -343 |      -341 |       429 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        44 |        44 |        44 |        44 |        44 |        45 |        45 |       477 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        26 |       906 |
|                    Δ                     |       -19 |       -19 |       -19 |       -19 |       -19 |       -20 |       -19 |       429 |
|              Improvement %               |        43 |        43 |        43 |        43 |        43 |        44 |        42 |       429 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       503 |       503 |       503 |       503 |       503 |       503 |       503 |       477 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       906 |
|                    Δ                     |      3548 |      3548 |      3548 |      3548 |      3548 |      3548 |      3548 |       429 |
|              Improvement %               |      -705 |      -705 |      -705 |      -705 |      -705 |      -705 |      -705 |       429 |

<p>
</details>

