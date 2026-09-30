
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
|                foundation                |      2580 |      2771 |      2793 |      2812 |      2849 |      3512 |      3795 |       356 |
|                  jbird                   |      1295 |      1449 |      1462 |      1501 |      1550 |      1718 |      1782 |       671 |
|                    Δ                     |     -1285 |     -1322 |     -1331 |     -1311 |     -1299 |     -1794 |     -2013 |       315 |
|              Improvement %               |        50 |        48 |        48 |        47 |        46 |        51 |        53 |       315 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2584 |      2777 |      2798 |      2820 |      2851 |      3527 |      3804 |       356 |
|                  jbird                   |      1305 |      1453 |      1467 |      1505 |      1560 |      1722 |      1786 |       671 |
|                    Δ                     |     -1279 |     -1324 |     -1331 |     -1315 |     -1291 |     -1805 |     -2018 |       315 |
|              Improvement %               |        49 |        48 |        48 |        47 |        45 |        51 |        53 |       315 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       388 |       361 |       358 |       356 |       351 |       285 |       263 |       356 |
|                  jbird                   |       772 |       690 |       684 |       666 |       645 |       582 |       561 |       671 |
|                    Δ                     |       384 |       329 |       326 |       310 |       294 |       297 |       298 |       315 |
|              Improvement %               |        99 |        91 |        91 |        87 |        84 |       104 |       113 |       315 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       182 |       339 |       490 |       586 |       641 |       648 |       356 |
|                  jbird                   |        34 |        39 |        39 |        39 |        39 |        39 |        39 |       671 |
|                    Δ                     |         2 |      -143 |      -300 |      -451 |      -547 |      -602 |      -609 |       315 |
|              Improvement %               |        -6 |        79 |        88 |        92 |        93 |        94 |        94 |       315 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1398 |      1399 |      1399 |      1399 |      1399 |      1399 |      1402 |       356 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       671 |
|                    Δ                     |     -1398 |     -1399 |     -1399 |     -1399 |     -1399 |     -1399 |     -1402 |       315 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       315 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       356 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       671 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       315 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       315 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       356 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       671 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       315 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       315 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1471 |      1471 |      1471 |      1471 |      1471 |      1471 |      1475 |       356 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       671 |
|                    Δ                     |      3761 |      3761 |      3761 |      3761 |      3761 |      3761 |      3757 |       315 |
|              Improvement %               |      -256 |      -256 |      -256 |      -256 |      -256 |      -256 |      -255 |       315 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        66 |        66 |       356 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       671 |
|                    Δ                     |       -33 |       -33 |       -33 |       -33 |       -33 |       -34 |       -33 |       315 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        52 |        50 |       315 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         9 |         9 |         9 |         9 |         9 |         9 |         9 |       356 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       671 |
|                    Δ                     |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |       315 |
|              Improvement %               |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |       315 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2624 |      2867 |      2886 |      2902 |      2937 |      3029 |     13730 |       342 |
|                  jbird                   |      1390 |      1530 |      1537 |      1547 |      1563 |      1602 |      1673 |       646 |
|                    Δ                     |     -1234 |     -1337 |     -1349 |     -1355 |     -1374 |     -1427 |    -12057 |       304 |
|              Improvement %               |        47 |        47 |        47 |        47 |        47 |        47 |        88 |       304 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2628 |      2871 |      2890 |      2910 |      2941 |      3033 |      3102 |       342 |
|                  jbird                   |      1394 |      1534 |      1542 |      1553 |      1567 |      1608 |      1676 |       646 |
|                    Δ                     |     -1234 |     -1337 |     -1348 |     -1357 |     -1374 |     -1425 |     -1426 |       304 |
|              Improvement %               |        47 |        47 |        47 |        47 |        47 |        47 |        46 |       304 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       381 |       349 |       347 |       345 |       341 |       330 |        73 |       342 |
|                  jbird                   |       719 |       654 |       651 |       646 |       640 |       625 |       598 |       646 |
|                    Δ                     |       338 |       305 |       304 |       301 |       299 |       295 |       525 |       304 |
|              Improvement %               |        89 |        87 |        88 |        87 |        88 |        89 |       719 |       304 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |       176 |       325 |       476 |       567 |       619 |       619 |       342 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       646 |
|                    Δ                     |         1 |      -140 |      -289 |      -440 |      -531 |      -583 |      -583 |       304 |
|              Improvement %               |        -3 |        80 |        89 |        92 |        94 |        94 |        94 |       304 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1398 |      1399 |      1399 |      1399 |      1399 |      1399 |      1402 |       342 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       646 |
|                    Δ                     |     -1398 |     -1399 |     -1399 |     -1399 |     -1399 |     -1399 |     -1402 |       304 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       304 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       342 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       646 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       304 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       304 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       342 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       646 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       304 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       304 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1471 |      1471 |      1471 |      1471 |      1471 |      1471 |      1475 |       342 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       646 |
|                    Δ                     |      3761 |      3761 |      3761 |      3761 |      3761 |      3761 |      3757 |       304 |
|              Improvement %               |      -256 |      -256 |      -256 |      -256 |      -256 |      -256 |      -255 |       304 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        66 |        66 |        66 |        66 |        66 |        67 |        67 |       342 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       646 |
|                    Δ                     |       -33 |       -33 |       -33 |       -33 |       -33 |       -34 |       -33 |       304 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        51 |        49 |       304 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         9 |         9 |         9 |         9 |         9 |         9 |         9 |       342 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       646 |
|                    Δ                     |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |     10533 |       304 |
|              Improvement %               |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |   -117033 |       304 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       636 |       699 |       706 |       713 |       724 |       762 |     10703 |      1385 |
|                  jbird                   |       329 |       367 |       372 |       377 |       385 |       412 |       797 |      2623 |
|                    Δ                     |      -307 |      -332 |      -334 |      -336 |      -339 |      -350 |     -9906 |      1238 |
|              Improvement %               |        48 |        47 |        47 |        47 |        47 |        46 |        93 |      1238 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       640 |       703 |       710 |       717 |       729 |       766 |       833 |      1385 |
|                  jbird                   |       333 |       371 |       376 |       382 |       389 |       418 |       540 |      2623 |
|                    Δ                     |      -307 |      -332 |      -334 |      -335 |      -340 |      -348 |      -293 |      1238 |
|              Improvement %               |        48 |        47 |        47 |        47 |        47 |        45 |        35 |      1238 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1572 |      1431 |      1417 |      1403 |      1381 |      1313 |        93 |      1385 |
|                  jbird                   |      3036 |      2725 |      2689 |      2651 |      2603 |      2427 |      1254 |      2623 |
|                    Δ                     |      1464 |      1294 |      1272 |      1248 |      1222 |      1114 |      1161 |      1238 |
|              Improvement %               |        93 |        90 |        90 |        89 |        88 |        85 |      1248 |      1238 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       183 |       332 |       488 |       581 |       635 |       635 |      1385 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2623 |
|                    Δ                     |         1 |      -151 |      -300 |      -456 |      -549 |      -603 |      -603 |      1238 |
|              Improvement %               |        -3 |        83 |        90 |        93 |        94 |        95 |        95 |      1238 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |      1385 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2623 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      1238 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1238 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3747 |      1385 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2623 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |      1238 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1238 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1385 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2623 |
|                    Δ                     |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1112 |      1238 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      1238 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       379 |       379 |       379 |       379 |       379 |       383 |      1385 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2623 |
|                    Δ                     |       995 |       995 |       995 |       995 |       995 |       995 |       991 |      1238 |
|              Improvement %               |      -263 |      -263 |      -263 |      -263 |      -263 |      -263 |      -259 |      1238 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1385 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2623 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |      1238 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        53 |        53 |      1238 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      1385 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2623 |
|                    Δ                     |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      1238 |
|              Improvement %               |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |      1238 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       657 |       720 |       727 |       734 |       749 |       778 |       804 |      1358 |
|                  jbird                   |       344 |       384 |       389 |       395 |       402 |       426 |       460 |      2514 |
|                    Δ                     |      -313 |      -336 |      -338 |      -339 |      -347 |      -352 |      -344 |      1156 |
|              Improvement %               |        48 |        47 |        46 |        46 |        46 |        45 |        43 |      1156 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       660 |       724 |       731 |       738 |       754 |       782 |       807 |      1358 |
|                  jbird                   |       348 |       388 |       392 |       399 |       407 |       430 |       465 |      2514 |
|                    Δ                     |      -312 |      -336 |      -339 |      -339 |      -347 |      -352 |      -342 |      1156 |
|              Improvement %               |        47 |        46 |        46 |        46 |        46 |        45 |        42 |      1156 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1523 |      1388 |      1377 |      1363 |      1336 |      1286 |      1244 |      1358 |
|                  jbird                   |      2903 |      2607 |      2573 |      2533 |      2487 |      2349 |      2172 |      2514 |
|                    Δ                     |      1380 |      1219 |      1196 |      1170 |      1151 |      1063 |       928 |      1156 |
|              Improvement %               |        91 |        88 |        87 |        86 |        86 |        83 |        75 |      1156 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       179 |       326 |       481 |       564 |       618 |       625 |      1358 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2514 |
|                    Δ                     |         1 |      -147 |      -294 |      -449 |      -532 |      -586 |      -593 |      1156 |
|              Improvement %               |        -3 |        82 |        90 |        93 |        94 |        95 |        95 |      1156 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |      1358 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2514 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      1156 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1156 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3747 |      1358 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2514 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |      1156 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1156 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1358 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2514 |
|                    Δ                     |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1111 |     -1112 |      1156 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      1156 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       379 |       379 |       379 |       379 |       379 |       383 |      1358 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2514 |
|                    Δ                     |       995 |       995 |       995 |       995 |       995 |       995 |       991 |      1156 |
|              Improvement %               |      -263 |      -263 |      -263 |      -263 |      -263 |      -263 |      -259 |      1156 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        17 |        17 |        17 |        17 |        17 |        17 |      1358 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      2514 |
|                    Δ                     |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |      1156 |
|              Improvement %               |        50 |        53 |        53 |        53 |        53 |        53 |        47 |      1156 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         7 |         7 |         7 |         7 |         7 |         7 |         7 |      1358 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2514 |
|                    Δ                     |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      2635 |      1156 |
|              Improvement %               |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |    -37643 |      1156 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1272 |      1390 |      1400 |      1414 |      1434 |      1491 |      1562 |       709 |
|                  jbird                   |       653 |       722 |       729 |       737 |       759 |       825 |       896 |      1350 |
|                    Δ                     |      -619 |      -668 |      -671 |      -677 |      -675 |      -666 |      -666 |       641 |
|              Improvement %               |        49 |        48 |        48 |        48 |        47 |        45 |        43 |       641 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1276 |      1394 |      1404 |      1419 |      1439 |      1502 |      1566 |       709 |
|                  jbird                   |       657 |       726 |       733 |       741 |       763 |       829 |       901 |      1350 |
|                    Δ                     |      -619 |      -668 |      -671 |      -678 |      -676 |      -673 |      -665 |       641 |
|              Improvement %               |        49 |        48 |        48 |        48 |        47 |        45 |        42 |       641 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       786 |       720 |       715 |       707 |       698 |       671 |       640 |       709 |
|                  jbird                   |      1530 |      1386 |      1373 |      1357 |      1317 |      1212 |      1116 |      1350 |
|                    Δ                     |       744 |       666 |       658 |       650 |       619 |       541 |       476 |       641 |
|              Improvement %               |        95 |        92 |        92 |        92 |        89 |        81 |        74 |       641 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       185 |       337 |       496 |       585 |       645 |       645 |       709 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1350 |
|                    Δ                     |         0 |      -152 |      -304 |      -463 |      -552 |      -612 |      -612 |       641 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |       641 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       703 |       703 |       703 |       703 |       703 |       703 |       707 |       709 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1350 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -707 |       641 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       641 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7431 |       709 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1350 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |       641 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       641 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       709 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1350 |
|                    Δ                     |     -2162 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |       641 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       641 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       743 |       743 |       743 |       743 |       743 |       747 |       709 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1350 |
|                    Δ                     |      2005 |      2005 |      2005 |      2005 |      2005 |      2005 |      2001 |       641 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -270 |      -270 |      -268 |       641 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        33 |        33 |        33 |        34 |       709 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1350 |
|                    Δ                     |       -16 |       -16 |       -16 |       -17 |       -17 |       -17 |       -17 |       641 |
|              Improvement %               |        50 |        50 |        50 |        52 |        52 |        52 |        50 |       641 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |       709 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1350 |
|                    Δ                     |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |       641 |
|              Improvement %               |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |       641 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1303 |      1418 |      1435 |      1450 |      1467 |      1530 |      1629 |       693 |
|                  jbird                   |       689 |       759 |       765 |       777 |       796 |       825 |       926 |      1286 |
|                    Δ                     |      -614 |      -659 |      -670 |      -673 |      -671 |      -705 |      -703 |       593 |
|              Improvement %               |        47 |        46 |        47 |        46 |        46 |        46 |        43 |       593 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1306 |      1422 |      1439 |      1454 |      1473 |      1534 |      1630 |       693 |
|                  jbird                   |       692 |       763 |       770 |       781 |       800 |       829 |       930 |      1286 |
|                    Δ                     |      -614 |      -659 |      -669 |      -673 |      -673 |      -705 |      -700 |       593 |
|              Improvement %               |        47 |        46 |        46 |        46 |        46 |        46 |        43 |       593 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       768 |       705 |       697 |       690 |       681 |       654 |       614 |       693 |
|                  jbird                   |      1451 |      1317 |      1306 |      1288 |      1257 |      1212 |      1080 |      1286 |
|                    Δ                     |       683 |       612 |       609 |       598 |       576 |       558 |       466 |       593 |
|              Improvement %               |        89 |        87 |        87 |        87 |        85 |        85 |        76 |       593 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       180 |       331 |       485 |       576 |       626 |       634 |       693 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1286 |
|                    Δ                     |         0 |      -147 |      -298 |      -452 |      -543 |      -593 |      -601 |       593 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |       593 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       703 |       703 |       703 |       703 |       703 |       703 |       707 |       693 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1286 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -707 |       593 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       593 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7431 |       693 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1286 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |       593 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       593 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       693 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1286 |
|                    Δ                     |     -2162 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |     -2163 |       593 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       593 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       743 |       743 |       743 |       743 |       743 |       747 |       693 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1286 |
|                    Δ                     |      2005 |      2005 |      2005 |      2005 |      2005 |      2005 |      2001 |       593 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -270 |      -270 |      -268 |       593 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       693 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1286 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -18 |       -17 |       593 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        50 |       593 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |       693 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1286 |
|                    Δ                     |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |      5268 |       593 |
|              Improvement %               |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |    -65850 |       593 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        15 |        15 |        15 |        71 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         8 |         8 |       138 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -8 |        -7 |        -7 |        67 |
|              Improvement %               |        50 |        50 |        50 |        50 |        53 |        47 |        47 |        67 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        15 |        15 |        15 |        71 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         8 |         8 |       138 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -8 |        -7 |        -7 |        67 |
|              Improvement %               |        50 |        50 |        50 |        50 |        53 |        47 |        47 |        67 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        72 |        71 |        70 |        68 |        66 |        66 |        71 |
|                  jbird                   |       147 |       140 |       138 |       137 |       134 |       128 |       127 |       138 |
|                    Δ                     |        73 |        68 |        67 |        67 |        66 |        62 |        61 |        67 |
|              Improvement %               |        99 |        94 |        94 |        96 |        97 |        94 |        92 |        67 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        46 |       194 |       344 |       500 |       590 |       653 |       653 |        71 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       138 |
|                    Δ                     |         9 |      -136 |      -286 |      -442 |      -532 |      -595 |      -595 |        67 |
|              Improvement %               |       -20 |        70 |        83 |        88 |        90 |        91 |        91 |        67 |

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
|                foundation                |       324 |       324 |       324 |       324 |       325 |       327 |       327 |        71 |
|                  jbird                   |       157 |       158 |       158 |       158 |       158 |       159 |       159 |       138 |
|                    Δ                     |      -167 |      -166 |      -166 |      -166 |      -167 |      -168 |      -168 |        67 |
|              Improvement %               |        52 |        51 |        51 |        51 |        51 |        51 |        51 |        67 |

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

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        15 |        17 |        17 |        69 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         9 |       129 |
|                    Δ                     |        -7 |        -6 |        -6 |        -6 |        -7 |        -9 |        -8 |        60 |
|              Improvement %               |        50 |        43 |        43 |        43 |        47 |        53 |        47 |        60 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        15 |        17 |        17 |        69 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         9 |       129 |
|                    Δ                     |        -7 |        -6 |        -6 |        -6 |        -7 |        -9 |        -8 |        60 |
|              Improvement %               |        50 |        43 |        43 |        43 |        47 |        53 |        47 |        60 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        72 |        70 |        69 |        69 |        68 |        59 |        59 |        69 |
|                  jbird                   |       138 |       131 |       130 |       128 |       125 |       122 |       115 |       129 |
|                    Δ                     |        66 |        61 |        61 |        59 |        57 |        63 |        56 |        60 |
|              Improvement %               |        92 |        87 |        88 |        86 |        84 |       107 |        95 |        60 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        47 |       193 |       337 |       483 |       582 |       635 |       635 |        69 |
|                  jbird                   |        55 |        76 |        76 |        76 |        76 |        76 |        76 |       129 |
|                    Δ                     |         8 |      -117 |      -261 |      -407 |      -506 |      -559 |      -559 |        60 |
|              Improvement %               |       -17 |        61 |        77 |        84 |        87 |        88 |        88 |        60 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        69 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       129 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |        60 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        60 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        69 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       129 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        60 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        60 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        69 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       129 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        60 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        60 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7232 |      7233 |      7233 |      7233 |      7233 |      7233 |      7233 |        69 |
|                  jbird                   |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |     25369 |       129 |
|                    Δ                     |     18137 |     18136 |     18136 |     18136 |     18136 |     18136 |     18136 |        60 |
|              Improvement %               |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |      -251 |        60 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       329 |       329 |       329 |       329 |       330 |       331 |       331 |        69 |
|                  jbird                   |       163 |       163 |       163 |       163 |       163 |       165 |       170 |       129 |
|                    Δ                     |      -166 |      -166 |      -166 |      -166 |      -167 |      -166 |      -161 |        60 |
|              Improvement %               |        50 |        50 |        50 |        50 |        51 |        50 |        49 |        60 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        69 |
|                  jbird                   |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |     52594 |       129 |
|                    Δ                     |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |     52583 |        60 |
|              Improvement %               |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |   -478027 |        60 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       161 |       177 |       182 |       186 |       190 |       204 |       242 |      5282 |
|                  jbird                   |        83 |        92 |        94 |        94 |        97 |       109 |       149 |      9938 |
|                    Δ                     |       -78 |       -85 |       -88 |       -92 |       -93 |       -95 |       -93 |      4656 |
|              Improvement %               |        48 |        48 |        48 |        49 |        49 |        47 |        38 |      4656 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       165 |       181 |       186 |       190 |       195 |       209 |       240 |      5282 |
|                  jbird                   |        86 |        96 |        97 |        98 |       101 |       113 |       143 |      9938 |
|                    Δ                     |       -79 |       -85 |       -89 |       -92 |       -94 |       -96 |       -97 |      4656 |
|              Improvement %               |        48 |        47 |        48 |        48 |        48 |        46 |        40 |      4656 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6195 |      5651 |      5487 |      5375 |      5255 |      4895 |      4133 |      5282 |
|                  jbird                   |     12091 |     10823 |     10703 |     10591 |     10303 |      9175 |      6698 |      9938 |
|                    Δ                     |      5896 |      5172 |      5216 |      5216 |      5048 |      4280 |      2565 |      4656 |
|              Improvement %               |        95 |        92 |        95 |        97 |        96 |        87 |        62 |      4656 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       181 |       332 |       492 |       578 |       639 |       639 |      5282 |
|                  jbird                   |        30 |        30 |        30 |        31 |        31 |        31 |        31 |      9938 |
|                    Δ                     |         0 |      -151 |      -302 |      -461 |      -547 |      -608 |      -608 |      4656 |
|              Improvement %               |         0 |        83 |        91 |        94 |        95 |        95 |        95 |      4656 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      5282 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9938 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      4656 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4656 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       981 |       981 |       981 |       981 |       981 |       981 |       982 |      5282 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9938 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -982 |      4656 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4656 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      5282 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9938 |
|                    Δ                     |      -318 |      -318 |      -318 |      -318 |      -318 |      -318 |      -319 |      4656 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      4656 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       106 |       106 |       106 |       106 |       106 |       106 |       110 |      5282 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9938 |
|                    Δ                     |       238 |       238 |       238 |       238 |       238 |       238 |       234 |      4656 |
|              Improvement %               |      -225 |      -225 |      -225 |      -225 |      -225 |      -225 |      -213 |      4656 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4092 |      4116 |      4127 |      4139 |      4147 |      4219 |      4334 |      5282 |
|                  jbird                   |      1979 |      1979 |      1980 |      1980 |      1982 |      2010 |      2119 |      9938 |
|                    Δ                     |     -2113 |     -2137 |     -2147 |     -2159 |     -2165 |     -2209 |     -2215 |      4656 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        51 |      4656 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      5282 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9938 |
|                    Δ                     |       663 |       663 |       663 |       663 |       663 |       663 |       663 |      4656 |
|              Improvement %               |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |      4656 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       164 |       182 |       188 |       192 |       195 |       207 |       314 |      5139 |
|                  jbird                   |        87 |        97 |        99 |       102 |       106 |       116 |       189 |      9332 |
|                    Δ                     |       -77 |       -85 |       -89 |       -90 |       -89 |       -91 |      -125 |      4193 |
|              Improvement %               |        47 |        47 |        47 |        47 |        46 |        44 |        40 |      4193 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       186 |       192 |       196 |       199 |       212 |       302 |      5139 |
|                  jbird                   |        90 |       101 |       103 |       106 |       111 |       121 |       188 |      9332 |
|                    Δ                     |       -77 |       -85 |       -89 |       -90 |       -88 |       -91 |      -114 |      4193 |
|              Improvement %               |        46 |        46 |        46 |        46 |        44 |        43 |        38 |      4193 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6101 |      5491 |      5315 |      5219 |      5139 |      4823 |      3180 |      5139 |
|                  jbird                   |     11500 |     10311 |     10127 |      9847 |      9431 |      8591 |      5297 |      9332 |
|                    Δ                     |      5399 |      4820 |      4812 |      4628 |      4292 |      3768 |      2117 |      4193 |
|              Improvement %               |        88 |        88 |        91 |        89 |        84 |        78 |        67 |      4193 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       174 |       322 |       475 |       570 |       622 |       629 |      5139 |
|                  jbird                   |        30 |        30 |        31 |        31 |        31 |        31 |        31 |      9332 |
|                    Δ                     |         0 |      -144 |      -291 |      -444 |      -539 |      -591 |      -598 |      4193 |
|              Improvement %               |         0 |        83 |        90 |        93 |        95 |        95 |        95 |      4193 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      5139 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9332 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      4193 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4193 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       981 |       981 |       981 |       981 |       981 |       981 |       982 |      5139 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9332 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -982 |      4193 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4193 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      5139 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9332 |
|                    Δ                     |      -318 |      -318 |      -318 |      -318 |      -318 |      -318 |      -319 |      4193 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      4193 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       106 |       106 |       106 |       106 |       106 |       106 |       110 |      5139 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9332 |
|                    Δ                     |       238 |       238 |       238 |       238 |       238 |       238 |       234 |      4193 |
|              Improvement %               |      -225 |      -225 |      -225 |      -225 |      -225 |      -225 |      -213 |      4193 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4155 |      4180 |      4190 |      4202 |      4211 |      4297 |      4357 |      5139 |
|                  jbird                   |      2047 |      2048 |      2048 |      2049 |      2051 |      2078 |      2161 |      9332 |
|                    Δ                     |     -2108 |     -2132 |     -2142 |     -2153 |     -2160 |     -2219 |     -2196 |      4193 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        52 |        50 |      4193 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      5139 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9332 |
|                    Δ                     |       663 |       663 |       663 |       663 |       663 |       663 |       663 |      4193 |
|              Improvement %               |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |    -13260 |      4193 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       281 |       314 |       319 |       324 |       330 |       347 |       381 |      3063 |
|                  jbird                   |       101 |       113 |       117 |       123 |       128 |       138 |       182 |      7937 |
|                    Δ                     |      -180 |      -201 |      -202 |      -201 |      -202 |      -209 |      -199 |      4874 |
|              Improvement %               |        64 |        64 |        63 |        62 |        61 |        60 |        52 |      4874 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       285 |       317 |       323 |       328 |       334 |       350 |       391 |      3063 |
|                  jbird                   |       104 |       117 |       121 |       127 |       132 |       143 |       187 |      7937 |
|                    Δ                     |      -181 |      -200 |      -202 |      -201 |      -202 |      -207 |      -204 |      4874 |
|              Improvement %               |        64 |        63 |        63 |        61 |        60 |        59 |        52 |      4874 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3556 |      3191 |      3135 |      3085 |      3035 |      2887 |      2627 |      3063 |
|                  jbird                   |      9909 |      8839 |      8567 |      8115 |      7835 |      7263 |      5483 |      7937 |
|                    Δ                     |      6353 |      5648 |      5432 |      5030 |      4800 |      4376 |      2856 |      4874 |
|              Improvement %               |       179 |       177 |       173 |       163 |       158 |       152 |       109 |      4874 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |        93 |       154 |       218 |       255 |       277 |       281 |      3063 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      7937 |
|                    Δ                     |         0 |       -62 |      -123 |      -187 |      -224 |      -246 |      -250 |      4874 |
|              Improvement %               |         0 |        67 |        80 |        86 |        88 |        89 |        89 |      4874 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        80 |        80 |        80 |        80 |        80 |        84 |      3063 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7937 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -84 |      4874 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4874 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         2 |         2 |         2 |         2 |         2 |         2 |         3 |      3063 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7937 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -3 |      4874 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4874 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        14 |      3063 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7937 |
|                    Δ                     |        15 |        15 |        15 |        15 |        15 |        15 |        14 |      4874 |
|              Improvement %               |      -115 |      -115 |      -115 |      -115 |      -115 |      -115 |      -100 |      4874 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       350 |       350 |       350 |       350 |       350 |       350 |       354 |      3063 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      7937 |
|                    Δ                     |       808 |       808 |       808 |       808 |       808 |       808 |       804 |      4874 |
|              Improvement %               |      -231 |      -231 |      -231 |      -231 |      -231 |      -231 |      -227 |      4874 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8614 |      8643 |      8643 |      8651 |      8651 |      8692 |      8992 |      3063 |
|                  jbird                   |      3320 |      3322 |      3322 |      3322 |      3324 |      3351 |      3774 |      7937 |
|                    Δ                     |     -5294 |     -5321 |     -5321 |     -5329 |     -5327 |     -5341 |     -5218 |      4874 |
|              Improvement %               |        61 |        62 |        62 |        62 |        62 |        61 |        58 |      4874 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |      3063 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7937 |
|                    Δ                     |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      4874 |
|              Improvement %               |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      4874 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        12 |        12 |        12 |        13 |        13 |        13 |        81 |
|                  jbird                   |         6 |         6 |         6 |         6 |         6 |         7 |         7 |       163 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -7 |        -6 |        -6 |        82 |
|              Improvement %               |        50 |        50 |        50 |        50 |        54 |        46 |        46 |        82 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        12 |        12 |        13 |        13 |        13 |        13 |        81 |
|                  jbird                   |         6 |         6 |         6 |         6 |         6 |         7 |         7 |       163 |
|                    Δ                     |        -6 |        -6 |        -6 |        -7 |        -7 |        -6 |        -6 |        82 |
|              Improvement %               |        50 |        50 |        50 |        54 |        54 |        46 |        46 |        82 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        81 |        81 |        80 |        80 |        78 |        78 |        81 |
|                  jbird                   |       172 |       168 |       164 |       159 |       157 |       146 |       145 |       163 |
|                    Δ                     |        88 |        87 |        83 |        79 |        77 |        68 |        67 |        82 |
|              Improvement %               |       105 |       107 |       102 |        99 |        96 |        87 |        86 |        82 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       214 |       383 |       558 |       659 |       728 |       728 |        81 |
|                  jbird                   |        48 |        71 |        72 |        72 |        72 |        72 |        72 |       163 |
|                    Δ                     |         9 |      -143 |      -311 |      -486 |      -587 |      -656 |      -656 |        82 |
|              Improvement %               |       -23 |        67 |        81 |        87 |        89 |        90 |        90 |        82 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |        81 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       163 |
|                    Δ                     |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |        82 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        82 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        81 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       163 |
|                    Δ                     |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |        82 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        82 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        81 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       163 |
|                    Δ                     |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |        82 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |        82 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6894 |      6894 |      6894 |      6894 |      6894 |      6894 |      6894 |        81 |
|                  jbird                   |     19440 |     19440 |     19440 |     19440 |     19440 |     19440 |     19440 |       163 |
|                    Δ                     |     12546 |     12546 |     12546 |     12546 |     12546 |     12546 |     12546 |        82 |
|              Improvement %               |      -182 |      -182 |      -182 |      -182 |      -182 |      -182 |      -182 |        82 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       310 |       310 |       310 |       310 |       310 |       311 |       311 |        81 |
|                  jbird                   |       159 |       159 |       159 |       159 |       159 |       161 |       164 |       163 |
|                    Δ                     |      -151 |      -151 |      -151 |      -151 |      -151 |      -150 |      -147 |        82 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        48 |        47 |        82 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       264 |       264 |       264 |       264 |       264 |       264 |       264 |        81 |
|                  jbird                   |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |     56092 |       163 |
|                    Δ                     |     55828 |     55828 |     55828 |     55828 |     55828 |     55828 |     55828 |        82 |
|              Improvement %               |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |    -21147 |        82 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        77 |        78 |        85 |        89 |       103 |       152 |     11368 |
|                  jbird                   |        29 |        33 |        33 |        34 |        36 |        42 |        64 |     24709 |
|                    Δ                     |       -46 |       -44 |       -45 |       -51 |       -53 |       -61 |       -88 |     13341 |
|              Improvement %               |        61 |        57 |        58 |        60 |        60 |        59 |        58 |     13341 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        79 |        80 |        82 |        89 |        93 |       108 |       136 |     11368 |
|                  jbird                   |        32 |        36 |        37 |        38 |        40 |        47 |        66 |     24709 |
|                    Δ                     |       -47 |       -44 |       -45 |       -51 |       -53 |       -61 |       -70 |     13341 |
|              Improvement %               |        59 |        55 |        55 |        57 |        57 |        56 |        51 |     13341 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        11 |        10 |         7 |     11368 |
|                  jbird                   |        35 |        31 |        30 |        30 |        28 |        24 |        16 |     24709 |
|                    Δ                     |        22 |        18 |        17 |        18 |        17 |        14 |         9 |     13341 |
|              Improvement %               |       169 |       138 |       131 |       150 |       155 |       140 |       129 |     13341 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |        51 |        72 |        93 |       105 |       112 |       114 |     11368 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     24709 |
|                    Δ                     |         0 |       -21 |       -42 |       -63 |       -75 |       -82 |       -84 |     13341 |
|              Improvement %               |         0 |        41 |        58 |        68 |        71 |        73 |        74 |     13341 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4864 |      4867 |      4867 |      4867 |      4867 |      4867 |      8960 |     11368 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24709 |
|                    Δ                     |     -4864 |     -4867 |     -4867 |     -4867 |     -4867 |     -4867 |     -8960 |     13341 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13341 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       152 |       152 |       152 |       152 |       152 |       152 |       153 |     11368 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24709 |
|                    Δ                     |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -153 |     13341 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13341 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |     11368 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     24709 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |        -1 |     13341 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         1 |     13341 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        17 |     11368 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     24709 |
|                    Δ                     |        78 |        78 |        78 |        78 |        78 |        78 |        74 |     13341 |
|              Improvement %               |      -600 |      -600 |      -600 |      -600 |      -600 |      -600 |      -435 |     13341 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1136 |      1140 |      1141 |      1148 |      1148 |      1169 |      1252 |     11368 |
|                  jbird                   |       735 |       739 |       739 |       739 |       739 |       757 |       832 |     24709 |
|                    Δ                     |      -401 |      -401 |      -402 |      -409 |      -409 |      -412 |      -420 |     13341 |
|              Improvement %               |        35 |        35 |        35 |        36 |        36 |        35 |        34 |     13341 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     11368 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     24709 |
|                    Δ                     |       152 |       152 |       152 |       152 |       152 |       152 |       152 |     13341 |
|              Improvement %               |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     -7600 |     13341 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       239 |       272 |       282 |       295 |       310 |       336 |       388 |      3409 |
|                  jbird                   |        87 |        98 |        99 |       104 |       107 |       119 |       149 |      9223 |
|                    Δ                     |      -152 |      -174 |      -183 |      -191 |      -203 |      -217 |      -239 |      5814 |
|              Improvement %               |        64 |        64 |        65 |        65 |        65 |        65 |        62 |      5814 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       242 |       276 |       286 |       300 |       315 |       342 |       387 |      3409 |
|                  jbird                   |        91 |       102 |       103 |       108 |       111 |       123 |       153 |      9223 |
|                    Δ                     |      -151 |      -174 |      -183 |      -192 |      -204 |      -219 |      -234 |      5814 |
|              Improvement %               |        62 |        63 |        64 |        64 |        65 |        64 |        60 |      5814 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4188 |      3675 |      3549 |      3391 |      3227 |      2981 |      2577 |      3409 |
|                  jbird                   |     11456 |     10215 |     10095 |      9623 |      9375 |      8431 |      6725 |      9223 |
|                    Δ                     |      7268 |      6540 |      6546 |      6232 |      6148 |      5450 |      4148 |      5814 |
|              Improvement %               |       174 |       178 |       184 |       184 |       191 |       183 |       161 |      5814 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       104 |       179 |       253 |       299 |       325 |       329 |      3409 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9223 |
|                    Δ                     |         0 |       -73 |      -148 |      -222 |      -268 |      -294 |      -298 |      5814 |
|              Improvement %               |         0 |        70 |        83 |        88 |        90 |        90 |        91 |      5814 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        71 |        71 |        71 |        71 |        71 |        71 |        75 |      3409 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9223 |
|                    Δ                     |       -71 |       -71 |       -71 |       -71 |       -71 |       -71 |       -75 |      5814 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5814 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       802 |       802 |       802 |       802 |       802 |       802 |       803 |      3409 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9223 |
|                    Δ                     |      -802 |      -802 |      -802 |      -802 |      -802 |      -802 |      -803 |      5814 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5814 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3409 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9223 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      5814 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      5814 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       210 |       210 |       210 |       210 |       210 |       210 |       214 |      3409 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9223 |
|                    Δ                     |       451 |       451 |       451 |       451 |       451 |       451 |       447 |      5814 |
|              Improvement %               |      -215 |      -215 |      -215 |      -215 |      -215 |      -215 |      -209 |      5814 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7052 |      7066 |      7066 |      7074 |      7082 |      7107 |      7205 |      3409 |
|                  jbird                   |      2571 |      2572 |      2572 |      2572 |      2574 |      2601 |      2813 |      9223 |
|                    Δ                     |     -4481 |     -4494 |     -4494 |     -4502 |     -4508 |     -4506 |     -4392 |      5814 |
|              Improvement %               |        64 |        64 |        64 |        64 |        64 |        63 |        61 |      5814 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      3409 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9223 |
|                    Δ                     |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      5814 |
|              Improvement %               |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |      5814 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       367 |       413 |       420 |       438 |       458 |       521 |       565 |      2295 |
|                  jbird                   |        58 |        74 |        79 |        82 |        84 |        90 |       160 |     11618 |
|                    Δ                     |      -309 |      -339 |      -341 |      -356 |      -374 |      -431 |      -405 |      9323 |
|              Improvement %               |        84 |        82 |        81 |        81 |        82 |        83 |        72 |      9323 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       371 |       417 |       424 |       442 |       463 |       524 |       571 |      2295 |
|                  jbird                   |        61 |        78 |        84 |        86 |        89 |        95 |       157 |     11618 |
|                    Δ                     |      -310 |      -339 |      -340 |      -356 |      -374 |      -429 |      -414 |      9323 |
|              Improvement %               |        84 |        81 |        80 |        81 |        81 |        82 |        73 |      9323 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2722 |      2421 |      2381 |      2287 |      2181 |      1921 |      1770 |      2295 |
|                  jbird                   |     17391 |     13479 |     12671 |     12239 |     11903 |     11119 |      6252 |     11618 |
|                    Δ                     |     14669 |     11058 |     10290 |      9952 |      9722 |      9198 |      4482 |      9323 |
|              Improvement %               |       539 |       457 |       432 |       435 |       446 |       479 |       253 |      9323 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       103 |       175 |       246 |       292 |       317 |       321 |      2295 |
|                  jbird                   |        30 |        30 |        30 |        30 |        31 |        31 |        31 |     11618 |
|                    Δ                     |         0 |       -73 |      -145 |      -216 |      -261 |      -286 |      -290 |      9323 |
|              Improvement %               |         0 |        71 |        83 |        88 |        89 |        90 |        90 |      9323 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        89 |        89 |        89 |        89 |        89 |        89 |        93 |      2295 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11618 |
|                    Δ                     |       -89 |       -89 |       -89 |       -89 |       -89 |       -89 |       -93 |      9323 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9323 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2088 |      2089 |      2089 |      2089 |      2089 |      2089 |      2089 |      2295 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11618 |
|                    Δ                     |     -2088 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |      9323 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9323 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2295 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11618 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      9323 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      9323 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       202 |       202 |       202 |       202 |       202 |       202 |       206 |      2295 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     11618 |
|                    Δ                     |       127 |       127 |       127 |       127 |       127 |       127 |       123 |      9323 |
|              Improvement %               |       -63 |       -63 |       -63 |       -63 |       -63 |       -63 |       -60 |      9323 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9040 |      9052 |      9060 |      9069 |      9085 |      9290 |      9617 |      2295 |
|                  jbird                   |      1582 |      1586 |      1586 |      1586 |      1589 |      1595 |      1732 |     11618 |
|                    Δ                     |     -7458 |     -7466 |     -7474 |     -7483 |     -7496 |     -7695 |     -7885 |      9323 |
|              Improvement %               |        82 |        82 |        82 |        83 |        83 |        83 |        82 |      9323 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       879 |       879 |       879 |       879 |       879 |       879 |       879 |      2295 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11618 |
|                    Δ                     |      -869 |      -869 |      -869 |      -869 |      -869 |      -869 |      -869 |      9323 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      9323 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        72 |        84 |        86 |        90 |        93 |       101 |       127 |     10570 |
|                  jbird                   |        10 |        11 |        11 |        11 |        12 |        14 |        39 |     53959 |
|                    Δ                     |       -62 |       -73 |       -75 |       -79 |       -81 |       -87 |       -88 |     43389 |
|              Improvement %               |        86 |        87 |        87 |        88 |        87 |        86 |        69 |     43389 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        88 |        91 |        94 |        97 |       107 |       140 |     10570 |
|                  jbird                   |        13 |        15 |        15 |        15 |        16 |        19 |        36 |     53959 |
|                    Δ                     |       -63 |       -73 |       -76 |       -79 |       -81 |       -88 |      -104 |     43389 |
|              Improvement %               |        83 |        83 |        84 |        84 |        84 |        82 |        74 |     43389 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        12 |        12 |        11 |        11 |        10 |         8 |     10570 |
|                  jbird                   |       102 |        90 |        89 |        87 |        83 |        69 |        25 |     53959 |
|                    Δ                     |        88 |        78 |        77 |        76 |        72 |        59 |        17 |     43389 |
|              Improvement %               |       629 |       650 |       642 |       691 |       655 |       590 |       212 |     43389 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       198 |       370 |       540 |       645 |       706 |       714 |     10570 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     53959 |
|                    Δ                     |         0 |      -168 |      -340 |      -510 |      -615 |      -676 |      -684 |     43389 |
|              Improvement %               |         0 |        85 |        92 |        94 |        95 |        96 |        96 |     43389 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        58 |        58 |        58 |        58 |        58 |        58 |        62 |     10570 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     53959 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -62 |     43389 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     43389 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        80 |        80 |        80 |        80 |        80 |        81 |     10570 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     53959 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -81 |     43389 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     43389 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |     10570 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     53959 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |     43389 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |     43389 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        67 |        68 |        68 |        68 |        68 |        68 |        72 |     10570 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     53959 |
|                    Δ                     |        59 |        58 |        58 |        58 |        58 |        58 |        54 |     43389 |
|              Improvement %               |       -88 |       -85 |       -85 |       -85 |       -85 |       -85 |       -75 |     43389 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1866 |      1875 |      1882 |      1889 |      1897 |      1913 |      1947 |     10570 |
|                  jbird                   |       223 |       234 |       234 |       234 |       234 |       238 |       296 |     53959 |
|                    Δ                     |     -1643 |     -1641 |     -1648 |     -1655 |     -1663 |     -1675 |     -1651 |     43389 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        85 |     43389 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     10570 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     53959 |
|                    Δ                     |        73 |        73 |        73 |        73 |        73 |        73 |        73 |     43389 |
|              Improvement %               |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     -1825 |     43389 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1957 |      2116 |      2183 |      2261 |      2302 |      2470 |      2497 |       454 |
|                  jbird                   |      1056 |      1133 |      1146 |      1199 |      1241 |      1316 |      1390 |       851 |
|                    Δ                     |      -901 |      -983 |     -1037 |     -1062 |     -1061 |     -1154 |     -1107 |       397 |
|              Improvement %               |        46 |        46 |        48 |        47 |        46 |        47 |        44 |       397 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1962 |      2120 |      2189 |      2265 |      2306 |      2468 |      2517 |       454 |
|                  jbird                   |      1060 |      1137 |      1150 |      1203 |      1246 |      1317 |      1395 |       851 |
|                    Δ                     |      -902 |      -983 |     -1039 |     -1062 |     -1060 |     -1151 |     -1122 |       397 |
|              Improvement %               |        46 |        46 |        47 |        47 |        46 |        47 |        45 |       397 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       511 |       473 |       458 |       442 |       435 |       405 |       401 |       454 |
|                  jbird                   |       947 |       883 |       873 |       835 |       806 |       760 |       720 |       851 |
|                    Δ                     |       436 |       410 |       415 |       393 |       371 |       355 |       319 |       397 |
|              Improvement %               |        85 |        87 |        91 |        89 |        85 |        88 |        80 |       397 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       125 |       218 |       312 |       366 |       402 |       405 |       454 |
|                  jbird                   |        32 |        37 |        37 |        37 |        37 |        37 |        37 |       851 |
|                    Δ                     |         1 |       -88 |      -181 |      -275 |      -329 |      -365 |      -368 |       397 |
|              Improvement %               |        -3 |        70 |        83 |        88 |        90 |        91 |        91 |       397 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       669 |       670 |       670 |       670 |       670 |       670 |       673 |       454 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       851 |
|                    Δ                     |      -669 |      -670 |      -670 |      -670 |      -670 |      -670 |      -673 |       397 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       397 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6133 |      6134 |      6134 |      6134 |      6134 |      6134 |      6134 |       454 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       851 |
|                    Δ                     |     -6133 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |       397 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       397 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6636 |      6637 |      6637 |      6637 |      6637 |      6637 |      6637 |       454 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       851 |
|                    Δ                     |     -2585 |     -2586 |     -2586 |     -2586 |     -2586 |     -2586 |     -2586 |       397 |
|              Improvement %               |        39 |        39 |        39 |        39 |        39 |        39 |        39 |       397 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       882 |       882 |       882 |       882 |       882 |       882 |       886 |       454 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       851 |
|                    Δ                     |      3029 |      3029 |      3029 |      3029 |      3029 |      3029 |      3025 |       397 |
|              Improvement %               |      -343 |      -343 |      -343 |      -343 |      -343 |      -343 |      -341 |       397 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        44 |        44 |        44 |        44 |        44 |        45 |        45 |       454 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       851 |
|                    Δ                     |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       397 |
|              Improvement %               |        45 |        45 |        45 |        45 |        45 |        44 |        44 |       397 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       503 |       503 |       503 |       503 |       503 |       503 |       503 |       454 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       851 |
|                    Δ                     |      3548 |      3548 |      3548 |      3548 |      3548 |      3548 |      3548 |       397 |
|              Improvement %               |      -705 |      -705 |      -705 |      -705 |      -705 |      -705 |      -705 |       397 |

<p>
</details>

