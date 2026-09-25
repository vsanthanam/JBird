## JBird vs Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2556 |      2746 |      2767 |      2804 |      2839 |      3252 |      3523 |       359 |
|                  jbird                   |      1259 |      1369 |      1380 |      1396 |      1437 |      1778 |      2432 |       715 |
|                    Δ                     |     -1297 |     -1377 |     -1387 |     -1408 |     -1402 |     -1474 |     -1091 |       356 |
|              Improvement %               |        51 |        50 |        50 |        50 |        49 |        45 |        31 |       356 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2559 |      2746 |      2771 |      2806 |      2839 |      3262 |      3526 |       359 |
|                  jbird                   |      1260 |      1370 |      1382 |      1399 |      1439 |      1780 |      2439 |       715 |
|                    Δ                     |     -1299 |     -1376 |     -1389 |     -1407 |     -1400 |     -1482 |     -1087 |       356 |
|              Improvement %               |        51 |        50 |        50 |        50 |        49 |        45 |        31 |       356 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       391 |       364 |       362 |       357 |       353 |       308 |       284 |       359 |
|                  jbird                   |       794 |       731 |       725 |       717 |       696 |       563 |       411 |       715 |
|                    Δ                     |       403 |       367 |       363 |       360 |       343 |       255 |       127 |       356 |
|              Improvement %               |       103 |       101 |       100 |       101 |        97 |        83 |        45 |       356 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       182 |       341 |       495 |       589 |       644 |       652 |       359 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       715 |
|                    Δ                     |         2 |      -146 |      -305 |      -459 |      -553 |      -608 |      -616 |       356 |
|              Improvement %               |        -6 |        80 |        89 |        93 |        94 |        94 |        94 |       356 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1398 |      1399 |      1399 |      1399 |      1399 |      1399 |      1402 |       359 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       715 |
|                    Δ                     |     -1398 |     -1399 |     -1399 |     -1399 |     -1399 |     -1399 |     -1402 |       356 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       356 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       359 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       715 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       356 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       356 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       359 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       715 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       356 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       356 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1471 |      1471 |      1471 |      1471 |      1471 |      1471 |      1475 |       359 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       715 |
|                    Δ                     |      3761 |      3761 |      3761 |      3761 |      3761 |      3761 |      3757 |       356 |
|              Improvement %               |      -256 |      -256 |      -256 |      -256 |      -256 |      -256 |      -255 |       356 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        66 |        66 |       359 |
|                  jbird                   |        31 |        31 |        31 |        31 |        31 |        31 |        32 |       715 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -34 |       -35 |       -34 |       356 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        52 |       356 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         9 |         9 |         9 |         9 |         9 |         9 |         9 |       359 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       715 |
|                    Δ                     |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |       356 |
|              Improvement %               |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |       356 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2677 |      2851 |      2882 |      2906 |      2931 |      3021 |      3099 |       347 |
|                  jbird                   |      1307 |      1422 |      1432 |      1445 |      1481 |      1569 |     11749 |       680 |
|                    Δ                     |     -1370 |     -1429 |     -1450 |     -1461 |     -1450 |     -1452 |      8650 |       333 |
|              Improvement %               |        51 |        50 |        50 |        50 |        49 |        48 |      -279 |       333 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2683 |      2853 |      2884 |      2910 |      2933 |      3027 |      3101 |       347 |
|                  jbird                   |      1308 |      1424 |      1434 |      1447 |      1483 |      1564 |      1615 |       680 |
|                    Δ                     |     -1375 |     -1429 |     -1450 |     -1463 |     -1450 |     -1463 |     -1486 |       333 |
|              Improvement %               |        51 |        50 |        50 |        50 |        49 |        48 |        48 |       333 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       374 |       351 |       347 |       344 |       341 |       331 |       323 |       347 |
|                  jbird                   |       765 |       703 |       699 |       692 |       675 |       638 |        85 |       680 |
|                    Δ                     |       391 |       352 |       352 |       348 |       334 |       307 |      -238 |       333 |
|              Improvement %               |       105 |       100 |       101 |       101 |        98 |        93 |       -74 |       333 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       179 |       333 |       479 |       571 |       629 |       629 |       347 |
|                  jbird                   |        34 |        36 |        39 |        39 |        39 |        39 |        39 |       680 |
|                    Δ                     |         2 |      -143 |      -294 |      -440 |      -532 |      -590 |      -590 |       333 |
|              Improvement %               |        -6 |        80 |        88 |        92 |        93 |        94 |        94 |       333 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1398 |      1399 |      1399 |      1399 |      1399 |      1399 |      1402 |       347 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       680 |
|                    Δ                     |     -1398 |     -1399 |     -1399 |     -1399 |     -1399 |     -1399 |     -1402 |       333 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       333 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       347 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       680 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       333 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       333 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       347 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       680 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       333 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       333 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1471 |      1471 |      1471 |      1471 |      1471 |      1471 |      1475 |       347 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       680 |
|                    Δ                     |      3761 |      3761 |      3761 |      3761 |      3761 |      3761 |      3757 |       333 |
|              Improvement %               |      -256 |      -256 |      -256 |      -256 |      -256 |      -256 |      -255 |       333 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        66 |        66 |        66 |        66 |        66 |        67 |        67 |       347 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       680 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -34 |       -35 |       -34 |       333 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        51 |       333 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         9 |         9 |         9 |         9 |         9 |         9 |         9 |       347 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       680 |
|                    Δ                     |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |       333 |
|              Improvement %               |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |       333 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       628 |       693 |       701 |       709 |       717 |       752 |       811 |      1417 |
|                  jbird                   |       314 |       341 |       346 |       351 |       357 |       377 |       414 |      2857 |
|                    Δ                     |      -314 |      -352 |      -355 |      -358 |      -360 |      -375 |      -397 |      1440 |
|              Improvement %               |        50 |        51 |        51 |        50 |        50 |        50 |        49 |      1440 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       629 |       695 |       703 |       710 |       719 |       753 |       813 |      1417 |
|                  jbird                   |       316 |       343 |       347 |       353 |       359 |       379 |       407 |      2857 |
|                    Δ                     |      -313 |      -352 |      -356 |      -357 |      -360 |      -374 |      -406 |      1440 |
|              Improvement %               |        50 |        51 |        51 |        50 |        50 |        50 |        50 |      1440 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1592 |      1443 |      1427 |      1412 |      1394 |      1330 |      1233 |      1417 |
|                  jbird                   |      3181 |      2933 |      2895 |      2849 |      2807 |      2653 |      2415 |      2857 |
|                    Δ                     |      1589 |      1490 |      1468 |      1437 |      1413 |      1323 |      1182 |      1440 |
|              Improvement %               |       100 |       103 |       103 |       102 |       101 |        99 |        96 |      1440 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       184 |       339 |       496 |       589 |       650 |       650 |      1417 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2857 |
|                    Δ                     |         1 |      -152 |      -307 |      -464 |      -557 |      -618 |      -618 |      1440 |
|              Improvement %               |        -3 |        83 |        91 |        94 |        95 |        95 |        95 |      1440 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |      1417 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2857 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      1440 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1440 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3747 |      1417 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2857 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |      1440 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1440 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1417 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2857 |
|                    Δ                     |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1112 |      1440 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      1440 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       379 |       379 |       379 |       379 |       379 |       383 |      1417 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2857 |
|                    Δ                     |       995 |       995 |       995 |       995 |       995 |       995 |       991 |      1440 |
|              Improvement %               |      -263 |      -263 |      -263 |      -263 |      -263 |      -263 |      -259 |      1440 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1417 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2857 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |      1440 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        53 |        53 |      1440 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      1417 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2857 |
|                    Δ                     |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      1440 |
|              Improvement %               |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |      1440 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       646 |       715 |       726 |       733 |       743 |       791 |       844 |      1372 |
|                  jbird                   |       334 |       360 |       365 |       371 |       382 |       414 |       454 |      2699 |
|                    Δ                     |      -312 |      -355 |      -361 |      -362 |      -361 |      -377 |      -390 |      1327 |
|              Improvement %               |        48 |        50 |        50 |        49 |        49 |        48 |        46 |      1327 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       648 |       717 |       727 |       735 |       745 |       793 |       845 |      1372 |
|                  jbird                   |       335 |       361 |       366 |       373 |       384 |       415 |       451 |      2699 |
|                    Δ                     |      -313 |      -356 |      -361 |      -362 |      -361 |      -378 |      -394 |      1327 |
|              Improvement %               |        48 |        50 |        50 |        49 |        48 |        48 |        47 |      1327 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1547 |      1398 |      1379 |      1364 |      1346 |      1264 |      1185 |      1372 |
|                  jbird                   |      2998 |      2779 |      2745 |      2697 |      2617 |      2417 |      2201 |      2699 |
|                    Δ                     |      1451 |      1381 |      1366 |      1333 |      1271 |      1153 |      1016 |      1327 |
|              Improvement %               |        94 |        99 |        99 |        98 |        94 |        91 |        86 |      1327 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       177 |       330 |       481 |       572 |       627 |       634 |      1372 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2699 |
|                    Δ                     |         1 |      -145 |      -298 |      -449 |      -540 |      -595 |      -602 |      1327 |
|              Improvement %               |        -3 |        82 |        90 |        93 |        94 |        95 |        95 |      1327 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |      1372 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2699 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      1327 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1327 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3747 |      1372 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2699 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |      1327 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1327 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1372 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2699 |
|                    Δ                     |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1112 |      1327 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      1327 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       379 |       379 |       379 |       379 |       379 |       383 |      1372 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2699 |
|                    Δ                     |       995 |       995 |       995 |       995 |       995 |       995 |       991 |      1327 |
|              Improvement %               |      -263 |      -263 |      -263 |      -263 |      -263 |      -263 |      -259 |      1327 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        17 |        17 |        17 |      1372 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2699 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |        -9 |      1327 |
|              Improvement %               |        50 |        50 |        50 |        50 |        53 |        53 |        53 |      1327 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      1372 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2699 |
|                    Δ                     |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      1327 |
|              Improvement %               |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |      1327 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1261 |      1353 |      1366 |      1396 |      1414 |      1468 |      1596 |       726 |
|                  jbird                   |       626 |       686 |       694 |       702 |       712 |       765 |       811 |      1431 |
|                    Δ                     |      -635 |      -667 |      -672 |      -694 |      -702 |      -703 |      -785 |       705 |
|              Improvement %               |        50 |        49 |        49 |        50 |        50 |        48 |        49 |       705 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1262 |      1355 |      1369 |      1398 |      1416 |      1469 |      1584 |       726 |
|                  jbird                   |       627 |       688 |       695 |       704 |       714 |       766 |       816 |      1431 |
|                    Δ                     |      -635 |      -667 |      -674 |      -694 |      -702 |      -703 |      -768 |       705 |
|              Improvement %               |        50 |        49 |        49 |        50 |        50 |        48 |        48 |       705 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       793 |       739 |       732 |       717 |       707 |       681 |       627 |       726 |
|                  jbird                   |      1599 |      1458 |      1442 |      1425 |      1405 |      1308 |      1234 |      1431 |
|                    Δ                     |       806 |       719 |       710 |       708 |       698 |       627 |       607 |       705 |
|              Improvement %               |       102 |        97 |        97 |        99 |        99 |        92 |        97 |       705 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       184 |       343 |       500 |       602 |       654 |       662 |       726 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1431 |
|                    Δ                     |         0 |      -151 |      -310 |      -467 |      -569 |      -621 |      -629 |       705 |
|              Improvement %               |         0 |        82 |        90 |        93 |        95 |        95 |        95 |       705 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       703 |       703 |       703 |       703 |       703 |       703 |       707 |       726 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1431 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -707 |       705 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       705 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7431 |       726 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1431 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |       705 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       705 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       726 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1431 |
|                    Δ                     |     -2162 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |       705 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       705 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       743 |       743 |       743 |       743 |       743 |       747 |       726 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1431 |
|                    Δ                     |      2005 |      2005 |      2005 |      2005 |      2005 |      2005 |      2001 |       705 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -270 |      -270 |      -268 |       705 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        33 |        33 |       726 |
|                  jbird                   |        15 |        15 |        15 |        15 |        16 |        16 |        16 |      1431 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -16 |       -17 |       -17 |       705 |
|              Improvement %               |        53 |        53 |        53 |        53 |        50 |        52 |        52 |       705 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |       726 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1431 |
|                    Δ                     |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |       705 |
|              Improvement %               |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |       705 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1288 |      1404 |      1416 |      1435 |      1450 |      1497 |      1528 |       703 |
|                  jbird                   |       660 |       717 |       724 |       732 |       741 |       799 |       845 |      1372 |
|                    Δ                     |      -628 |      -687 |      -692 |      -703 |      -709 |      -698 |      -683 |       669 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        47 |        45 |       669 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1289 |      1406 |      1419 |      1437 |      1451 |      1499 |      1530 |       703 |
|                  jbird                   |       661 |       719 |       726 |       734 |       744 |       800 |       847 |      1372 |
|                    Δ                     |      -628 |      -687 |      -693 |      -703 |      -707 |      -699 |      -683 |       669 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        47 |        45 |       669 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       777 |       712 |       706 |       698 |       690 |       668 |       654 |       703 |
|                  jbird                   |      1515 |      1395 |      1382 |      1367 |      1349 |      1253 |      1184 |      1372 |
|                    Δ                     |       738 |       683 |       676 |       669 |       659 |       585 |       530 |       669 |
|              Improvement %               |        95 |        96 |        96 |        96 |        96 |        88 |        81 |       669 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       179 |       333 |       490 |       582 |       635 |       643 |       703 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1372 |
|                    Δ                     |         0 |      -146 |      -300 |      -457 |      -549 |      -602 |      -610 |       669 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |       669 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       703 |       703 |       703 |       703 |       703 |       703 |       707 |       703 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1372 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -707 |       669 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       669 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7431 |       703 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1372 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |       669 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       669 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       703 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1372 |
|                    Δ                     |     -2162 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |       669 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       669 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       743 |       743 |       743 |       743 |       743 |       747 |       703 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1372 |
|                    Δ                     |      2005 |      2005 |      2005 |      2005 |      2005 |      2005 |      2001 |       669 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -270 |      -270 |      -268 |       669 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       703 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1372 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -18 |       -17 |       669 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        50 |       669 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |       703 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1372 |
|                    Δ                     |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |       669 |
|              Improvement %               |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |       669 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        74 |
|                  jbird                   |         6 |         7 |         7 |         7 |         7 |         7 |         7 |       146 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        72 |
|              Improvement %               |        54 |        50 |        50 |        50 |        50 |        50 |        50 |        72 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        74 |
|                  jbird                   |         6 |         7 |         7 |         7 |         7 |         7 |         7 |       146 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        72 |
|              Improvement %               |        54 |        50 |        50 |        50 |        50 |        50 |        50 |        72 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        74 |        73 |        72 |        72 |        71 |        71 |        74 |
|                  jbird                   |       155 |       147 |       145 |       144 |       143 |       139 |       139 |       146 |
|                    Δ                     |        79 |        73 |        72 |        72 |        71 |        68 |        68 |        72 |
|              Improvement %               |       104 |        99 |        99 |       100 |        99 |        96 |        96 |        72 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        47 |       200 |       359 |       519 |       612 |       674 |       674 |        74 |
|                  jbird                   |        56 |        58 |        58 |        76 |        76 |        76 |        76 |       146 |
|                    Δ                     |         9 |      -142 |      -301 |      -443 |      -536 |      -598 |      -598 |        72 |
|              Improvement %               |       -19 |        71 |        84 |        85 |        88 |        89 |        89 |        72 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        74 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       146 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |        72 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        72 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        74 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       146 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        72 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        72 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        74 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       146 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        72 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        72 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7232 |      7233 |      7233 |      7233 |      7233 |      7233 |      7233 |        74 |
|                  jbird                   |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |       146 |
|                    Δ                     |     18137 |     18136 |     18136 |     18136 |     18136 |     18136 |     18136 |        72 |
|              Improvement %               |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |        72 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       322 |       322 |       323 |       323 |       323 |       327 |       327 |        74 |
|                  jbird                   |       155 |       155 |       155 |       155 |       155 |       156 |       161 |       146 |
|                    Δ                     |      -167 |      -167 |      -168 |      -168 |      -168 |      -171 |      -166 |        72 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        51 |        72 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        74 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       146 |
|                    Δ                     |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |        72 |
|              Improvement %               |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |        72 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        15 |        15 |        71 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         8 |         8 |       138 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        67 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        47 |        47 |        67 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        15 |        15 |        71 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         8 |         8 |       138 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        67 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        47 |        47 |        67 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        71 |        71 |        70 |        70 |        69 |        69 |        71 |
|                  jbird                   |       148 |       139 |       138 |       137 |       135 |       133 |       133 |       138 |
|                    Δ                     |        74 |        68 |        67 |        67 |        65 |        64 |        64 |        67 |
|              Improvement %               |       100 |        96 |        94 |        96 |        93 |        93 |        93 |        67 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        47 |       190 |       351 |       505 |       590 |       651 |       651 |        71 |
|                  jbird                   |        56 |        58 |        58 |        58 |        58 |        58 |        58 |       138 |
|                    Δ                     |         9 |      -132 |      -293 |      -447 |      -532 |      -593 |      -593 |        67 |
|              Improvement %               |       -19 |        69 |        83 |        89 |        90 |        91 |        91 |        67 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        71 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |        67 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        67 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        71 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        67 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        67 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        71 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       138 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        67 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        67 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7232 |      7233 |      7233 |      7233 |      7233 |      7233 |      7233 |        71 |
|                  jbird                   |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |       138 |
|                    Δ                     |     18137 |     18136 |     18136 |     18136 |     18136 |     18136 |     18136 |        67 |
|              Improvement %               |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |        67 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       327 |       328 |       328 |       328 |       329 |       332 |       332 |        71 |
|                  jbird                   |       160 |       160 |       160 |       160 |       161 |       162 |       162 |       138 |
|                    Δ                     |      -167 |      -168 |      -168 |      -168 |      -168 |      -170 |      -170 |        67 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        67 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        71 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       138 |
|                    Δ                     |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |        67 |
|              Improvement %               |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |        67 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       157 |       174 |       179 |       183 |       187 |       200 |       231 |      5484 |
|                  jbird                   |        78 |        85 |        89 |        90 |        91 |       104 |       130 |     10974 |
|                    Δ                     |       -79 |       -89 |       -90 |       -93 |       -96 |       -96 |      -101 |      5490 |
|              Improvement %               |        50 |        51 |        50 |        51 |        51 |        48 |        44 |      5490 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       159 |       176 |       180 |       185 |       189 |       202 |       228 |      5484 |
|                  jbird                   |        80 |        86 |        90 |        91 |        92 |       106 |       128 |     10974 |
|                    Δ                     |       -79 |       -90 |       -90 |       -94 |       -97 |       -96 |      -100 |      5490 |
|              Improvement %               |        50 |        51 |        50 |        51 |        51 |        48 |        44 |      5490 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6359 |      5747 |      5595 |      5467 |      5355 |      5003 |      4328 |      5484 |
|                  jbird                   |     12780 |     11767 |     11295 |     11159 |     11023 |      9583 |      7722 |     10974 |
|                    Δ                     |      6421 |      6020 |      5700 |      5692 |      5668 |      4580 |      3394 |      5490 |
|              Improvement %               |       101 |       105 |       102 |       104 |       106 |        92 |        78 |      5490 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       187 |       343 |       505 |       604 |       658 |       665 |      5484 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10974 |
|                    Δ                     |         0 |      -156 |      -312 |      -474 |      -573 |      -627 |      -634 |      5490 |
|              Improvement %               |         0 |        83 |        91 |        94 |        95 |        95 |        95 |      5490 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      5484 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10974 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      5490 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5490 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       981 |       981 |       981 |       981 |       981 |       981 |       982 |      5484 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10974 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -982 |      5490 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5490 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      5484 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10974 |
|                    Δ                     |      -318 |      -318 |      -318 |      -318 |      -318 |      -318 |      -319 |      5490 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      5490 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       106 |       106 |       106 |       106 |       106 |       106 |       110 |      5484 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10974 |
|                    Δ                     |       238 |       238 |       238 |       238 |       238 |       238 |       234 |      5490 |
|              Improvement %               |      -225 |      -225 |      -225 |      -225 |      -225 |      -225 |      -213 |      5490 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4069 |      4102 |      4114 |      4125 |      4133 |      4211 |      4330 |      5484 |
|                  jbird                   |      1936 |      1937 |      1938 |      1938 |      1942 |      1961 |      2070 |     10974 |
|                    Δ                     |     -2133 |     -2165 |     -2176 |     -2187 |     -2191 |     -2250 |     -2260 |      5490 |
|              Improvement %               |        52 |        53 |        53 |        53 |        53 |        53 |        52 |      5490 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      5484 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10974 |
|                    Δ                     |       663 |       663 |       663 |       663 |       663 |       663 |       663 |      5490 |
|              Improvement %               |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |      5490 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       161 |       179 |       185 |       188 |       193 |       207 |       242 |      5322 |
|                  jbird                   |        82 |        89 |        93 |        94 |        95 |       109 |       141 |     10477 |
|                    Δ                     |       -79 |       -90 |       -92 |       -94 |       -98 |       -98 |      -101 |      5155 |
|              Improvement %               |        49 |        50 |        50 |        50 |        51 |        47 |        42 |      5155 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       162 |       181 |       186 |       190 |       194 |       209 |       241 |      5322 |
|                  jbird                   |        84 |        91 |        95 |        95 |        97 |       111 |       143 |     10477 |
|                    Δ                     |       -78 |       -90 |       -91 |       -95 |       -97 |       -98 |       -98 |      5155 |
|              Improvement %               |        48 |        50 |        49 |        50 |        50 |        47 |        41 |      5155 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6211 |      5579 |      5419 |      5311 |      5199 |      4823 |      4137 |      5322 |
|                  jbird                   |     12121 |     11207 |     10759 |     10671 |     10487 |      9191 |      7082 |     10477 |
|                    Δ                     |      5910 |      5628 |      5340 |      5360 |      5288 |      4368 |      2945 |      5155 |
|              Improvement %               |        95 |       101 |        99 |       101 |       102 |        91 |        71 |      5155 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       185 |       334 |       490 |       584 |       645 |       645 |      5322 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10477 |
|                    Δ                     |         0 |      -154 |      -303 |      -459 |      -553 |      -614 |      -614 |      5155 |
|              Improvement %               |         0 |        83 |        91 |        94 |        95 |        95 |        95 |      5155 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      5322 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10477 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      5155 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5155 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       981 |       981 |       981 |       981 |       981 |       981 |       982 |      5322 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10477 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -982 |      5155 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5155 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      5322 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10477 |
|                    Δ                     |      -318 |      -318 |      -318 |      -318 |      -318 |      -318 |      -319 |      5155 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      5155 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       106 |       106 |       106 |       106 |       106 |       106 |       110 |      5322 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10477 |
|                    Δ                     |       238 |       238 |       238 |       238 |       238 |       238 |       234 |      5155 |
|              Improvement %               |      -225 |      -225 |      -225 |      -225 |      -225 |      -225 |      -213 |      5155 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4132 |      4166 |      4176 |      4186 |      4198 |      4289 |      4386 |      5322 |
|                  jbird                   |      2005 |      2006 |      2007 |      2007 |      2010 |      2030 |      2125 |     10477 |
|                    Δ                     |     -2127 |     -2160 |     -2169 |     -2179 |     -2188 |     -2259 |     -2261 |      5155 |
|              Improvement %               |        51 |        52 |        52 |        52 |        52 |        53 |        52 |      5155 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      5322 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10477 |
|                    Δ                     |       663 |       663 |       663 |       663 |       663 |       663 |       663 |      5155 |
|              Improvement %               |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |      5155 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       282 |       311 |       316 |       325 |       331 |       347 |       426 |      3107 |
|                  jbird                   |       108 |       122 |       125 |       128 |       134 |       147 |       172 |      7757 |
|                    Δ                     |      -174 |      -189 |      -191 |      -197 |      -197 |      -200 |      -254 |      4650 |
|              Improvement %               |        62 |        61 |        60 |        61 |        60 |        58 |        60 |      4650 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       283 |       313 |       318 |       327 |       333 |       348 |       447 |      3107 |
|                  jbird                   |       110 |       123 |       126 |       129 |       135 |       149 |       178 |      7757 |
|                    Δ                     |      -173 |      -190 |      -192 |      -198 |      -198 |      -199 |      -269 |      4650 |
|              Improvement %               |        61 |        61 |        60 |        61 |        59 |        57 |        60 |      4650 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3547 |      3217 |      3163 |      3079 |      3023 |      2887 |      2346 |      3107 |
|                  jbird                   |      9217 |      8215 |      8007 |      7823 |      7479 |      6787 |      5820 |      7757 |
|                    Δ                     |      5670 |      4998 |      4844 |      4744 |      4456 |      3900 |      3474 |      4650 |
|              Improvement %               |       160 |       155 |       153 |       154 |       147 |       135 |       148 |      4650 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |        94 |       158 |       222 |       261 |       284 |       284 |      3107 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |      7757 |
|                    Δ                     |         0 |       -62 |      -126 |      -190 |      -229 |      -252 |      -252 |      4650 |
|              Improvement %               |         0 |        66 |        80 |        86 |        88 |        89 |        89 |      4650 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        80 |        80 |        80 |        80 |        80 |        84 |      3107 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7757 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -84 |      4650 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4650 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         2 |         2 |         2 |         2 |         2 |         2 |         3 |      3107 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7757 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -3 |      4650 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4650 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        14 |      3107 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7757 |
|                    Δ                     |        15 |        15 |        15 |        15 |        15 |        15 |        14 |      4650 |
|              Improvement %               |      -115 |      -115 |      -115 |      -115 |      -115 |      -115 |      -100 |      4650 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       350 |       350 |       350 |       350 |       350 |       350 |       354 |      3107 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      7757 |
|                    Δ                     |       808 |       808 |       808 |       808 |       808 |       808 |       804 |      4650 |
|              Improvement %               |      -231 |      -231 |      -231 |      -231 |      -231 |      -231 |      -227 |      4650 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8624 |      8659 |      8659 |      8659 |      8667 |      8700 |      8972 |      3107 |
|                  jbird                   |      3571 |      3572 |      3572 |      3572 |      3574 |      3588 |      3991 |      7757 |
|                    Δ                     |     -5053 |     -5087 |     -5087 |     -5087 |     -5093 |     -5112 |     -4981 |      4650 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        56 |      4650 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |      3107 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7757 |
|                    Δ                     |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      4650 |
|              Improvement %               |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      4650 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        12 |        12 |        13 |        13 |        13 |        13 |        81 |
|                  jbird                   |         5 |         5 |         5 |         6 |         6 |         6 |         6 |       183 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       102 |
|              Improvement %               |        58 |        58 |        58 |        54 |        54 |        54 |        54 |       102 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        12 |        12 |        13 |        13 |        13 |        13 |        81 |
|                  jbird                   |         5 |         5 |         5 |         6 |         6 |         6 |         6 |       183 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       102 |
|              Improvement %               |        58 |        58 |        58 |        54 |        54 |        54 |        54 |       102 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        83 |        81 |        81 |        80 |        79 |        79 |        79 |        81 |
|                  jbird                   |       195 |       185 |       183 |       182 |       179 |       175 |       174 |       183 |
|                    Δ                     |       112 |       104 |       102 |       102 |       100 |        96 |        95 |       102 |
|              Improvement %               |       135 |       128 |       126 |       128 |       127 |       122 |       120 |       102 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       216 |       382 |       555 |       664 |       724 |       724 |        81 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       183 |
|                    Δ                     |         9 |      -164 |      -330 |      -503 |      -612 |      -672 |      -672 |       102 |
|              Improvement %               |       -23 |        76 |        86 |        91 |        92 |        93 |        93 |       102 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |        81 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       183 |
|                    Δ                     |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |       102 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       102 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        81 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       183 |
|                    Δ                     |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |       102 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       102 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        81 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       183 |
|                    Δ                     |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |       102 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |       102 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6894 |      6894 |      6894 |      6894 |      6894 |      6894 |      6894 |        81 |
|                  jbird                   |     19440 |     19440 |     19440 |     19440 |     19440 |     19440 |     19440 |       183 |
|                    Δ                     |     12546 |     12546 |     12546 |     12546 |     12546 |     12546 |     12546 |       102 |
|              Improvement %               |      -182 |      -182 |      -182 |      -182 |      -182 |      -182 |      -182 |       102 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       316 |       317 |       317 |       317 |       317 |       321 |       321 |        81 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       154 |       154 |       183 |
|                    Δ                     |      -163 |      -164 |      -164 |      -164 |      -164 |      -167 |      -167 |       102 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |       102 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       264 |       264 |       264 |       264 |       264 |       264 |       264 |        81 |
|                  jbird                   |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |       183 |
|                    Δ                     |     55828 |     55828 |     55828 |     55828 |     55828 |     55828 |     55828 |       102 |
|              Improvement %               |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |       102 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        76 |        77 |        80 |        85 |        93 |       116 |     12193 |
|                  jbird                   |        28 |        29 |        32 |        32 |        32 |        40 |        83 |     29126 |
|                    Δ                     |       -47 |       -47 |       -45 |       -48 |       -53 |       -53 |       -33 |     16933 |
|              Improvement %               |        63 |        62 |        58 |        60 |        62 |        57 |        28 |     16933 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        78 |        78 |        82 |        87 |        96 |       115 |     12193 |
|                  jbird                   |        29 |        31 |        33 |        33 |        34 |        42 |        69 |     29126 |
|                    Δ                     |       -48 |       -47 |       -45 |       -49 |       -53 |       -54 |       -46 |     16933 |
|              Improvement %               |        62 |        60 |        58 |        60 |        61 |        56 |        40 |     16933 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        12 |        11 |         9 |     12193 |
|                  jbird                   |        36 |        34 |        32 |        31 |        31 |        25 |        12 |     29126 |
|                    Δ                     |        23 |        21 |        19 |        19 |        19 |        14 |         3 |     16933 |
|              Improvement %               |       177 |       162 |       146 |       158 |       158 |       127 |        33 |     16933 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |        53 |        75 |        97 |       110 |       119 |       120 |     12193 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     29126 |
|                    Δ                     |         0 |       -22 |       -44 |       -66 |       -79 |       -88 |       -89 |     16933 |
|              Improvement %               |         0 |        42 |        59 |        68 |        72 |        74 |        74 |     16933 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4864 |      4867 |      4867 |      4867 |      4867 |      4867 |      8960 |     12193 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     29126 |
|                    Δ                     |     -4864 |     -4867 |     -4867 |     -4867 |     -4867 |     -4867 |     -8960 |     16933 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16933 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       152 |       152 |       152 |       152 |       152 |       152 |       153 |     12193 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     29126 |
|                    Δ                     |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -153 |     16933 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16933 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |     12193 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     29126 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |        -1 |     16933 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         1 |     16933 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        17 |     12193 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     29126 |
|                    Δ                     |        78 |        78 |        78 |        78 |        78 |        78 |        74 |     16933 |
|              Improvement %               |      -600 |      -600 |      -600 |      -600 |      -600 |      -600 |      -435 |     16933 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1139 |      1140 |      1141 |      1148 |      1148 |      1161 |      1254 |     12193 |
|                  jbird                   |       730 |       730 |       730 |       731 |       731 |       748 |       793 |     29126 |
|                    Δ                     |      -409 |      -410 |      -411 |      -417 |      -417 |      -413 |      -461 |     16933 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        36 |        37 |     16933 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     12193 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     29126 |
|                    Δ                     |       152 |       152 |       152 |       152 |       152 |       152 |       152 |     16933 |
|              Improvement %               |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     16933 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       238 |       265 |       269 |       273 |       277 |       293 |       314 |      3671 |
|                  jbird                   |        91 |        98 |       103 |       105 |       107 |       120 |       157 |      9484 |
|                    Δ                     |      -147 |      -167 |      -166 |      -168 |      -170 |      -173 |      -157 |      5813 |
|              Improvement %               |        62 |        63 |        62 |        62 |        61 |        59 |        50 |      5813 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       239 |       266 |       270 |       275 |       279 |       294 |       314 |      3671 |
|                  jbird                   |        92 |       100 |       104 |       106 |       109 |       122 |       158 |      9484 |
|                    Δ                     |      -147 |      -166 |      -166 |      -169 |      -170 |      -172 |      -156 |      5813 |
|              Improvement %               |        62 |        62 |        61 |        61 |        61 |        59 |        50 |      5813 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4211 |      3779 |      3725 |      3665 |      3609 |      3415 |      3180 |      3671 |
|                  jbird                   |     10979 |     10167 |      9735 |      9567 |      9351 |      8319 |      6371 |      9484 |
|                    Δ                     |      6768 |      6388 |      6010 |      5902 |      5742 |      4904 |      3191 |      5813 |
|              Improvement %               |       161 |       169 |       161 |       161 |       159 |       144 |       100 |      5813 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       110 |       191 |       270 |       318 |       350 |       350 |      3671 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9484 |
|                    Δ                     |         0 |       -79 |      -160 |      -239 |      -287 |      -319 |      -319 |      5813 |
|              Improvement %               |         0 |        72 |        84 |        89 |        90 |        91 |        91 |      5813 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        71 |        71 |        71 |        71 |        71 |        71 |        75 |      3671 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9484 |
|                    Δ                     |       -71 |       -71 |       -71 |       -71 |       -71 |       -71 |       -75 |      5813 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5813 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       802 |       802 |       802 |       802 |       802 |       802 |       803 |      3671 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9484 |
|                    Δ                     |      -802 |      -802 |      -802 |      -802 |      -802 |      -802 |      -803 |      5813 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5813 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3671 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9484 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      5813 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      5813 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       210 |       210 |       210 |       210 |       210 |       210 |       214 |      3671 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9484 |
|                    Δ                     |       451 |       451 |       451 |       451 |       451 |       451 |       447 |      5813 |
|              Improvement %               |      -215 |      -215 |      -215 |      -215 |      -215 |      -215 |      -209 |      5813 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7041 |      7053 |      7057 |      7062 |      7070 |      7102 |      7337 |      3671 |
|                  jbird                   |      2560 |      2560 |      2560 |      2562 |      2562 |      2578 |      2802 |      9484 |
|                    Δ                     |     -4481 |     -4493 |     -4497 |     -4500 |     -4508 |     -4524 |     -4535 |      5813 |
|              Improvement %               |        64 |        64 |        64 |        64 |        64 |        64 |        62 |      5813 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      3671 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9484 |
|                    Δ                     |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      5813 |
|              Improvement %               |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |      5813 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       365 |       402 |       406 |       411 |       418 |       444 |       474 |      2432 |
|                  jbird                   |        59 |        66 |        68 |        71 |        74 |        83 |       132 |     13980 |
|                    Δ                     |      -306 |      -336 |      -338 |      -340 |      -344 |      -361 |      -342 |     11548 |
|              Improvement %               |        84 |        84 |        83 |        83 |        82 |        81 |        72 |     11548 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       367 |       404 |       408 |       413 |       420 |       444 |       476 |      2432 |
|                  jbird                   |        60 |        67 |        70 |        72 |        75 |        86 |       133 |     13980 |
|                    Δ                     |      -307 |      -337 |      -338 |      -341 |      -345 |      -358 |      -343 |     11548 |
|              Improvement %               |        84 |        83 |        83 |        83 |        82 |        81 |        72 |     11548 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2739 |      2485 |      2463 |      2433 |      2397 |      2251 |      2110 |      2432 |
|                  jbird                   |     17009 |     15223 |     14727 |     14135 |     13575 |     12007 |      7605 |     13980 |
|                    Δ                     |     14270 |     12738 |     12264 |     11702 |     11178 |      9756 |      5495 |     11548 |
|              Improvement %               |       521 |       513 |       498 |       481 |       466 |       433 |       260 |     11548 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       105 |       182 |       261 |       307 |       333 |       337 |      2432 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     13980 |
|                    Δ                     |         0 |       -74 |      -151 |      -230 |      -276 |      -302 |      -306 |     11548 |
|              Improvement %               |         0 |        70 |        83 |        88 |        90 |        91 |        91 |     11548 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        89 |        89 |        89 |        89 |        89 |        89 |        93 |      2432 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13980 |
|                    Δ                     |       -89 |       -89 |       -89 |       -89 |       -89 |       -89 |       -93 |     11548 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11548 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2088 |      2089 |      2089 |      2089 |      2089 |      2089 |      2089 |      2432 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13980 |
|                    Δ                     |     -2088 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     11548 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11548 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2677 |      2677 |      2677 |      2677 |      2677 |      2677 |      2678 |      2432 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13980 |
|                    Δ                     |     -2667 |     -2667 |     -2667 |     -2667 |     -2667 |     -2667 |     -2668 |     11548 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     11548 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       190 |       190 |       190 |       190 |       190 |       190 |       194 |      2432 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     13980 |
|                    Δ                     |       139 |       139 |       139 |       139 |       139 |       139 |       135 |     11548 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -70 |     11548 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8697 |      8708 |      8716 |      8724 |      8733 |      8929 |      9155 |      2432 |
|                  jbird                   |      1551 |      1552 |      1552 |      1552 |      1552 |      1562 |      1686 |     13980 |
|                    Δ                     |     -7146 |     -7156 |     -7164 |     -7172 |     -7181 |     -7367 |     -7469 |     11548 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        83 |        82 |     11548 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       589 |       589 |       589 |       589 |       589 |       589 |       589 |      2432 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13980 |
|                    Δ                     |      -579 |      -579 |      -579 |      -579 |      -579 |      -579 |      -579 |     11548 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |     11548 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        72 |        76 |        82 |        83 |        85 |        94 |       140 |     11933 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        13 |        47 |     75900 |
|                    Δ                     |       -63 |       -66 |       -72 |       -73 |       -75 |       -81 |       -93 |     63967 |
|              Improvement %               |        88 |        87 |        88 |        88 |        88 |        86 |        66 |     63967 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        73 |        77 |        83 |        85 |        87 |        96 |       127 |     11933 |
|                  jbird                   |        10 |        11 |        12 |        12 |        12 |        15 |        40 |     75900 |
|                    Δ                     |       -63 |       -66 |       -71 |       -73 |       -75 |       -81 |       -87 |     63967 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        84 |        69 |     63967 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        13 |        12 |        12 |        12 |        11 |         7 |     11933 |
|                  jbird                   |       114 |       103 |       100 |        99 |        98 |        77 |        21 |     75900 |
|                    Δ                     |       100 |        90 |        88 |        87 |        86 |        66 |        14 |     63967 |
|              Improvement %               |       714 |       692 |       733 |       725 |       717 |       600 |       200 |     63967 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       217 |       408 |       602 |       717 |       794 |       794 |     11933 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     75900 |
|                    Δ                     |         0 |      -186 |      -377 |      -571 |      -686 |      -763 |      -763 |     63967 |
|              Improvement %               |         0 |        86 |        92 |        95 |        96 |        96 |        96 |     63967 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        58 |        58 |        58 |        58 |        58 |        58 |        62 |     11933 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     75900 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -62 |     63967 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     63967 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        80 |        80 |        80 |        80 |        80 |        81 |     11933 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     75900 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -81 |     63967 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     63967 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |     11933 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     75900 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |     63967 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |     63967 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        67 |        68 |        68 |        68 |        68 |        68 |        72 |     11933 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     75900 |
|                    Δ                     |        59 |        58 |        58 |        58 |        58 |        58 |        54 |     63967 |
|              Improvement %               |       -88 |       -85 |       -85 |       -85 |       -85 |       -85 |       -75 |     63967 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1855 |      1871 |      1879 |      1886 |      1894 |      1907 |      2009 |     11933 |
|                  jbird                   |       230 |       230 |       230 |       230 |       230 |       235 |       278 |     75900 |
|                    Δ                     |     -1625 |     -1641 |     -1649 |     -1656 |     -1664 |     -1672 |     -1731 |     63967 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        86 |     63967 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     11933 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     75900 |
|                    Δ                     |        73 |        73 |        73 |        73 |        73 |        73 |        73 |     63967 |
|              Improvement %               |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     63967 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1900 |      2026 |      2052 |      2076 |      2092 |      2163 |      2196 |       487 |
|                  jbird                   |       951 |      1019 |      1027 |      1038 |      1060 |      1138 |      1205 |       965 |
|                    Δ                     |      -949 |     -1007 |     -1025 |     -1038 |     -1032 |     -1025 |      -991 |       478 |
|              Improvement %               |        50 |        50 |        50 |        50 |        49 |        47 |        45 |       478 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1902 |      2029 |      2054 |      2078 |      2096 |      2161 |      2198 |       487 |
|                  jbird                   |       953 |      1020 |      1029 |      1040 |      1061 |      1139 |      1208 |       965 |
|                    Δ                     |      -949 |     -1009 |     -1025 |     -1038 |     -1035 |     -1022 |      -990 |       478 |
|              Improvement %               |        50 |        50 |        50 |        50 |        49 |        47 |        45 |       478 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       526 |       494 |       488 |       482 |       478 |       463 |       455 |       487 |
|                  jbird                   |      1051 |       982 |       974 |       964 |       944 |       880 |       830 |       965 |
|                    Δ                     |       525 |       488 |       486 |       482 |       466 |       417 |       375 |       478 |
|              Improvement %               |       100 |        99 |       100 |       100 |        97 |        90 |        82 |       478 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       133 |       229 |       331 |       395 |       431 |       431 |       487 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       965 |
|                    Δ                     |         1 |       -98 |      -194 |      -296 |      -360 |      -396 |      -396 |       478 |
|              Improvement %               |        -3 |        74 |        85 |        89 |        91 |        92 |        92 |       478 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       669 |       670 |       670 |       670 |       670 |       670 |       673 |       487 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       965 |
|                    Δ                     |      -669 |      -670 |      -670 |      -670 |      -670 |      -670 |      -673 |       478 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       478 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6133 |      6134 |      6134 |      6134 |      6134 |      6134 |      6134 |       487 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       965 |
|                    Δ                     |     -6133 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |       478 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       478 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6636 |      6637 |      6637 |      6637 |      6637 |      6637 |      6637 |       487 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       965 |
|                    Δ                     |     -2585 |     -2586 |     -2586 |     -2586 |     -2586 |     -2586 |     -2586 |       478 |
|              Improvement %               |        39 |        39 |        39 |        39 |        39 |        39 |        39 |       478 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       882 |       882 |       882 |       882 |       882 |       882 |       886 |       487 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       965 |
|                    Δ                     |      3029 |      3029 |      3029 |      3029 |      3029 |      3029 |      3025 |       478 |
|              Improvement %               |      -343 |      -343 |      -343 |      -343 |      -343 |      -343 |      -341 |       478 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        44 |        44 |        44 |        44 |        44 |        45 |        45 |       487 |
|                  jbird                   |        22 |        22 |        22 |        22 |        22 |        23 |        23 |       965 |
|                    Δ                     |       -22 |       -22 |       -22 |       -22 |       -22 |       -22 |       -22 |       478 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        49 |        49 |       478 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       503 |       503 |       503 |       503 |       503 |       503 |       503 |       487 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       965 |
|                    Δ                     |      3548 |      3548 |      3548 |      3548 |      3548 |      3548 |      3548 |       478 |
|              Improvement %               |      -705 |      -705 |      -705 |      -705 |      -705 |      -705 |      -705 |       478 |

<p>
</details>

