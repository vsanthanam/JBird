## JBird vs Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2556 |      2746 |      2767 |      2804 |      2839 |      3252 |      3523 |       359 |
|                  jbird                   |      1270 |      1388 |      1405 |      1422 |      1442 |      1681 |      2112 |       708 |
|                    Δ                     |     -1286 |     -1358 |     -1362 |     -1382 |     -1397 |     -1571 |     -1411 |       349 |
|              Improvement %               |        50 |        49 |        49 |        49 |        49 |        48 |        40 |       349 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2559 |      2746 |      2771 |      2806 |      2839 |      3262 |      3526 |       359 |
|                  jbird                   |      1271 |      1390 |      1406 |      1424 |      1444 |      1683 |      2117 |       708 |
|                    Δ                     |     -1288 |     -1356 |     -1365 |     -1382 |     -1395 |     -1579 |     -1409 |       349 |
|              Improvement %               |        50 |        49 |        49 |        49 |        49 |        48 |        40 |       349 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       391 |       364 |       362 |       357 |       353 |       308 |       284 |       359 |
|                  jbird                   |       787 |       721 |       712 |       703 |       694 |       595 |       474 |       708 |
|                    Δ                     |       396 |       357 |       350 |       346 |       341 |       287 |       190 |       349 |
|              Improvement %               |       101 |        98 |        97 |        97 |        97 |        93 |        67 |       349 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       182 |       341 |       495 |       589 |       644 |       652 |       359 |
|                  jbird                   |        34 |        36 |        39 |        39 |        39 |        39 |        39 |       708 |
|                    Δ                     |         2 |      -146 |      -302 |      -456 |      -550 |      -605 |      -613 |       349 |
|              Improvement %               |        -6 |        80 |        89 |        92 |        93 |        94 |        94 |       349 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1398 |      1399 |      1399 |      1399 |      1399 |      1399 |      1402 |       359 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       708 |
|                    Δ                     |     -1398 |     -1399 |     -1399 |     -1399 |     -1399 |     -1399 |     -1402 |       349 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       349 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       359 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       708 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       349 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       349 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       359 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       708 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       349 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       349 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1471 |      1471 |      1471 |      1471 |      1471 |      1471 |      1475 |       359 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       708 |
|                    Δ                     |      3761 |      3761 |      3761 |      3761 |      3761 |      3761 |      3757 |       349 |
|              Improvement %               |      -256 |      -256 |      -256 |      -256 |      -256 |      -256 |      -255 |       349 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        66 |        66 |       359 |
|                  jbird                   |        31 |        31 |        31 |        31 |        31 |        31 |        33 |       708 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -34 |       -35 |       -33 |       349 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        50 |       349 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         9 |         9 |         9 |         9 |         9 |         9 |         9 |       359 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       708 |
|                    Δ                     |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |       349 |
|              Improvement %               |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |       349 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2677 |      2851 |      2882 |      2906 |      2931 |      3021 |      3099 |       347 |
|                  jbird                   |      1333 |      1461 |      1476 |      1491 |      1509 |      1545 |      1600 |       677 |
|                    Δ                     |     -1344 |     -1390 |     -1406 |     -1415 |     -1422 |     -1476 |     -1499 |       330 |
|              Improvement %               |        50 |        49 |        49 |        49 |        49 |        49 |        48 |       330 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2683 |      2853 |      2884 |      2910 |      2933 |      3027 |      3101 |       347 |
|                  jbird                   |      1335 |      1462 |      1478 |      1493 |      1511 |      1550 |      1601 |       677 |
|                    Δ                     |     -1348 |     -1391 |     -1406 |     -1417 |     -1422 |     -1477 |     -1500 |       330 |
|              Improvement %               |        50 |        49 |        49 |        49 |        48 |        49 |        48 |       330 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       374 |       351 |       347 |       344 |       341 |       331 |       323 |       347 |
|                  jbird                   |       750 |       685 |       678 |       671 |       663 |       647 |       625 |       677 |
|                    Δ                     |       376 |       334 |       331 |       327 |       322 |       316 |       302 |       330 |
|              Improvement %               |       101 |        95 |        95 |        95 |        94 |        95 |        93 |       330 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       179 |       333 |       479 |       571 |       629 |       629 |       347 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       677 |
|                    Δ                     |         2 |      -143 |      -297 |      -443 |      -535 |      -593 |      -593 |       330 |
|              Improvement %               |        -6 |        80 |        89 |        92 |        94 |        94 |        94 |       330 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1398 |      1399 |      1399 |      1399 |      1399 |      1399 |      1402 |       347 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       677 |
|                    Δ                     |     -1398 |     -1399 |     -1399 |     -1399 |     -1399 |     -1399 |     -1402 |       330 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       330 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       347 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       677 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       330 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       330 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       347 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       677 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       330 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       330 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1471 |      1471 |      1471 |      1471 |      1471 |      1471 |      1475 |       347 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       677 |
|                    Δ                     |      3761 |      3761 |      3761 |      3761 |      3761 |      3761 |      3757 |       330 |
|              Improvement %               |      -256 |      -256 |      -256 |      -256 |      -256 |      -256 |      -255 |       330 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        66 |        66 |        66 |        66 |        66 |        67 |        67 |       347 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        33 |        34 |       677 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       -33 |       330 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        51 |        49 |       330 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         9 |         9 |         9 |         9 |         9 |         9 |         9 |       347 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       677 |
|                    Δ                     |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |       330 |
|              Improvement %               |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |       330 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       628 |       693 |       701 |       709 |       717 |       752 |       811 |      1417 |
|                  jbird                   |       320 |       353 |       357 |       363 |       370 |       384 |       456 |      2766 |
|                    Δ                     |      -308 |      -340 |      -344 |      -346 |      -347 |      -368 |      -355 |      1349 |
|              Improvement %               |        49 |        49 |        49 |        49 |        48 |        49 |        44 |      1349 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       629 |       695 |       703 |       710 |       719 |       753 |       813 |      1417 |
|                  jbird                   |       321 |       354 |       359 |       365 |       372 |       386 |       434 |      2766 |
|                    Δ                     |      -308 |      -341 |      -344 |      -345 |      -347 |      -367 |      -379 |      1349 |
|              Improvement %               |        49 |        49 |        49 |        49 |        48 |        49 |        47 |      1349 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1592 |      1443 |      1427 |      1412 |      1394 |      1330 |      1233 |      1417 |
|                  jbird                   |      3128 |      2839 |      2801 |      2755 |      2707 |      2603 |      2195 |      2766 |
|                    Δ                     |      1536 |      1396 |      1374 |      1343 |      1313 |      1273 |       962 |      1349 |
|              Improvement %               |        96 |        97 |        96 |        95 |        94 |        96 |        78 |      1349 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       184 |       339 |       496 |       589 |       650 |       650 |      1417 |
|                  jbird                   |        31 |        32 |        33 |        33 |        33 |        33 |        33 |      2766 |
|                    Δ                     |         1 |      -152 |      -306 |      -463 |      -556 |      -617 |      -617 |      1349 |
|              Improvement %               |        -3 |        83 |        90 |        93 |        94 |        95 |        95 |      1349 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |      1417 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2766 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      1349 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1349 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3747 |      1417 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2766 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |      1349 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1349 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1417 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2766 |
|                    Δ                     |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1112 |      1349 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      1349 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       379 |       379 |       379 |       379 |       379 |       383 |      1417 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2766 |
|                    Δ                     |       995 |       995 |       995 |       995 |       995 |       995 |       991 |      1349 |
|              Improvement %               |      -263 |      -263 |      -263 |      -263 |      -263 |      -263 |      -259 |      1349 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1417 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2766 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |      1349 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        53 |        53 |      1349 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      1417 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2766 |
|                    Δ                     |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      1349 |
|              Improvement %               |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |      1349 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       646 |       715 |       726 |       733 |       743 |       791 |       844 |      1372 |
|                  jbird                   |       334 |       368 |       373 |       378 |       385 |       401 |       463 |      2652 |
|                    Δ                     |      -312 |      -347 |      -353 |      -355 |      -358 |      -390 |      -381 |      1280 |
|              Improvement %               |        48 |        49 |        49 |        48 |        48 |        49 |        45 |      1280 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       648 |       717 |       727 |       735 |       745 |       793 |       845 |      1372 |
|                  jbird                   |       336 |       370 |       375 |       380 |       387 |       402 |       467 |      2652 |
|                    Δ                     |      -312 |      -347 |      -352 |      -355 |      -358 |      -391 |      -378 |      1280 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        49 |        45 |      1280 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1547 |      1398 |      1379 |      1364 |      1346 |      1264 |      1185 |      1372 |
|                  jbird                   |      2991 |      2717 |      2683 |      2647 |      2601 |      2495 |      2161 |      2652 |
|                    Δ                     |      1444 |      1319 |      1304 |      1283 |      1255 |      1231 |       976 |      1280 |
|              Improvement %               |        93 |        94 |        95 |        94 |        93 |        97 |        82 |      1280 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       177 |       330 |       481 |       572 |       627 |       634 |      1372 |
|                  jbird                   |        31 |        32 |        32 |        32 |        33 |        33 |        33 |      2652 |
|                    Δ                     |         1 |      -145 |      -298 |      -449 |      -539 |      -594 |      -601 |      1280 |
|              Improvement %               |        -3 |        82 |        90 |        93 |        94 |        95 |        95 |      1280 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |      1372 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2652 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      1280 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1280 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3747 |      1372 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2652 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |      1280 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1280 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1372 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2652 |
|                    Δ                     |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1112 |      1280 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      1280 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       379 |       379 |       379 |       379 |       379 |       383 |      1372 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2652 |
|                    Δ                     |       995 |       995 |       995 |       995 |       995 |       995 |       991 |      1280 |
|              Improvement %               |      -263 |      -263 |      -263 |      -263 |      -263 |      -263 |      -259 |      1280 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        17 |        17 |        17 |      1372 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      2652 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |        -8 |      1280 |
|              Improvement %               |        50 |        50 |        50 |        50 |        53 |        53 |        47 |      1280 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      1372 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2652 |
|                    Δ                     |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      1280 |
|              Improvement %               |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |      1280 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1261 |      1353 |      1366 |      1396 |      1414 |      1468 |      1596 |       726 |
|                  jbird                   |       640 |       701 |       712 |       722 |       732 |       755 |       827 |      1401 |
|                    Δ                     |      -621 |      -652 |      -654 |      -674 |      -682 |      -713 |      -769 |       675 |
|              Improvement %               |        49 |        48 |        48 |        48 |        48 |        49 |        48 |       675 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1262 |      1355 |      1369 |      1398 |      1416 |      1469 |      1584 |       726 |
|                  jbird                   |       642 |       703 |       713 |       724 |       733 |       758 |       829 |      1401 |
|                    Δ                     |      -620 |      -652 |      -656 |      -674 |      -683 |      -711 |      -755 |       675 |
|              Improvement %               |        49 |        48 |        48 |        48 |        48 |        48 |        48 |       675 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       793 |       739 |       732 |       717 |       707 |       681 |       627 |       726 |
|                  jbird                   |      1562 |      1426 |      1405 |      1385 |      1367 |      1326 |      1209 |      1401 |
|                    Δ                     |       769 |       687 |       673 |       668 |       660 |       645 |       582 |       675 |
|              Improvement %               |        97 |        93 |        92 |        93 |        93 |        95 |        93 |       675 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       184 |       343 |       500 |       602 |       654 |       662 |       726 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1401 |
|                    Δ                     |         0 |      -151 |      -310 |      -467 |      -569 |      -621 |      -629 |       675 |
|              Improvement %               |         0 |        82 |        90 |        93 |        95 |        95 |        95 |       675 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       703 |       703 |       703 |       703 |       703 |       703 |       707 |       726 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1401 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -707 |       675 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       675 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7431 |       726 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1401 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |       675 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       675 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       726 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1401 |
|                    Δ                     |     -2162 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |       675 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       675 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       743 |       743 |       743 |       743 |       743 |       747 |       726 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1401 |
|                    Δ                     |      2005 |      2005 |      2005 |      2005 |      2005 |      2005 |      2001 |       675 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -270 |      -270 |      -268 |       675 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        33 |        33 |       726 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1401 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -17 |       -17 |       675 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        52 |        52 |       675 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |       726 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1401 |
|                    Δ                     |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |       675 |
|              Improvement %               |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |       675 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1288 |      1404 |      1416 |      1435 |      1450 |      1497 |      1528 |       703 |
|                  jbird                   |       672 |       736 |       744 |       753 |       763 |       792 |       821 |      1340 |
|                    Δ                     |      -616 |      -668 |      -672 |      -682 |      -687 |      -705 |      -707 |       637 |
|              Improvement %               |        48 |        48 |        47 |        48 |        47 |        47 |        46 |       637 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1289 |      1406 |      1419 |      1437 |      1451 |      1499 |      1530 |       703 |
|                  jbird                   |       673 |       737 |       745 |       754 |       764 |       791 |       822 |      1340 |
|                    Δ                     |      -616 |      -669 |      -674 |      -683 |      -687 |      -708 |      -708 |       637 |
|              Improvement %               |        48 |        48 |        47 |        48 |        47 |        47 |        46 |       637 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       777 |       712 |       706 |       698 |       690 |       668 |       654 |       703 |
|                  jbird                   |      1489 |      1360 |      1344 |      1328 |      1311 |      1263 |      1218 |      1340 |
|                    Δ                     |       712 |       648 |       638 |       630 |       621 |       595 |       564 |       637 |
|              Improvement %               |        92 |        91 |        90 |        90 |        90 |        89 |        86 |       637 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       179 |       333 |       490 |       582 |       635 |       643 |       703 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1340 |
|                    Δ                     |         0 |      -146 |      -300 |      -457 |      -549 |      -602 |      -610 |       637 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |       637 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       703 |       703 |       703 |       703 |       703 |       703 |       707 |       703 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1340 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -707 |       637 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       637 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7431 |       703 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1340 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |       637 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       637 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       703 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1340 |
|                    Δ                     |     -2162 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |       637 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       637 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       743 |       743 |       743 |       743 |       743 |       747 |       703 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1340 |
|                    Δ                     |      2005 |      2005 |      2005 |      2005 |      2005 |      2005 |      2001 |       637 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -270 |      -270 |      -268 |       637 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       703 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1340 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -18 |       -17 |       637 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        50 |       637 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |       703 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1340 |
|                    Δ                     |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |       637 |
|              Improvement %               |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |       637 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        74 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       143 |
|                    Δ                     |        -6 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        69 |
|              Improvement %               |        46 |        50 |        50 |        50 |        50 |        50 |        50 |        69 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        74 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       143 |
|                    Δ                     |        -6 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        69 |
|              Improvement %               |        46 |        50 |        50 |        50 |        50 |        50 |        50 |        69 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        74 |        73 |        72 |        72 |        71 |        71 |        74 |
|                  jbird                   |       150 |       144 |       142 |       141 |       140 |       138 |       136 |       143 |
|                    Δ                     |        74 |        70 |        69 |        69 |        68 |        67 |        65 |        69 |
|              Improvement %               |        97 |        95 |        95 |        96 |        94 |        94 |        92 |        69 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        47 |       200 |       359 |       519 |       612 |       674 |       674 |        74 |
|                  jbird                   |        56 |        58 |        58 |        58 |        58 |        58 |        58 |       143 |
|                    Δ                     |         9 |      -142 |      -301 |      -461 |      -554 |      -616 |      -616 |        69 |
|              Improvement %               |       -19 |        71 |        84 |        89 |        91 |        91 |        91 |        69 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        74 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       143 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |        69 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        69 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        74 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       143 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        69 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        69 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        74 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       143 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        69 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        69 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7232 |      7233 |      7233 |      7233 |      7233 |      7233 |      7233 |        74 |
|                  jbird                   |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |       143 |
|                    Δ                     |     18137 |     18136 |     18136 |     18136 |     18136 |     18136 |     18136 |        69 |
|              Improvement %               |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |        69 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       322 |       322 |       323 |       323 |       323 |       327 |       327 |        74 |
|                  jbird                   |       156 |       156 |       156 |       156 |       156 |       157 |       158 |       143 |
|                    Δ                     |      -166 |      -166 |      -167 |      -167 |      -167 |      -170 |      -169 |        69 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |        69 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        74 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       143 |
|                    Δ                     |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |        69 |
|              Improvement %               |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |        69 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        15 |        15 |        71 |
|                  jbird                   |         7 |         7 |         7 |         7 |         8 |         8 |         8 |       135 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -6 |        -7 |        -7 |        64 |
|              Improvement %               |        50 |        50 |        50 |        50 |        43 |        47 |        47 |        64 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        15 |        15 |        71 |
|                  jbird                   |         7 |         7 |         7 |         7 |         8 |         8 |         8 |       135 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -6 |        -7 |        -7 |        64 |
|              Improvement %               |        50 |        50 |        50 |        50 |        43 |        47 |        47 |        64 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        71 |        71 |        70 |        70 |        69 |        69 |        71 |
|                  jbird                   |       143 |       136 |       135 |       134 |       133 |       132 |       131 |       135 |
|                    Δ                     |        69 |        65 |        64 |        64 |        63 |        63 |        62 |        64 |
|              Improvement %               |        93 |        92 |        90 |        91 |        90 |        91 |        90 |        64 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        47 |       190 |       351 |       505 |       590 |       651 |       651 |        71 |
|                  jbird                   |        56 |        58 |        71 |        73 |        73 |        73 |        73 |       135 |
|                    Δ                     |         9 |      -132 |      -280 |      -432 |      -517 |      -578 |      -578 |        64 |
|              Improvement %               |       -19 |        69 |        80 |        86 |        88 |        89 |        89 |        64 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        71 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       135 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |        64 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        71 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       135 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        64 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        71 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       135 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        64 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        64 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7232 |      7233 |      7233 |      7233 |      7233 |      7233 |      7233 |        71 |
|                  jbird                   |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |       135 |
|                    Δ                     |     18137 |     18136 |     18136 |     18136 |     18136 |     18136 |     18136 |        64 |
|              Improvement %               |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |        64 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       327 |       328 |       328 |       328 |       329 |       332 |       332 |        71 |
|                  jbird                   |       162 |       162 |       162 |       162 |       162 |       164 |       166 |       135 |
|                    Δ                     |      -165 |      -166 |      -166 |      -166 |      -167 |      -168 |      -166 |        64 |
|              Improvement %               |        50 |        51 |        51 |        51 |        51 |        51 |        50 |        64 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        71 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       135 |
|                    Δ                     |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |        64 |
|              Improvement %               |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |        64 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       157 |       174 |       179 |       183 |       187 |       200 |       231 |      5484 |
|                  jbird                   |        81 |        86 |        91 |        92 |        95 |       108 |       133 |     10717 |
|                    Δ                     |       -76 |       -88 |       -88 |       -91 |       -92 |       -92 |       -98 |      5233 |
|              Improvement %               |        48 |        51 |        49 |        50 |        49 |        46 |        42 |      5233 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       159 |       176 |       180 |       185 |       189 |       202 |       228 |      5484 |
|                  jbird                   |        82 |        88 |        92 |        94 |        96 |       108 |       130 |     10717 |
|                    Δ                     |       -77 |       -88 |       -88 |       -91 |       -93 |       -94 |       -98 |      5233 |
|              Improvement %               |        48 |        50 |        49 |        49 |        49 |        47 |        43 |      5233 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6359 |      5747 |      5595 |      5467 |      5355 |      5003 |      4328 |      5484 |
|                  jbird                   |     12384 |     11583 |     11023 |     10879 |     10575 |      9239 |      7533 |     10717 |
|                    Δ                     |      6025 |      5836 |      5428 |      5412 |      5220 |      4236 |      3205 |      5233 |
|              Improvement %               |        95 |       102 |        97 |        99 |        97 |        85 |        74 |      5233 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       187 |       343 |       505 |       604 |       658 |       665 |      5484 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10717 |
|                    Δ                     |         0 |      -156 |      -312 |      -474 |      -573 |      -627 |      -634 |      5233 |
|              Improvement %               |         0 |        83 |        91 |        94 |        95 |        95 |        95 |      5233 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      5484 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10717 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      5233 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5233 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       981 |       981 |       981 |       981 |       981 |       981 |       982 |      5484 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10717 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -982 |      5233 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5233 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      5484 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10717 |
|                    Δ                     |      -318 |      -318 |      -318 |      -318 |      -318 |      -318 |      -319 |      5233 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      5233 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       106 |       106 |       106 |       106 |       106 |       106 |       110 |      5484 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10717 |
|                    Δ                     |       238 |       238 |       238 |       238 |       238 |       238 |       234 |      5233 |
|              Improvement %               |      -225 |      -225 |      -225 |      -225 |      -225 |      -225 |      -213 |      5233 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4069 |      4102 |      4114 |      4125 |      4133 |      4211 |      4330 |      5484 |
|                  jbird                   |      1956 |      1958 |      1958 |      1958 |      1962 |      1976 |      2096 |     10717 |
|                    Δ                     |     -2113 |     -2144 |     -2156 |     -2167 |     -2171 |     -2235 |     -2234 |      5233 |
|              Improvement %               |        52 |        52 |        52 |        53 |        53 |        53 |        52 |      5233 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      5484 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10717 |
|                    Δ                     |       663 |       663 |       663 |       663 |       663 |       663 |       663 |      5233 |
|              Improvement %               |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |      5233 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       161 |       179 |       185 |       188 |       193 |       207 |       242 |      5322 |
|                  jbird                   |        85 |        91 |        95 |        96 |        99 |       113 |       137 |     10221 |
|                    Δ                     |       -76 |       -88 |       -90 |       -92 |       -94 |       -94 |      -105 |      4899 |
|              Improvement %               |        47 |        49 |        49 |        49 |        49 |        45 |        43 |      4899 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       162 |       181 |       186 |       190 |       194 |       209 |       241 |      5322 |
|                  jbird                   |        86 |        92 |        97 |        98 |       101 |       112 |       132 |     10221 |
|                    Δ                     |       -76 |       -89 |       -89 |       -92 |       -93 |       -97 |      -109 |      4899 |
|              Improvement %               |        47 |        49 |        48 |        48 |        48 |        46 |        45 |      4899 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6211 |      5579 |      5419 |      5311 |      5199 |      4823 |      4137 |      5322 |
|                  jbird                   |     11788 |     11031 |     10503 |     10375 |     10071 |      8863 |      7288 |     10221 |
|                    Δ                     |      5577 |      5452 |      5084 |      5064 |      4872 |      4040 |      3151 |      4899 |
|              Improvement %               |        90 |        98 |        94 |        95 |        94 |        84 |        76 |      4899 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       185 |       334 |       490 |       584 |       645 |       645 |      5322 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10221 |
|                    Δ                     |         0 |      -154 |      -303 |      -459 |      -553 |      -614 |      -614 |      4899 |
|              Improvement %               |         0 |        83 |        91 |        94 |        95 |        95 |        95 |      4899 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      5322 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10221 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      4899 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4899 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       981 |       981 |       981 |       981 |       981 |       981 |       982 |      5322 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10221 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -982 |      4899 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4899 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      5322 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10221 |
|                    Δ                     |      -318 |      -318 |      -318 |      -318 |      -318 |      -318 |      -319 |      4899 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      4899 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       106 |       106 |       106 |       106 |       106 |       106 |       110 |      5322 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10221 |
|                    Δ                     |       238 |       238 |       238 |       238 |       238 |       238 |       234 |      4899 |
|              Improvement %               |      -225 |      -225 |      -225 |      -225 |      -225 |      -225 |      -213 |      4899 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4132 |      4166 |      4176 |      4186 |      4198 |      4289 |      4386 |      5322 |
|                  jbird                   |      2025 |      2026 |      2028 |      2028 |      2031 |      2047 |      2144 |     10221 |
|                    Δ                     |     -2107 |     -2140 |     -2148 |     -2158 |     -2167 |     -2242 |     -2242 |      4899 |
|              Improvement %               |        51 |        51 |        51 |        52 |        52 |        52 |        51 |      4899 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      5322 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10221 |
|                    Δ                     |       663 |       663 |       663 |       663 |       663 |       663 |       663 |      4899 |
|              Improvement %               |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |      4899 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       282 |       311 |       316 |       325 |       331 |       347 |       426 |      3107 |
|                  jbird                   |       100 |       111 |       112 |       116 |       119 |       129 |       177 |      8507 |
|                    Δ                     |      -182 |      -200 |      -204 |      -209 |      -212 |      -218 |      -249 |      5400 |
|              Improvement %               |        65 |        64 |        65 |        64 |        64 |        63 |        58 |      5400 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       283 |       313 |       318 |       327 |       333 |       348 |       447 |      3107 |
|                  jbird                   |       101 |       113 |       114 |       118 |       121 |       131 |       181 |      8507 |
|                    Δ                     |      -182 |      -200 |      -204 |      -209 |      -212 |      -217 |      -266 |      5400 |
|              Improvement %               |        64 |        64 |        64 |        64 |        64 |        62 |        60 |      5400 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3547 |      3217 |      3163 |      3079 |      3023 |      2887 |      2346 |      3107 |
|                  jbird                   |     10025 |      8975 |      8911 |      8591 |      8423 |      7767 |      5642 |      8507 |
|                    Δ                     |      6478 |      5758 |      5748 |      5512 |      5400 |      4880 |      3296 |      5400 |
|              Improvement %               |       183 |       179 |       182 |       179 |       179 |       169 |       140 |      5400 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |        94 |       158 |       222 |       261 |       284 |       284 |      3107 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |      8507 |
|                    Δ                     |         0 |       -62 |      -126 |      -190 |      -229 |      -252 |      -252 |      5400 |
|              Improvement %               |         0 |        66 |        80 |        86 |        88 |        89 |        89 |      5400 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        80 |        80 |        80 |        80 |        80 |        84 |      3107 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8507 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -84 |      5400 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5400 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         2 |         2 |         2 |         2 |         2 |         2 |         3 |      3107 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8507 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -3 |      5400 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5400 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        14 |      3107 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8507 |
|                    Δ                     |        15 |        15 |        15 |        15 |        15 |        15 |        14 |      5400 |
|              Improvement %               |      -115 |      -115 |      -115 |      -115 |      -115 |      -115 |      -100 |      5400 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       350 |       350 |       350 |       350 |       350 |       350 |       354 |      3107 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      8507 |
|                    Δ                     |       808 |       808 |       808 |       808 |       808 |       808 |       804 |      5400 |
|              Improvement %               |      -231 |      -231 |      -231 |      -231 |      -231 |      -231 |      -227 |      5400 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8624 |      8659 |      8659 |      8659 |      8667 |      8700 |      8972 |      3107 |
|                  jbird                   |      3329 |      3330 |      3330 |      3330 |      3332 |      3344 |      3767 |      8507 |
|                    Δ                     |     -5295 |     -5329 |     -5329 |     -5329 |     -5335 |     -5356 |     -5205 |      5400 |
|              Improvement %               |        61 |        62 |        62 |        62 |        62 |        62 |        58 |      5400 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |      3107 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8507 |
|                    Δ                     |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      5400 |
|              Improvement %               |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      5400 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        12 |        12 |        13 |        13 |        13 |        13 |        81 |
|                  jbird                   |         6 |         6 |         6 |         6 |         6 |         6 |         6 |       172 |
|                    Δ                     |        -6 |        -6 |        -6 |        -7 |        -7 |        -7 |        -7 |        91 |
|              Improvement %               |        50 |        50 |        50 |        54 |        54 |        54 |        54 |        91 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        12 |        12 |        13 |        13 |        13 |        13 |        81 |
|                  jbird                   |         6 |         6 |         6 |         6 |         6 |         6 |         6 |       172 |
|                    Δ                     |        -6 |        -6 |        -6 |        -7 |        -7 |        -7 |        -7 |        91 |
|              Improvement %               |        50 |        50 |        50 |        54 |        54 |        54 |        54 |        91 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        83 |        81 |        81 |        80 |        79 |        79 |        79 |        81 |
|                  jbird                   |       181 |       173 |       171 |       170 |       168 |       167 |       167 |       172 |
|                    Δ                     |        98 |        92 |        90 |        90 |        89 |        88 |        88 |        91 |
|              Improvement %               |       118 |       114 |       111 |       112 |       113 |       111 |       111 |        91 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       216 |       382 |       555 |       664 |       724 |       724 |        81 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       172 |
|                    Δ                     |         9 |      -164 |      -330 |      -503 |      -612 |      -672 |      -672 |        91 |
|              Improvement %               |       -23 |        76 |        86 |        91 |        92 |        93 |        93 |        91 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |        81 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       172 |
|                    Δ                     |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |        91 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        91 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        81 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       172 |
|                    Δ                     |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |        91 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        91 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        81 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       172 |
|                    Δ                     |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |        91 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |        91 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6894 |      6894 |      6894 |      6894 |      6894 |      6894 |      6894 |        81 |
|                  jbird                   |     19440 |     19440 |     19440 |     19440 |     19440 |     19440 |     19440 |       172 |
|                    Δ                     |     12546 |     12546 |     12546 |     12546 |     12546 |     12546 |     12546 |        91 |
|              Improvement %               |      -182 |      -182 |      -182 |      -182 |      -182 |      -182 |      -182 |        91 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       316 |       317 |       317 |       317 |       317 |       321 |       321 |        81 |
|                  jbird                   |       157 |       157 |       157 |       158 |       158 |       158 |       159 |       172 |
|                    Δ                     |      -159 |      -160 |      -160 |      -159 |      -159 |      -163 |      -162 |        91 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        51 |        50 |        91 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       264 |       264 |       264 |       264 |       264 |       264 |       264 |        81 |
|                  jbird                   |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |       172 |
|                    Δ                     |     55828 |     55828 |     55828 |     55828 |     55828 |     55828 |     55828 |        91 |
|              Improvement %               |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |        91 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        76 |        77 |        80 |        85 |        93 |       116 |     12193 |
|                  jbird                   |        29 |        30 |        33 |        33 |        33 |        41 |        58 |     28321 |
|                    Δ                     |       -46 |       -46 |       -44 |       -47 |       -52 |       -52 |       -58 |     16128 |
|              Improvement %               |        61 |        61 |        57 |        59 |        61 |        56 |        50 |     16128 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        78 |        78 |        82 |        87 |        96 |       115 |     12193 |
|                  jbird                   |        30 |        31 |        34 |        34 |        35 |        43 |        53 |     28321 |
|                    Δ                     |       -47 |       -47 |       -44 |       -48 |       -52 |       -53 |       -62 |     16128 |
|              Improvement %               |        61 |        60 |        56 |        59 |        60 |        55 |        54 |     16128 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        12 |        11 |         9 |     12193 |
|                  jbird                   |        35 |        33 |        31 |        30 |        30 |        24 |        17 |     28321 |
|                    Δ                     |        22 |        20 |        18 |        18 |        18 |        13 |         8 |     16128 |
|              Improvement %               |       169 |       154 |       138 |       150 |       150 |       118 |        89 |     16128 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |        53 |        75 |        97 |       110 |       119 |       120 |     12193 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     28321 |
|                    Δ                     |         0 |       -23 |       -45 |       -67 |       -80 |       -89 |       -90 |     16128 |
|              Improvement %               |         0 |        43 |        60 |        69 |        73 |        75 |        75 |     16128 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4864 |      4867 |      4867 |      4867 |      4867 |      4867 |      8960 |     12193 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     28321 |
|                    Δ                     |     -4864 |     -4867 |     -4867 |     -4867 |     -4867 |     -4867 |     -8960 |     16128 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16128 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       152 |       152 |       152 |       152 |       152 |       152 |       153 |     12193 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     28321 |
|                    Δ                     |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -153 |     16128 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16128 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |     12193 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     28321 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |        -1 |     16128 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         1 |     16128 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        17 |     12193 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     28321 |
|                    Δ                     |        78 |        78 |        78 |        78 |        78 |        78 |        74 |     16128 |
|              Improvement %               |      -600 |      -600 |      -600 |      -600 |      -600 |      -600 |      -435 |     16128 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1139 |      1140 |      1141 |      1148 |      1148 |      1161 |      1254 |     12193 |
|                  jbird                   |       733 |       733 |       733 |       733 |       733 |       751 |       796 |     28321 |
|                    Δ                     |      -406 |      -407 |      -408 |      -415 |      -415 |      -410 |      -458 |     16128 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        35 |        37 |     16128 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     12193 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     28321 |
|                    Δ                     |       152 |       152 |       152 |       152 |       152 |       152 |       152 |     16128 |
|              Improvement %               |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     16128 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       238 |       265 |       269 |       273 |       277 |       293 |       314 |      3671 |
|                  jbird                   |        86 |        94 |        96 |        97 |       100 |       113 |       132 |     10064 |
|                    Δ                     |      -152 |      -171 |      -173 |      -176 |      -177 |      -180 |      -182 |      6393 |
|              Improvement %               |        64 |        65 |        64 |        64 |        64 |        61 |        58 |      6393 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       239 |       266 |       270 |       275 |       279 |       294 |       314 |      3671 |
|                  jbird                   |        88 |        95 |        98 |        99 |       102 |       113 |       134 |     10064 |
|                    Δ                     |      -151 |      -171 |      -172 |      -176 |      -177 |      -181 |      -180 |      6393 |
|              Improvement %               |        63 |        64 |        64 |        64 |        63 |        62 |        57 |      6393 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4211 |      3779 |      3725 |      3665 |      3609 |      3415 |      3180 |      3671 |
|                  jbird                   |     11611 |     10655 |     10375 |     10271 |      9991 |      8839 |      7576 |     10064 |
|                    Δ                     |      7400 |      6876 |      6650 |      6606 |      6382 |      5424 |      4396 |      6393 |
|              Improvement %               |       176 |       182 |       179 |       180 |       177 |       159 |       138 |      6393 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       110 |       191 |       270 |       318 |       350 |       350 |      3671 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10064 |
|                    Δ                     |         0 |       -79 |      -160 |      -239 |      -287 |      -319 |      -319 |      6393 |
|              Improvement %               |         0 |        72 |        84 |        89 |        90 |        91 |        91 |      6393 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        71 |        71 |        71 |        71 |        71 |        71 |        75 |      3671 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10064 |
|                    Δ                     |       -71 |       -71 |       -71 |       -71 |       -71 |       -71 |       -75 |      6393 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      6393 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       802 |       802 |       802 |       802 |       802 |       802 |       803 |      3671 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10064 |
|                    Δ                     |      -802 |      -802 |      -802 |      -802 |      -802 |      -802 |      -803 |      6393 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      6393 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3671 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |     10064 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      6393 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      6393 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       210 |       210 |       210 |       210 |       210 |       210 |       214 |      3671 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |     10064 |
|                    Δ                     |       451 |       451 |       451 |       451 |       451 |       451 |       447 |      6393 |
|              Improvement %               |      -215 |      -215 |      -215 |      -215 |      -215 |      -215 |      -209 |      6393 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7041 |      7053 |      7057 |      7062 |      7070 |      7102 |      7337 |      3671 |
|                  jbird                   |      2575 |      2576 |      2576 |      2576 |      2576 |      2591 |      2814 |     10064 |
|                    Δ                     |     -4466 |     -4477 |     -4481 |     -4486 |     -4494 |     -4511 |     -4523 |      6393 |
|              Improvement %               |        63 |        63 |        63 |        64 |        64 |        64 |        62 |      6393 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      3671 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |     10064 |
|                    Δ                     |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      6393 |
|              Improvement %               |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |      6393 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       365 |       402 |       406 |       411 |       418 |       444 |       474 |      2432 |
|                  jbird                   |        56 |        62 |        64 |        65 |        67 |        80 |       118 |     14956 |
|                    Δ                     |      -309 |      -340 |      -342 |      -346 |      -351 |      -364 |      -356 |     12524 |
|              Improvement %               |        85 |        85 |        84 |        84 |        84 |        82 |        75 |     12524 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       367 |       404 |       408 |       413 |       420 |       444 |       476 |      2432 |
|                  jbird                   |        58 |        63 |        65 |        67 |        69 |        79 |       119 |     14956 |
|                    Δ                     |      -309 |      -341 |      -343 |      -346 |      -351 |      -365 |      -357 |     12524 |
|              Improvement %               |        84 |        84 |        84 |        84 |        84 |        82 |        75 |     12524 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2739 |      2485 |      2463 |      2433 |      2397 |      2251 |      2110 |      2432 |
|                  jbird                   |     17725 |     16135 |     15751 |     15343 |     14951 |     12575 |      8484 |     14956 |
|                    Δ                     |     14986 |     13650 |     13288 |     12910 |     12554 |     10324 |      6374 |     12524 |
|              Improvement %               |       547 |       549 |       540 |       531 |       524 |       459 |       302 |     12524 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       105 |       182 |       261 |       307 |       333 |       337 |      2432 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     14956 |
|                    Δ                     |         0 |       -74 |      -151 |      -230 |      -276 |      -302 |      -306 |     12524 |
|              Improvement %               |         0 |        70 |        83 |        88 |        90 |        91 |        91 |     12524 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        89 |        89 |        89 |        89 |        89 |        89 |        93 |      2432 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14956 |
|                    Δ                     |       -89 |       -89 |       -89 |       -89 |       -89 |       -89 |       -93 |     12524 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12524 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2088 |      2089 |      2089 |      2089 |      2089 |      2089 |      2089 |      2432 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14956 |
|                    Δ                     |     -2088 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     12524 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12524 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2677 |      2677 |      2677 |      2677 |      2677 |      2677 |      2678 |      2432 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     14956 |
|                    Δ                     |     -2667 |     -2667 |     -2667 |     -2667 |     -2667 |     -2667 |     -2668 |     12524 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     12524 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       190 |       190 |       190 |       190 |       190 |       190 |       194 |      2432 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     14956 |
|                    Δ                     |       139 |       139 |       139 |       139 |       139 |       139 |       135 |     12524 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -70 |     12524 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8697 |      8708 |      8716 |      8724 |      8733 |      8929 |      9155 |      2432 |
|                  jbird                   |      1588 |      1588 |      1588 |      1588 |      1588 |      1601 |      1722 |     14956 |
|                    Δ                     |     -7109 |     -7120 |     -7128 |     -7136 |     -7145 |     -7328 |     -7433 |     12524 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        82 |        81 |     12524 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       589 |       589 |       589 |       589 |       589 |       589 |       589 |      2432 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     14956 |
|                    Δ                     |      -579 |      -579 |      -579 |      -579 |      -579 |      -579 |      -579 |     12524 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |     12524 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        72 |        76 |        82 |        83 |        85 |        94 |       140 |     11933 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        13 |        38 |     74899 |
|                    Δ                     |       -63 |       -66 |       -72 |       -73 |       -75 |       -81 |      -102 |     62966 |
|              Improvement %               |        88 |        87 |        88 |        88 |        88 |        86 |        73 |     62966 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        73 |        77 |        83 |        85 |        87 |        96 |       127 |     11933 |
|                  jbird                   |        10 |        12 |        12 |        12 |        12 |        15 |        32 |     74899 |
|                    Δ                     |       -63 |       -65 |       -71 |       -73 |       -75 |       -81 |       -95 |     62966 |
|              Improvement %               |        86 |        84 |        86 |        86 |        86 |        84 |        75 |     62966 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        13 |        12 |        12 |        12 |        11 |         7 |     11933 |
|                  jbird                   |       112 |        99 |        98 |        97 |        96 |        76 |        27 |     74899 |
|                    Δ                     |        98 |        86 |        86 |        85 |        84 |        65 |        20 |     62966 |
|              Improvement %               |       700 |       662 |       717 |       708 |       700 |       591 |       286 |     62966 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       217 |       408 |       602 |       717 |       794 |       794 |     11933 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     74899 |
|                    Δ                     |         0 |      -186 |      -377 |      -571 |      -686 |      -763 |      -763 |     62966 |
|              Improvement %               |         0 |        86 |        92 |        95 |        96 |        96 |        96 |     62966 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        58 |        58 |        58 |        58 |        58 |        58 |        62 |     11933 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     74899 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -62 |     62966 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     62966 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        80 |        80 |        80 |        80 |        80 |        81 |     11933 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     74899 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -81 |     62966 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     62966 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |     11933 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     74899 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |     62966 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |     62966 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        67 |        68 |        68 |        68 |        68 |        68 |        72 |     11933 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     74899 |
|                    Δ                     |        59 |        58 |        58 |        58 |        58 |        58 |        54 |     62966 |
|              Improvement %               |       -88 |       -85 |       -85 |       -85 |       -85 |       -85 |       -75 |     62966 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1855 |      1871 |      1879 |      1886 |      1894 |      1907 |      2009 |     11933 |
|                  jbird                   |       230 |       231 |       231 |       231 |       231 |       235 |       288 |     74899 |
|                    Δ                     |     -1625 |     -1640 |     -1648 |     -1655 |     -1663 |     -1672 |     -1721 |     62966 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        86 |     62966 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     11933 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     74899 |
|                    Δ                     |        73 |        73 |        73 |        73 |        73 |        73 |        73 |     62966 |
|              Improvement %               |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     62966 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1900 |      2026 |      2052 |      2076 |      2092 |      2163 |      2196 |       487 |
|                  jbird                   |      1016 |      1106 |      1116 |      1127 |      1141 |      1217 |      1266 |       893 |
|                    Δ                     |      -884 |      -920 |      -936 |      -949 |      -951 |      -946 |      -930 |       406 |
|              Improvement %               |        47 |        45 |        46 |        46 |        45 |        44 |        42 |       406 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1902 |      2029 |      2054 |      2078 |      2096 |      2161 |      2198 |       487 |
|                  jbird                   |      1017 |      1107 |      1117 |      1128 |      1143 |      1218 |      1268 |       893 |
|                    Δ                     |      -885 |      -922 |      -937 |      -950 |      -953 |      -943 |      -930 |       406 |
|              Improvement %               |        47 |        45 |        46 |        46 |        45 |        44 |        42 |       406 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       526 |       494 |       488 |       482 |       478 |       463 |       455 |       487 |
|                  jbird                   |       985 |       905 |       896 |       888 |       877 |       822 |       790 |       893 |
|                    Δ                     |       459 |       411 |       408 |       406 |       399 |       359 |       335 |       406 |
|              Improvement %               |        87 |        83 |        84 |        84 |        83 |        78 |        74 |       406 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       133 |       229 |       331 |       395 |       431 |       431 |       487 |
|                  jbird                   |        32 |        37 |        37 |        37 |        37 |        37 |        37 |       893 |
|                    Δ                     |         1 |       -96 |      -192 |      -294 |      -358 |      -394 |      -394 |       406 |
|              Improvement %               |        -3 |        72 |        84 |        89 |        91 |        91 |        91 |       406 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       669 |       670 |       670 |       670 |       670 |       670 |       673 |       487 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       893 |
|                    Δ                     |      -669 |      -670 |      -670 |      -670 |      -670 |      -670 |      -673 |       406 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       406 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6133 |      6134 |      6134 |      6134 |      6134 |      6134 |      6134 |       487 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       893 |
|                    Δ                     |     -6133 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |       406 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       406 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6636 |      6637 |      6637 |      6637 |      6637 |      6637 |      6637 |       487 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       893 |
|                    Δ                     |     -2585 |     -2586 |     -2586 |     -2586 |     -2586 |     -2586 |     -2586 |       406 |
|              Improvement %               |        39 |        39 |        39 |        39 |        39 |        39 |        39 |       406 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       882 |       882 |       882 |       882 |       882 |       882 |       886 |       487 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       893 |
|                    Δ                     |      3029 |      3029 |      3029 |      3029 |      3029 |      3029 |      3025 |       406 |
|              Improvement %               |      -343 |      -343 |      -343 |      -343 |      -343 |      -343 |      -341 |       406 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        44 |        44 |        44 |        44 |        44 |        45 |        45 |       487 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       893 |
|                    Δ                     |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       406 |
|              Improvement %               |        45 |        45 |        45 |        45 |        45 |        44 |        44 |       406 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       503 |       503 |       503 |       503 |       503 |       503 |       503 |       487 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       893 |
|                    Δ                     |      3548 |      3548 |      3548 |      3548 |      3548 |      3548 |      3548 |       406 |
|              Improvement %               |      -705 |      -705 |      -705 |      -705 |      -705 |      -705 |      -705 |       406 |

<p>
</details>

