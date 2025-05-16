## Jaybird vs. SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        12 |        12 |        13 |        13 |        88 |
|                 jaybird                  |         2 |         2 |         2 |         2 |         2 |         3 |         3 |       427 |
|                    Δ                     |        -9 |        -9 |        -9 |       -10 |       -10 |       -10 |       -10 |       339 |
|              Improvement %               |        82 |        82 |        82 |        83 |        83 |        77 |        77 |       339 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        12 |        12 |        13 |        13 |        88 |
|                 jaybird                  |         2 |         2 |         2 |         2 |         3 |         3 |         3 |       427 |
|                    Δ                     |        -9 |        -9 |        -9 |       -10 |        -9 |       -10 |       -10 |       339 |
|              Improvement %               |        82 |        82 |        82 |        83 |        75 |        77 |        77 |       339 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        93 |        91 |        89 |        85 |        83 |        80 |        80 |        88 |
|                 jaybird                  |       467 |       457 |       447 |       413 |       400 |       390 |       379 |       427 |
|                    Δ                     |       374 |       366 |       358 |       328 |       317 |       310 |       299 |       339 |
|              Improvement %               |       402 |       402 |       402 |       386 |       382 |       388 |       374 |       339 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        27 |        61 |        92 |       125 |       144 |       157 |       157 |        88 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       427 |
|                    Δ                     |         2 |       -30 |       -61 |       -94 |      -113 |      -126 |      -126 |       339 |
|              Improvement %               |        -7 |        49 |        66 |        75 |        78 |        80 |        80 |       339 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        88 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       427 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       339 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       339 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       239 |       240 |       240 |       240 |       240 |       246 |       246 |        88 |
|                 jaybird                  |        47 |        47 |        47 |        47 |        47 |        48 |        49 |       427 |
|                    Δ                     |      -192 |      -193 |      -193 |      -193 |      -193 |      -198 |      -197 |       339 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       339 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        12 |        12 |        13 |        13 |        88 |
|                 jaybird                  |         2 |         2 |         2 |         2 |         3 |         3 |         3 |       418 |
|                    Δ                     |        -9 |        -9 |        -9 |       -10 |        -9 |       -10 |       -10 |       330 |
|              Improvement %               |        82 |        82 |        82 |        83 |        75 |        77 |        77 |       330 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        12 |        12 |        13 |        13 |        88 |
|                 jaybird                  |         2 |         2 |         2 |         2 |         3 |         3 |         3 |       418 |
|                    Δ                     |        -9 |        -9 |        -9 |       -10 |        -9 |       -10 |       -10 |       330 |
|              Improvement %               |        82 |        82 |        82 |        83 |        75 |        77 |        77 |       330 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        95 |        92 |        89 |        84 |        83 |        77 |        77 |        88 |
|                 jaybird                  |       459 |       444 |       436 |       407 |       396 |       386 |       370 |       418 |
|                    Δ                     |       364 |       352 |       347 |       323 |       313 |       309 |       293 |       330 |
|              Improvement %               |       383 |       383 |       390 |       385 |       377 |       401 |       381 |       330 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        27 |        60 |        93 |       123 |       145 |       156 |       156 |        88 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       418 |
|                    Δ                     |         2 |       -29 |       -62 |       -92 |      -114 |      -125 |      -125 |       330 |
|              Improvement %               |        -7 |        48 |        67 |        75 |        79 |        80 |        80 |       330 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        88 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       418 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       330 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       330 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       236 |       236 |       236 |       236 |       237 |       248 |       248 |        88 |
|                 jaybird                  |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       418 |
|                    Δ                     |      -188 |      -188 |      -188 |      -188 |      -189 |      -199 |      -198 |       330 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       330 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2599 |      2683 |      2834 |      2996 |      3072 |      3465 |      3503 |       345 |
|                 jaybird                  |       534 |       546 |       558 |       611 |       624 |       654 |       746 |      1609 |
|                    Δ                     |     -2065 |     -2137 |     -2276 |     -2385 |     -2448 |     -2811 |     -2757 |      1264 |
|              Improvement %               |        79 |        80 |        80 |        80 |        80 |        81 |        79 |      1264 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2602 |      2687 |      2832 |      2998 |      3076 |      3467 |      3507 |       345 |
|                 jaybird                  |       536 |       549 |       560 |       613 |       626 |       651 |       695 |      1609 |
|                    Δ                     |     -2066 |     -2138 |     -2272 |     -2385 |     -2450 |     -2816 |     -2812 |      1264 |
|              Improvement %               |        79 |        80 |        80 |        80 |        80 |        81 |        80 |      1264 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       385 |       373 |       353 |       334 |       326 |       289 |       285 |       345 |
|                 jaybird                  |      1874 |      1831 |      1793 |      1637 |      1603 |      1530 |      1341 |      1609 |
|                    Δ                     |      1489 |      1458 |      1440 |      1303 |      1277 |      1241 |      1056 |      1264 |
|              Improvement %               |       387 |       391 |       408 |       390 |       392 |       429 |       371 |      1264 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        58 |        91 |       122 |       141 |       153 |       153 |       345 |
|                 jaybird                  |        25 |        27 |        27 |        27 |        27 |        27 |        27 |      1609 |
|                    Δ                     |        -1 |       -31 |       -64 |       -95 |      -114 |      -126 |      -126 |      1264 |
|              Improvement %               |         4 |        53 |        70 |        78 |        81 |        82 |        82 |      1264 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       345 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1609 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1264 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1264 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        59 |        59 |        59 |        59 |        62 |        62 |       345 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1609 |
|                    Δ                     |       -47 |       -47 |       -47 |       -47 |       -47 |       -50 |       -50 |      1264 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      1264 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2616 |      2697 |      2748 |      2984 |      3066 |      3271 |      3589 |       348 |
|                 jaybird                  |       539 |       559 |       570 |       624 |       637 |       668 |       706 |      1580 |
|                    Δ                     |     -2077 |     -2138 |     -2178 |     -2360 |     -2429 |     -2603 |     -2883 |      1232 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        80 |      1232 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2618 |      2699 |      2753 |      2986 |      3066 |      3273 |      3595 |       348 |
|                 jaybird                  |       541 |       561 |       572 |       626 |       639 |       668 |       708 |      1580 |
|                    Δ                     |     -2077 |     -2138 |     -2181 |     -2360 |     -2427 |     -2605 |     -2887 |      1232 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        80 |      1232 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       382 |       371 |       363 |       335 |       326 |       306 |       279 |       348 |
|                 jaybird                  |      1856 |      1791 |      1755 |      1604 |      1570 |      1498 |      1417 |      1580 |
|                    Δ                     |      1474 |      1420 |      1392 |      1269 |      1244 |      1192 |      1138 |      1232 |
|              Improvement %               |       386 |       383 |       383 |       379 |       382 |       390 |       408 |      1232 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        58 |        90 |       122 |       143 |       153 |       154 |       348 |
|                 jaybird                  |        25 |        27 |        27 |        27 |        27 |        27 |        27 |      1580 |
|                    Δ                     |        -1 |       -31 |       -63 |       -95 |      -116 |      -126 |      -127 |      1232 |
|              Improvement %               |         4 |        53 |        70 |        78 |        81 |        82 |        82 |      1232 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       348 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1580 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1232 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1232 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        59 |        59 |        59 |        59 |        62 |        62 |       348 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1580 |
|                    Δ                     |       -47 |       -47 |       -47 |       -47 |       -47 |       -50 |       -50 |      1232 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      1232 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5222 |      5370 |      5595 |      5874 |      6054 |      6545 |      6638 |       176 |
|                 jaybird                  |      1067 |      1089 |      1103 |      1205 |      1238 |      1362 |      1507 |       842 |
|                    Δ                     |     -4155 |     -4281 |     -4492 |     -4669 |     -4816 |     -5183 |     -5131 |       666 |
|              Improvement %               |        80 |        80 |        80 |        79 |        80 |        79 |        77 |       666 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5230 |      5370 |      5599 |      5878 |      6054 |      6541 |      6642 |       176 |
|                 jaybird                  |      1069 |      1091 |      1106 |      1206 |      1242 |      1364 |      1505 |       842 |
|                    Δ                     |     -4161 |     -4279 |     -4493 |     -4672 |     -4812 |     -5177 |     -5137 |       666 |
|              Improvement %               |        80 |        80 |        80 |        79 |        79 |        79 |        77 |       666 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       191 |       186 |       178 |       170 |       165 |       153 |       151 |       176 |
|                 jaybird                  |       938 |       919 |       907 |       830 |       808 |       735 |       663 |       842 |
|                    Δ                     |       747 |       733 |       729 |       660 |       643 |       582 |       512 |       666 |
|              Improvement %               |       391 |       394 |       410 |       388 |       390 |       380 |       339 |       666 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        58 |        90 |       123 |       143 |       154 |       156 |       176 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       842 |
|                    Δ                     |         0 |       -30 |       -62 |       -95 |      -115 |      -126 |      -128 |       666 |
|              Improvement %               |         0 |        52 |        69 |        77 |        80 |        82 |        82 |       666 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       176 |
|                 jaybird                  |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       842 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       666 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       666 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       118 |       118 |       118 |       118 |       118 |       124 |       124 |       176 |
|                 jaybird                  |        23 |        23 |        24 |        24 |        24 |        24 |        25 |       842 |
|                    Δ                     |       -95 |       -95 |       -94 |       -94 |       -94 |      -100 |       -99 |       666 |
|              Improvement %               |        81 |        81 |        80 |        80 |        80 |        81 |        80 |       666 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5201 |      5358 |      5472 |      5849 |      5984 |      6496 |      6788 |       178 |
|                 jaybird                  |      1087 |      1111 |      1129 |      1237 |      1261 |      1317 |      1441 |       824 |
|                    Δ                     |     -4114 |     -4247 |     -4343 |     -4612 |     -4723 |     -5179 |     -5347 |       646 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        79 |       646 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5209 |      5358 |      5468 |      5853 |      5980 |      6484 |      6794 |       178 |
|                 jaybird                  |      1088 |      1113 |      1132 |      1240 |      1264 |      1316 |      1446 |       824 |
|                    Δ                     |     -4121 |     -4245 |     -4336 |     -4613 |     -4716 |     -5168 |     -5348 |       646 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        79 |       646 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       192 |       187 |       183 |       171 |       167 |       154 |       147 |       178 |
|                 jaybird                  |       920 |       901 |       886 |       808 |       793 |       760 |       694 |       824 |
|                    Δ                     |       728 |       714 |       703 |       637 |       626 |       606 |       547 |       646 |
|              Improvement %               |       379 |       382 |       384 |       373 |       375 |       394 |       372 |       646 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        60 |        93 |       125 |       145 |       156 |       156 |       178 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       824 |
|                    Δ                     |         0 |       -32 |       -65 |       -97 |      -117 |      -128 |      -128 |       646 |
|              Improvement %               |         0 |        53 |        70 |        78 |        81 |        82 |        82 |       646 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       178 |
|                 jaybird                  |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       824 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       646 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       646 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       118 |       118 |       118 |       118 |       118 |       124 |       125 |       178 |
|                 jaybird                  |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       824 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -99 |      -100 |       646 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       646 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        55 |        56 |        56 |        58 |        59 |        59 |        59 |        18 |
|                 jaybird                  |        12 |        12 |        12 |        13 |        13 |        14 |        14 |        80 |
|                    Δ                     |       -43 |       -44 |       -44 |       -45 |       -46 |       -45 |       -45 |        62 |
|              Improvement %               |        78 |        79 |        79 |        78 |        78 |        76 |        76 |        62 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        55 |        56 |        56 |        58 |        59 |        59 |        59 |        18 |
|                 jaybird                  |        12 |        12 |        12 |        13 |        13 |        14 |        14 |        80 |
|                    Δ                     |       -43 |       -44 |       -44 |       -45 |       -46 |       -45 |       -45 |        62 |
|              Improvement %               |        78 |        79 |        79 |        78 |        78 |        76 |        76 |        62 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        18 |        18 |        18 |        17 |        17 |        17 |        17 |        18 |
|                 jaybird                  |        86 |        85 |        81 |        78 |        76 |        71 |        71 |        80 |
|                    Δ                     |        68 |        67 |        63 |        61 |        59 |        54 |        54 |        62 |
|              Improvement %               |       378 |       372 |       350 |       359 |       347 |       318 |       318 |        62 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        78 |       107 |       142 |       165 |       170 |       170 |        18 |
|                 jaybird                  |        43 |        53 |        53 |        53 |        53 |        53 |        53 |        80 |
|                    Δ                     |        -4 |       -25 |       -54 |       -89 |      -112 |      -117 |      -117 |        62 |
|              Improvement %               |         9 |        32 |        50 |        63 |        68 |        69 |        69 |        62 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        18 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        80 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        62 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        62 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1188 |      1189 |      1190 |      1191 |      1194 |      1196 |      1196 |        18 |
|                 jaybird                  |       239 |       240 |       241 |       241 |       244 |       253 |       253 |        80 |
|                    Δ                     |      -949 |      -949 |      -949 |      -950 |      -950 |      -943 |      -943 |        62 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        79 |        62 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        56 |        58 |        58 |        59 |        61 |        62 |        62 |        18 |
|                 jaybird                  |        12 |        12 |        12 |        13 |        14 |        15 |        15 |        78 |
|                    Δ                     |       -44 |       -46 |       -46 |       -46 |       -47 |       -47 |       -47 |        60 |
|              Improvement %               |        79 |        79 |        79 |        78 |        77 |        76 |        76 |        60 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        56 |        58 |        58 |        59 |        61 |        62 |        62 |        18 |
|                 jaybird                  |        12 |        12 |        12 |        13 |        14 |        15 |        15 |        78 |
|                    Δ                     |       -44 |       -46 |       -46 |       -46 |       -47 |       -47 |       -47 |        60 |
|              Improvement %               |        79 |        79 |        79 |        78 |        77 |        76 |        76 |        60 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        18 |        17 |        17 |        17 |        16 |        16 |        16 |        18 |
|                 jaybird                  |        86 |        84 |        80 |        76 |        74 |        69 |        69 |        78 |
|                    Δ                     |        68 |        67 |        63 |        59 |        58 |        53 |        53 |        60 |
|              Improvement %               |       378 |       394 |       371 |       347 |       362 |       331 |       331 |        60 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        46 |        77 |       107 |       143 |       165 |       170 |       170 |        18 |
|                 jaybird                  |        43 |        52 |        52 |        52 |        52 |        52 |        52 |        78 |
|                    Δ                     |        -3 |       -25 |       -55 |       -91 |      -113 |      -118 |      -118 |        60 |
|              Improvement %               |         7 |        32 |        51 |        64 |        68 |        69 |        69 |        60 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        18 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        78 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        60 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        60 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1200 |      1202 |      1203 |      1204 |      1206 |      1208 |      1208 |        18 |
|                 jaybird                  |       245 |       245 |       246 |       246 |       251 |       257 |       257 |        78 |
|                    Δ                     |      -955 |      -957 |      -957 |      -958 |      -955 |      -951 |      -951 |        60 |
|              Improvement %               |        80 |        80 |        80 |        80 |        79 |        79 |        79 |        60 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       646 |       670 |       684 |       742 |       767 |       816 |      1004 |      1335 |
|                 jaybird                  |       133 |       137 |       140 |       152 |       158 |       166 |       189 |      5370 |
|                    Δ                     |      -513 |      -533 |      -544 |      -590 |      -609 |      -650 |      -815 |      4035 |
|              Improvement %               |        79 |        80 |        80 |        80 |        79 |        80 |        81 |      4035 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       648 |       672 |       686 |       744 |       769 |       820 |      1006 |      1335 |
|                 jaybird                  |       135 |       139 |       142 |       154 |       160 |       167 |       187 |      5370 |
|                    Δ                     |      -513 |      -533 |      -544 |      -590 |      -609 |      -653 |      -819 |      4035 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        81 |      4035 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1548 |      1494 |      1463 |      1348 |      1304 |      1226 |       996 |      1335 |
|                 jaybird                  |      7528 |      7327 |      7131 |      6579 |      6331 |      6039 |      5283 |      5370 |
|                    Δ                     |      5980 |      5833 |      5668 |      5231 |      5027 |      4813 |      4287 |      4035 |
|              Improvement %               |       386 |       390 |       387 |       388 |       386 |       393 |       430 |      4035 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        58 |        89 |       122 |       142 |       153 |       155 |      1335 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5370 |
|                    Δ                     |         0 |       -33 |       -64 |       -97 |      -117 |      -128 |      -130 |      4035 |
|              Improvement %               |         0 |        57 |        72 |        80 |        82 |        84 |        84 |      4035 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1335 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5370 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4035 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4035 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1335 |
|                 jaybird                  |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      5370 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4035 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4035 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       653 |       671 |       686 |       750 |       768 |       906 |      1013 |      1322 |
|                 jaybird                  |       136 |       143 |       147 |       155 |       165 |       175 |       194 |      5211 |
|                    Δ                     |      -517 |      -528 |      -539 |      -595 |      -603 |      -731 |      -819 |      3889 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        81 |        81 |      3889 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       655 |       674 |       688 |       752 |       770 |       907 |      1017 |      1322 |
|                 jaybird                  |       138 |       146 |       149 |       157 |       167 |       176 |       197 |      5211 |
|                    Δ                     |      -517 |      -528 |      -539 |      -595 |      -603 |      -731 |      -820 |      3889 |
|              Improvement %               |        79 |        78 |        78 |        79 |        78 |        81 |        81 |      3889 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1532 |      1490 |      1458 |      1335 |      1303 |      1104 |       987 |      1322 |
|                 jaybird                  |      7328 |      6971 |      6819 |      6455 |      6071 |      5719 |      5154 |      5211 |
|                    Δ                     |      5796 |      5481 |      5361 |      5120 |      4768 |      4615 |      4167 |      3889 |
|              Improvement %               |       378 |       368 |       368 |       384 |       366 |       418 |       422 |      3889 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        57 |        89 |       121 |       142 |       152 |       154 |      1322 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5211 |
|                    Δ                     |         0 |       -32 |       -64 |       -96 |      -117 |      -127 |      -129 |      3889 |
|              Improvement %               |         0 |        56 |        72 |        79 |        82 |        84 |        84 |      3889 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1322 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5211 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      3889 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      3889 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1322 |
|                 jaybird                  |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      5211 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      3889 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      3889 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1852 |      1918 |      1982 |      2111 |      2216 |      2324 |      2526 |       486 |
|                 jaybird                  |       101 |       103 |       106 |       115 |       119 |       125 |       146 |      6862 |
|                    Δ                     |     -1751 |     -1815 |     -1876 |     -1996 |     -2097 |     -2199 |     -2380 |      6376 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        94 |      6376 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1854 |      1920 |      1982 |      2114 |      2218 |      2324 |      2541 |       486 |
|                 jaybird                  |       103 |       105 |       109 |       117 |       121 |       127 |       150 |      6862 |
|                    Δ                     |     -1751 |     -1815 |     -1873 |     -1997 |     -2097 |     -2197 |     -2391 |      6376 |
|              Improvement %               |        94 |        95 |        95 |        94 |        95 |        95 |        94 |      6376 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       540 |       521 |       505 |       474 |       451 |       430 |       396 |       486 |
|                 jaybird                  |      9901 |      9679 |      9415 |      8695 |      8399 |      8035 |      6834 |      6862 |
|                    Δ                     |      9361 |      9158 |      8910 |      8221 |      7948 |      7605 |      6438 |      6376 |
|              Improvement %               |      1734 |      1758 |      1764 |      1734 |      1762 |      1769 |      1626 |      6376 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        35 |        44 |        54 |        59 |        63 |        63 |       486 |
|                 jaybird                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6862 |
|                    Δ                     |         0 |        -9 |       -18 |       -28 |       -33 |       -37 |       -37 |      6376 |
|              Improvement %               |         0 |        26 |        41 |        52 |        56 |        59 |        59 |      6376 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       486 |
|                 jaybird                  |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      6862 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      6376 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      6376 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        45 |        45 |        45 |        45 |        45 |        48 |        48 |       486 |
|                 jaybird                  |         2 |         2 |         2 |         2 |         2 |         2 |         3 |      6862 |
|                    Δ                     |       -43 |       -43 |       -43 |       -43 |       -43 |       -46 |       -45 |      6376 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |        94 |      6376 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1210 |      1250 |      1272 |      1393 |      1421 |      1559 |      1677 |       738 |
|                 jaybird                  |        64 |        66 |        67 |        73 |        76 |        88 |       129 |      9442 |
|                    Δ                     |     -1146 |     -1184 |     -1205 |     -1320 |     -1345 |     -1471 |     -1548 |      8704 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        92 |      8704 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1212 |      1252 |      1273 |      1395 |      1425 |      1561 |      1677 |       738 |
|                 jaybird                  |        65 |        68 |        69 |        75 |        79 |        89 |       132 |      9442 |
|                    Δ                     |     -1147 |     -1184 |     -1204 |     -1320 |     -1346 |     -1472 |     -1545 |      8704 |
|              Improvement %               |        95 |        95 |        95 |        95 |        94 |        94 |        92 |      8704 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       826 |       800 |       787 |       718 |       704 |       642 |       596 |       738 |
|                 jaybird                  |     15697 |     15231 |     14895 |     13719 |     13095 |     11327 |      7777 |      9442 |
|                    Δ                     |     14871 |     14431 |     14108 |     13001 |     12391 |     10685 |      7181 |      8704 |
|              Improvement %               |      1800 |      1804 |      1793 |      1811 |      1760 |      1664 |      1205 |      8704 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        43 |        61 |        78 |        88 |        94 |        95 |       738 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      9442 |
|                    Δ                     |         0 |       -18 |       -36 |       -53 |       -63 |       -69 |       -70 |      8704 |
|              Improvement %               |         0 |        42 |        59 |        68 |        72 |        73 |        74 |      8704 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       738 |
|                 jaybird                  |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      9442 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |      8704 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8704 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        28 |        28 |        28 |        28 |        28 |        30 |        30 |       738 |
|                 jaybird                  |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      9442 |
|                    Δ                     |       -26 |       -26 |       -26 |       -26 |       -26 |       -28 |       -28 |      8704 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        93 |      8704 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       627 |       643 |       655 |       717 |       737 |       815 |      1032 |      1383 |
|                 jaybird                  |        79 |        85 |        91 |        97 |       102 |       126 |       202 |      7430 |
|                    Δ                     |      -548 |      -558 |      -564 |      -620 |      -635 |      -689 |      -830 |      6047 |
|              Improvement %               |        87 |        87 |        86 |        86 |        86 |        85 |        80 |      6047 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       629 |       646 |       658 |       719 |       739 |       817 |      1035 |      1383 |
|                 jaybird                  |        81 |        87 |        93 |        99 |       104 |       127 |       204 |      7430 |
|                    Δ                     |      -548 |      -559 |      -565 |      -620 |      -635 |      -690 |      -831 |      6047 |
|              Improvement %               |        87 |        87 |        86 |        86 |        86 |        84 |        80 |      6047 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1595 |      1556 |      1526 |      1395 |      1356 |      1228 |       969 |      1383 |
|                 jaybird                  |     12672 |     11719 |     11015 |     10343 |      9815 |      7939 |      4954 |      7430 |
|                    Δ                     |     11077 |     10163 |      9489 |      8948 |      8459 |      6711 |      3985 |      6047 |
|              Improvement %               |       694 |       653 |       622 |       641 |       624 |       546 |       411 |      6047 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        38 |        53 |        66 |        74 |        79 |        80 |      1383 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      7430 |
|                    Δ                     |         0 |       -13 |       -28 |       -41 |       -49 |       -54 |       -55 |      6047 |
|              Improvement %               |         0 |        34 |        53 |        62 |        66 |        68 |        69 |      6047 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5760 |      5763 |      5763 |      5763 |      5763 |      5763 |      5763 |      1383 |
|                 jaybird                  |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      7430 |
|                    Δ                     |     -5711 |     -5714 |     -5714 |     -5714 |     -5714 |     -5714 |     -5714 |      6047 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      6047 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      1383 |
|                 jaybird                  |         1 |         1 |         1 |         1 |         1 |         1 |         2 |      7430 |
|                    Δ                     |       -13 |       -13 |       -13 |       -13 |       -13 |       -13 |       -12 |      6047 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        86 |      6047 |

<p>
</details>

