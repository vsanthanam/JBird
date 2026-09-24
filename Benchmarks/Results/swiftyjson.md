
## JBird vs SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        89 |
|                  jbird                   |         1 |         2 |         2 |         2 |         2 |         2 |         2 |       648 |
|                    Δ                     |       -10 |        -9 |        -9 |        -9 |       -10 |       -10 |       -10 |       559 |
|              Improvement %               |        91 |        82 |        82 |        82 |        83 |        83 |        83 |       559 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        89 |
|                  jbird                   |         1 |         2 |         2 |         2 |         2 |         2 |         2 |       648 |
|                    Δ                     |       -10 |        -9 |        -9 |        -9 |       -10 |       -10 |       -10 |       559 |
|              Improvement %               |        91 |        82 |        82 |        82 |        83 |        83 |        83 |       559 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        92 |        90 |        89 |        88 |        87 |        80 |        80 |        89 |
|                  jbird                   |       706 |       663 |       651 |       642 |       631 |       528 |       438 |       648 |
|                    Δ                     |       614 |       573 |       562 |       554 |       544 |       448 |       358 |       559 |
|              Improvement %               |       667 |       637 |       631 |       630 |       625 |       560 |       448 |       559 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        36 |        74 |       112 |       151 |       175 |       187 |       187 |        89 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       648 |
|                    Δ                     |        -2 |       -38 |       -76 |      -115 |      -139 |      -151 |      -151 |       559 |
|              Improvement %               |         6 |        51 |        68 |        76 |        79 |        81 |        81 |       559 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |        89 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       648 |
|                    Δ                     |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |       559 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       559 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |        89 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       648 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       559 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       559 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        89 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       648 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       559 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       559 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4563 |      4564 |      4564 |      4564 |      4564 |      4564 |      4564 |        89 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       648 |
|                    Δ                     |       669 |       668 |       668 |       668 |       668 |       668 |       668 |       559 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       559 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       263 |       263 |       263 |       263 |       263 |       276 |       276 |        89 |
|                  jbird                   |        38 |        38 |        38 |        38 |        38 |        38 |        39 |       648 |
|                    Δ                     |      -225 |      -225 |      -225 |      -225 |      -225 |      -238 |      -237 |       559 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        86 |        86 |       559 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |        89 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       648 |
|                    Δ                     |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |       559 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       559 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        11 |        11 |        11 |        12 |        12 |        94 |
|                  jbird                   |         1 |         2 |         2 |         2 |         2 |         2 |         2 |       636 |
|                    Δ                     |        -9 |        -8 |        -9 |        -9 |        -9 |       -10 |       -10 |       542 |
|              Improvement %               |        90 |        80 |        82 |        82 |        82 |        83 |        83 |       542 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        11 |        11 |        11 |        12 |        12 |        94 |
|                  jbird                   |         1 |         2 |         2 |         2 |         2 |         2 |         2 |       636 |
|                    Δ                     |        -9 |        -8 |        -9 |        -9 |        -9 |       -10 |       -10 |       542 |
|              Improvement %               |        90 |        80 |        82 |        82 |        82 |        83 |        83 |       542 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        97 |        96 |        95 |        94 |        89 |        85 |        85 |        94 |
|                  jbird                   |       688 |       643 |       637 |       630 |       622 |       591 |       566 |       636 |
|                    Δ                     |       591 |       547 |       542 |       536 |       533 |       506 |       481 |       542 |
|              Improvement %               |       609 |       570 |       571 |       570 |       599 |       595 |       566 |       542 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        33 |        76 |       114 |       158 |       182 |       198 |       198 |        94 |
|                  jbird                   |        34 |        39 |        39 |        39 |        39 |        39 |        39 |       636 |
|                    Δ                     |         1 |       -37 |       -75 |      -119 |      -143 |      -159 |      -159 |       542 |
|              Improvement %               |        -3 |        49 |        66 |        75 |        79 |        80 |        80 |       542 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |        94 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       636 |
|                    Δ                     |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |       542 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       542 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |        94 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       636 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       542 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       542 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        94 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       636 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       542 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       542 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4563 |      4564 |      4564 |      4564 |      4564 |      4564 |      4564 |        94 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       636 |
|                    Δ                     |       669 |       668 |       668 |       668 |       668 |       668 |       668 |       542 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       542 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       249 |       249 |       249 |       249 |       249 |       263 |       263 |        94 |
|                  jbird                   |        39 |        39 |        39 |        39 |        39 |        39 |        40 |       636 |
|                    Δ                     |      -210 |      -210 |      -210 |      -210 |      -210 |      -224 |      -223 |       542 |
|              Improvement %               |        84 |        84 |        84 |        84 |        84 |        85 |        85 |       542 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |        94 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       636 |
|                    Δ                     |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |       542 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       542 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2502 |      2660 |      2707 |      2730 |      2750 |      2927 |      3004 |       370 |
|                  jbird                   |       356 |       383 |       391 |       398 |       407 |       432 |       486 |      2538 |
|                    Δ                     |     -2146 |     -2277 |     -2316 |     -2332 |     -2343 |     -2495 |     -2518 |      2168 |
|              Improvement %               |        86 |        86 |        86 |        85 |        85 |        85 |        84 |      2168 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2500 |      2660 |      2707 |      2732 |      2753 |      2927 |      2998 |       370 |
|                  jbird                   |       358 |       384 |       392 |       399 |       409 |       434 |       487 |      2538 |
|                    Δ                     |     -2142 |     -2276 |     -2315 |     -2333 |     -2344 |     -2493 |     -2511 |      2168 |
|              Improvement %               |        86 |        86 |        86 |        85 |        85 |        85 |        84 |      2168 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       400 |       376 |       370 |       367 |       364 |       342 |       333 |       370 |
|                  jbird                   |      2805 |      2613 |      2561 |      2515 |      2457 |      2313 |      2060 |      2538 |
|                    Δ                     |      2405 |      2237 |      2191 |      2148 |      2093 |      1971 |      1727 |      2168 |
|              Improvement %               |       601 |       595 |       592 |       585 |       575 |       576 |       519 |      2168 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        72 |       113 |       153 |       177 |       193 |       195 |       370 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2538 |
|                    Δ                     |         0 |       -40 |       -81 |      -121 |      -145 |      -161 |      -163 |      2168 |
|              Improvement %               |         0 |        56 |        72 |        79 |        82 |        83 |        84 |      2168 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |       370 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2538 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      2168 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2168 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3748 |       370 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2538 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3748 |      2168 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2168 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       370 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2538 |
|                    Δ                     |     -2699 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |      2168 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      2168 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1152 |      1153 |      1153 |      1153 |      1153 |      1153 |      1156 |       370 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2538 |
|                    Δ                     |       222 |       221 |       221 |       221 |       221 |       221 |       218 |      2168 |
|              Improvement %               |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |      2168 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        63 |        64 |        64 |        64 |        64 |        67 |        67 |       370 |
|                  jbird                   |         9 |         9 |         9 |         9 |        10 |        10 |        10 |      2538 |
|                    Δ                     |       -54 |       -55 |       -55 |       -55 |       -54 |       -57 |       -57 |      2168 |
|              Improvement %               |        86 |        86 |        86 |        86 |        84 |        85 |        85 |      2168 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |       370 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2538 |
|                    Δ                     |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      2168 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      2168 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2466 |      2662 |      2710 |      2755 |      2779 |      2863 |      2979 |       369 |
|                  jbird                   |       362 |       386 |       394 |       402 |       411 |       438 |       510 |      2515 |
|                    Δ                     |     -2104 |     -2276 |     -2316 |     -2353 |     -2368 |     -2425 |     -2469 |      2146 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        85 |        83 |      2146 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2460 |      2664 |      2710 |      2753 |      2783 |      2857 |      2982 |       369 |
|                  jbird                   |       363 |       387 |       395 |       403 |       412 |       440 |       504 |      2515 |
|                    Δ                     |     -2097 |     -2277 |     -2315 |     -2350 |     -2371 |     -2417 |     -2478 |      2146 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        85 |        83 |      2146 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       405 |       376 |       369 |       363 |       360 |       349 |       336 |       369 |
|                  jbird                   |      2766 |      2595 |      2539 |      2489 |      2433 |      2287 |      1960 |      2515 |
|                    Δ                     |      2361 |      2219 |      2170 |      2126 |      2073 |      1938 |      1624 |      2146 |
|              Improvement %               |       583 |       590 |       588 |       586 |       576 |       555 |       483 |      2146 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        72 |       113 |       154 |       177 |       193 |       193 |       369 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      2515 |
|                    Δ                     |         0 |       -39 |       -80 |      -121 |      -144 |      -160 |      -160 |      2146 |
|              Improvement %               |         0 |        54 |        71 |        79 |        81 |        83 |        83 |      2146 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |       369 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2515 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      2146 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2146 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3748 |       369 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2515 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3748 |      2146 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2146 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       369 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2515 |
|                    Δ                     |     -2699 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |      2146 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      2146 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1152 |      1153 |      1153 |      1153 |      1153 |      1153 |      1156 |       369 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2515 |
|                    Δ                     |       222 |       221 |       221 |       221 |       221 |       221 |       218 |      2146 |
|              Improvement %               |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |      2146 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        63 |        63 |        63 |        63 |        63 |        67 |        67 |       369 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      2515 |
|                    Δ                     |       -53 |       -53 |       -53 |       -53 |       -53 |       -57 |       -57 |      2146 |
|              Improvement %               |        84 |        84 |        84 |        84 |        84 |        85 |        85 |      2146 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |       369 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2515 |
|                    Δ                     |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      2146 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      2146 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5095 |      5337 |      5394 |      5456 |      5509 |      5837 |      5845 |       185 |
|                  jbird                   |       706 |       756 |       770 |       785 |       804 |       836 |       885 |      1291 |
|                    Δ                     |     -4389 |     -4581 |     -4624 |     -4671 |     -4705 |     -5001 |     -4960 |      1106 |
|              Improvement %               |        86 |        86 |        86 |        86 |        85 |        86 |        85 |      1106 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5095 |      5333 |      5394 |      5460 |      5513 |      5845 |      5849 |       185 |
|                  jbird                   |       708 |       758 |       771 |       787 |       805 |       838 |       881 |      1291 |
|                    Δ                     |     -4387 |     -4575 |     -4623 |     -4673 |     -4708 |     -5007 |     -4968 |      1106 |
|              Improvement %               |        86 |        86 |        86 |        86 |        85 |        86 |        85 |      1106 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       196 |       187 |       185 |       183 |       182 |       171 |       171 |       185 |
|                  jbird                   |      1416 |      1322 |      1299 |      1273 |      1244 |      1197 |      1130 |      1291 |
|                    Δ                     |      1220 |      1135 |      1114 |      1090 |      1062 |      1026 |       959 |      1106 |
|              Improvement %               |       622 |       607 |       602 |       596 |       584 |       600 |       561 |      1106 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        73 |       114 |       154 |       178 |       192 |       194 |       185 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1291 |
|                    Δ                     |        -1 |       -40 |       -81 |      -121 |      -145 |      -159 |      -161 |      1106 |
|              Improvement %               |         3 |        55 |        71 |        79 |        81 |        83 |        83 |      1106 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       703 |       703 |       703 |       703 |       703 |       703 |       703 |       185 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1291 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      1106 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1106 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7432 |       185 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1291 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7432 |      1106 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1106 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       185 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      1291 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      1106 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |      1106 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |       185 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1291 |
|                    Δ                     |       459 |       459 |       459 |       459 |       459 |       459 |       459 |      1106 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |      1106 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       126 |       126 |       126 |       126 |       126 |       133 |       133 |       185 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        20 |      1291 |
|                    Δ                     |      -107 |      -107 |      -107 |      -107 |      -107 |      -114 |      -113 |      1106 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        86 |        85 |      1106 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |       185 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1291 |
|                    Δ                     |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      1106 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      1106 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4962 |      5181 |      5247 |      5353 |      5464 |      6144 |      6163 |       190 |
|                  jbird                   |       724 |       773 |       787 |       799 |       812 |       855 |       928 |      1266 |
|                    Δ                     |     -4238 |     -4408 |     -4460 |     -4554 |     -4652 |     -5289 |     -5235 |      1076 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        86 |        85 |      1076 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4963 |      5181 |      5247 |      5353 |      5464 |      5870 |      6146 |       190 |
|                  jbird                   |       725 |       774 |       788 |       801 |       813 |       850 |       923 |      1266 |
|                    Δ                     |     -4238 |     -4407 |     -4459 |     -4552 |     -4651 |     -5020 |     -5223 |      1076 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        86 |        85 |      1076 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       202 |       193 |       191 |       187 |       183 |       163 |       162 |       190 |
|                  jbird                   |      1382 |      1294 |      1271 |      1251 |      1232 |      1171 |      1078 |      1266 |
|                    Δ                     |      1180 |      1101 |      1080 |      1064 |      1049 |      1008 |       916 |      1076 |
|              Improvement %               |       584 |       570 |       565 |       569 |       573 |       618 |       565 |      1076 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        73 |       115 |       158 |       181 |       196 |       198 |       190 |
|                  jbird                   |        31 |        35 |        35 |        35 |        35 |        35 |        35 |      1266 |
|                    Δ                     |        -1 |       -38 |       -80 |      -123 |      -146 |      -161 |      -163 |      1076 |
|              Improvement %               |         3 |        52 |        70 |        78 |        81 |        82 |        82 |      1076 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       703 |       703 |       703 |       703 |       703 |       703 |       703 |       190 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1266 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      1076 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1076 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7432 |       190 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1266 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7432 |      1076 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1076 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       190 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      1266 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      1076 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |      1076 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |       190 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1266 |
|                    Δ                     |       459 |       459 |       459 |       459 |       459 |       459 |       459 |      1076 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |      1076 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       124 |       124 |       124 |       125 |       125 |       131 |       131 |       190 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        20 |      1266 |
|                    Δ                     |      -105 |      -105 |      -105 |      -106 |      -106 |      -112 |      -111 |      1076 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        85 |        85 |      1076 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |       190 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1266 |
|                    Δ                     |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      1076 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      1076 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        51 |        51 |        52 |        54 |        55 |        55 |        20 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       132 |
|                    Δ                     |       -43 |       -43 |       -43 |       -44 |       -46 |       -47 |       -47 |       112 |
|              Improvement %               |        86 |        84 |        84 |        85 |        85 |        85 |        85 |       112 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        51 |        51 |        52 |        54 |        55 |        55 |        20 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       132 |
|                    Δ                     |       -43 |       -43 |       -43 |       -44 |       -46 |       -47 |       -47 |       112 |
|              Improvement %               |        86 |        84 |        84 |        85 |        85 |        85 |        85 |       112 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        20 |        20 |        19 |        19 |        18 |        18 |        18 |        20 |
|                  jbird                   |       139 |       133 |       131 |       130 |       129 |       128 |       128 |       132 |
|                    Δ                     |       119 |       113 |       112 |       111 |       111 |       110 |       110 |       112 |
|              Improvement %               |       595 |       565 |       589 |       584 |       617 |       611 |       611 |       112 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        57 |        92 |       136 |       179 |       205 |       222 |       222 |        20 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       132 |
|                    Δ                     |        -2 |       -34 |       -78 |      -121 |      -147 |      -164 |      -164 |       112 |
|              Improvement %               |         4 |        37 |        57 |        68 |        72 |        74 |        74 |       112 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        20 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       132 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |       112 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       112 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        20 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       132 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       112 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       112 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        20 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       132 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       112 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       112 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        23 |        23 |        23 |        23 |        23 |        23 |        23 |        20 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       132 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       112 |
|              Improvement %               |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       112 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1226 |      1227 |      1227 |      1228 |      1228 |      1228 |      1228 |        20 |
|                  jbird                   |       190 |       190 |       190 |       190 |       190 |       191 |       191 |       132 |
|                    Δ                     |     -1036 |     -1037 |     -1037 |     -1038 |     -1038 |     -1037 |     -1037 |       112 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        84 |        84 |       112 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |        20 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       132 |
|                    Δ                     |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       112 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       112 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        52 |        52 |        52 |        53 |        53 |        54 |        54 |        20 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       128 |
|                    Δ                     |       -45 |       -44 |       -44 |       -45 |       -45 |       -46 |       -46 |       108 |
|              Improvement %               |        87 |        85 |        85 |        85 |        85 |        85 |        85 |       108 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        52 |        52 |        52 |        53 |        53 |        54 |        54 |        20 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       128 |
|                    Δ                     |       -45 |       -44 |       -44 |       -45 |       -45 |       -46 |       -46 |       108 |
|              Improvement %               |        87 |        85 |        85 |        85 |        85 |        85 |        85 |       108 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        19 |        19 |        19 |        19 |        19 |        19 |        19 |        20 |
|                  jbird                   |       134 |       129 |       128 |       126 |       125 |       123 |       120 |       128 |
|                    Δ                     |       115 |       110 |       109 |       107 |       106 |       104 |       101 |       108 |
|              Improvement %               |       605 |       579 |       574 |       563 |       558 |       547 |       532 |       108 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        57 |        92 |       136 |       179 |       205 |       222 |       222 |        20 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       128 |
|                    Δ                     |        -2 |       -34 |       -78 |      -121 |      -147 |      -164 |      -164 |       108 |
|              Improvement %               |         4 |        37 |        57 |        68 |        72 |        74 |        74 |       108 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        20 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       128 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |       108 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       108 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        20 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       128 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       108 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       108 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        20 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       128 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       108 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       108 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        23 |        23 |        23 |        23 |        23 |        23 |        23 |        20 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       128 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       108 |
|              Improvement %               |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       108 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1239 |      1239 |      1239 |      1240 |      1240 |      1241 |      1241 |        20 |
|                  jbird                   |       193 |       193 |       193 |       193 |       193 |       194 |       195 |       128 |
|                    Δ                     |     -1046 |     -1046 |     -1046 |     -1047 |     -1047 |     -1047 |     -1046 |       108 |
|              Improvement %               |        84 |        84 |        84 |        84 |        84 |        84 |        84 |       108 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |        20 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       128 |
|                    Δ                     |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       108 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       108 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       621 |       680 |       693 |       707 |       726 |       760 |       801 |      1433 |
|                  jbird                   |        88 |        92 |        98 |       101 |       103 |       114 |       138 |      9940 |
|                    Δ                     |      -533 |      -588 |      -595 |      -606 |      -623 |      -646 |      -663 |      8507 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        83 |      8507 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       623 |       681 |       694 |       708 |       726 |       762 |       803 |      1433 |
|                  jbird                   |        89 |        93 |        99 |       103 |       105 |       116 |       140 |      9940 |
|                    Δ                     |      -534 |      -588 |      -595 |      -605 |      -621 |      -646 |      -663 |      8507 |
|              Improvement %               |        86 |        86 |        86 |        85 |        86 |        85 |        83 |      8507 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1610 |      1471 |      1444 |      1415 |      1379 |      1316 |      1248 |      1433 |
|                  jbird                   |     11374 |     10911 |     10223 |      9911 |      9703 |      8783 |      7246 |      9940 |
|                    Δ                     |      9764 |      9440 |      8779 |      8496 |      8324 |      7467 |      5998 |      8507 |
|              Improvement %               |       606 |       642 |       608 |       600 |       604 |       567 |       481 |      8507 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        71 |       113 |       156 |       179 |       196 |       196 |      1433 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9940 |
|                    Δ                     |         0 |       -40 |       -82 |      -125 |      -148 |      -165 |      -165 |      8507 |
|              Improvement %               |         0 |        56 |        73 |        80 |        83 |        84 |        84 |      8507 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      1433 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9940 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      8507 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8507 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       981 |       981 |       981 |       981 |       981 |       981 |       983 |      1433 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9940 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -983 |      8507 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8507 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1433 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9940 |
|                    Δ                     |      -716 |      -716 |      -716 |      -716 |      -716 |      -716 |      -718 |      8507 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      8507 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       298 |       298 |       298 |       298 |       298 |       298 |       302 |      1433 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9940 |
|                    Δ                     |        46 |        46 |        46 |        46 |        46 |        46 |        42 |      8507 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      8507 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1433 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      9940 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -15 |       -15 |      8507 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        88 |      8507 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       403 |       403 |       403 |       403 |       403 |       403 |       403 |      1433 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9940 |
|                    Δ                     |       265 |       265 |       265 |       265 |       265 |       265 |       265 |      8507 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      8507 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       612 |       677 |       688 |       701 |       714 |       739 |       786 |      1446 |
|                  jbird                   |        90 |        94 |       100 |       103 |       106 |       117 |       168 |      9728 |
|                    Δ                     |      -522 |      -583 |      -588 |      -598 |      -608 |      -622 |      -618 |      8282 |
|              Improvement %               |        85 |        86 |        85 |        85 |        85 |        84 |        79 |      8282 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       614 |       679 |       690 |       703 |       716 |       741 |       790 |      1446 |
|                  jbird                   |        92 |        95 |       101 |       104 |       107 |       119 |       161 |      9728 |
|                    Δ                     |      -522 |      -584 |      -589 |      -599 |      -609 |      -622 |      -629 |      8282 |
|              Improvement %               |        85 |        86 |        85 |        85 |        85 |        84 |        80 |      8282 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1633 |      1477 |      1453 |      1426 |      1401 |      1354 |      1272 |      1446 |
|                  jbird                   |     11085 |     10663 |     10039 |      9735 |      9463 |      8567 |      5945 |      9728 |
|                    Δ                     |      9452 |      9186 |      8586 |      8309 |      8062 |      7213 |      4673 |      8282 |
|              Improvement %               |       579 |       622 |       591 |       583 |       575 |       533 |       367 |      8282 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        72 |       115 |       155 |       181 |       196 |       198 |      1446 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9728 |
|                    Δ                     |         0 |       -41 |       -84 |      -124 |      -150 |      -165 |      -167 |      8282 |
|              Improvement %               |         0 |        57 |        73 |        80 |        83 |        84 |        84 |      8282 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      1446 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9728 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      8282 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8282 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       981 |       981 |       981 |       981 |       981 |       981 |       983 |      1446 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9728 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -983 |      8282 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8282 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1446 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9728 |
|                    Δ                     |      -716 |      -716 |      -716 |      -716 |      -716 |      -716 |      -718 |      8282 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      8282 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       298 |       298 |       298 |       298 |       298 |       298 |       302 |      1446 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9728 |
|                    Δ                     |        46 |        46 |        46 |        46 |        46 |        46 |        42 |      8282 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      8282 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1446 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         3 |      9728 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -15 |       -14 |      8282 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        82 |      8282 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       403 |       403 |       403 |       403 |       403 |       403 |       403 |      1446 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9728 |
|                    Δ                     |       265 |       265 |       265 |       265 |       265 |       265 |       265 |      8282 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      8282 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2835 |      3045 |      3103 |      3217 |      3254 |      3443 |      3647 |       320 |
|                  jbird                   |       110 |       121 |       124 |       131 |       136 |       147 |       189 |      7741 |
|                    Δ                     |     -2725 |     -2924 |     -2979 |     -3086 |     -3118 |     -3296 |     -3458 |      7421 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |        95 |      7421 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2844 |      3043 |      3101 |      3219 |      3256 |      3443 |      3646 |       320 |
|                  jbird                   |       112 |       122 |       126 |       133 |       138 |       149 |       192 |      7741 |
|                    Δ                     |     -2732 |     -2921 |     -2975 |     -3086 |     -3118 |     -3294 |     -3454 |      7421 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |        95 |      7421 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       353 |       328 |       322 |       311 |       307 |       291 |       274 |       320 |
|                  jbird                   |      9053 |      8303 |      8067 |      7611 |      7355 |      6815 |      5285 |      7741 |
|                    Δ                     |      8700 |      7975 |      7745 |      7300 |      7048 |      6524 |      5011 |      7421 |
|              Improvement %               |      2465 |      2431 |      2405 |      2347 |      2296 |      2242 |      1829 |      7421 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        37 |        44 |        51 |        55 |        57 |        57 |       320 |
|                  jbird                   |        30 |        31 |        32 |        32 |        32 |        32 |        32 |      7741 |
|                    Δ                     |         0 |        -6 |       -12 |       -19 |       -23 |       -25 |       -25 |      7421 |
|              Improvement %               |         0 |        16 |        27 |        37 |        42 |        44 |        44 |      7421 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        80 |        80 |        80 |        80 |        80 |        80 |        84 |       320 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7741 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -84 |      7421 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7421 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         2 |         2 |         2 |         2 |         2 |         2 |         4 |       320 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7741 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -4 |      7421 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7421 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        17 |        17 |        17 |        17 |        17 |        17 |        19 |       320 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7741 |
|                    Δ                     |        11 |        11 |        11 |        11 |        11 |        11 |         9 |      7421 |
|              Improvement %               |       -65 |       -65 |       -65 |       -65 |       -65 |       -65 |       -47 |      7421 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       990 |       990 |       990 |       990 |       990 |       990 |       994 |       320 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      7741 |
|                    Δ                     |       168 |       168 |       168 |       168 |       168 |       168 |       164 |      7421 |
|              Improvement %               |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |      7421 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        78 |        78 |        78 |        78 |        78 |        83 |        83 |       320 |
|                  jbird                   |         4 |         4 |         4 |         4 |         4 |         4 |         4 |      7741 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -79 |       -79 |      7421 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        95 |      7421 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       320 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7741 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      7421 |
|              Improvement %               |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |      7421 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        66 |        67 |        67 |        67 |        72 |        76 |        76 |        15 |
|                  jbird                   |         5 |         5 |         5 |         6 |         6 |         6 |         6 |       183 |
|                    Δ                     |       -61 |       -62 |       -62 |       -61 |       -66 |       -70 |       -70 |       168 |
|              Improvement %               |        92 |        93 |        93 |        91 |        92 |        92 |        92 |       168 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        66 |        67 |        67 |        67 |        72 |        76 |        76 |        15 |
|                  jbird                   |         5 |         5 |         5 |         6 |         6 |         6 |         6 |       183 |
|                    Δ                     |       -61 |       -62 |       -62 |       -61 |       -66 |       -70 |       -70 |       168 |
|              Improvement %               |        92 |        93 |        93 |        91 |        92 |        92 |        92 |       168 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        14 |        13 |        13 |        15 |
|                  jbird                   |       196 |       185 |       183 |       181 |       179 |       176 |       165 |       183 |
|                    Δ                     |       181 |       170 |       168 |       166 |       165 |       163 |       152 |       168 |
|              Improvement %               |      1207 |      1133 |      1120 |      1107 |      1179 |      1254 |      1169 |       168 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        56 |        82 |       116 |       151 |       168 |       176 |       176 |        15 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       183 |
|                    Δ                     |        -8 |       -30 |       -64 |       -99 |      -116 |      -124 |      -124 |       168 |
|              Improvement %               |        14 |        37 |        55 |        66 |        69 |        70 |        70 |       168 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |        15 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       183 |
|                    Δ                     |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |       168 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       168 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        15 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       183 |
|                    Δ                     |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |       168 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       168 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       279 |       279 |       279 |       279 |       279 |       279 |       279 |        15 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       183 |
|                    Δ                     |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |       168 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       168 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        15 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       183 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |       168 |
|              Improvement %               |        10 |        10 |        10 |        10 |        10 |        10 |        10 |       168 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1701 |      1702 |      1702 |      1702 |      1702 |      1702 |      1702 |        15 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       155 |       156 |       183 |
|                    Δ                     |     -1547 |     -1548 |     -1548 |     -1548 |     -1548 |     -1547 |     -1546 |       168 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        91 |       168 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       112 |       112 |       112 |       112 |       112 |       112 |       112 |        15 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       183 |
|                    Δ                     |       -56 |       -56 |       -56 |       -56 |       -56 |       -56 |       -56 |       168 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       168 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       144 |       151 |       158 |       165 |       170 |       184 |       207 |      6167 |
|                  jbird                   |        50 |        51 |        52 |        57 |        58 |        68 |        85 |     17580 |
|                    Δ                     |       -94 |      -100 |      -106 |      -108 |      -112 |      -116 |      -122 |     11413 |
|              Improvement %               |        65 |        66 |        67 |        65 |        66 |        63 |        59 |     11413 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       146 |       152 |       159 |       167 |       171 |       184 |       209 |      6167 |
|                  jbird                   |        51 |        53 |        53 |        58 |        59 |        70 |        87 |     17580 |
|                    Δ                     |       -95 |       -99 |      -106 |      -109 |      -112 |      -114 |      -122 |     11413 |
|              Improvement %               |        65 |        65 |        67 |        65 |        65 |        62 |        58 |     11413 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6928 |      6635 |      6343 |      6051 |      5903 |      5427 |      4837 |      6167 |
|                  jbird                   |     20000 |     19519 |     19295 |     17679 |     17343 |     14791 |     11805 |     17580 |
|                    Δ                     |     13072 |     12884 |     12952 |     11628 |     11440 |      9364 |      6968 |     11413 |
|              Improvement %               |       189 |       194 |       204 |       192 |       194 |       173 |       144 |     11413 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        41 |        53 |        64 |        71 |        75 |        75 |      6167 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     17580 |
|                    Δ                     |         0 |       -11 |       -23 |       -34 |       -41 |       -45 |       -45 |     11413 |
|              Improvement %               |         0 |        27 |        43 |        53 |        58 |        60 |        60 |     11413 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4864 |      4867 |      4867 |      4867 |      4867 |      4867 |      8960 |      6167 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     17580 |
|                    Δ                     |     -4864 |     -4867 |     -4867 |     -4867 |     -4867 |     -4867 |     -8960 |     11413 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11413 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       152 |       152 |       152 |       152 |       152 |       152 |       155 |      6167 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     17580 |
|                    Δ                     |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -155 |     11413 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11413 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      6167 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     17580 |
|                    Δ                     |      -302 |      -302 |      -302 |      -302 |      -302 |      -302 |      -305 |     11413 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |     11413 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        64 |        64 |        64 |        64 |        64 |        64 |        68 |      6167 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     17580 |
|                    Δ                     |        27 |        27 |        27 |        27 |        27 |        27 |        23 |     11413 |
|              Improvement %               |       -42 |       -42 |       -42 |       -42 |       -42 |       -42 |       -34 |     11413 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2995 |      2996 |      2996 |      3004 |      3004 |      3123 |      3177 |      6167 |
|                  jbird                   |      1349 |      1350 |      1351 |      1351 |      1351 |      1368 |      1412 |     17580 |
|                    Δ                     |     -1646 |     -1646 |     -1645 |     -1653 |     -1653 |     -1755 |     -1765 |     11413 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        56 |        56 |     11413 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       304 |       304 |       304 |       304 |       304 |       304 |       304 |      6167 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     17580 |
|                    Δ                     |      -150 |      -150 |      -150 |      -150 |      -150 |      -150 |      -150 |     11413 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        49 |        49 |     11413 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1684 |      1843 |      1893 |      1917 |      2078 |      2259 |      2315 |       524 |
|                  jbird                   |        95 |        99 |       103 |       109 |       112 |       126 |       189 |      9277 |
|                    Δ                     |     -1589 |     -1744 |     -1790 |     -1808 |     -1966 |     -2133 |     -2126 |      8753 |
|              Improvement %               |        94 |        95 |        95 |        94 |        95 |        94 |        92 |      8753 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1686 |      1845 |      1895 |      1919 |      2080 |      2261 |      2317 |       524 |
|                  jbird                   |        97 |       100 |       105 |       110 |       114 |       126 |       176 |      9277 |
|                    Δ                     |     -1589 |     -1745 |     -1790 |     -1809 |     -1966 |     -2135 |     -2141 |      8753 |
|              Improvement %               |        94 |        95 |        94 |        94 |        95 |        94 |        92 |      8753 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       594 |       543 |       528 |       522 |       481 |       443 |       432 |       524 |
|                  jbird                   |     10494 |     10119 |      9711 |      9191 |      8927 |      7939 |      5298 |      9277 |
|                    Δ                     |      9900 |      9576 |      9183 |      8669 |      8446 |      7496 |      4866 |      8753 |
|              Improvement %               |      1667 |      1764 |      1739 |      1661 |      1756 |      1692 |      1126 |      8753 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        42 |        54 |        66 |        72 |        77 |        77 |       524 |
|                  jbird                   |        30 |        31 |        31 |        31 |        32 |        32 |        32 |      9277 |
|                    Δ                     |         0 |       -11 |       -23 |       -35 |       -40 |       -45 |       -45 |      8753 |
|              Improvement %               |         0 |        26 |        43 |        53 |        56 |        58 |        58 |      8753 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        71 |        71 |        71 |        71 |        71 |        71 |        75 |       524 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9277 |
|                    Δ                     |       -71 |       -71 |       -71 |       -71 |       -71 |       -71 |       -75 |      8753 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8753 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       802 |       802 |       802 |       802 |       802 |       802 |       804 |       524 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9277 |
|                    Δ                     |      -802 |      -802 |      -802 |      -802 |      -802 |      -802 |      -804 |      8753 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8753 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       524 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9277 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      8753 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      8753 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       575 |       575 |       575 |       575 |       575 |       575 |       579 |       524 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9277 |
|                    Δ                     |        86 |        86 |        86 |        86 |        86 |        86 |        82 |      8753 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      8753 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        47 |        47 |        47 |        47 |        50 |        50 |       524 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      9277 |
|                    Δ                     |       -44 |       -44 |       -44 |       -44 |       -44 |       -47 |       -47 |      8753 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        94 |      8753 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |       524 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9277 |
|                    Δ                     |         4 |         4 |         4 |         4 |         4 |         4 |         4 |      8753 |
|              Improvement %               |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |      8753 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1134 |      1237 |      1247 |      1258 |      1269 |      1365 |      1434 |       798 |
|                  jbird                   |        60 |        65 |        68 |        72 |        76 |        85 |       122 |     13924 |
|                    Δ                     |     -1074 |     -1172 |     -1179 |     -1186 |     -1193 |     -1280 |     -1312 |     13126 |
|              Improvement %               |        95 |        95 |        95 |        94 |        94 |        94 |        91 |     13126 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1135 |      1239 |      1249 |      1261 |      1272 |      1368 |      1430 |       798 |
|                  jbird                   |        61 |        66 |        69 |        73 |        78 |        87 |       125 |     13924 |
|                    Δ                     |     -1074 |     -1173 |     -1180 |     -1188 |     -1194 |     -1281 |     -1305 |     13126 |
|              Improvement %               |        95 |        95 |        94 |        94 |        94 |        94 |        91 |     13126 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       882 |       809 |       802 |       795 |       788 |       733 |       697 |       798 |
|                  jbird                   |     16771 |     15487 |     14735 |     13903 |     13103 |     11735 |      8225 |     13924 |
|                    Δ                     |     15889 |     14678 |     13933 |     13108 |     12315 |     11002 |      7528 |     13126 |
|              Improvement %               |      1801 |      1814 |      1737 |      1649 |      1563 |      1501 |      1080 |     13126 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        55 |        81 |       106 |       122 |       130 |       132 |       798 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     13924 |
|                    Δ                     |         0 |       -24 |       -50 |       -75 |       -91 |       -99 |      -101 |     13126 |
|              Improvement %               |         0 |        44 |        62 |        71 |        75 |        76 |        77 |     13126 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        89 |        89 |        89 |        89 |        89 |        89 |        93 |       798 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13924 |
|                    Δ                     |       -89 |       -89 |       -89 |       -89 |       -89 |       -89 |       -93 |     13126 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13126 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2088 |      2089 |      2089 |      2089 |      2089 |      2089 |      2090 |       798 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13924 |
|                    Δ                     |     -2088 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     -2090 |     13126 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13126 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2681 |      2681 |      2681 |      2681 |      2681 |      2681 |      2683 |       798 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13924 |
|                    Δ                     |     -2671 |     -2671 |     -2671 |     -2671 |     -2671 |     -2671 |     -2673 |     13126 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     13126 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       368 |       368 |       368 |       368 |       368 |       368 |       372 |       798 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     13924 |
|                    Δ                     |       -39 |       -39 |       -39 |       -39 |       -39 |       -39 |       -43 |     13126 |
|              Improvement %               |        11 |        11 |        11 |        11 |        11 |        11 |        12 |     13126 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        30 |        30 |        30 |        30 |        32 |        32 |       798 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     13924 |
|                    Δ                     |       -28 |       -28 |       -28 |       -28 |       -28 |       -30 |       -30 |     13126 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |     13126 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       593 |       593 |       593 |       593 |       593 |       593 |       593 |       798 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13924 |
|                    Δ                     |      -583 |      -583 |      -583 |      -583 |      -583 |      -583 |      -583 |     13126 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |     13126 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        92 |       101 |       106 |       109 |       112 |       122 |       206 |      9191 |
|                  jbird                   |        23 |        24 |        26 |        27 |        29 |        35 |        56 |     33749 |
|                    Δ                     |       -69 |       -77 |       -80 |       -82 |       -83 |       -87 |      -150 |     24558 |
|              Improvement %               |        75 |        76 |        75 |        75 |        74 |        71 |        73 |     24558 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |       102 |       108 |       110 |       114 |       124 |       168 |      9191 |
|                  jbird                   |        25 |        26 |        28 |        28 |        31 |        37 |        53 |     33749 |
|                    Δ                     |       -69 |       -76 |       -80 |       -82 |       -83 |       -87 |      -115 |     24558 |
|              Improvement %               |        73 |        75 |        74 |        75 |        73 |        70 |        68 |     24558 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10816 |      9951 |      9447 |      9199 |      8903 |      8215 |      4866 |      9191 |
|                  jbird                   |     42629 |     41535 |     37823 |     37407 |     34111 |     28511 |     17857 |     33749 |
|                    Δ                     |     31813 |     31584 |     28376 |     28208 |     25208 |     20296 |     12991 |     24558 |
|              Improvement %               |       294 |       317 |       300 |       307 |       283 |       247 |       267 |     24558 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |       177 |       326 |       472 |       562 |       615 |       624 |      9191 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     33749 |
|                    Δ                     |         0 |      -147 |      -296 |      -442 |      -532 |      -585 |      -594 |     24558 |
|              Improvement %               |         0 |        83 |        91 |        94 |        95 |        95 |        95 |     24558 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        58 |        58 |        58 |        58 |        58 |        58 |        62 |      9191 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     33749 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -62 |     24558 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24558 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        80 |        80 |        80 |        80 |        80 |        80 |        83 |      9191 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     33749 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -83 |     24558 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24558 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      9191 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     33749 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |     24558 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |     24558 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        73 |        73 |        73 |        73 |        73 |        73 |        77 |      9191 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     33749 |
|                    Δ                     |        53 |        53 |        53 |        53 |        53 |        53 |        49 |     24558 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -64 |     24558 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2516 |      2533 |      2542 |      2548 |      2556 |      2593 |      2625 |      9191 |
|                  jbird                   |       826 |       826 |       826 |       826 |       826 |       831 |       889 |     33749 |
|                    Δ                     |     -1690 |     -1707 |     -1716 |     -1722 |     -1730 |     -1762 |     -1736 |     24558 |
|              Improvement %               |        67 |        67 |        68 |        68 |        68 |        68 |        66 |     24558 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      9191 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     33749 |
|                    Δ                     |        69 |        69 |        69 |        69 |        69 |        69 |        69 |     24558 |
|              Improvement %               |      -862 |      -862 |      -862 |      -862 |      -862 |      -862 |      -862 |     24558 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9031 |      9232 |      9306 |      9560 |      9601 |      9929 |     10122 |       107 |
|                  jbird                   |      1024 |      1085 |      1101 |      1116 |      1133 |      1180 |      1282 |       906 |
|                    Δ                     |     -8007 |     -8147 |     -8205 |     -8444 |     -8468 |     -8749 |     -8840 |       799 |
|              Improvement %               |        89 |        88 |        88 |        88 |        88 |        88 |        87 |       799 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9024 |      9224 |      9306 |      9560 |      9609 |      9929 |     10131 |       107 |
|                  jbird                   |      1026 |      1087 |      1103 |      1117 |      1134 |      1181 |      1277 |       906 |
|                    Δ                     |     -7998 |     -8137 |     -8203 |     -8443 |     -8475 |     -8748 |     -8854 |       799 |
|              Improvement %               |        89 |        88 |        88 |        88 |        88 |        88 |        87 |       799 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       111 |       108 |       108 |       105 |       104 |       101 |        99 |       107 |
|                  jbird                   |       976 |       921 |       909 |       896 |       884 |       848 |       780 |       906 |
|                    Δ                     |       865 |       813 |       801 |       791 |       780 |       747 |       681 |       799 |
|              Improvement %               |       779 |       753 |       742 |       753 |       750 |       740 |       688 |       799 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        55 |        78 |       100 |       114 |       121 |       121 |       107 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       906 |
|                    Δ                     |         0 |       -20 |       -43 |       -65 |       -79 |       -86 |       -86 |       799 |
|              Improvement %               |         0 |        36 |        55 |        65 |        69 |        71 |        71 |       799 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       669 |       669 |       669 |       669 |       669 |       669 |       669 |       107 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       906 |
|                    Δ                     |      -669 |      -669 |      -669 |      -669 |      -669 |      -669 |      -669 |       799 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       799 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6133 |      6134 |      6134 |      6134 |      6134 |      6134 |      6134 |       107 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       906 |
|                    Δ                     |     -6133 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |       799 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       799 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9774 |      9775 |      9775 |      9775 |      9775 |      9775 |      9775 |       107 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       906 |
|                    Δ                     |     -5723 |     -5724 |     -5724 |     -5724 |     -5724 |     -5724 |     -5724 |       799 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        59 |       799 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3160 |      3160 |      3160 |      3160 |      3160 |      3160 |      3160 |       107 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       906 |
|                    Δ                     |       751 |       751 |       751 |       751 |       751 |       751 |       751 |       799 |
|              Improvement %               |       -24 |       -24 |       -24 |       -24 |       -24 |       -24 |       -24 |       799 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       198 |       198 |       198 |       198 |       198 |       207 |       207 |       107 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        26 |       906 |
|                    Δ                     |      -173 |      -173 |      -173 |      -173 |      -173 |      -182 |      -181 |       799 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        87 |       799 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3641 |      3641 |      3641 |      3641 |      3641 |      3641 |      3641 |       107 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       906 |
|                    Δ                     |       410 |       410 |       410 |       410 |       410 |       410 |       410 |       799 |
|              Improvement %               |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       799 |

<p>
</details>

