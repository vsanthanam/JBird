
## JBird vs Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2889 |      3113 |      3133 |      3160 |      3183 |      3291 |      3444 |       319 |
|                  jbird                   |      1417 |      1508 |      1536 |      1559 |      1584 |      1895 |      2282 |       648 |
|                    Δ                     |     -1472 |     -1605 |     -1597 |     -1601 |     -1599 |     -1396 |     -1162 |       329 |
|              Improvement %               |        51 |        52 |        51 |        51 |        50 |        42 |        34 |       329 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2891 |      3115 |      3138 |      3164 |      3187 |      3293 |      3444 |       319 |
|                  jbird                   |      1418 |      1510 |      1537 |      1560 |      1586 |      1903 |      2278 |       648 |
|                    Δ                     |     -1473 |     -1605 |     -1601 |     -1604 |     -1601 |     -1390 |     -1166 |       329 |
|              Improvement %               |        51 |        52 |        51 |        51 |        50 |        42 |        34 |       329 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       346 |       321 |       319 |       317 |       314 |       304 |       290 |       319 |
|                  jbird                   |       706 |       663 |       651 |       642 |       631 |       528 |       438 |       648 |
|                    Δ                     |       360 |       342 |       332 |       325 |       317 |       224 |       148 |       329 |
|              Improvement %               |       104 |       107 |       104 |       103 |       101 |        74 |        51 |       329 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       319 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       648 |
|                    Δ                     |         1 |         3 |         3 |         3 |         3 |         3 |         3 |       329 |
|              Improvement %               |        -3 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       329 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       319 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       648 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       329 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       329 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       319 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       648 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       329 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       329 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       319 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       648 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       329 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       329 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |       319 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       648 |
|                    Δ                     |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |       329 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |       329 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        65 |        65 |        65 |        65 |        66 |        66 |       319 |
|                  jbird                   |        38 |        38 |        38 |        38 |        38 |        38 |        39 |       648 |
|                    Δ                     |       -27 |       -27 |       -27 |       -27 |       -27 |       -28 |       -27 |       329 |
|              Improvement %               |        42 |        42 |        42 |        42 |        42 |        42 |        41 |       329 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       319 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       648 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       329 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       329 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2899 |      3127 |      3144 |      3160 |      3181 |      3238 |      6836 |       317 |
|                  jbird                   |      1453 |      1554 |      1571 |      1586 |      1608 |      1692 |      1766 |       636 |
|                    Δ                     |     -1446 |     -1573 |     -1573 |     -1574 |     -1573 |     -1546 |     -5070 |       319 |
|              Improvement %               |        50 |        50 |        50 |        50 |        49 |        48 |        74 |       319 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2901 |      3131 |      3146 |      3162 |      3183 |      3240 |      6835 |       317 |
|                  jbird                   |      1455 |      1556 |      1573 |      1588 |      1609 |      1694 |      1756 |       636 |
|                    Δ                     |     -1446 |     -1575 |     -1573 |     -1574 |     -1574 |     -1546 |     -5079 |       319 |
|              Improvement %               |        50 |        50 |        50 |        50 |        49 |        48 |        74 |       319 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       345 |       320 |       318 |       317 |       315 |       309 |       146 |       317 |
|                  jbird                   |       688 |       643 |       637 |       630 |       622 |       591 |       566 |       636 |
|                    Δ                     |       343 |       323 |       319 |       313 |       307 |       282 |       420 |       319 |
|              Improvement %               |        99 |       101 |       100 |        99 |        97 |        91 |       288 |       319 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       317 |
|                  jbird                   |        34 |        39 |        39 |        39 |        39 |        39 |        39 |       636 |
|                    Δ                     |         1 |         6 |         6 |         6 |         6 |         6 |         6 |       319 |
|              Improvement %               |        -3 |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |       319 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       317 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       636 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       319 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       319 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       317 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       636 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       319 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       319 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       317 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       636 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       319 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       319 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |       317 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       636 |
|                    Δ                     |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |       319 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |       319 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        66 |        66 |        67 |        67 |       317 |
|                  jbird                   |        39 |        39 |        39 |        39 |        39 |        39 |        40 |       636 |
|                    Δ                     |       -27 |       -27 |       -27 |       -27 |       -27 |       -28 |       -27 |       319 |
|              Improvement %               |        41 |        41 |        41 |        41 |        41 |        42 |        40 |       319 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       317 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       636 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       319 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       319 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       702 |       769 |       778 |       790 |       805 |       850 |       894 |      1276 |
|                  jbird                   |       356 |       383 |       391 |       398 |       407 |       432 |       486 |      2538 |
|                    Δ                     |      -346 |      -386 |      -387 |      -392 |      -398 |      -418 |      -408 |      1262 |
|              Improvement %               |        49 |        50 |        50 |        50 |        49 |        49 |        46 |      1262 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       703 |       771 |       780 |       792 |       807 |       850 |       895 |      1276 |
|                  jbird                   |       358 |       384 |       392 |       399 |       409 |       434 |       487 |      2538 |
|                    Δ                     |      -345 |      -387 |      -388 |      -393 |      -398 |      -416 |      -408 |      1262 |
|              Improvement %               |        49 |        50 |        50 |        50 |        49 |        49 |        46 |      1262 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1425 |      1301 |      1285 |      1266 |      1242 |      1176 |      1119 |      1276 |
|                  jbird                   |      2805 |      2613 |      2561 |      2515 |      2457 |      2313 |      2060 |      2538 |
|                    Δ                     |      1380 |      1312 |      1276 |      1249 |      1215 |      1137 |       941 |      1262 |
|              Improvement %               |        97 |       101 |        99 |        99 |        98 |        97 |        84 |      1262 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |      1276 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2538 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1262 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1262 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1276 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2538 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1262 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1262 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1276 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2538 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1262 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1262 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1276 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2538 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1262 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1262 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       627 |       627 |       627 |       627 |       627 |       627 |       627 |      1276 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2538 |
|                    Δ                     |       747 |       747 |       747 |       747 |       747 |       747 |       747 |      1262 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      1262 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1276 |
|                  jbird                   |         9 |         9 |         9 |         9 |        10 |        10 |        10 |      2538 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -6 |        -7 |        -7 |      1262 |
|              Improvement %               |        44 |        44 |        44 |        44 |        38 |        41 |        41 |      1262 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1276 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2538 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1262 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1262 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       710 |       772 |       785 |       801 |       834 |       891 |       930 |      1262 |
|                  jbird                   |       362 |       386 |       394 |       402 |       411 |       438 |       510 |      2515 |
|                    Δ                     |      -348 |      -386 |      -391 |      -399 |      -423 |      -453 |      -420 |      1253 |
|              Improvement %               |        49 |        50 |        50 |        50 |        51 |        51 |        45 |      1253 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       712 |       773 |       786 |       802 |       836 |       893 |       932 |      1262 |
|                  jbird                   |       363 |       387 |       395 |       403 |       412 |       440 |       504 |      2515 |
|                    Δ                     |      -349 |      -386 |      -391 |      -399 |      -424 |      -453 |      -428 |      1253 |
|              Improvement %               |        49 |        50 |        50 |        50 |        51 |        51 |        46 |      1253 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1408 |      1297 |      1274 |      1249 |      1200 |      1122 |      1075 |      1262 |
|                  jbird                   |      2766 |      2595 |      2539 |      2489 |      2433 |      2287 |      1960 |      2515 |
|                    Δ                     |      1358 |      1298 |      1265 |      1240 |      1233 |      1165 |       885 |      1253 |
|              Improvement %               |        96 |       100 |        99 |        99 |       103 |       104 |        82 |      1253 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |      1262 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      2515 |
|                    Δ                     |         0 |         2 |         2 |         2 |         2 |         2 |         2 |      1253 |
|              Improvement %               |         0 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      1253 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1262 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2515 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1253 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1253 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1262 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2515 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1253 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1253 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1262 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2515 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1253 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1253 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       627 |       627 |       627 |       627 |       627 |       627 |       627 |      1262 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2515 |
|                    Δ                     |       747 |       747 |       747 |       747 |       747 |       747 |       747 |      1253 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      1253 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1262 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      2515 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |      1253 |
|              Improvement %               |        41 |        41 |        41 |        41 |        41 |        41 |        41 |      1253 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1262 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2515 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1253 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1253 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1426 |      1548 |      1565 |      1589 |      1630 |      1718 |      1742 |       635 |
|                  jbird                   |       706 |       756 |       770 |       785 |       804 |       836 |       885 |      1291 |
|                    Δ                     |      -720 |      -792 |      -795 |      -804 |      -826 |      -882 |      -857 |       656 |
|              Improvement %               |        50 |        51 |        51 |        51 |        51 |        51 |        49 |       656 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1427 |      1549 |      1567 |      1592 |      1632 |      1720 |      1747 |       635 |
|                  jbird                   |       708 |       758 |       771 |       787 |       805 |       838 |       881 |      1291 |
|                    Δ                     |      -719 |      -791 |      -796 |      -805 |      -827 |      -882 |      -866 |       656 |
|              Improvement %               |        50 |        51 |        51 |        51 |        51 |        51 |        50 |       656 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       701 |       646 |       639 |       629 |       614 |       582 |       574 |       635 |
|                  jbird                   |      1416 |      1322 |      1299 |      1273 |      1244 |      1197 |      1130 |      1291 |
|                    Δ                     |       715 |       676 |       660 |       644 |       630 |       615 |       556 |       656 |
|              Improvement %               |       102 |       105 |       103 |       102 |       103 |       106 |        97 |       656 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |       635 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1291 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       656 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       656 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       635 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1291 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       656 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       656 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       635 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1291 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       656 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       656 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       635 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1291 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       656 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       656 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |       635 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1291 |
|                    Δ                     |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |       656 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |       656 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       635 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        20 |      1291 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -13 |       656 |
|              Improvement %               |        42 |        42 |        42 |        42 |        42 |        42 |        39 |       656 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       635 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1291 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       656 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       656 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1439 |      1559 |      1577 |      1604 |      1656 |      1749 |      1807 |       630 |
|                  jbird                   |       724 |       773 |       787 |       799 |       812 |       855 |       928 |      1266 |
|                    Δ                     |      -715 |      -786 |      -790 |      -805 |      -844 |      -894 |      -879 |       636 |
|              Improvement %               |        50 |        50 |        50 |        50 |        51 |        51 |        49 |       636 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1441 |      1560 |      1578 |      1606 |      1657 |      1750 |      1808 |       630 |
|                  jbird                   |       725 |       774 |       788 |       801 |       813 |       850 |       923 |      1266 |
|                    Δ                     |      -716 |      -786 |      -790 |      -805 |      -844 |      -900 |      -885 |       636 |
|              Improvement %               |        50 |        50 |        50 |        50 |        51 |        51 |        49 |       636 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       695 |       642 |       634 |       624 |       604 |       572 |       554 |       630 |
|                  jbird                   |      1382 |      1294 |      1271 |      1251 |      1232 |      1171 |      1078 |      1266 |
|                    Δ                     |       687 |       652 |       637 |       627 |       628 |       599 |       524 |       636 |
|              Improvement %               |        99 |       102 |       100 |       100 |       104 |       105 |        95 |       636 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |       630 |
|                  jbird                   |        31 |        35 |        35 |        35 |        35 |        35 |        35 |      1266 |
|                    Δ                     |         0 |         3 |         3 |         3 |         3 |         3 |         3 |       636 |
|              Improvement %               |         0 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       636 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       630 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1266 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       636 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       636 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       630 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1266 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       636 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       636 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       630 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1266 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       636 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       636 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |       630 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1266 |
|                    Δ                     |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |       636 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |       636 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       630 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        20 |      1266 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -15 |       -14 |       636 |
|              Improvement %               |        42 |        42 |        42 |        42 |        42 |        44 |        41 |       636 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       630 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1266 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       636 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       636 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       132 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        68 |
|              Improvement %               |        53 |        50 |        50 |        50 |        50 |        50 |        50 |        68 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       132 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        68 |
|              Improvement %               |        53 |        50 |        50 |        50 |        50 |        50 |        50 |        68 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        64 |        63 |        63 |        63 |        61 |        61 |        64 |
|                  jbird                   |       139 |       133 |       131 |       130 |       129 |       128 |       128 |       132 |
|                    Δ                     |        73 |        69 |        68 |        67 |        66 |        67 |        67 |        68 |
|              Improvement %               |       111 |       108 |       108 |       106 |       105 |       110 |       110 |        68 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        45 |        45 |        45 |        45 |        45 |        45 |        64 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       132 |
|                    Δ                     |        11 |        13 |        13 |        13 |        13 |        13 |        13 |        68 |
|              Improvement %               |       -25 |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |        68 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       132 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        68 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        68 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       132 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        68 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        68 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       132 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        68 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        68 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |        64 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       132 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        68 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |        68 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       326 |       326 |       326 |       327 |       327 |       328 |       328 |        64 |
|                  jbird                   |       190 |       190 |       190 |       190 |       190 |       191 |       191 |       132 |
|                    Δ                     |      -136 |      -136 |      -136 |      -137 |      -137 |      -137 |      -137 |        68 |
|              Improvement %               |        42 |        42 |        42 |        42 |        42 |        42 |        42 |        68 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       132 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        68 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        68 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       128 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        64 |
|              Improvement %               |        53 |        50 |        50 |        50 |        50 |        50 |        50 |        64 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       128 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        64 |
|              Improvement %               |        53 |        50 |        50 |        50 |        50 |        50 |        50 |        64 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        64 |        63 |        63 |        63 |        62 |        62 |        64 |
|                  jbird                   |       134 |       129 |       128 |       126 |       125 |       123 |       120 |       128 |
|                    Δ                     |        68 |        65 |        65 |        63 |        62 |        61 |        58 |        64 |
|              Improvement %               |       103 |       102 |       103 |       100 |        98 |        98 |        94 |        64 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        44 |        44 |        45 |        45 |        45 |        45 |        64 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       128 |
|                    Δ                     |        11 |        14 |        14 |        13 |        13 |        13 |        13 |        64 |
|              Improvement %               |       -25 |       -32 |       -32 |       -29 |       -29 |       -29 |       -29 |        64 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       128 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       128 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       128 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |        64 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       128 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        64 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |        64 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       332 |       332 |       332 |       332 |       332 |       334 |       334 |        64 |
|                  jbird                   |       193 |       193 |       193 |       193 |       193 |       194 |       195 |       128 |
|                    Δ                     |      -139 |      -139 |      -139 |      -139 |      -139 |      -140 |      -139 |        64 |
|              Improvement %               |        42 |        42 |        42 |        42 |        42 |        42 |        42 |        64 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       128 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       174 |       187 |       195 |       198 |       205 |       220 |       240 |      5066 |
|                  jbird                   |        88 |        92 |        98 |       101 |       103 |       114 |       138 |      9940 |
|                    Δ                     |       -86 |       -95 |       -97 |       -97 |      -102 |      -106 |      -102 |      4874 |
|              Improvement %               |        49 |        51 |        50 |        49 |        50 |        48 |        42 |      4874 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       175 |       189 |       196 |       200 |       207 |       221 |       242 |      5066 |
|                  jbird                   |        89 |        93 |        99 |       103 |       105 |       116 |       140 |      9940 |
|                    Δ                     |       -86 |       -96 |       -97 |       -97 |      -102 |      -105 |      -102 |      4874 |
|              Improvement %               |        49 |        51 |        49 |        48 |        49 |        48 |        42 |      4874 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5747 |      5343 |      5139 |      5047 |      4875 |      4547 |      4169 |      5066 |
|                  jbird                   |     11374 |     10911 |     10223 |      9911 |      9703 |      8783 |      7246 |      9940 |
|                    Δ                     |      5627 |      5568 |      5084 |      4864 |      4828 |      4236 |      3077 |      4874 |
|              Improvement %               |        98 |       104 |        99 |        96 |        99 |        93 |        74 |      4874 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      5066 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9940 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4874 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4874 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5066 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9940 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4874 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4874 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5066 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9940 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4874 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4874 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      5066 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9940 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      4874 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      4874 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       157 |       157 |       157 |       157 |       157 |       157 |       157 |      5066 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9940 |
|                    Δ                     |       187 |       187 |       187 |       187 |       187 |       187 |       187 |      4874 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      4874 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4061 |      4063 |      4065 |      4065 |      4080 |      4125 |      4140 |      5066 |
|                  jbird                   |      2366 |      2367 |      2370 |      2370 |      2374 |      2390 |      2496 |      9940 |
|                    Δ                     |     -1695 |     -1696 |     -1695 |     -1695 |     -1706 |     -1735 |     -1644 |      4874 |
|              Improvement %               |        42 |        42 |        42 |        42 |        42 |        42 |        40 |      4874 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      5066 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9940 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      4874 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      4874 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       179 |       193 |       200 |       205 |       210 |       221 |       289 |      4932 |
|                  jbird                   |        90 |        94 |       100 |       103 |       106 |       117 |       168 |      9728 |
|                    Δ                     |       -89 |       -99 |      -100 |      -102 |      -104 |      -104 |      -121 |      4796 |
|              Improvement %               |        50 |        51 |        50 |        50 |        50 |        47 |        42 |      4796 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       180 |       194 |       202 |       206 |       211 |       222 |       281 |      4932 |
|                  jbird                   |        92 |        95 |       101 |       104 |       107 |       119 |       161 |      9728 |
|                    Δ                     |       -88 |       -99 |      -101 |      -102 |      -104 |      -103 |      -120 |      4796 |
|              Improvement %               |        49 |        51 |        50 |        50 |        49 |        46 |        43 |      4796 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5597 |      5191 |      4995 |      4895 |      4775 |      4535 |      3458 |      4932 |
|                  jbird                   |     11085 |     10663 |     10039 |      9735 |      9463 |      8567 |      5945 |      9728 |
|                    Δ                     |      5488 |      5472 |      5044 |      4840 |      4688 |      4032 |      2487 |      4796 |
|              Improvement %               |        98 |       105 |       101 |        99 |        98 |        89 |        72 |      4796 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      4932 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9728 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4796 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4796 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4932 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9728 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4796 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4796 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4932 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9728 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4796 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4796 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4932 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9728 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      4796 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      4796 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       157 |       157 |       157 |       157 |       157 |       157 |       157 |      4932 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9728 |
|                    Δ                     |       187 |       187 |       187 |       187 |       187 |       187 |       187 |      4796 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      4796 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4130 |      4131 |      4133 |      4133 |      4147 |      4190 |      4214 |      4932 |
|                  jbird                   |      2414 |      2415 |      2417 |      2417 |      2421 |      2439 |      2533 |      9728 |
|                    Δ                     |     -1716 |     -1716 |     -1716 |     -1716 |     -1726 |     -1751 |     -1681 |      4796 |
|              Improvement %               |        42 |        42 |        42 |        42 |        42 |        42 |        40 |      4796 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4932 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9728 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      4796 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      4796 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        80 |        88 |        90 |        93 |        97 |       107 |       136 |     10665 |
|                  jbird                   |       110 |       121 |       124 |       131 |       136 |       147 |       189 |      7741 |
|                    Δ                     |        30 |        33 |        34 |        38 |        39 |        40 |        53 |     -2924 |
|              Improvement %               |       -38 |       -38 |       -38 |       -41 |       -40 |       -37 |       -39 |     -2924 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        81 |        90 |        91 |        95 |        98 |       108 |       156 |     10665 |
|                  jbird                   |       112 |       122 |       126 |       133 |       138 |       149 |       192 |      7741 |
|                    Δ                     |        31 |        32 |        35 |        38 |        40 |        41 |        36 |     -2924 |
|              Improvement %               |       -38 |       -36 |       -38 |       -40 |       -41 |       -38 |       -23 |     -2924 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        11 |        11 |        11 |        10 |         9 |         7 |     10665 |
|                  jbird                   |         9 |         8 |         8 |         8 |         7 |         7 |         5 |      7741 |
|                    Δ                     |        -4 |        -3 |        -3 |        -3 |        -3 |        -2 |        -2 |     -2924 |
|              Improvement %               |       -31 |       -27 |       -27 |       -27 |       -30 |       -22 |       -29 |     -2924 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10665 |
|                  jbird                   |        30 |        31 |        32 |        32 |        32 |        32 |        32 |      7741 |
|                    Δ                     |         0 |         0 |         1 |         1 |         1 |         1 |         1 |     -2924 |
|              Improvement %               |         0 |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |     -2924 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10665 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7741 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -2924 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -2924 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10665 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7741 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -2924 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -2924 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     10665 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7741 |
|                    Δ                     |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     -2924 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |     -2924 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       507 |       507 |       507 |       507 |       507 |       507 |       507 |     10665 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      7741 |
|                    Δ                     |       651 |       651 |       651 |       651 |       651 |       651 |       651 |     -2924 |
|              Improvement %               |      -128 |      -128 |      -128 |      -128 |      -128 |      -128 |      -128 |     -2924 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2646 |      2646 |      2646 |      2646 |      2646 |      2658 |      2851 |     10665 |
|                  jbird                   |      3651 |      3652 |      3652 |      3652 |      3654 |      3668 |      4082 |      7741 |
|                    Δ                     |      1005 |      1006 |      1006 |      1006 |      1008 |      1010 |      1231 |     -2924 |
|              Improvement %               |       -38 |       -38 |       -38 |       -38 |       -38 |       -38 |       -43 |     -2924 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     10665 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7741 |
|                    Δ                     |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     -2924 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |     -2924 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      7914 |      8270 |      8360 |      8479 |      8749 |      9129 |      9129 |       119 |
|                  jbird                   |      5093 |      5407 |      5464 |      5513 |      5579 |      5689 |      6045 |       183 |
|                    Δ                     |     -2821 |     -2863 |     -2896 |     -2966 |     -3170 |     -3440 |     -3084 |        64 |
|              Improvement %               |        36 |        35 |        35 |        35 |        36 |        38 |        34 |        64 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      7920 |      8258 |      8352 |      8479 |      8749 |      9134 |      9136 |       119 |
|                  jbird                   |      5099 |      5411 |      5468 |      5517 |      5583 |      5698 |      6041 |       183 |
|                    Δ                     |     -2821 |     -2847 |     -2884 |     -2962 |     -3166 |     -3436 |     -3095 |        64 |
|              Improvement %               |        36 |        34 |        35 |        35 |        36 |        38 |        34 |        64 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       126 |       121 |       120 |       118 |       114 |       110 |       110 |       119 |
|                  jbird                   |       196 |       185 |       183 |       181 |       179 |       176 |       165 |       183 |
|                    Δ                     |        70 |        64 |        63 |        63 |        65 |        66 |        55 |        64 |
|              Improvement %               |        56 |        53 |        52 |        53 |        57 |        60 |        50 |        64 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        38 |        38 |        39 |        39 |        39 |        39 |       119 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       183 |
|                    Δ                     |        12 |        14 |        14 |        13 |        13 |        13 |        13 |        64 |
|              Improvement %               |       -33 |       -37 |       -37 |       -33 |       -33 |       -33 |       -33 |        64 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       119 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       183 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       119 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       183 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       119 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       183 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        64 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        64 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       119 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       183 |
|                    Δ                     |         8 |         8 |         8 |         8 |         8 |         8 |         8 |        64 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |        64 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       209 |       209 |       209 |       209 |       209 |       210 |       210 |       119 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       155 |       156 |       183 |
|                    Δ                     |       -55 |       -55 |       -55 |       -55 |       -55 |       -55 |       -54 |        64 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        26 |        26 |        64 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       119 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       183 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        64 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        64 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        51 |        54 |        59 |        59 |        61 |        72 |        90 |     16371 |
|                  jbird                   |        50 |        51 |        52 |        57 |        58 |        68 |        85 |     17580 |
|                    Δ                     |        -1 |        -3 |        -7 |        -2 |        -3 |        -4 |        -5 |      1209 |
|              Improvement %               |         2 |         6 |        12 |         3 |         5 |         6 |         6 |      1209 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        52 |        55 |        60 |        61 |        63 |        73 |        97 |     16371 |
|                  jbird                   |        51 |        53 |        53 |        58 |        59 |        70 |        87 |     17580 |
|                    Δ                     |        -1 |        -2 |        -7 |        -3 |        -4 |        -3 |       -10 |      1209 |
|              Improvement %               |         2 |         4 |        12 |         5 |         6 |         4 |        10 |      1209 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        20 |        19 |        17 |        17 |        16 |        14 |        11 |     16371 |
|                  jbird                   |        20 |        20 |        19 |        18 |        17 |        15 |        12 |     17580 |
|                    Δ                     |         0 |         1 |         2 |         1 |         1 |         1 |         1 |      1209 |
|              Improvement %               |         0 |         5 |        12 |         6 |         6 |         7 |         9 |      1209 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     16371 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     17580 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1209 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1209 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16371 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     17580 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1209 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1209 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16371 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     17580 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1209 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1209 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     16371 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     17580 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      1209 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      1209 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        36 |        36 |        36 |        36 |        36 |        36 |     16371 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     17580 |
|                    Δ                     |        55 |        55 |        55 |        55 |        55 |        55 |        55 |      1209 |
|              Improvement %               |      -153 |      -153 |      -153 |      -153 |      -153 |      -153 |      -153 |      1209 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1575 |      1576 |      1576 |      1576 |      1576 |      1593 |      1640 |     16371 |
|                  jbird                   |      1349 |      1350 |      1351 |      1351 |      1351 |      1368 |      1412 |     17580 |
|                    Δ                     |      -226 |      -226 |      -225 |      -225 |      -225 |      -225 |      -228 |      1209 |
|              Improvement %               |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      1209 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     16371 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     17580 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      1209 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      1209 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        90 |        95 |        95 |        99 |       113 |       145 |     10298 |
|                  jbird                   |        95 |        99 |       103 |       109 |       112 |       126 |       189 |      9277 |
|                    Δ                     |        11 |         9 |         8 |        14 |        13 |        13 |        44 |     -1021 |
|              Improvement %               |       -13 |       -10 |        -8 |       -15 |       -13 |       -12 |       -30 |     -1021 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        86 |        92 |        96 |        97 |       101 |       113 |       146 |     10298 |
|                  jbird                   |        97 |       100 |       105 |       110 |       114 |       126 |       176 |      9277 |
|                    Δ                     |        11 |         8 |         9 |        13 |        13 |        13 |        30 |     -1021 |
|              Improvement %               |       -13 |        -9 |        -9 |       -13 |       -13 |       -12 |       -21 |     -1021 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        11 |        10 |        10 |         9 |         7 |     10298 |
|                  jbird                   |        10 |        10 |        10 |         9 |         9 |         8 |         5 |      9277 |
|                    Δ                     |        -2 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |     -1021 |
|              Improvement %               |       -17 |        -9 |        -9 |       -10 |       -10 |       -11 |       -29 |     -1021 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10298 |
|                  jbird                   |        30 |        31 |        31 |        31 |        32 |        32 |        32 |      9277 |
|                    Δ                     |         0 |         0 |         0 |         0 |         1 |         1 |         1 |     -1021 |
|              Improvement %               |         0 |         0 |         0 |         0 |        -3 |        -3 |        -3 |     -1021 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10298 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9277 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1021 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1021 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10298 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9277 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1021 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1021 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |     10298 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9277 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |     -1021 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |     -1021 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       522 |       522 |       522 |       522 |       522 |       522 |       522 |     10298 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9277 |
|                    Δ                     |       139 |       139 |       139 |       139 |       139 |       139 |       139 |     -1021 |
|              Improvement %               |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |     -1021 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2561 |      2562 |      2562 |      2562 |      2562 |      2605 |      2771 |     10298 |
|                  jbird                   |      2605 |      2607 |      2607 |      2607 |      2607 |      2623 |      2856 |      9277 |
|                    Δ                     |        44 |        45 |        45 |        45 |        45 |        18 |        85 |     -1021 |
|              Improvement %               |        -2 |        -2 |        -2 |        -2 |        -2 |        -1 |        -3 |     -1021 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |     10298 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9277 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |     -1021 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |     -1021 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        63 |        65 |        71 |        73 |        75 |        87 |       174 |     13674 |
|                  jbird                   |        60 |        65 |        68 |        72 |        76 |        85 |       122 |     13924 |
|                    Δ                     |        -3 |         0 |        -3 |        -1 |         1 |        -2 |       -52 |       250 |
|              Improvement %               |         5 |         0 |         4 |         1 |        -1 |         2 |        30 |       250 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        64 |        67 |        72 |        74 |        77 |        88 |       176 |     13674 |
|                  jbird                   |        61 |        66 |        69 |        73 |        78 |        87 |       125 |     13924 |
|                    Δ                     |        -3 |        -1 |        -3 |        -1 |         1 |        -1 |       -51 |       250 |
|              Improvement %               |         5 |         1 |         4 |         1 |        -1 |         1 |        29 |       250 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        15 |        14 |        14 |        13 |        11 |         6 |     13674 |
|                  jbird                   |        17 |        15 |        15 |        14 |        13 |        12 |         8 |     13924 |
|                    Δ                     |         1 |         0 |         1 |         0 |         0 |         1 |         2 |       250 |
|              Improvement %               |         6 |         0 |         7 |         0 |         0 |         9 |        33 |       250 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     13674 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     13924 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       250 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       250 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13674 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13924 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       250 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       250 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13674 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13924 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       250 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       250 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     13674 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13924 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       250 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |       250 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       245 |       245 |       245 |       245 |       245 |       245 |       245 |     13674 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     13924 |
|                    Δ                     |        84 |        84 |        84 |        84 |        84 |        84 |        84 |       250 |
|              Improvement %               |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       250 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1552 |      1553 |      1553 |      1553 |      1553 |      1565 |      1629 |     13674 |
|                  jbird                   |      1574 |      1574 |      1574 |      1575 |      1575 |      1582 |      1708 |     13924 |
|                    Δ                     |        22 |        21 |        21 |        22 |        22 |        17 |        79 |       250 |
|              Improvement %               |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        -5 |       250 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     13674 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13924 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       250 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |       250 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        95 |       100 |       108 |       110 |       113 |       126 |       146 |      9122 |
|                  jbird                   |        23 |        24 |        26 |        27 |        29 |        35 |        56 |     33749 |
|                    Δ                     |       -72 |       -76 |       -82 |       -83 |       -84 |       -91 |       -90 |     24627 |
|              Improvement %               |        76 |        76 |        76 |        75 |        74 |        72 |        62 |     24627 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        96 |       102 |       109 |       112 |       114 |       126 |       148 |      9122 |
|                  jbird                   |        25 |        26 |        28 |        28 |        31 |        37 |        53 |     33749 |
|                    Δ                     |       -71 |       -76 |       -81 |       -84 |       -83 |       -89 |       -95 |     24627 |
|              Improvement %               |        74 |        75 |        74 |        75 |        73 |        71 |        64 |     24627 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10563 |      9999 |      9295 |      9087 |      8863 |      7911 |      6828 |      9122 |
|                  jbird                   |     42629 |     41535 |     37823 |     37407 |     34111 |     28511 |     17857 |     33749 |
|                    Δ                     |     32066 |     31536 |     28528 |     28320 |     25248 |     20600 |     11029 |     24627 |
|              Improvement %               |       304 |       315 |       307 |       312 |       285 |       260 |       162 |     24627 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        30 |        30 |        30 |        30 |        30 |        30 |      9122 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     33749 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24627 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24627 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9122 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     33749 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24627 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24627 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9122 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     33749 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24627 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24627 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      9122 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     33749 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |     24627 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     24627 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        71 |        71 |        71 |        71 |        71 |        71 |        71 |      9122 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     33749 |
|                    Δ                     |        55 |        55 |        55 |        55 |        55 |        55 |        55 |     24627 |
|              Improvement %               |       -77 |       -77 |       -77 |       -77 |       -77 |       -77 |       -77 |     24627 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2040 |      2041 |      2041 |      2041 |      2046 |      2058 |      2078 |      9122 |
|                  jbird                   |       826 |       826 |       826 |       826 |       826 |       831 |       889 |     33749 |
|                    Δ                     |     -1214 |     -1215 |     -1215 |     -1215 |     -1220 |     -1227 |     -1189 |     24627 |
|              Improvement %               |        60 |        60 |        60 |        60 |        60 |        60 |        57 |     24627 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      9122 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     33749 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |     24627 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     24627 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1981 |      2136 |      2167 |      2185 |      2208 |      2286 |      2417 |       463 |
|                  jbird                   |      1024 |      1085 |      1101 |      1116 |      1133 |      1180 |      1282 |       906 |
|                    Δ                     |      -957 |     -1051 |     -1066 |     -1069 |     -1075 |     -1106 |     -1135 |       443 |
|              Improvement %               |        48 |        49 |        49 |        49 |        49 |        48 |        47 |       443 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1982 |      2136 |      2169 |      2187 |      2210 |      2279 |      2419 |       463 |
|                  jbird                   |      1026 |      1087 |      1103 |      1117 |      1134 |      1181 |      1277 |       906 |
|                    Δ                     |      -956 |     -1049 |     -1066 |     -1070 |     -1076 |     -1098 |     -1142 |       443 |
|              Improvement %               |        48 |        49 |        49 |        49 |        49 |        48 |        47 |       443 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       505 |       468 |       462 |       458 |       453 |       438 |       414 |       463 |
|                  jbird                   |       976 |       921 |       909 |       896 |       884 |       848 |       780 |       906 |
|                    Δ                     |       471 |       453 |       447 |       438 |       431 |       410 |       366 |       443 |
|              Improvement %               |        93 |        97 |        97 |        96 |        95 |        94 |        88 |       443 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       463 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       906 |
|                    Δ                     |         0 |         3 |         3 |         3 |         3 |         3 |         3 |       443 |
|              Improvement %               |         0 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       443 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       463 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       906 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       443 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       443 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       463 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       906 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       443 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       443 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       463 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       906 |
|                    Δ                     |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |       443 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       443 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1550 |      1550 |      1550 |      1550 |      1550 |      1550 |      1550 |       463 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       906 |
|                    Δ                     |      2361 |      2361 |      2361 |      2361 |      2361 |      2361 |      2361 |       443 |
|              Improvement %               |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |       443 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        43 |        43 |        43 |        43 |        43 |        43 |        43 |       463 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        26 |       906 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |       -17 |       443 |
|              Improvement %               |        42 |        42 |        42 |        42 |        42 |        42 |        40 |       443 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       463 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       906 |
|                    Δ                     |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |       443 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       443 |

<p>
</details>

