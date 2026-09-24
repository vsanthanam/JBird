## JBird vs Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2594 |      2759 |      2785 |      2816 |      2843 |      3029 |      3285 |       358 |
|                  jbird                   |      1251 |      1374 |      1390 |      1406 |      1428 |      1575 |      1946 |       716 |
|                    Δ                     |     -1343 |     -1385 |     -1395 |     -1410 |     -1415 |     -1454 |     -1339 |       358 |
|              Improvement %               |        52 |        50 |        50 |        50 |        50 |        48 |        41 |       358 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2598 |      2761 |      2785 |      2818 |      2847 |      3033 |      3288 |       358 |
|                  jbird                   |      1252 |      1376 |      1392 |      1408 |      1432 |      1577 |      1949 |       716 |
|                    Δ                     |     -1346 |     -1385 |     -1393 |     -1410 |     -1415 |     -1456 |     -1339 |       358 |
|              Improvement %               |        52 |        50 |        50 |        50 |        50 |        48 |        41 |       358 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       385 |       362 |       359 |       355 |       352 |       330 |       304 |       358 |
|                  jbird                   |       799 |       728 |       720 |       711 |       700 |       635 |       514 |       716 |
|                    Δ                     |       414 |       366 |       361 |       356 |       348 |       305 |       210 |       358 |
|              Improvement %               |       108 |       101 |       101 |       100 |        99 |        92 |        69 |       358 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       188 |       339 |       497 |       590 |       644 |       651 |       358 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       716 |
|                    Δ                     |         2 |      -152 |      -303 |      -461 |      -554 |      -608 |      -615 |       358 |
|              Improvement %               |        -6 |        81 |        89 |        93 |        94 |        94 |        94 |       358 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1398 |      1399 |      1399 |      1399 |      1399 |      1399 |      1402 |       358 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       716 |
|                    Δ                     |     -1398 |     -1399 |     -1399 |     -1399 |     -1399 |     -1399 |     -1402 |       358 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       358 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       358 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       716 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       358 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       358 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       358 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       716 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       358 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       358 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1471 |      1471 |      1471 |      1471 |      1471 |      1471 |      1475 |       358 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       716 |
|                    Δ                     |      3761 |      3761 |      3761 |      3761 |      3761 |      3761 |      3757 |       358 |
|              Improvement %               |      -256 |      -256 |      -256 |      -256 |      -256 |      -256 |      -255 |       358 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        66 |        67 |       358 |
|                  jbird                   |        31 |        31 |        31 |        31 |        31 |        32 |        33 |       716 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       358 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        51 |       358 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         9 |         9 |         9 |         9 |         9 |         9 |         9 |       358 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       716 |
|                    Δ                     |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |       358 |
|              Improvement %               |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |       358 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2669 |      2843 |      2888 |      2935 |      2961 |      3068 |      3160 |       346 |
|                  jbird                   |      1301 |      1419 |      1434 |      1447 |      1459 |      1496 |      1592 |       698 |
|                    Δ                     |     -1368 |     -1424 |     -1454 |     -1488 |     -1502 |     -1572 |     -1568 |       352 |
|              Improvement %               |        51 |        50 |        50 |        51 |        51 |        51 |        50 |       352 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2664 |      2841 |      2888 |      2935 |      2963 |      3064 |      3162 |       346 |
|                  jbird                   |      1302 |      1420 |      1436 |      1448 |      1461 |      1498 |      1589 |       698 |
|                    Δ                     |     -1362 |     -1421 |     -1452 |     -1487 |     -1502 |     -1566 |     -1573 |       352 |
|              Improvement %               |        51 |        50 |        50 |        51 |        51 |        51 |        50 |       352 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       375 |       352 |       346 |       341 |       338 |       326 |       316 |       346 |
|                  jbird                   |       769 |       705 |       698 |       692 |       686 |       669 |       628 |       698 |
|                    Δ                     |       394 |       353 |       352 |       351 |       348 |       343 |       312 |       352 |
|              Improvement %               |       105 |       100 |       102 |       103 |       103 |       105 |        99 |       352 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       179 |       332 |       482 |       575 |       625 |       633 |       346 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       698 |
|                    Δ                     |         2 |      -143 |      -296 |      -446 |      -539 |      -589 |      -597 |       352 |
|              Improvement %               |        -6 |        80 |        89 |        93 |        94 |        94 |        94 |       352 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1398 |      1399 |      1399 |      1399 |      1399 |      1399 |      1402 |       346 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       698 |
|                    Δ                     |     -1398 |     -1399 |     -1399 |     -1399 |     -1399 |     -1399 |     -1402 |       352 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       352 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       346 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       698 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       352 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       352 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       346 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       698 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       352 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       352 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1471 |      1471 |      1471 |      1471 |      1471 |      1471 |      1475 |       346 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       698 |
|                    Δ                     |      3761 |      3761 |      3761 |      3761 |      3761 |      3761 |      3757 |       352 |
|              Improvement %               |      -256 |      -256 |      -256 |      -256 |      -256 |      -256 |      -255 |       352 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        66 |        66 |        66 |        66 |        66 |        67 |        68 |       346 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       698 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -34 |       -35 |       -35 |       352 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        51 |       352 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         9 |         9 |         9 |         9 |         9 |         9 |         9 |       346 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       698 |
|                    Δ                     |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |       352 |
|              Improvement %               |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |       352 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       626 |       690 |       703 |       731 |       750 |       776 |       814 |      1402 |
|                  jbird                   |       315 |       345 |       350 |       356 |       364 |       377 |       403 |      2824 |
|                    Δ                     |      -311 |      -345 |      -353 |      -375 |      -386 |      -399 |      -411 |      1422 |
|              Improvement %               |        50 |        50 |        50 |        51 |        51 |        51 |        50 |      1422 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       628 |       691 |       705 |       732 |       752 |       777 |       816 |      1402 |
|                  jbird                   |       316 |       346 |       351 |       358 |       366 |       379 |       407 |      2824 |
|                    Δ                     |      -312 |      -345 |      -354 |      -374 |      -386 |      -398 |      -409 |      1422 |
|              Improvement %               |        50 |        50 |        50 |        51 |        51 |        51 |        50 |      1422 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1597 |      1451 |      1422 |      1369 |      1334 |      1290 |      1228 |      1402 |
|                  jbird                   |      3176 |      2903 |      2859 |      2807 |      2749 |      2651 |      2482 |      2824 |
|                    Δ                     |      1579 |      1452 |      1437 |      1438 |      1415 |      1361 |      1254 |      1422 |
|              Improvement %               |        99 |       100 |       101 |       105 |       106 |       106 |       102 |      1422 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       180 |       340 |       493 |       585 |       644 |       644 |      1402 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2824 |
|                    Δ                     |         1 |      -148 |      -308 |      -461 |      -553 |      -612 |      -612 |      1422 |
|              Improvement %               |        -3 |        82 |        91 |        94 |        95 |        95 |        95 |      1422 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |      1402 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2824 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      1422 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1422 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3747 |      1402 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2824 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |      1422 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1422 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1402 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2824 |
|                    Δ                     |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1112 |      1422 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      1422 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       379 |       379 |       379 |       379 |       379 |       383 |      1402 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2824 |
|                    Δ                     |       995 |       995 |       995 |       995 |       995 |       995 |       991 |      1422 |
|              Improvement %               |      -263 |      -263 |      -263 |      -263 |      -263 |      -263 |      -259 |      1422 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1402 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2824 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |      1422 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        53 |        53 |      1422 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      1402 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2824 |
|                    Δ                     |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      1422 |
|              Improvement %               |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |      1422 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       656 |       721 |       732 |       747 |       766 |       795 |       834 |      1355 |
|                  jbird                   |       324 |       356 |       360 |       367 |       374 |       389 |       467 |      2746 |
|                    Δ                     |      -332 |      -365 |      -372 |      -380 |      -392 |      -406 |      -367 |      1391 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        44 |      1391 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       657 |       723 |       734 |       749 |       767 |       797 |       829 |      1355 |
|                  jbird                   |       325 |       357 |       362 |       368 |       375 |       391 |       434 |      2746 |
|                    Δ                     |      -332 |      -366 |      -372 |      -381 |      -392 |      -406 |      -395 |      1391 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        48 |      1391 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1525 |      1386 |      1366 |      1339 |      1306 |      1259 |      1199 |      1355 |
|                  jbird                   |      3088 |      2813 |      2777 |      2729 |      2679 |      2573 |      2140 |      2746 |
|                    Δ                     |      1563 |      1427 |      1411 |      1390 |      1373 |      1314 |       941 |      1391 |
|              Improvement %               |       102 |       103 |       103 |       104 |       105 |       104 |        78 |      1391 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       176 |       330 |       475 |       569 |       619 |       627 |      1355 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        33 |        33 |      2746 |
|                    Δ                     |         1 |      -144 |      -298 |      -443 |      -537 |      -586 |      -594 |      1391 |
|              Improvement %               |        -3 |        82 |        90 |        93 |        94 |        95 |        95 |      1391 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |      1355 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2746 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      1391 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1391 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3747 |      1355 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2746 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |      1391 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1391 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1355 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2746 |
|                    Δ                     |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1112 |      1391 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      1391 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       379 |       379 |       379 |       379 |       379 |       383 |      1355 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2746 |
|                    Δ                     |       995 |       995 |       995 |       995 |       995 |       995 |       991 |      1391 |
|              Improvement %               |      -263 |      -263 |      -263 |      -263 |      -263 |      -263 |      -259 |      1391 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        17 |        17 |        17 |        17 |      1355 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2746 |
|                    Δ                     |        -8 |        -8 |        -8 |        -9 |        -9 |        -9 |        -9 |      1391 |
|              Improvement %               |        50 |        50 |        50 |        53 |        53 |        53 |        53 |      1391 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      1355 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2746 |
|                    Δ                     |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      1391 |
|              Improvement %               |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |      1391 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1279 |      1382 |      1399 |      1415 |      1431 |      1464 |      1541 |       714 |
|                  jbird                   |       629 |       689 |       699 |       708 |       717 |       737 |       770 |      1428 |
|                    Δ                     |      -650 |      -693 |      -700 |      -707 |      -714 |      -727 |      -771 |       714 |
|              Improvement %               |        51 |        50 |        50 |        50 |        50 |        50 |        50 |       714 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1281 |      1383 |      1401 |      1416 |      1432 |      1464 |      1535 |       714 |
|                  jbird                   |       631 |       690 |       700 |       710 |       718 |       735 |       772 |      1428 |
|                    Δ                     |      -650 |      -693 |      -701 |      -706 |      -714 |      -729 |      -763 |       714 |
|              Improvement %               |        51 |        50 |        50 |        50 |        50 |        50 |        50 |       714 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       782 |       724 |       715 |       707 |       699 |       683 |       649 |       714 |
|                  jbird                   |      1589 |      1452 |      1432 |      1413 |      1395 |      1357 |      1298 |      1428 |
|                    Δ                     |       807 |       728 |       717 |       706 |       696 |       674 |       649 |       714 |
|              Improvement %               |       103 |       101 |       100 |       100 |       100 |        99 |       100 |       714 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       184 |       341 |       500 |       592 |       646 |       652 |       714 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1428 |
|                    Δ                     |         0 |      -151 |      -308 |      -467 |      -559 |      -613 |      -619 |       714 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |       714 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       703 |       703 |       703 |       703 |       703 |       703 |       707 |       714 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1428 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -707 |       714 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       714 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7431 |       714 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1428 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |       714 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       714 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       714 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1428 |
|                    Δ                     |     -2162 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |       714 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       714 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       743 |       743 |       743 |       743 |       743 |       747 |       714 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1428 |
|                    Δ                     |      2005 |      2005 |      2005 |      2005 |      2005 |      2005 |      2001 |       714 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -270 |      -270 |      -268 |       714 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        33 |        33 |        33 |       714 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1428 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -17 |       -17 |       -16 |       714 |
|              Improvement %               |        50 |        50 |        50 |        50 |        52 |        52 |        48 |       714 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |       714 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1428 |
|                    Δ                     |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |       714 |
|              Improvement %               |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |       714 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1298 |      1422 |      1442 |      1457 |      1473 |      1520 |      1551 |       694 |
|                  jbird                   |       648 |       709 |       718 |       726 |       734 |       751 |       856 |      1390 |
|                    Δ                     |      -650 |      -713 |      -724 |      -731 |      -739 |      -769 |      -695 |       696 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        51 |        45 |       696 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1299 |      1422 |      1443 |      1459 |      1474 |      1518 |      1539 |       694 |
|                  jbird                   |       649 |       711 |       719 |       727 |       736 |       751 |       859 |      1390 |
|                    Δ                     |      -650 |      -711 |      -724 |      -732 |      -738 |      -767 |      -680 |       696 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        51 |        44 |       696 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       771 |       704 |       694 |       687 |       679 |       658 |       645 |       694 |
|                  jbird                   |      1544 |      1410 |      1393 |      1378 |      1363 |      1332 |      1169 |      1390 |
|                    Δ                     |       773 |       706 |       699 |       691 |       684 |       674 |       524 |       696 |
|              Improvement %               |       100 |       100 |       101 |       101 |       101 |       102 |        81 |       696 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       176 |       328 |       487 |       577 |       627 |       634 |       694 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1390 |
|                    Δ                     |         0 |      -143 |      -295 |      -454 |      -544 |      -594 |      -601 |       696 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        95 |        95 |       696 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       703 |       703 |       703 |       703 |       703 |       703 |       707 |       694 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1390 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -707 |       696 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       696 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7431 |       694 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1390 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |       696 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       696 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       694 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1390 |
|                    Δ                     |     -2162 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |       696 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       696 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       743 |       743 |       743 |       743 |       743 |       747 |       694 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1390 |
|                    Δ                     |      2005 |      2005 |      2005 |      2005 |      2005 |      2005 |      2001 |       696 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -270 |      -270 |      -268 |       696 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       694 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1390 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       696 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        50 |       696 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |       694 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1390 |
|                    Δ                     |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |       696 |
|              Improvement %               |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |       696 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        72 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       144 |
|                    Δ                     |        -6 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        72 |
|              Improvement %               |        46 |        50 |        50 |        50 |        50 |        50 |        50 |        72 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        72 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       144 |
|                    Δ                     |        -6 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        72 |
|              Improvement %               |        46 |        50 |        50 |        50 |        50 |        50 |        50 |        72 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        72 |        72 |        71 |        71 |        70 |        70 |        72 |
|                  jbird                   |       152 |       145 |       143 |       142 |       142 |       140 |       140 |       144 |
|                    Δ                     |        78 |        73 |        71 |        71 |        71 |        70 |        70 |        72 |
|              Improvement %               |       105 |       101 |        99 |       100 |       100 |       100 |       100 |        72 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        47 |       189 |       345 |       506 |       597 |       658 |       658 |        72 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       144 |
|                    Δ                     |         8 |      -131 |      -287 |      -448 |      -539 |      -600 |      -600 |        72 |
|              Improvement %               |       -17 |        69 |        83 |        89 |        90 |        91 |        91 |        72 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        72 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       144 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |        72 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        72 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        72 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       144 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        72 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        72 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        72 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       144 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        72 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        72 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7232 |      7233 |      7233 |      7233 |      7233 |      7233 |      7233 |        72 |
|                  jbird                   |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |       144 |
|                    Δ                     |     18137 |     18136 |     18136 |     18136 |     18136 |     18136 |     18136 |        72 |
|              Improvement %               |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |        72 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       323 |       323 |       323 |       323 |       323 |       325 |       325 |        72 |
|                  jbird                   |       157 |       157 |       157 |       157 |       157 |       158 |       159 |       144 |
|                    Δ                     |      -166 |      -166 |      -166 |      -166 |      -166 |      -167 |      -166 |        72 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        72 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        72 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       144 |
|                    Δ                     |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |        72 |
|              Improvement %               |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |        72 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        15 |        15 |        15 |        15 |        70 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         8 |       140 |
|                    Δ                     |        -7 |        -7 |        -7 |        -8 |        -8 |        -8 |        -7 |        70 |
|              Improvement %               |        50 |        50 |        50 |        53 |        53 |        53 |        47 |        70 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        15 |        15 |        15 |        15 |        70 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         8 |       140 |
|                    Δ                     |        -7 |        -7 |        -7 |        -8 |        -8 |        -8 |        -7 |        70 |
|              Improvement %               |        50 |        50 |        50 |        53 |        53 |        53 |        47 |        70 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        72 |        70 |        70 |        69 |        68 |        67 |        67 |        70 |
|                  jbird                   |       150 |       142 |       139 |       137 |       137 |       135 |       131 |       140 |
|                    Δ                     |        78 |        72 |        69 |        68 |        69 |        68 |        64 |        70 |
|              Improvement %               |       108 |       103 |        99 |        99 |       101 |       101 |        96 |        70 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        46 |       193 |       337 |       497 |       584 |       640 |       640 |        70 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       140 |
|                    Δ                     |         9 |      -135 |      -279 |      -439 |      -526 |      -582 |      -582 |        70 |
|              Improvement %               |       -20 |        70 |        83 |        88 |        90 |        91 |        91 |        70 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        70 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       140 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |        70 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        70 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        70 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       140 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        70 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        70 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        70 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       140 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        70 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        70 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7232 |      7233 |      7233 |      7233 |      7233 |      7233 |      7233 |        70 |
|                  jbird                   |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |       140 |
|                    Δ                     |     18137 |     18136 |     18136 |     18136 |     18136 |     18136 |     18136 |        70 |
|              Improvement %               |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |        70 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       328 |       328 |       328 |       328 |       328 |       330 |       330 |        70 |
|                  jbird                   |       160 |       160 |       160 |       160 |       160 |       161 |       162 |       140 |
|                    Δ                     |      -168 |      -168 |      -168 |      -168 |      -168 |      -169 |      -168 |        70 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        70 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        70 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       140 |
|                    Δ                     |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |        70 |
|              Improvement %               |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |        70 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       157 |       172 |       178 |       182 |       188 |       204 |       228 |      5515 |
|                  jbird                   |        79 |        85 |        89 |        91 |        93 |       106 |       124 |     10859 |
|                    Δ                     |       -78 |       -87 |       -89 |       -91 |       -95 |       -98 |      -104 |      5344 |
|              Improvement %               |        50 |        51 |        50 |        50 |        51 |        48 |        46 |      5344 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       158 |       174 |       179 |       183 |       190 |       205 |       227 |      5515 |
|                  jbird                   |        81 |        87 |        91 |        92 |        95 |       105 |       124 |     10859 |
|                    Δ                     |       -77 |       -87 |       -88 |       -91 |       -95 |      -100 |      -103 |      5344 |
|              Improvement %               |        49 |        50 |        49 |        50 |        50 |        49 |        45 |      5344 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6373 |      5803 |      5631 |      5503 |      5311 |      4895 |      4384 |      5515 |
|                  jbird                   |     12618 |     11719 |     11215 |     11047 |     10767 |      9447 |      8092 |     10859 |
|                    Δ                     |      6245 |      5916 |      5584 |      5544 |      5456 |      4552 |      3708 |      5344 |
|              Improvement %               |        98 |       102 |        99 |       101 |       103 |        93 |        85 |      5344 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       189 |       348 |       510 |       606 |       660 |       668 |      5515 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10859 |
|                    Δ                     |         0 |      -158 |      -317 |      -479 |      -575 |      -629 |      -637 |      5344 |
|              Improvement %               |         0 |        84 |        91 |        94 |        95 |        95 |        95 |      5344 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      5515 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10859 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      5344 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5344 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       981 |       981 |       981 |       981 |       981 |       981 |       982 |      5515 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10859 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -982 |      5344 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5344 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      5515 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10859 |
|                    Δ                     |      -318 |      -318 |      -318 |      -318 |      -318 |      -318 |      -319 |      5344 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      5344 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       106 |       106 |       106 |       106 |       106 |       106 |       110 |      5515 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10859 |
|                    Δ                     |       238 |       238 |       238 |       238 |       238 |       238 |       234 |      5344 |
|              Improvement %               |      -225 |      -225 |      -225 |      -225 |      -225 |      -225 |      -213 |      5344 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4069 |      4102 |      4112 |      4125 |      4137 |      4280 |      4377 |      5515 |
|                  jbird                   |      1960 |      1961 |      1962 |      1962 |      1965 |      1979 |      2090 |     10859 |
|                    Δ                     |     -2109 |     -2141 |     -2150 |     -2163 |     -2172 |     -2301 |     -2287 |      5344 |
|              Improvement %               |        52 |        52 |        52 |        52 |        53 |        54 |        52 |      5344 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      5515 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10859 |
|                    Δ                     |       663 |       663 |       663 |       663 |       663 |       663 |       663 |      5344 |
|              Improvement %               |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |      5344 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       163 |       180 |       185 |       189 |       196 |       211 |       233 |      5297 |
|                  jbird                   |        82 |        89 |        92 |        94 |        96 |       108 |       127 |     10517 |
|                    Δ                     |       -81 |       -91 |       -93 |       -95 |      -100 |      -103 |      -106 |      5220 |
|              Improvement %               |        50 |        51 |        50 |        50 |        51 |        49 |        45 |      5220 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       165 |       181 |       187 |       191 |       197 |       211 |       235 |      5297 |
|                  jbird                   |        83 |        90 |        94 |        95 |        98 |       109 |       131 |     10517 |
|                    Δ                     |       -82 |       -91 |       -93 |       -96 |       -99 |      -102 |      -104 |      5220 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        48 |        44 |      5220 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6130 |      5571 |      5407 |      5283 |      5111 |      4743 |      4285 |      5297 |
|                  jbird                   |     12226 |     11279 |     10831 |     10695 |     10391 |      9295 |      7892 |     10517 |
|                    Δ                     |      6096 |      5708 |      5424 |      5412 |      5280 |      4552 |      3607 |      5220 |
|              Improvement %               |        99 |       102 |       100 |       102 |       103 |        96 |        84 |      5220 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       183 |       336 |       489 |       580 |       639 |       646 |      5297 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10517 |
|                    Δ                     |         0 |      -152 |      -305 |      -458 |      -549 |      -608 |      -615 |      5220 |
|              Improvement %               |         0 |        83 |        91 |        94 |        95 |        95 |        95 |      5220 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      5297 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10517 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      5220 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5220 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       981 |       981 |       981 |       981 |       981 |       981 |       982 |      5297 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10517 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -982 |      5220 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5220 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      5297 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10517 |
|                    Δ                     |      -318 |      -318 |      -318 |      -318 |      -318 |      -318 |      -319 |      5220 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      5220 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       106 |       106 |       106 |       106 |       106 |       106 |       110 |      5297 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10517 |
|                    Δ                     |       238 |       238 |       238 |       238 |       238 |       238 |       234 |      5220 |
|              Improvement %               |      -225 |      -225 |      -225 |      -225 |      -225 |      -225 |      -213 |      5220 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4133 |      4166 |      4178 |      4188 |      4202 |      4346 |      4454 |      5297 |
|                  jbird                   |      2004 |      2006 |      2007 |      2007 |      2010 |      2026 |      2123 |     10517 |
|                    Δ                     |     -2129 |     -2160 |     -2171 |     -2181 |     -2192 |     -2320 |     -2331 |      5220 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        52 |      5220 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      5297 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10517 |
|                    Δ                     |       663 |       663 |       663 |       663 |       663 |       663 |       663 |      5220 |
|              Improvement %               |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |      5220 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       283 |       316 |       321 |       329 |       337 |       355 |       422 |      3064 |
|                  jbird                   |       110 |       126 |       128 |       136 |       142 |       155 |       208 |      7459 |
|                    Δ                     |      -173 |      -190 |      -193 |      -193 |      -195 |      -200 |      -214 |      4395 |
|              Improvement %               |        61 |        60 |        60 |        59 |        58 |        56 |        51 |      4395 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       285 |       318 |       322 |       330 |       338 |       355 |       419 |      3064 |
|                  jbird                   |       112 |       127 |       130 |       138 |       144 |       156 |       207 |      7459 |
|                    Δ                     |      -173 |      -191 |      -192 |      -192 |      -194 |      -199 |      -212 |      4395 |
|              Improvement %               |        61 |        60 |        60 |        58 |        57 |        56 |        51 |      4395 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3529 |      3165 |      3119 |      3045 |      2971 |      2817 |      2367 |      3064 |
|                  jbird                   |      9053 |      7947 |      7787 |      7343 |      7031 |      6471 |      4819 |      7459 |
|                    Δ                     |      5524 |      4782 |      4668 |      4298 |      4060 |      3654 |      2452 |      4395 |
|              Improvement %               |       157 |       151 |       150 |       141 |       137 |       130 |       104 |      4395 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |        91 |       155 |       220 |       258 |       280 |       280 |      3064 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |      7459 |
|                    Δ                     |         0 |       -59 |      -123 |      -188 |      -226 |      -248 |      -248 |      4395 |
|              Improvement %               |         0 |        65 |        79 |        85 |        88 |        89 |        89 |      4395 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        80 |        80 |        80 |        80 |        80 |        84 |      3064 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7459 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -84 |      4395 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4395 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         2 |         2 |         2 |         2 |         2 |         2 |         3 |      3064 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7459 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -3 |      4395 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4395 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        14 |      3064 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7459 |
|                    Δ                     |        15 |        15 |        15 |        15 |        15 |        15 |        14 |      4395 |
|              Improvement %               |      -115 |      -115 |      -115 |      -115 |      -115 |      -115 |      -100 |      4395 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       350 |       350 |       350 |       350 |       350 |       350 |       354 |      3064 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      7459 |
|                    Δ                     |       808 |       808 |       808 |       808 |       808 |       808 |       804 |      4395 |
|              Improvement %               |      -231 |      -231 |      -231 |      -231 |      -231 |      -231 |      -227 |      4395 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8630 |      8659 |      8659 |      8659 |      8675 |      8815 |      8850 |      3064 |
|                  jbird                   |      3651 |      3652 |      3652 |      3652 |      3654 |      3668 |      4098 |      7459 |
|                    Δ                     |     -4979 |     -5007 |     -5007 |     -5007 |     -5021 |     -5147 |     -4752 |      4395 |
|              Improvement %               |        58 |        58 |        58 |        58 |        58 |        58 |        54 |      4395 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |      3064 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7459 |
|                    Δ                     |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      4395 |
|              Improvement %               |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      4395 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        13 |        13 |        13 |        13 |        13 |        13 |        79 |
|                  jbird                   |         5 |         6 |         6 |         6 |         6 |         6 |         6 |       180 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       101 |
|              Improvement %               |        58 |        54 |        54 |        54 |        54 |        54 |        54 |       101 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        13 |        13 |        13 |        13 |        13 |        13 |        79 |
|                  jbird                   |         5 |         6 |         6 |         6 |         6 |         6 |         6 |       180 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       101 |
|              Improvement %               |        58 |        54 |        54 |        54 |        54 |        54 |        54 |       101 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        81 |        80 |        79 |        78 |        78 |        75 |        75 |        79 |
|                  jbird                   |       190 |       181 |       180 |       178 |       177 |       175 |       175 |       180 |
|                    Δ                     |       109 |       101 |       101 |       100 |        99 |       100 |       100 |       101 |
|              Improvement %               |       135 |       126 |       128 |       128 |       127 |       133 |       133 |       101 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        46 |       204 |       380 |       549 |       650 |       710 |       710 |        79 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       180 |
|                    Δ                     |         2 |      -152 |      -328 |      -497 |      -598 |      -658 |      -658 |       101 |
|              Improvement %               |        -4 |        75 |        86 |        91 |        92 |        93 |        93 |       101 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |        79 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       180 |
|                    Δ                     |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |       101 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       101 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        79 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       180 |
|                    Δ                     |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |       101 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       101 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        79 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       180 |
|                    Δ                     |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |       101 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |       101 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6894 |      6894 |      6894 |      6894 |      6894 |      6894 |      6894 |        79 |
|                  jbird                   |     19440 |     19440 |     19440 |     19440 |     19440 |     19440 |     19440 |       180 |
|                    Δ                     |     12546 |     12546 |     12546 |     12546 |     12546 |     12546 |     12546 |       101 |
|              Improvement %               |      -182 |      -182 |      -182 |      -182 |      -182 |      -182 |      -182 |       101 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       317 |       317 |       317 |       317 |       317 |       318 |       318 |        79 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       155 |       156 |       180 |
|                    Δ                     |      -163 |      -163 |      -163 |      -163 |      -163 |      -163 |      -162 |       101 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       101 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       264 |       264 |       264 |       264 |       264 |       264 |       264 |        79 |
|                  jbird                   |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |       180 |
|                    Δ                     |     55828 |     55828 |     55828 |     55828 |     55828 |     55828 |     55828 |       101 |
|              Improvement %               |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |       101 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        76 |        77 |        82 |        87 |       102 |       173 |     12056 |
|                  jbird                   |        51 |        52 |        57 |        58 |        59 |        69 |        99 |     16912 |
|                    Δ                     |       -24 |       -24 |       -20 |       -24 |       -28 |       -33 |       -74 |      4856 |
|              Improvement %               |        32 |        32 |        26 |        29 |        32 |        32 |        43 |      4856 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        78 |        78 |        83 |        89 |       103 |       169 |     12056 |
|                  jbird                   |        52 |        54 |        58 |        59 |        60 |        71 |       104 |     16912 |
|                    Δ                     |       -24 |       -24 |       -20 |       -24 |       -29 |       -32 |       -65 |      4856 |
|              Improvement %               |        32 |        31 |        26 |        29 |        33 |        31 |        38 |      4856 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        11 |        10 |         6 |     12056 |
|                  jbird                   |        20 |        19 |        18 |        17 |        17 |        14 |        10 |     16912 |
|                    Δ                     |         7 |         6 |         5 |         5 |         6 |         4 |         4 |      4856 |
|              Improvement %               |        54 |        46 |        38 |        42 |        55 |        40 |        67 |      4856 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |        52 |        75 |        96 |       109 |       118 |       118 |     12056 |
|                  jbird                   |        30 |        30 |        30 |        30 |        31 |        31 |        31 |     16912 |
|                    Δ                     |         0 |       -22 |       -45 |       -66 |       -78 |       -87 |       -87 |      4856 |
|              Improvement %               |         0 |        42 |        60 |        69 |        72 |        74 |        74 |      4856 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4864 |      4867 |      4867 |      4867 |      4867 |      4867 |      8960 |     12056 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16912 |
|                    Δ                     |     -4864 |     -4867 |     -4867 |     -4867 |     -4867 |     -4867 |     -8960 |      4856 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4856 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       152 |       152 |       152 |       152 |       152 |       152 |       153 |     12056 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16912 |
|                    Δ                     |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -153 |      4856 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4856 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |     12056 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     16912 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |        -1 |      4856 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         1 |      4856 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        17 |     12056 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     16912 |
|                    Δ                     |        78 |        78 |        78 |        78 |        78 |        78 |        74 |      4856 |
|              Improvement %               |      -600 |      -600 |      -600 |      -600 |      -600 |      -600 |      -435 |      4856 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1139 |      1140 |      1141 |      1148 |      1148 |      1161 |      1310 |     12056 |
|                  jbird                   |      1353 |      1355 |      1355 |      1355 |      1355 |      1372 |      1434 |     16912 |
|                    Δ                     |       214 |       215 |       214 |       207 |       207 |       211 |       124 |      4856 |
|              Improvement %               |       -19 |       -19 |       -19 |       -18 |       -18 |       -18 |        -9 |      4856 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     12056 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     16912 |
|                    Δ                     |       152 |       152 |       152 |       152 |       152 |       152 |       152 |      4856 |
|              Improvement %               |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |      4856 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       244 |       270 |       274 |       281 |       288 |       306 |       387 |      3578 |
|                  jbird                   |        96 |       103 |       108 |       111 |       115 |       127 |       167 |      8994 |
|                    Δ                     |      -148 |      -167 |      -166 |      -170 |      -173 |      -179 |      -220 |      5416 |
|              Improvement %               |        61 |        62 |        61 |        60 |        60 |        58 |        57 |      5416 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       246 |       272 |       276 |       282 |       290 |       307 |       380 |      3578 |
|                  jbird                   |        98 |       105 |       110 |       113 |       116 |       127 |       168 |      8994 |
|                    Δ                     |      -148 |      -167 |      -166 |      -169 |      -174 |      -180 |      -212 |      5416 |
|              Improvement %               |        60 |        61 |        60 |        60 |        60 |        59 |        56 |      5416 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4096 |      3707 |      3645 |      3567 |      3475 |      3275 |      2587 |      3578 |
|                  jbird                   |     10385 |      9711 |      9247 |      8991 |      8719 |      7879 |      6000 |      8994 |
|                    Δ                     |      6289 |      6004 |      5602 |      5424 |      5244 |      4604 |      3413 |      5416 |
|              Improvement %               |       154 |       162 |       154 |       152 |       151 |       141 |       132 |      5416 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       107 |       187 |       266 |       313 |       340 |       344 |      3578 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      8994 |
|                    Δ                     |         0 |       -76 |      -156 |      -235 |      -282 |      -309 |      -313 |      5416 |
|              Improvement %               |         0 |        71 |        83 |        88 |        90 |        91 |        91 |      5416 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        71 |        71 |        71 |        71 |        71 |        71 |        75 |      3578 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8994 |
|                    Δ                     |       -71 |       -71 |       -71 |       -71 |       -71 |       -71 |       -75 |      5416 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5416 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       802 |       802 |       802 |       802 |       802 |       802 |       803 |      3578 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8994 |
|                    Δ                     |      -802 |      -802 |      -802 |      -802 |      -802 |      -802 |      -803 |      5416 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5416 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3578 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      8994 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      5416 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      5416 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       210 |       210 |       210 |       210 |       210 |       210 |       214 |      3578 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      8994 |
|                    Δ                     |       451 |       451 |       451 |       451 |       451 |       451 |       447 |      5416 |
|              Improvement %               |      -215 |      -215 |      -215 |      -215 |      -215 |      -215 |      -209 |      5416 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7036 |      7057 |      7057 |      7062 |      7074 |      7217 |      7243 |      3578 |
|                  jbird                   |      2605 |      2607 |      2607 |      2607 |      2607 |      2623 |      2848 |      8994 |
|                    Δ                     |     -4431 |     -4450 |     -4450 |     -4455 |     -4467 |     -4594 |     -4395 |      5416 |
|              Improvement %               |        63 |        63 |        63 |        63 |        63 |        64 |        61 |      5416 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      3578 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      8994 |
|                    Δ                     |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      5416 |
|              Improvement %               |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |      5416 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       362 |       402 |       407 |       414 |       424 |       467 |       553 |      2423 |
|                  jbird                   |        60 |        66 |        68 |        72 |        78 |        88 |       119 |     13744 |
|                    Δ                     |      -302 |      -336 |      -339 |      -342 |      -346 |      -379 |      -434 |     11321 |
|              Improvement %               |        83 |        84 |        83 |        83 |        82 |        81 |        78 |     11321 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       363 |       403 |       408 |       416 |       426 |       467 |       529 |      2423 |
|                  jbird                   |        62 |        67 |        70 |        74 |        79 |        89 |       123 |     13744 |
|                    Δ                     |      -301 |      -336 |      -338 |      -342 |      -347 |      -378 |      -406 |     11321 |
|              Improvement %               |        83 |        83 |        83 |        82 |        81 |        81 |        77 |     11321 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2766 |      2491 |      2461 |      2417 |      2361 |      2143 |      1809 |      2423 |
|                  jbird                   |     16620 |     15223 |     14663 |     13823 |     12871 |     11407 |      8392 |     13744 |
|                    Δ                     |     13854 |     12732 |     12202 |     11406 |     10510 |      9264 |      6583 |     11321 |
|              Improvement %               |       501 |       511 |       496 |       472 |       445 |       432 |       364 |     11321 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       105 |       182 |       258 |       304 |       335 |       335 |      2423 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     13744 |
|                    Δ                     |         0 |       -74 |      -151 |      -227 |      -273 |      -304 |      -304 |     11321 |
|              Improvement %               |         0 |        70 |        83 |        88 |        90 |        91 |        91 |     11321 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        89 |        89 |        89 |        89 |        89 |        89 |        93 |      2423 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13744 |
|                    Δ                     |       -89 |       -89 |       -89 |       -89 |       -89 |       -89 |       -93 |     11321 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11321 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2088 |      2089 |      2089 |      2089 |      2089 |      2089 |      2089 |      2423 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13744 |
|                    Δ                     |     -2088 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     11321 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11321 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2677 |      2677 |      2677 |      2677 |      2677 |      2677 |      2678 |      2423 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13744 |
|                    Δ                     |     -2667 |     -2667 |     -2667 |     -2667 |     -2667 |     -2667 |     -2668 |     11321 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     11321 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       190 |       190 |       190 |       190 |       190 |       190 |       194 |      2423 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     13744 |
|                    Δ                     |       139 |       139 |       139 |       139 |       139 |       139 |       135 |     11321 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -70 |     11321 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8697 |      8708 |      8716 |      8724 |      8741 |      8929 |      9118 |      2423 |
|                  jbird                   |      1574 |      1574 |      1574 |      1575 |      1575 |      1586 |      1708 |     13744 |
|                    Δ                     |     -7123 |     -7134 |     -7142 |     -7149 |     -7166 |     -7343 |     -7410 |     11321 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        82 |        81 |     11321 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       589 |       589 |       589 |       589 |       589 |       589 |       589 |      2423 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13744 |
|                    Δ                     |      -579 |      -579 |      -579 |      -579 |      -579 |      -579 |      -579 |     11321 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |     11321 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        69 |        75 |        79 |        82 |        86 |       101 |       134 |     12091 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        13 |        36 |     75316 |
|                    Δ                     |       -60 |       -65 |       -69 |       -72 |       -76 |       -88 |       -98 |     63225 |
|              Improvement %               |        87 |        87 |        87 |        88 |        88 |        87 |        73 |     63225 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        70 |        76 |        81 |        84 |        88 |       101 |       125 |     12091 |
|                  jbird                   |        10 |        11 |        12 |        12 |        12 |        15 |        34 |     75316 |
|                    Δ                     |       -60 |       -65 |       -69 |       -72 |       -76 |       -86 |       -91 |     63225 |
|              Improvement %               |        86 |        86 |        85 |        86 |        86 |        85 |        73 |     63225 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        13 |        13 |        12 |        12 |        10 |         7 |     12091 |
|                  jbird                   |       114 |       103 |       100 |        97 |        96 |        76 |        27 |     75316 |
|                    Δ                     |        99 |        90 |        87 |        85 |        84 |        66 |        20 |     63225 |
|              Improvement %               |       660 |       692 |       669 |       708 |       700 |       660 |       286 |     63225 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       221 |       420 |       610 |       733 |       801 |       811 |     12091 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     75316 |
|                    Δ                     |         0 |      -190 |      -389 |      -579 |      -702 |      -770 |      -780 |     63225 |
|              Improvement %               |         0 |        86 |        93 |        95 |        96 |        96 |        96 |     63225 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        58 |        58 |        58 |        58 |        58 |        58 |        62 |     12091 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     75316 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -62 |     63225 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     63225 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        80 |        80 |        80 |        80 |        80 |        81 |     12091 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     75316 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -81 |     63225 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     63225 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |     12091 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     75316 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |     63225 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |     63225 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        67 |        68 |        68 |        68 |        68 |        68 |        72 |     12091 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     75316 |
|                    Δ                     |        59 |        58 |        58 |        58 |        58 |        58 |        54 |     63225 |
|              Improvement %               |       -88 |       -85 |       -85 |       -85 |       -85 |       -85 |       -75 |     63225 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1855 |      1871 |      1879 |      1886 |      1895 |      2038 |      2082 |     12091 |
|                  jbird                   |       230 |       230 |       230 |       230 |       231 |       236 |       291 |     75316 |
|                    Δ                     |     -1625 |     -1641 |     -1649 |     -1656 |     -1664 |     -1802 |     -1791 |     63225 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        86 |     63225 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     12091 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     75316 |
|                    Δ                     |        73 |        73 |        73 |        73 |        73 |        73 |        73 |     63225 |
|              Improvement %               |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     63225 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1925 |      2101 |      2163 |      2247 |      2339 |      2529 |      3396 |       458 |
|                  jbird                   |       955 |      1038 |      1052 |      1064 |      1078 |      1126 |      1200 |       949 |
|                    Δ                     |      -970 |     -1063 |     -1111 |     -1183 |     -1261 |     -1403 |     -2196 |       491 |
|              Improvement %               |        50 |        51 |        51 |        53 |        54 |        55 |        65 |       491 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1927 |      2103 |      2163 |      2245 |      2341 |      2503 |      3097 |       458 |
|                  jbird                   |       956 |      1039 |      1053 |      1066 |      1079 |      1128 |      1203 |       949 |
|                    Δ                     |      -971 |     -1064 |     -1110 |     -1179 |     -1262 |     -1375 |     -1894 |       491 |
|              Improvement %               |        50 |        51 |        51 |        53 |        54 |        55 |        61 |       491 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       519 |       476 |       463 |       445 |       428 |       396 |       295 |       458 |
|                  jbird                   |      1047 |       964 |       951 |       940 |       927 |       888 |       833 |       949 |
|                    Δ                     |       528 |       488 |       488 |       495 |       499 |       492 |       538 |       491 |
|              Improvement %               |       102 |       103 |       105 |       111 |       117 |       124 |       182 |       491 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       123 |       217 |       312 |       374 |       407 |       412 |       458 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       949 |
|                    Δ                     |         1 |       -88 |      -182 |      -277 |      -339 |      -372 |      -377 |       491 |
|              Improvement %               |        -3 |        72 |        84 |        89 |        91 |        91 |        92 |       491 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       669 |       670 |       670 |       670 |       670 |       670 |       673 |       458 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       949 |
|                    Δ                     |      -669 |      -670 |      -670 |      -670 |      -670 |      -670 |      -673 |       491 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       491 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6133 |      6134 |      6134 |      6134 |      6134 |      6134 |      6134 |       458 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       949 |
|                    Δ                     |     -6133 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |       491 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       491 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6636 |      6637 |      6637 |      6637 |      6637 |      6637 |      6637 |       458 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       949 |
|                    Δ                     |     -2585 |     -2586 |     -2586 |     -2586 |     -2586 |     -2586 |     -2586 |       491 |
|              Improvement %               |        39 |        39 |        39 |        39 |        39 |        39 |        39 |       491 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       882 |       882 |       882 |       882 |       882 |       882 |       886 |       458 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       949 |
|                    Δ                     |      3029 |      3029 |      3029 |      3029 |      3029 |      3029 |      3025 |       491 |
|              Improvement %               |      -343 |      -343 |      -343 |      -343 |      -343 |      -343 |      -341 |       491 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        44 |        44 |        44 |        44 |        44 |        45 |        45 |       458 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       949 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -22 |       -21 |       491 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        49 |        47 |       491 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       503 |       503 |       503 |       503 |       503 |       503 |       503 |       458 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       949 |
|                    Δ                     |      3548 |      3548 |      3548 |      3548 |      3548 |      3548 |      3548 |       491 |
|              Improvement %               |      -705 |      -705 |      -705 |      -705 |      -705 |      -705 |      -705 |       491 |

<p>
</details>

