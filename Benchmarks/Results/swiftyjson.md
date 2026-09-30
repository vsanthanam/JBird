
## Comparing results between 'swiftyjson' and 'jbird'

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
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        13 |        13 |        98 |
|                  jbird                   |         1 |         1 |         1 |         2 |         2 |         2 |         2 |       671 |
|                    Δ                     |        -9 |        -9 |        -9 |        -8 |        -8 |       -11 |       -11 |       573 |
|              Improvement %               |        90 |        90 |        90 |        80 |        80 |        85 |        85 |       573 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        13 |        13 |        98 |
|                  jbird                   |         1 |         1 |         1 |         2 |         2 |         2 |         2 |       671 |
|                    Δ                     |        -9 |        -9 |        -9 |        -8 |        -8 |       -11 |       -11 |       573 |
|              Improvement %               |        90 |        90 |        90 |        80 |        80 |        85 |        85 |       573 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       102 |        99 |        98 |        97 |        96 |        78 |        78 |        98 |
|                  jbird                   |       772 |       690 |       684 |       666 |       645 |       582 |       561 |       671 |
|                    Δ                     |       670 |       591 |       586 |       569 |       549 |       504 |       483 |       573 |
|              Improvement %               |       657 |       597 |       598 |       587 |       572 |       646 |       619 |       573 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        34 |        78 |       120 |       163 |       188 |       205 |       205 |        98 |
|                  jbird                   |        34 |        39 |        39 |        39 |        39 |        39 |        39 |       671 |
|                    Δ                     |         0 |       -39 |       -81 |      -124 |      -149 |      -166 |      -166 |       573 |
|              Improvement %               |         0 |        50 |        68 |        76 |        79 |        81 |        81 |       573 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |        98 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       671 |
|                    Δ                     |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |       573 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       573 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |        98 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       671 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       573 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       573 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        98 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       671 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       573 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       573 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4563 |      4564 |      4564 |      4564 |      4564 |      4564 |      4564 |        98 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       671 |
|                    Δ                     |       669 |       668 |       668 |       668 |       668 |       668 |       668 |       573 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       573 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       247 |       247 |       247 |       247 |       248 |       252 |       252 |        98 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       671 |
|                    Δ                     |      -215 |      -215 |      -215 |      -215 |      -216 |      -220 |      -219 |       573 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |       573 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |        98 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       671 |
|                    Δ                     |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |       573 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       573 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        11 |        11 |        11 |        11 |        11 |        96 |
|                  jbird                   |         1 |         2 |         2 |         2 |         2 |         2 |         2 |       646 |
|                    Δ                     |        -9 |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |       550 |
|              Improvement %               |        90 |        80 |        82 |        82 |        82 |        82 |        82 |       550 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        11 |        11 |        11 |        11 |        11 |        96 |
|                  jbird                   |         1 |         2 |         2 |         2 |         2 |         2 |         2 |       646 |
|                    Δ                     |        -9 |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |       550 |
|              Improvement %               |        90 |        80 |        82 |        82 |        82 |        82 |        82 |       550 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       100 |        96 |        95 |        95 |        94 |        91 |        91 |        96 |
|                  jbird                   |       719 |       654 |       651 |       646 |       640 |       625 |       598 |       646 |
|                    Δ                     |       619 |       558 |       556 |       551 |       546 |       534 |       507 |       550 |
|              Improvement %               |       619 |       581 |       585 |       580 |       581 |       587 |       557 |       550 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        33 |        74 |       117 |       158 |       185 |       199 |       199 |        96 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       646 |
|                    Δ                     |         1 |       -38 |       -81 |      -122 |      -149 |      -163 |      -163 |       550 |
|              Improvement %               |        -3 |        51 |        69 |        77 |        81 |        82 |        82 |       550 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |        96 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       646 |
|                    Δ                     |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |       550 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       550 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |        96 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       646 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       550 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       550 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        96 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       646 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       550 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       550 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4563 |      4564 |      4564 |      4564 |      4564 |      4564 |      4564 |        96 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       646 |
|                    Δ                     |       669 |       668 |       668 |       668 |       668 |       668 |       668 |       550 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       550 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       246 |       246 |       247 |       247 |       247 |       249 |       249 |        96 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       646 |
|                    Δ                     |      -213 |      -213 |      -214 |      -214 |      -214 |      -216 |      -215 |       550 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        86 |       550 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |        96 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       646 |
|                    Δ                     |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |       550 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       550 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2320 |      2548 |      2589 |      2609 |      2632 |      2689 |     13542 |       382 |
|                  jbird                   |       329 |       367 |       372 |       377 |       385 |       412 |       797 |      2623 |
|                    Δ                     |     -1991 |     -2181 |     -2217 |     -2232 |     -2247 |     -2277 |    -12745 |      2241 |
|              Improvement %               |        86 |        86 |        86 |        86 |        85 |        85 |        94 |      2241 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2333 |      2556 |      2593 |      2613 |      2638 |      2699 |      2950 |       382 |
|                  jbird                   |       333 |       371 |       376 |       382 |       389 |       418 |       540 |      2623 |
|                    Δ                     |     -2000 |     -2185 |     -2217 |     -2231 |     -2249 |     -2281 |     -2410 |      2241 |
|              Improvement %               |        86 |        85 |        85 |        85 |        85 |        85 |        82 |      2241 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       431 |       393 |       386 |       383 |       380 |       372 |        74 |       382 |
|                  jbird                   |      3036 |      2725 |      2689 |      2651 |      2603 |      2427 |      1254 |      2623 |
|                    Δ                     |      2605 |      2332 |      2303 |      2268 |      2223 |      2055 |      1180 |      2241 |
|              Improvement %               |       604 |       593 |       597 |       592 |       585 |       552 |      1595 |      2241 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        73 |       114 |       158 |       183 |       198 |       198 |       382 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2623 |
|                    Δ                     |         0 |       -41 |       -82 |      -126 |      -151 |      -166 |      -166 |      2241 |
|              Improvement %               |         0 |        56 |        72 |        80 |        83 |        84 |        84 |      2241 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |       382 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2623 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      2241 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2241 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3748 |       382 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2623 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3748 |      2241 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2241 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       382 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2623 |
|                    Δ                     |     -2699 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |      2241 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      2241 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1152 |      1153 |      1153 |      1153 |      1153 |      1153 |      1156 |       382 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2623 |
|                    Δ                     |       222 |       221 |       221 |       221 |       221 |       221 |       218 |      2241 |
|              Improvement %               |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |      2241 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        61 |        61 |        61 |        61 |        61 |        61 |        62 |       382 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2623 |
|                    Δ                     |       -53 |       -53 |       -53 |       -53 |       -53 |       -53 |       -54 |      2241 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |      2241 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |       382 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2623 |
|                    Δ                     |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      2241 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      2241 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2501 |      2722 |      2742 |      2765 |      2810 |      2925 |      3327 |       363 |
|                  jbird                   |       344 |       384 |       389 |       395 |       402 |       426 |       460 |      2514 |
|                    Δ                     |     -2157 |     -2338 |     -2353 |     -2370 |     -2408 |     -2499 |     -2867 |      2151 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        86 |      2151 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2505 |      2726 |      2748 |      2769 |      2814 |      2929 |      3340 |       363 |
|                  jbird                   |       348 |       388 |       392 |       399 |       407 |       430 |       465 |      2514 |
|                    Δ                     |     -2157 |     -2338 |     -2356 |     -2370 |     -2407 |     -2499 |     -2875 |      2151 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        86 |      2151 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       400 |       368 |       365 |       362 |       356 |       342 |       301 |       363 |
|                  jbird                   |      2903 |      2607 |      2573 |      2533 |      2487 |      2349 |      2172 |      2514 |
|                    Δ                     |      2503 |      2239 |      2208 |      2171 |      2131 |      2007 |      1871 |      2151 |
|              Improvement %               |       626 |       608 |       605 |       600 |       599 |       587 |       622 |      2151 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        71 |       110 |       152 |       175 |       189 |       191 |       363 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2514 |
|                    Δ                     |         0 |       -39 |       -78 |      -120 |      -143 |      -157 |      -159 |      2151 |
|              Improvement %               |         0 |        55 |        71 |        79 |        82 |        83 |        83 |      2151 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |       363 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2514 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      2151 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2151 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3748 |       363 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2514 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3748 |      2151 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2151 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       363 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2514 |
|                    Δ                     |     -2699 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |      2151 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      2151 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1152 |      1153 |      1153 |      1153 |      1153 |      1153 |      1156 |       363 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2514 |
|                    Δ                     |       222 |       221 |       221 |       221 |       221 |       221 |       218 |      2151 |
|              Improvement %               |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |      2151 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        64 |        64 |        64 |        64 |        64 |        67 |        67 |       363 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      2514 |
|                    Δ                     |       -56 |       -56 |       -56 |       -56 |       -56 |       -59 |       -58 |      2151 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        87 |      2151 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |       363 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2514 |
|                    Δ                     |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      2151 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      2151 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4929 |      5140 |      5206 |      5247 |      5280 |      5550 |      5557 |       192 |
|                  jbird                   |       653 |       722 |       729 |       737 |       759 |       825 |       896 |      1350 |
|                    Δ                     |     -4276 |     -4418 |     -4477 |     -4510 |     -4521 |     -4725 |     -4661 |      1158 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        85 |        84 |      1158 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4924 |      5145 |      5214 |      5251 |      5284 |      5562 |      5562 |       192 |
|                  jbird                   |       657 |       726 |       733 |       741 |       763 |       829 |       901 |      1350 |
|                    Δ                     |     -4267 |     -4419 |     -4481 |     -4510 |     -4521 |     -4733 |     -4661 |      1158 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        85 |        84 |      1158 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       203 |       195 |       192 |       191 |       189 |       180 |       180 |       192 |
|                  jbird                   |      1530 |      1386 |      1373 |      1357 |      1317 |      1212 |      1116 |      1350 |
|                    Δ                     |      1327 |      1191 |      1181 |      1166 |      1128 |      1032 |       936 |      1158 |
|              Improvement %               |       654 |       611 |       615 |       610 |       597 |       573 |       520 |      1158 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        73 |       115 |       158 |       182 |       199 |       199 |       192 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1350 |
|                    Δ                     |        -1 |       -40 |       -82 |      -125 |      -149 |      -166 |      -166 |      1158 |
|              Improvement %               |         3 |        55 |        71 |        79 |        82 |        83 |        83 |      1158 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       703 |       703 |       703 |       703 |       703 |       703 |       703 |       192 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1350 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      1158 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1158 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7432 |       192 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1350 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7432 |      1158 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1158 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       192 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      1350 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      1158 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |      1158 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |       192 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1350 |
|                    Δ                     |       459 |       459 |       459 |       459 |       459 |       459 |       459 |      1158 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |      1158 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       122 |       122 |       122 |       122 |       122 |       129 |       129 |       192 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1350 |
|                    Δ                     |      -106 |      -106 |      -106 |      -106 |      -106 |      -113 |      -112 |      1158 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        87 |      1158 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |       192 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1350 |
|                    Δ                     |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      1158 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      1158 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4996 |      5358 |      5407 |      5456 |      5542 |      5685 |      5697 |       185 |
|                  jbird                   |       689 |       759 |       765 |       777 |       796 |       825 |       926 |      1286 |
|                    Δ                     |     -4307 |     -4599 |     -4642 |     -4679 |     -4746 |     -4860 |     -4771 |      1101 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        84 |      1101 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5001 |      5362 |      5415 |      5460 |      5550 |      5702 |      5702 |       185 |
|                  jbird                   |       692 |       763 |       770 |       781 |       800 |       829 |       930 |      1286 |
|                    Δ                     |     -4309 |     -4599 |     -4645 |     -4679 |     -4750 |     -4873 |     -4772 |      1101 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        84 |      1101 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       200 |       187 |       185 |       183 |       181 |       176 |       176 |       185 |
|                  jbird                   |      1451 |      1317 |      1306 |      1288 |      1257 |      1212 |      1080 |      1286 |
|                    Δ                     |      1251 |      1130 |      1121 |      1105 |      1076 |      1036 |       904 |      1101 |
|              Improvement %               |       626 |       604 |       606 |       604 |       594 |       589 |       514 |      1101 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        72 |       113 |       153 |       178 |       192 |       194 |       185 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1286 |
|                    Δ                     |        -1 |       -39 |       -80 |      -120 |      -145 |      -159 |      -161 |      1101 |
|              Improvement %               |         3 |        54 |        71 |        78 |        81 |        83 |        83 |      1101 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       703 |       703 |       703 |       703 |       703 |       703 |       703 |       185 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1286 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      1101 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1101 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7432 |       185 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1286 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7432 |      1101 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1101 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       185 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      1286 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      1101 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |      1101 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |       185 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1286 |
|                    Δ                     |       459 |       459 |       459 |       459 |       459 |       459 |       459 |      1101 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |      1101 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       126 |       126 |       126 |       126 |       126 |       129 |       131 |       185 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1286 |
|                    Δ                     |      -110 |      -110 |      -110 |      -110 |      -110 |      -113 |      -114 |      1101 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        87 |      1101 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |       185 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1286 |
|                    Δ                     |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      1101 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      1101 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        51 |        52 |        52 |        52 |        53 |        53 |        53 |        20 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         8 |         8 |       138 |
|                    Δ                     |       -44 |       -45 |       -45 |       -45 |       -46 |       -45 |       -45 |       118 |
|              Improvement %               |        86 |        87 |        87 |        87 |        87 |        85 |        85 |       118 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        51 |        52 |        52 |        52 |        53 |        53 |        53 |        20 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         8 |         8 |       138 |
|                    Δ                     |       -44 |       -45 |       -45 |       -45 |       -46 |       -45 |       -45 |       118 |
|              Improvement %               |        86 |        87 |        87 |        87 |        87 |        85 |        85 |       118 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        20 |        19 |        19 |        19 |        19 |        19 |        19 |        20 |
|                  jbird                   |       147 |       140 |       138 |       137 |       134 |       128 |       127 |       138 |
|                    Δ                     |       127 |       121 |       119 |       118 |       115 |       109 |       108 |       118 |
|              Improvement %               |       635 |       637 |       626 |       621 |       605 |       574 |       568 |       118 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        57 |        92 |       135 |       179 |       204 |       222 |       222 |        20 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       138 |
|                    Δ                     |        -2 |       -34 |       -77 |      -121 |      -146 |      -164 |      -164 |       118 |
|              Improvement %               |         4 |        37 |        57 |        68 |        72 |        74 |        74 |       118 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        20 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |       118 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       118 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        20 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       118 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       118 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        20 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       138 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       118 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       118 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        23 |        23 |        23 |        23 |        23 |        23 |        23 |        20 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       138 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       118 |
|              Improvement %               |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       118 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1216 |      1216 |      1216 |      1217 |      1217 |      1218 |      1218 |        20 |
|                  jbird                   |       157 |       158 |       158 |       158 |       158 |       159 |       159 |       138 |
|                    Δ                     |     -1059 |     -1058 |     -1058 |     -1059 |     -1059 |     -1059 |     -1059 |       118 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |       118 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |        20 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       138 |
|                    Δ                     |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       118 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       118 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        52 |        53 |        53 |        53 |        54 |        55 |        55 |        19 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         9 |       129 |
|                    Δ                     |       -45 |       -45 |       -45 |       -45 |       -46 |       -47 |       -46 |       110 |
|              Improvement %               |        87 |        85 |        85 |        85 |        85 |        85 |        84 |       110 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        52 |        53 |        53 |        53 |        54 |        55 |        55 |        19 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         9 |       129 |
|                    Δ                     |       -45 |       -45 |       -45 |       -45 |       -46 |       -47 |       -46 |       110 |
|              Improvement %               |        87 |        85 |        85 |        85 |        85 |        85 |        84 |       110 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        19 |        19 |        19 |        19 |        19 |        18 |        18 |        19 |
|                  jbird                   |       138 |       131 |       130 |       128 |       125 |       122 |       115 |       129 |
|                    Δ                     |       119 |       112 |       111 |       109 |       106 |       104 |        97 |       110 |
|              Improvement %               |       626 |       589 |       584 |       574 |       558 |       578 |       539 |       110 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        57 |        92 |       135 |       179 |       204 |       213 |       213 |        19 |
|                  jbird                   |        55 |        76 |        76 |        76 |        76 |        76 |        76 |       129 |
|                    Δ                     |        -2 |       -16 |       -59 |      -103 |      -128 |      -137 |      -137 |       110 |
|              Improvement %               |         4 |        17 |        44 |        58 |        63 |        64 |        64 |       110 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       129 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |       110 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       110 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       129 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       110 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       110 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       129 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       110 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       110 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        23 |        23 |        23 |        23 |        23 |        23 |        23 |        19 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       129 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       110 |
|              Improvement %               |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       110 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1234 |      1234 |      1235 |      1235 |      1236 |      1236 |      1236 |        19 |
|                  jbird                   |       163 |       163 |       163 |       163 |       163 |       165 |       170 |       129 |
|                    Δ                     |     -1071 |     -1071 |     -1072 |     -1072 |     -1073 |     -1071 |     -1066 |       110 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        86 |       110 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       129 |
|                    Δ                     |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       110 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       110 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       590 |       646 |       654 |       663 |       671 |       706 |       765 |      1509 |
|                  jbird                   |        83 |        92 |        94 |        94 |        97 |       109 |       149 |      9938 |
|                    Δ                     |      -507 |      -554 |      -560 |      -569 |      -574 |      -597 |      -616 |      8429 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        81 |      8429 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       593 |       650 |       658 |       667 |       676 |       713 |       768 |      1509 |
|                  jbird                   |        86 |        96 |        97 |        98 |       101 |       113 |       143 |      9938 |
|                    Δ                     |      -507 |      -554 |      -561 |      -569 |      -575 |      -600 |      -625 |      8429 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        84 |        81 |      8429 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1696 |      1548 |      1529 |      1510 |      1490 |      1417 |      1307 |      1509 |
|                  jbird                   |     12091 |     10823 |     10703 |     10591 |     10303 |      9175 |      6698 |      9938 |
|                    Δ                     |     10395 |      9275 |      9174 |      9081 |      8813 |      7758 |      5391 |      8429 |
|              Improvement %               |       613 |       599 |       600 |       601 |       591 |       547 |       412 |      8429 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        73 |       117 |       162 |       188 |       203 |       205 |      1509 |
|                  jbird                   |        30 |        30 |        30 |        31 |        31 |        31 |        31 |      9938 |
|                    Δ                     |         0 |       -43 |       -87 |      -131 |      -157 |      -172 |      -174 |      8429 |
|              Improvement %               |         0 |        59 |        74 |        81 |        84 |        85 |        85 |      8429 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      1509 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9938 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      8429 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8429 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       981 |       981 |       981 |       981 |       981 |       981 |       983 |      1509 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9938 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -983 |      8429 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8429 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1509 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9938 |
|                    Δ                     |      -716 |      -716 |      -716 |      -716 |      -716 |      -716 |      -718 |      8429 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      8429 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       298 |       298 |       298 |       298 |       298 |       298 |       302 |      1509 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9938 |
|                    Δ                     |        46 |        46 |        46 |        46 |        46 |        46 |        42 |      8429 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      8429 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1509 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      9938 |
|                    Δ                     |       -13 |       -13 |       -13 |       -13 |       -13 |       -14 |       -14 |      8429 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        88 |      8429 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       403 |       403 |       403 |       403 |       403 |       403 |       403 |      1509 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9938 |
|                    Δ                     |       265 |       265 |       265 |       265 |       265 |       265 |       265 |      8429 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      8429 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       596 |       654 |       660 |       668 |       679 |       721 |       765 |      1494 |
|                  jbird                   |        87 |        97 |        99 |       102 |       106 |       116 |       189 |      9332 |
|                    Δ                     |      -509 |      -557 |      -561 |      -566 |      -573 |      -605 |      -576 |      7838 |
|              Improvement %               |        85 |        85 |        85 |        85 |        84 |        84 |        75 |      7838 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       600 |       657 |       664 |       672 |       684 |       725 |       777 |      1494 |
|                  jbird                   |        90 |       101 |       103 |       106 |       111 |       121 |       188 |      9332 |
|                    Δ                     |      -510 |      -556 |      -561 |      -566 |      -573 |      -604 |      -589 |      7838 |
|              Improvement %               |        85 |        85 |        84 |        84 |        84 |        83 |        76 |      7838 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1677 |      1530 |      1516 |      1498 |      1472 |      1387 |      1308 |      1494 |
|                  jbird                   |     11500 |     10311 |     10127 |      9847 |      9431 |      8591 |      5297 |      9332 |
|                    Δ                     |      9823 |      8781 |      8611 |      8349 |      7959 |      7204 |      3989 |      7838 |
|              Improvement %               |       586 |       574 |       568 |       557 |       541 |       519 |       305 |      7838 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        72 |       117 |       160 |       186 |       202 |       204 |      1494 |
|                  jbird                   |        30 |        30 |        31 |        31 |        31 |        31 |        31 |      9332 |
|                    Δ                     |         0 |       -42 |       -86 |      -129 |      -155 |      -171 |      -173 |      7838 |
|              Improvement %               |         0 |        58 |        74 |        81 |        83 |        85 |        85 |      7838 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      1494 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9332 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      7838 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7838 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       981 |       981 |       981 |       981 |       981 |       981 |       983 |      1494 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9332 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -983 |      7838 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7838 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1494 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9332 |
|                    Δ                     |      -716 |      -716 |      -716 |      -716 |      -716 |      -716 |      -718 |      7838 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      7838 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       298 |       298 |       298 |       298 |       298 |       298 |       302 |      1494 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9332 |
|                    Δ                     |        46 |        46 |        46 |        46 |        46 |        46 |        42 |      7838 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      7838 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1494 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      9332 |
|                    Δ                     |       -13 |       -13 |       -13 |       -13 |       -13 |       -14 |       -14 |      7838 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        88 |      7838 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       403 |       403 |       403 |       403 |       403 |       403 |       403 |      1494 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9332 |
|                    Δ                     |       265 |       265 |       265 |       265 |       265 |       265 |       265 |      7838 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      7838 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2784 |      2947 |      2986 |      3031 |      3172 |      3428 |      3469 |       332 |
|                  jbird                   |       101 |       113 |       117 |       123 |       128 |       138 |       182 |      7937 |
|                    Δ                     |     -2683 |     -2834 |     -2869 |     -2908 |     -3044 |     -3290 |     -3287 |      7605 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |        95 |      7605 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2794 |      2953 |      2990 |      3037 |      3176 |      3430 |      3474 |       332 |
|                  jbird                   |       104 |       117 |       121 |       127 |       132 |       143 |       187 |      7937 |
|                    Δ                     |     -2690 |     -2836 |     -2869 |     -2910 |     -3044 |     -3287 |     -3287 |      7605 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |        95 |      7605 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       359 |       339 |       335 |       330 |       315 |       292 |       288 |       332 |
|                  jbird                   |      9909 |      8839 |      8567 |      8115 |      7835 |      7263 |      5483 |      7937 |
|                    Δ                     |      9550 |      8500 |      8232 |      7785 |      7520 |      6971 |      5195 |      7605 |
|              Improvement %               |      2660 |      2507 |      2457 |      2359 |      2387 |      2387 |      1804 |      7605 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        39 |        46 |        52 |        56 |        59 |        59 |       332 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      7937 |
|                    Δ                     |         0 |        -8 |       -15 |       -21 |       -25 |       -28 |       -28 |      7605 |
|              Improvement %               |         0 |        21 |        33 |        40 |        45 |        47 |        47 |      7605 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        80 |        80 |        80 |        80 |        80 |        80 |        84 |       332 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7937 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -84 |      7605 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7605 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         2 |         2 |         2 |         2 |         2 |         2 |         4 |       332 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7937 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -4 |      7605 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7605 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        17 |        17 |        17 |        17 |        17 |        17 |        19 |       332 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7937 |
|                    Δ                     |        11 |        11 |        11 |        11 |        11 |        11 |         9 |      7605 |
|              Improvement %               |       -65 |       -65 |       -65 |       -65 |       -65 |       -65 |       -47 |      7605 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       990 |       990 |       990 |       990 |       990 |       990 |       994 |       332 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      7937 |
|                    Δ                     |       168 |       168 |       168 |       168 |       168 |       168 |       164 |      7605 |
|              Improvement %               |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |      7605 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        78 |        78 |        78 |        78 |        78 |        83 |        83 |       332 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         4 |      7937 |
|                    Δ                     |       -75 |       -75 |       -75 |       -75 |       -75 |       -80 |       -79 |      7605 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |        95 |      7605 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       332 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7937 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      7605 |
|              Improvement %               |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |      7605 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        64 |        65 |        66 |        67 |        68 |        68 |        68 |        16 |
|                  jbird                   |         6 |         6 |         6 |         6 |         6 |         7 |         7 |       163 |
|                    Δ                     |       -58 |       -59 |       -60 |       -61 |       -62 |       -61 |       -61 |       147 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        90 |        90 |       147 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        64 |        65 |        66 |        67 |        68 |        68 |        68 |        16 |
|                  jbird                   |         6 |         6 |         6 |         6 |         6 |         7 |         7 |       163 |
|                    Δ                     |       -58 |       -59 |       -60 |       -61 |       -62 |       -61 |       -61 |       147 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        90 |        90 |       147 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        16 |        15 |        15 |        15 |        15 |        15 |        15 |        16 |
|                  jbird                   |       172 |       168 |       164 |       159 |       157 |       146 |       145 |       163 |
|                    Δ                     |       156 |       153 |       149 |       144 |       142 |       131 |       130 |       147 |
|              Improvement %               |       975 |      1020 |       993 |       960 |       947 |       873 |       867 |       147 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        56 |        82 |       116 |       151 |       176 |       185 |       185 |        16 |
|                  jbird                   |        48 |        71 |        72 |        72 |        72 |        72 |        72 |       163 |
|                    Δ                     |        -8 |       -11 |       -44 |       -79 |      -104 |      -113 |      -113 |       147 |
|              Improvement %               |        14 |        13 |        38 |        52 |        59 |        61 |        61 |       147 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |        16 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       163 |
|                    Δ                     |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |       147 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       147 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        16 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       163 |
|                    Δ                     |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |       147 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       147 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       279 |       279 |       279 |       279 |       279 |       279 |       279 |        16 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       163 |
|                    Δ                     |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |       147 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       147 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        16 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       163 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |       147 |
|              Improvement %               |        10 |        10 |        10 |        10 |        10 |        10 |        10 |       147 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1705 |      1706 |      1706 |      1706 |      1707 |      1707 |      1707 |        16 |
|                  jbird                   |       159 |       159 |       159 |       159 |       159 |       161 |       164 |       163 |
|                    Δ                     |     -1546 |     -1547 |     -1547 |     -1547 |     -1548 |     -1546 |     -1543 |       147 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        90 |       147 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       112 |       112 |       112 |       112 |       112 |       112 |       112 |        16 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       163 |
|                    Δ                     |       -56 |       -56 |       -56 |       -56 |       -56 |       -56 |       -56 |       147 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       147 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       146 |       153 |       162 |       166 |       168 |       181 |       210 |      5985 |
|                  jbird                   |        29 |        33 |        33 |        34 |        36 |        42 |        64 |     24709 |
|                    Δ                     |      -117 |      -120 |      -129 |      -132 |      -132 |      -139 |      -146 |     18724 |
|              Improvement %               |        80 |        78 |        80 |        80 |        79 |        77 |        70 |     18724 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       149 |       157 |       166 |       169 |       172 |       185 |       211 |      5985 |
|                  jbird                   |        32 |        36 |        37 |        38 |        40 |        47 |        66 |     24709 |
|                    Δ                     |      -117 |      -121 |      -129 |      -131 |      -132 |      -138 |      -145 |     18724 |
|              Improvement %               |        79 |        77 |        78 |        78 |        77 |        75 |        69 |     18724 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6857 |      6539 |      6171 |      6035 |      5955 |      5519 |      4768 |      5985 |
|                  jbird                   |     34632 |     30543 |     30159 |     29631 |     28015 |     23983 |     15605 |     24709 |
|                    Δ                     |     27775 |     24004 |     23988 |     23596 |     22060 |     18464 |     10837 |     18724 |
|              Improvement %               |       405 |       367 |       389 |       391 |       370 |       335 |       227 |     18724 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        41 |        52 |        63 |        69 |        74 |        74 |      5985 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     24709 |
|                    Δ                     |         0 |       -11 |       -22 |       -33 |       -39 |       -44 |       -44 |     18724 |
|              Improvement %               |         0 |        27 |        42 |        52 |        57 |        59 |        59 |     18724 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4864 |      4867 |      4867 |      4867 |      4867 |      4867 |      8960 |      5985 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24709 |
|                    Δ                     |     -4864 |     -4867 |     -4867 |     -4867 |     -4867 |     -4867 |     -8960 |     18724 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     18724 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       152 |       152 |       152 |       152 |       152 |       152 |       155 |      5985 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24709 |
|                    Δ                     |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -155 |     18724 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     18724 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5985 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     24709 |
|                    Δ                     |      -302 |      -302 |      -302 |      -302 |      -302 |      -302 |      -305 |     18724 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |     18724 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        64 |        64 |        64 |        64 |        64 |        64 |        68 |      5985 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     24709 |
|                    Δ                     |        27 |        27 |        27 |        27 |        27 |        27 |        23 |     18724 |
|              Improvement %               |       -42 |       -42 |       -42 |       -42 |       -42 |       -42 |       -34 |     18724 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3034 |      3035 |      3035 |      3043 |      3043 |      3166 |      3217 |      5985 |
|                  jbird                   |       735 |       739 |       739 |       739 |       739 |       757 |       832 |     24709 |
|                    Δ                     |     -2299 |     -2296 |     -2296 |     -2304 |     -2304 |     -2409 |     -2385 |     18724 |
|              Improvement %               |        76 |        76 |        76 |        76 |        76 |        76 |        74 |     18724 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       304 |       304 |       304 |       304 |       304 |       304 |       304 |      5985 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     24709 |
|                    Δ                     |      -150 |      -150 |      -150 |      -150 |      -150 |      -150 |      -150 |     18724 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        49 |        49 |     18724 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1780 |      1926 |      1943 |      1961 |      1983 |      2089 |      2144 |       512 |
|                  jbird                   |        87 |        98 |        99 |       104 |       107 |       119 |       149 |      9223 |
|                    Δ                     |     -1693 |     -1828 |     -1844 |     -1857 |     -1876 |     -1970 |     -1995 |      8711 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        93 |      8711 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1784 |      1930 |      1947 |      1967 |      1991 |      2092 |      2155 |       512 |
|                  jbird                   |        91 |       102 |       103 |       108 |       111 |       123 |       153 |      9223 |
|                    Δ                     |     -1693 |     -1828 |     -1844 |     -1859 |     -1880 |     -1969 |     -2002 |      8711 |
|              Improvement %               |        95 |        95 |        95 |        95 |        94 |        94 |        93 |      8711 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       562 |       519 |       515 |       510 |       504 |       479 |       466 |       512 |
|                  jbird                   |     11456 |     10215 |     10095 |      9623 |      9375 |      8431 |      6725 |      9223 |
|                    Δ                     |     10894 |      9696 |      9580 |      9113 |      8871 |      7952 |      6259 |      8711 |
|              Improvement %               |      1938 |      1868 |      1860 |      1787 |      1760 |      1660 |      1343 |      8711 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        42 |        53 |        64 |        71 |        75 |        75 |       512 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9223 |
|                    Δ                     |         0 |       -11 |       -22 |       -33 |       -40 |       -44 |       -44 |      8711 |
|              Improvement %               |         0 |        26 |        42 |        52 |        56 |        59 |        59 |      8711 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        71 |        71 |        71 |        71 |        71 |        71 |        75 |       512 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9223 |
|                    Δ                     |       -71 |       -71 |       -71 |       -71 |       -71 |       -71 |       -75 |      8711 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8711 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       802 |       802 |       802 |       802 |       802 |       802 |       804 |       512 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9223 |
|                    Δ                     |      -802 |      -802 |      -802 |      -802 |      -802 |      -802 |      -804 |      8711 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8711 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       512 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9223 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      8711 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      8711 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       575 |       575 |       575 |       575 |       575 |       575 |       579 |       512 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9223 |
|                    Δ                     |        86 |        86 |        86 |        86 |        86 |        86 |        82 |      8711 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      8711 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        48 |        48 |        48 |        48 |        51 |        51 |       512 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      9223 |
|                    Δ                     |       -45 |       -45 |       -45 |       -45 |       -45 |       -48 |       -48 |      8711 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        94 |      8711 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |       512 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9223 |
|                    Δ                     |         4 |         4 |         4 |         4 |         4 |         4 |         4 |      8711 |
|              Improvement %               |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |      8711 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1156 |      1255 |      1272 |      1310 |      1335 |      1395 |      1480 |       775 |
|                  jbird                   |        58 |        74 |        79 |        82 |        84 |        90 |       160 |     11618 |
|                    Δ                     |     -1098 |     -1181 |     -1193 |     -1228 |     -1251 |     -1305 |     -1320 |     10843 |
|              Improvement %               |        95 |        94 |        94 |        94 |        94 |        94 |        89 |     10843 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1161 |      1260 |      1277 |      1315 |      1340 |      1399 |      1479 |       775 |
|                  jbird                   |        61 |        78 |        84 |        86 |        89 |        95 |       157 |     11618 |
|                    Δ                     |     -1100 |     -1182 |     -1193 |     -1229 |     -1251 |     -1304 |     -1322 |     10843 |
|              Improvement %               |        95 |        94 |        93 |        93 |        93 |        93 |        89 |     10843 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       865 |       797 |       786 |       764 |       749 |       717 |       676 |       775 |
|                  jbird                   |     17391 |     13479 |     12671 |     12239 |     11903 |     11119 |      6252 |     11618 |
|                    Δ                     |     16526 |     12682 |     11885 |     11475 |     11154 |     10402 |      5576 |     10843 |
|              Improvement %               |      1911 |      1591 |      1512 |      1502 |      1489 |      1451 |       825 |     10843 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        54 |        79 |       104 |       118 |       128 |       129 |       775 |
|                  jbird                   |        30 |        30 |        30 |        30 |        31 |        31 |        31 |     11618 |
|                    Δ                     |         0 |       -24 |       -49 |       -74 |       -87 |       -97 |       -98 |     10843 |
|              Improvement %               |         0 |        44 |        62 |        71 |        74 |        76 |        76 |     10843 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        89 |        89 |        89 |        89 |        89 |        89 |        93 |       775 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11618 |
|                    Δ                     |       -89 |       -89 |       -89 |       -89 |       -89 |       -89 |       -93 |     10843 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10843 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2088 |      2089 |      2089 |      2089 |      2089 |      2089 |      2090 |       775 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11618 |
|                    Δ                     |     -2088 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     -2090 |     10843 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10843 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       775 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11618 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |     10843 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     10843 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       380 |       380 |       380 |       380 |       380 |       380 |       384 |       775 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     11618 |
|                    Δ                     |       -51 |       -51 |       -51 |       -51 |       -51 |       -51 |       -55 |     10843 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        14 |     10843 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        30 |        30 |        30 |        30 |        32 |        32 |       775 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     11618 |
|                    Δ                     |       -28 |       -28 |       -28 |       -28 |       -28 |       -30 |       -30 |     10843 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |     10843 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       883 |       883 |       883 |       883 |       883 |       883 |       883 |       775 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11618 |
|                    Δ                     |      -873 |      -873 |      -873 |      -873 |      -873 |      -873 |      -873 |     10843 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |     10843 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        93 |       102 |       106 |       108 |       112 |       121 |       250 |      8899 |
|                  jbird                   |        10 |        11 |        11 |        11 |        12 |        14 |        39 |     53959 |
|                    Δ                     |       -83 |       -91 |       -95 |       -97 |      -100 |      -107 |      -211 |     45060 |
|              Improvement %               |        89 |        89 |        90 |        90 |        89 |        88 |        84 |     45060 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        96 |       105 |       109 |       112 |       116 |       126 |       239 |      8899 |
|                  jbird                   |        13 |        15 |        15 |        15 |        16 |        19 |        36 |     53959 |
|                    Δ                     |       -83 |       -90 |       -94 |       -97 |      -100 |      -107 |      -203 |     45060 |
|              Improvement %               |        86 |        86 |        86 |        87 |        86 |        85 |        85 |     45060 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10753 |      9831 |      9455 |      9247 |      8959 |      8239 |      3999 |      8899 |
|                  jbird                   |    102124 |     90239 |     88895 |     87295 |     82815 |     69183 |     25451 |     53959 |
|                    Δ                     |     91371 |     80408 |     79440 |     78048 |     73856 |     60944 |     21452 |     45060 |
|              Improvement %               |       850 |       818 |       840 |       844 |       824 |       740 |       536 |     45060 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |       171 |       312 |       460 |       545 |       601 |       601 |      8899 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     53959 |
|                    Δ                     |         0 |      -141 |      -282 |      -430 |      -515 |      -571 |      -571 |     45060 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |     45060 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        58 |        58 |        58 |        58 |        58 |        58 |        62 |      8899 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     53959 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -62 |     45060 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     45060 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        80 |        80 |        80 |        80 |        80 |        80 |        83 |      8899 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     53959 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -83 |     45060 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     45060 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      8899 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     53959 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |     45060 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |     45060 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        73 |        73 |        73 |        73 |        73 |        73 |        77 |      8899 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     53959 |
|                    Δ                     |        53 |        53 |        53 |        53 |        53 |        53 |        49 |     45060 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -64 |     45060 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2504 |      2515 |      2521 |      2529 |      2537 |      2576 |      2680 |      8899 |
|                  jbird                   |       223 |       234 |       234 |       234 |       234 |       238 |       296 |     53959 |
|                    Δ                     |     -2281 |     -2281 |     -2287 |     -2295 |     -2303 |     -2338 |     -2384 |     45060 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        89 |     45060 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      8899 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     53959 |
|                    Δ                     |        69 |        69 |        69 |        69 |        69 |        69 |        69 |     45060 |
|              Improvement %               |      -862 |      -862 |      -862 |      -862 |      -862 |      -862 |      -862 |     45060 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      8803 |      9298 |      9429 |      9486 |      9568 |      9683 |      9804 |       107 |
|                  jbird                   |      1056 |      1133 |      1146 |      1199 |      1241 |      1316 |      1390 |       851 |
|                    Δ                     |     -7747 |     -8165 |     -8283 |     -8287 |     -8327 |     -8367 |     -8414 |       744 |
|              Improvement %               |        88 |        88 |        88 |        87 |        87 |        86 |        86 |       744 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      8805 |      9298 |      9437 |      9503 |      9576 |      9691 |      9809 |       107 |
|                  jbird                   |      1060 |      1137 |      1150 |      1203 |      1246 |      1317 |      1395 |       851 |
|                    Δ                     |     -7745 |     -8161 |     -8287 |     -8300 |     -8330 |     -8374 |     -8414 |       744 |
|              Improvement %               |        88 |        88 |        88 |        87 |        87 |        86 |        86 |       744 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       114 |       108 |       106 |       105 |       105 |       103 |       102 |       107 |
|                  jbird                   |       947 |       883 |       873 |       835 |       806 |       760 |       720 |       851 |
|                    Δ                     |       833 |       775 |       767 |       730 |       701 |       657 |       618 |       744 |
|              Improvement %               |       731 |       718 |       724 |       695 |       668 |       638 |       606 |       744 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        55 |        77 |       100 |       113 |       121 |       122 |       107 |
|                  jbird                   |        32 |        37 |        37 |        37 |        37 |        37 |        37 |       851 |
|                    Δ                     |         0 |       -18 |       -40 |       -63 |       -76 |       -84 |       -85 |       744 |
|              Improvement %               |         0 |        33 |        52 |        63 |        67 |        69 |        70 |       744 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       669 |       669 |       669 |       669 |       669 |       669 |       669 |       107 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       851 |
|                    Δ                     |      -669 |      -669 |      -669 |      -669 |      -669 |      -669 |      -669 |       744 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       744 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6133 |      6134 |      6134 |      6134 |      6134 |      6134 |      6134 |       107 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       851 |
|                    Δ                     |     -6133 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |       744 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       744 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9774 |      9775 |      9775 |      9775 |      9775 |      9775 |      9775 |       107 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       851 |
|                    Δ                     |     -5723 |     -5724 |     -5724 |     -5724 |     -5724 |     -5724 |     -5724 |       744 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        59 |       744 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3160 |      3160 |      3160 |      3160 |      3160 |      3160 |      3160 |       107 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       851 |
|                    Δ                     |       751 |       751 |       751 |       751 |       751 |       751 |       751 |       744 |
|              Improvement %               |       -24 |       -24 |       -24 |       -24 |       -24 |       -24 |       -24 |       744 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       196 |       196 |       196 |       196 |       196 |       199 |       201 |       107 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       851 |
|                    Δ                     |      -172 |      -172 |      -172 |      -172 |      -172 |      -174 |      -176 |       744 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        87 |        88 |       744 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3641 |      3641 |      3641 |      3641 |      3641 |      3641 |      3641 |       107 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       851 |
|                    Δ                     |       410 |       410 |       410 |       410 |       410 |       410 |       410 |       744 |
|              Improvement %               |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       744 |

<p>
</details>

