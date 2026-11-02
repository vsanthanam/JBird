
## Comparing results between 'swiftyjson' and 'jbird'

```
Host 'Varuns-MacBook-Pro.local' with 16 'arm64' processors with 128 GB memory, running:
Darwin Kernel Version 27.0.0: Tue Aug 11 21:05:48 PDT 2026; root:xnu-13432.1.9~1/RELEASE_ARM64_T6041
```
## JBirdBenchmark

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10143 |     10658 |     10781 |     10904 |     10977 |     11982 |     11982 |        93 |
|                  jbird                   |      1333 |      1454 |      1465 |      1483 |      1508 |      1938 |      2143 |       675 |
|                    Δ                     |     -8810 |     -9204 |     -9316 |     -9421 |     -9469 |    -10044 |     -9839 |       582 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        84 |        82 |       582 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10150 |     10658 |     10789 |     10904 |     10985 |     11981 |     11981 |        93 |
|                  jbird                   |      1334 |      1456 |      1468 |      1485 |      1509 |      1940 |      2145 |       675 |
|                    Δ                     |     -8816 |     -9202 |     -9321 |     -9419 |     -9476 |    -10041 |     -9836 |       582 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        84 |        82 |       582 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        99 |        94 |        93 |        92 |        91 |        83 |        83 |        93 |
|                  jbird                   |       750 |       688 |       682 |       675 |       663 |       516 |       467 |       675 |
|                    Δ                     |       651 |       594 |       589 |       583 |       572 |       433 |       384 |       582 |
|              Improvement %               |       658 |       632 |       633 |       634 |       629 |       522 |       463 |       582 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        34 |        76 |       116 |       156 |       180 |       195 |       195 |        93 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       675 |
|                    Δ                     |         0 |       -40 |       -80 |      -120 |      -144 |      -159 |      -159 |       582 |
|              Improvement %               |         0 |        53 |        69 |        77 |        80 |        82 |        82 |       582 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |   1398064 |   1398224 |   1398224 |   1398224 |   1398224 |   1398224 |   1398224 |        93 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       675 |
|                    Δ                     |  -1398064 |  -1398224 |  -1398224 |  -1398224 |  -1398224 |  -1398224 |  -1398224 |       582 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       582 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     14798 |     14799 |     14799 |     14799 |     14799 |     14800 |     14800 |        93 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       675 |
|                    Δ                     |    -14798 |    -14799 |    -14799 |    -14799 |    -14799 |    -14800 |    -14800 |       582 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       582 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        93 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       675 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       582 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       582 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4563 |      4564 |      4564 |      4564 |      4564 |      4564 |      4564 |        93 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       675 |
|                    Δ                     |       669 |       668 |       668 |       668 |       668 |       668 |       668 |       582 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       582 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       246 |       246 |       246 |       247 |       247 |       260 |       260 |        93 |
|                  jbird                   |        31 |        31 |        31 |        31 |        31 |        32 |        33 |       675 |
|                    Δ                     |      -215 |      -215 |      -215 |      -216 |      -216 |      -228 |      -227 |       582 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        87 |       582 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |        93 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       675 |
|                    Δ                     |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |       582 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       582 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9947 |     10158 |     10273 |     10494 |     10871 |     12111 |     12111 |        97 |
|                  jbird                   |      1361 |      1508 |      1520 |      1532 |      1550 |      1589 |      1661 |       656 |
|                    Δ                     |     -8586 |     -8650 |     -8753 |     -8962 |     -9321 |    -10522 |    -10450 |       559 |
|              Improvement %               |        86 |        85 |        85 |        85 |        86 |        87 |        86 |       559 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9954 |     10166 |     10281 |     10502 |     10879 |     12114 |     12114 |        97 |
|                  jbird                   |      1363 |      1510 |      1521 |      1535 |      1554 |      1594 |      1663 |       656 |
|                    Δ                     |     -8591 |     -8656 |     -8760 |     -8967 |     -9325 |    -10520 |    -10451 |       559 |
|              Improvement %               |        86 |        85 |        85 |        85 |        86 |        87 |        86 |       559 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       101 |        98 |        97 |        95 |        92 |        83 |        83 |        97 |
|                  jbird                   |       735 |       663 |       658 |       653 |       645 |       629 |       602 |       656 |
|                    Δ                     |       634 |       565 |       561 |       558 |       553 |       546 |       519 |       559 |
|              Improvement %               |       628 |       577 |       578 |       587 |       601 |       658 |       625 |       559 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        34 |        78 |       120 |       162 |       188 |       203 |       203 |        97 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       656 |
|                    Δ                     |         0 |       -42 |       -84 |      -126 |      -152 |      -167 |      -167 |       559 |
|              Improvement %               |         0 |        54 |        70 |        78 |        81 |        82 |        82 |       559 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |   1398064 |   1398224 |   1398224 |   1398224 |   1398224 |   1398224 |   1398224 |        97 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       656 |
|                    Δ                     |  -1398064 |  -1398224 |  -1398224 |  -1398224 |  -1398224 |  -1398224 |  -1398224 |       559 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       559 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     14798 |     14799 |     14799 |     14799 |     14799 |     14800 |     14800 |        97 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       656 |
|                    Δ                     |    -14798 |    -14799 |    -14799 |    -14799 |    -14799 |    -14800 |    -14800 |       559 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       559 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        97 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       656 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       559 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       559 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4563 |      4564 |      4564 |      4564 |      4564 |      4564 |      4564 |        97 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       656 |
|                    Δ                     |       669 |       668 |       668 |       668 |       668 |       668 |       668 |       559 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       559 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       248 |       248 |       248 |       248 |       248 |       261 |       261 |        97 |
|                  jbird                   |        32 |        32 |        32 |        32 |        33 |        33 |        34 |       656 |
|                    Δ                     |      -216 |      -216 |      -216 |      -216 |      -215 |      -228 |      -227 |       559 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |       559 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |        97 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       656 |
|                    Δ                     |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |       559 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       559 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2433 |      2613 |      2636 |      2656 |      2689 |      2857 |      2888 |       379 |
|                  jbird                   |       331 |       364 |       367 |       372 |       377 |       398 |       447 |      2688 |
|                    Δ                     |     -2102 |     -2249 |     -2269 |     -2284 |     -2312 |     -2459 |     -2441 |      2309 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        86 |        85 |      2309 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2435 |      2615 |      2640 |      2660 |      2693 |      2859 |      2890 |       379 |
|                  jbird                   |       333 |       365 |       369 |       373 |       379 |       400 |       451 |      2688 |
|                    Δ                     |     -2102 |     -2250 |     -2271 |     -2287 |     -2314 |     -2459 |     -2439 |      2309 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        86 |        84 |      2309 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       411 |       383 |       379 |       377 |       372 |       350 |       346 |       379 |
|                  jbird                   |      3018 |      2751 |      2725 |      2693 |      2653 |      2513 |      2235 |      2688 |
|                    Δ                     |      2607 |      2368 |      2346 |      2316 |      2281 |      2163 |      1889 |      2309 |
|              Improvement %               |       634 |       618 |       619 |       614 |       613 |       618 |       546 |      2309 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        72 |       114 |       155 |       181 |       196 |       198 |       379 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2688 |
|                    Δ                     |         0 |       -40 |       -82 |      -123 |      -149 |      -164 |      -166 |      2309 |
|              Improvement %               |         0 |        56 |        72 |        79 |        82 |        84 |        84 |      2309 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |    354736 |    354815 |    354815 |    354815 |    354815 |    354815 |    358832 |       379 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2688 |
|                    Δ                     |   -354736 |   -354815 |   -354815 |   -354815 |   -354815 |   -354815 |   -358832 |      2309 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2309 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3748 |       379 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2688 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3748 |      2309 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2309 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       379 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2688 |
|                    Δ                     |     -2699 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |      2309 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      2309 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1152 |      1153 |      1153 |      1153 |      1153 |      1153 |      1156 |       379 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2688 |
|                    Δ                     |       222 |       221 |       221 |       221 |       221 |       221 |       218 |      2309 |
|              Improvement %               |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |      2309 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     62546 |     62620 |     62652 |     62685 |     62685 |     66028 |     66045 |       379 |
|                  jbird                   |      7841 |      7844 |      7848 |      7848 |      7860 |      7909 |      8285 |      2688 |
|                    Δ                     |    -54705 |    -54776 |    -54804 |    -54837 |    -54825 |    -58119 |    -57760 |      2309 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        87 |      2309 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |       379 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2688 |
|                    Δ                     |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      2309 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      2309 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2444 |      2685 |      2726 |      2744 |      2775 |      3019 |      3080 |       367 |
|                  jbird                   |       345 |       376 |       381 |       386 |       391 |       410 |       500 |      2597 |
|                    Δ                     |     -2099 |     -2309 |     -2345 |     -2358 |     -2384 |     -2609 |     -2580 |      2230 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        86 |        84 |      2230 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2446 |      2687 |      2728 |      2746 |      2779 |      3021 |      3082 |       367 |
|                  jbird                   |       347 |       378 |       383 |       388 |       393 |       413 |       487 |      2597 |
|                    Δ                     |     -2099 |     -2309 |     -2345 |     -2358 |     -2386 |     -2608 |     -2595 |      2230 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        86 |        84 |      2230 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       409 |       373 |       367 |       364 |       360 |       331 |       325 |       367 |
|                  jbird                   |      2898 |      2659 |      2623 |      2593 |      2557 |      2439 |      2001 |      2597 |
|                    Δ                     |      2489 |      2286 |      2256 |      2229 |      2197 |      2108 |      1676 |      2230 |
|              Improvement %               |       609 |       613 |       615 |       612 |       610 |       637 |       516 |      2230 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        72 |       112 |       153 |       177 |       191 |       193 |       367 |
|                  jbird                   |        31 |        32 |        32 |        33 |        33 |        33 |        33 |      2597 |
|                    Δ                     |         0 |       -40 |       -80 |      -120 |      -144 |      -158 |      -160 |      2230 |
|              Improvement %               |         0 |        56 |        71 |        78 |        81 |        83 |        83 |      2230 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |    354736 |    354815 |    354815 |    354815 |    354815 |    354815 |    358832 |       367 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2597 |
|                    Δ                     |   -354736 |   -354815 |   -354815 |   -354815 |   -354815 |   -354815 |   -358832 |      2230 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2230 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3748 |       367 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2597 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3748 |      2230 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2230 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       367 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2597 |
|                    Δ                     |     -2699 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |      2230 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      2230 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1152 |      1153 |      1153 |      1153 |      1153 |      1153 |      1156 |       367 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2597 |
|                    Δ                     |       222 |       221 |       221 |       221 |       221 |       221 |       218 |      2230 |
|              Improvement %               |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |      2230 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     62389 |     62456 |     62456 |     62489 |     62521 |     65864 |     65870 |       367 |
|                  jbird                   |      8118 |      8122 |      8122 |      8122 |      8139 |      8192 |      8563 |      2597 |
|                    Δ                     |    -54271 |    -54334 |    -54334 |    -54367 |    -54382 |    -57672 |    -57307 |      2230 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        87 |      2230 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |       367 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2597 |
|                    Δ                     |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      2230 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      2230 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5062 |      5247 |      5280 |      5317 |      5382 |      5800 |      5867 |       189 |
|                  jbird                   |       653 |       717 |       723 |       730 |       742 |       769 |       825 |      1374 |
|                    Δ                     |     -4409 |     -4530 |     -4557 |     -4587 |     -4640 |     -5031 |     -5042 |      1185 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        87 |        86 |      1185 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5064 |      5247 |      5284 |      5321 |      5386 |      5804 |      5868 |       189 |
|                  jbird                   |       655 |       719 |       726 |       732 |       743 |       770 |       827 |      1374 |
|                    Δ                     |     -4409 |     -4528 |     -4558 |     -4589 |     -4643 |     -5034 |     -5041 |      1185 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        87 |        86 |      1185 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       198 |       191 |       189 |       188 |       186 |       173 |       170 |       189 |
|                  jbird                   |      1531 |      1395 |      1382 |      1370 |      1349 |      1302 |      1213 |      1374 |
|                    Δ                     |      1333 |      1204 |      1193 |      1182 |      1163 |      1129 |      1043 |      1185 |
|              Improvement %               |       673 |       630 |       631 |       629 |       625 |       653 |       614 |      1185 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        74 |       115 |       156 |       182 |       197 |       197 |       189 |
|                  jbird                   |        32 |        33 |        33 |        34 |        34 |        34 |        34 |      1374 |
|                    Δ                     |         0 |       -41 |       -82 |      -122 |      -148 |      -163 |      -163 |      1185 |
|              Improvement %               |         0 |        55 |        71 |        78 |        81 |        83 |        83 |      1185 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |    702512 |    702672 |    702672 |    702672 |    702672 |    702672 |    702672 |       189 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1374 |
|                    Δ                     |   -702512 |   -702672 |   -702672 |   -702672 |   -702672 |   -702672 |   -702672 |      1185 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1185 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7432 |       189 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1374 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7432 |      1185 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1185 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10610 |     10612 |     10612 |     10612 |     10612 |     10612 |     10612 |       189 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1374 |
|                    Δ                     |     -5334 |     -5336 |     -5336 |     -5336 |     -5336 |     -5336 |     -5336 |      1185 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      1185 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |       189 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1374 |
|                    Δ                     |       459 |       459 |       459 |       459 |       459 |       459 |       459 |      1185 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |      1185 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       122 |       122 |       122 |       122 |       123 |       129 |       129 |       189 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1374 |
|                    Δ                     |      -106 |      -106 |      -106 |      -106 |      -107 |      -113 |      -112 |      1185 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        87 |      1185 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |       189 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1374 |
|                    Δ                     |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      1185 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      1185 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5219 |      5460 |      5489 |      5517 |      5558 |      5992 |      5994 |       182 |
|                  jbird                   |       676 |       750 |       758 |       766 |       776 |       806 |       832 |      1312 |
|                    Δ                     |     -4543 |     -4710 |     -4731 |     -4751 |     -4782 |     -5186 |     -5162 |      1130 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        87 |        86 |      1130 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5210 |      5464 |      5493 |      5521 |      5566 |      5997 |      5997 |       182 |
|                  jbird                   |       677 |       751 |       759 |       769 |       778 |       809 |       840 |      1312 |
|                    Δ                     |     -4533 |     -4713 |     -4734 |     -4752 |     -4788 |     -5188 |     -5157 |      1130 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        87 |        86 |      1130 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       192 |       183 |       182 |       181 |       180 |       167 |       167 |       182 |
|                  jbird                   |      1480 |      1335 |      1320 |      1305 |      1289 |      1240 |      1202 |      1312 |
|                    Δ                     |      1288 |      1152 |      1138 |      1124 |      1109 |      1073 |      1035 |      1130 |
|              Improvement %               |       671 |       630 |       625 |       621 |       616 |       643 |       620 |      1130 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        72 |       112 |       152 |       174 |       191 |       191 |       182 |
|                  jbird                   |        32 |        33 |        33 |        34 |        34 |        34 |        34 |      1312 |
|                    Δ                     |         0 |       -39 |       -79 |      -118 |      -140 |      -157 |      -157 |      1130 |
|              Improvement %               |         0 |        54 |        71 |        78 |        80 |        82 |        82 |      1130 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |    702512 |    702672 |    702672 |    702672 |    702672 |    702672 |    702672 |       182 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1312 |
|                    Δ                     |   -702512 |   -702672 |   -702672 |   -702672 |   -702672 |   -702672 |   -702672 |      1130 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1130 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7432 |       182 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1312 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7432 |      1130 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1130 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10610 |     10612 |     10612 |     10612 |     10612 |     10612 |     10612 |       182 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1312 |
|                    Δ                     |     -5334 |     -5336 |     -5336 |     -5336 |     -5336 |     -5336 |     -5336 |      1130 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      1130 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |       182 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1312 |
|                    Δ                     |       459 |       459 |       459 |       459 |       459 |       459 |       459 |      1130 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |      1130 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       125 |       125 |       125 |       125 |       125 |       132 |       132 |       182 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1312 |
|                    Δ                     |      -109 |      -109 |      -109 |      -109 |      -109 |      -116 |      -115 |      1130 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        87 |      1130 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |       182 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1312 |
|                    Δ                     |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      1130 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      1130 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     51244 |     53248 |     55378 |     56033 |     56099 |     56371 |     56371 |        19 |
|                  jbird                   |      6908 |      7168 |      7266 |      7365 |      7414 |      7578 |      7596 |       138 |
|                    Δ                     |    -44336 |    -46080 |    -48112 |    -48668 |    -48685 |    -48793 |    -48775 |       119 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |       119 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     51260 |     53281 |     55378 |     56033 |     56132 |     56395 |     56395 |        19 |
|                  jbird                   |      6901 |      7172 |      7266 |      7369 |      7422 |      7586 |      7606 |       138 |
|                    Δ                     |    -44359 |    -46109 |    -48112 |    -48664 |    -48710 |    -48809 |    -48789 |       119 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |       119 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        20 |        19 |        18 |        18 |        18 |        18 |        18 |        19 |
|                  jbird                   |       145 |       140 |       138 |       136 |       135 |       132 |       132 |       138 |
|                    Δ                     |       125 |       121 |       120 |       118 |       117 |       114 |       114 |       119 |
|              Improvement %               |       625 |       637 |       667 |       656 |       650 |       633 |       633 |       119 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        57 |        92 |       136 |       180 |       206 |       215 |       215 |        19 |
|                  jbird                   |        56 |        59 |        59 |        59 |        59 |        59 |        59 |       138 |
|                    Δ                     |        -1 |       -33 |       -77 |      -121 |      -147 |      -156 |      -156 |       119 |
|              Improvement %               |         2 |        36 |        57 |        67 |        71 |        73 |        73 |       119 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |   6962480 |   6962640 |   6962640 |   6962640 |   6962640 |   6962640 |   6962640 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |  -6962480 |  -6962640 |  -6962640 |  -6962640 |  -6962640 |  -6962640 |  -6962640 |       119 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       119 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     73742 |     73744 |     73744 |     73744 |     73744 |     73744 |     73744 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |    -73742 |    -73744 |    -73744 |    -73744 |    -73744 |    -73744 |    -73744 |       119 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       119 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       138 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       119 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       119 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        23 |        23 |        23 |        23 |        23 |        23 |        23 |        19 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       138 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       119 |
|              Improvement %               |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       119 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1273 |      1274 |      1274 |      1275 |      1275 |      1275 |      1275 |        19 |
|                  jbird                   |       157 |       157 |       157 |       157 |       157 |       158 |       159 |       138 |
|                    Δ                     |     -1116 |     -1117 |     -1117 |     -1118 |     -1118 |     -1117 |     -1116 |       119 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        88 |       119 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       138 |
|                    Δ                     |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       119 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       119 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     51473 |     52363 |     53805 |     54198 |     54526 |     54565 |     54565 |        19 |
|                  jbird                   |      7061 |      7516 |      7574 |      7627 |      7696 |      8143 |      8284 |       132 |
|                    Δ                     |    -44412 |    -44847 |    -46231 |    -46571 |    -46830 |    -46422 |    -46281 |       113 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        85 |       113 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     51484 |     52363 |     53838 |     54231 |     54526 |     54591 |     54591 |        19 |
|                  jbird                   |      7062 |      7520 |      7578 |      7635 |      7700 |      8151 |      8291 |       132 |
|                    Δ                     |    -44422 |    -44843 |    -46260 |    -46596 |    -46826 |    -46440 |    -46300 |       113 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        85 |       113 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        19 |        19 |        19 |        18 |        18 |        18 |        18 |        19 |
|                  jbird                   |       142 |       133 |       132 |       131 |       130 |       123 |       121 |       132 |
|                    Δ                     |       123 |       114 |       113 |       113 |       112 |       105 |       103 |       113 |
|              Improvement %               |       647 |       600 |       595 |       628 |       622 |       583 |       572 |       113 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        57 |        92 |       136 |       179 |       205 |       214 |       214 |        19 |
|                  jbird                   |        56 |        59 |        59 |        59 |        59 |        59 |        59 |       132 |
|                    Δ                     |        -1 |       -33 |       -77 |      -120 |      -146 |      -155 |      -155 |       113 |
|              Improvement %               |         2 |        36 |        57 |        67 |        71 |        72 |        72 |       113 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |   6962480 |   6962640 |   6962640 |   6962640 |   6962640 |   6962640 |   6962640 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       132 |
|                    Δ                     |  -6962480 |  -6962640 |  -6962640 |  -6962640 |  -6962640 |  -6962640 |  -6962640 |       113 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       113 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     73742 |     73744 |     73744 |     73744 |     73744 |     73744 |     73744 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       132 |
|                    Δ                     |    -73742 |    -73744 |    -73744 |    -73744 |    -73744 |    -73744 |    -73744 |       113 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       113 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       132 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       113 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       113 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        23 |        23 |        23 |        23 |        23 |        23 |        23 |        19 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       132 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       113 |
|              Improvement %               |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       113 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1248 |      1248 |      1248 |      1249 |      1250 |      1250 |      1250 |        19 |
|                  jbird                   |       162 |       162 |       163 |       163 |       163 |       164 |       164 |       132 |
|                    Δ                     |     -1086 |     -1086 |     -1085 |     -1086 |     -1087 |     -1086 |     -1086 |       113 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |       113 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       132 |
|                    Δ                     |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       113 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       113 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       590 |       659 |       665 |       672 |       682 |       719 |       760 |      1492 |
|                  jbird                   |        83 |        91 |        94 |        95 |        96 |       108 |       138 |     10341 |
|                    Δ                     |      -507 |      -568 |      -571 |      -577 |      -586 |      -611 |      -622 |      8849 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        82 |      8849 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       591 |       661 |       667 |       674 |       684 |       722 |       761 |      1492 |
|                  jbird                   |        85 |        93 |        96 |        96 |        98 |       110 |       141 |     10341 |
|                    Δ                     |      -506 |      -568 |      -571 |      -578 |      -586 |      -612 |      -620 |      8849 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        81 |      8849 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1696 |      1517 |      1504 |      1490 |      1467 |      1391 |      1316 |      1492 |
|                  jbird                   |     12000 |     10983 |     10647 |     10551 |     10423 |      9311 |      7220 |     10341 |
|                    Δ                     |     10304 |      9466 |      9143 |      9061 |      8956 |      7920 |      5904 |      8849 |
|              Improvement %               |       608 |       624 |       608 |       608 |       610 |       569 |       449 |      8849 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        74 |       116 |       160 |       186 |       203 |       203 |      1492 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10341 |
|                    Δ                     |         0 |       -43 |       -85 |      -129 |      -155 |      -172 |      -172 |      8849 |
|              Improvement %               |         0 |        58 |        73 |        81 |        83 |        85 |        85 |      8849 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     93744 |     93759 |     93759 |     93759 |     93759 |     93759 |     97840 |      1492 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10341 |
|                    Δ                     |    -93744 |    -93759 |    -93759 |    -93759 |    -93759 |    -93759 |    -97840 |      8849 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8849 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       981 |       981 |       981 |       981 |       981 |       981 |       983 |      1492 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10341 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -983 |      8849 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8849 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1492 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10341 |
|                    Δ                     |      -716 |      -716 |      -716 |      -716 |      -716 |      -716 |      -718 |      8849 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      8849 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       298 |       298 |       298 |       298 |       298 |       298 |       302 |      1492 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10341 |
|                    Δ                     |        46 |        46 |        46 |        46 |        46 |        46 |        42 |      8849 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      8849 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     15387 |     15426 |     15442 |     15450 |     15466 |     16294 |     16342 |      1492 |
|                  jbird                   |      1962 |      1963 |      1964 |      1964 |      1967 |      1986 |      2081 |     10341 |
|                    Δ                     |    -13425 |    -13463 |    -13478 |    -13486 |    -13499 |    -14308 |    -14261 |      8849 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        87 |      8849 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       403 |       403 |       403 |       403 |       403 |       403 |       403 |      1492 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10341 |
|                    Δ                     |       265 |       265 |       265 |       265 |       265 |       265 |       265 |      8849 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      8849 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       605 |       673 |       677 |       683 |       693 |       738 |       770 |      1465 |
|                  jbird                   |        86 |        95 |        97 |        97 |        99 |       110 |       134 |     10040 |
|                    Δ                     |      -519 |      -578 |      -580 |      -586 |      -594 |      -628 |      -636 |      8575 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        83 |      8575 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       606 |       675 |       679 |       685 |       695 |       740 |       771 |      1465 |
|                  jbird                   |        88 |        96 |        98 |        99 |       101 |       112 |       137 |     10040 |
|                    Δ                     |      -518 |      -579 |      -581 |      -586 |      -594 |      -628 |      -634 |      8575 |
|              Improvement %               |        85 |        86 |        86 |        86 |        85 |        85 |        82 |      8575 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1653 |      1486 |      1476 |      1465 |      1444 |      1355 |      1299 |      1465 |
|                  jbird                   |     11617 |     10583 |     10351 |     10271 |     10119 |      9079 |      7447 |     10040 |
|                    Δ                     |      9964 |      9097 |      8875 |      8806 |      8675 |      7724 |      6148 |      8575 |
|              Improvement %               |       603 |       612 |       601 |       601 |       601 |       570 |       473 |      8575 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        73 |       115 |       158 |       183 |       200 |       200 |      1465 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10040 |
|                    Δ                     |         0 |       -42 |       -84 |      -127 |      -152 |      -169 |      -169 |      8575 |
|              Improvement %               |         0 |        58 |        73 |        80 |        83 |        84 |        84 |      8575 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     93744 |     93759 |     93759 |     93759 |     93759 |     93759 |     97840 |      1465 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10040 |
|                    Δ                     |    -93744 |    -93759 |    -93759 |    -93759 |    -93759 |    -93759 |    -97840 |      8575 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8575 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       981 |       981 |       981 |       981 |       981 |       981 |       983 |      1465 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10040 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -983 |      8575 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8575 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1465 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10040 |
|                    Δ                     |      -716 |      -716 |      -716 |      -716 |      -716 |      -716 |      -718 |      8575 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      8575 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       298 |       298 |       298 |       298 |       298 |       298 |       302 |      1465 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10040 |
|                    Δ                     |        46 |        46 |        46 |        46 |        46 |        46 |        42 |      8575 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      8575 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     15456 |     15491 |     15499 |     15516 |     15532 |     16351 |     16374 |      1465 |
|                  jbird                   |      2031 |      2032 |      2033 |      2034 |      2037 |      2052 |      2180 |     10040 |
|                    Δ                     |    -13425 |    -13459 |    -13466 |    -13482 |    -13495 |    -14299 |    -14194 |      8575 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |      8575 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       403 |       403 |       403 |       403 |       403 |       403 |       403 |      1465 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10040 |
|                    Δ                     |       265 |       265 |       265 |       265 |       265 |       265 |       265 |      8575 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      8575 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2931 |      3168 |      3217 |      3240 |      3275 |      3473 |      3516 |       312 |
|                  jbird                   |       102 |       114 |       114 |       118 |       120 |       131 |       181 |      8377 |
|                    Δ                     |     -2829 |     -3054 |     -3103 |     -3122 |     -3155 |     -3342 |     -3335 |      8065 |
|              Improvement %               |        97 |        96 |        96 |        96 |        96 |        96 |        95 |      8065 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2925 |      3170 |      3222 |      3244 |      3277 |      3480 |      3518 |       312 |
|                  jbird                   |       103 |       116 |       116 |       119 |       122 |       133 |       184 |      8377 |
|                    Δ                     |     -2822 |     -3054 |     -3106 |     -3125 |     -3155 |     -3347 |     -3334 |      8065 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |        95 |      8065 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       341 |       316 |       311 |       309 |       305 |       288 |       284 |       312 |
|                  jbird                   |      9824 |      8783 |      8759 |      8511 |      8335 |      7627 |      5530 |      8377 |
|                    Δ                     |      9483 |      8467 |      8448 |      8202 |      8030 |      7339 |      5246 |      8065 |
|              Improvement %               |      2781 |      2679 |      2716 |      2654 |      2633 |      2548 |      1847 |      8065 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        38 |        44 |        50 |        54 |        56 |        57 |       312 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |      8377 |
|                    Δ                     |         0 |        -6 |       -12 |       -18 |       -22 |       -24 |       -25 |      8065 |
|              Improvement %               |         0 |        16 |        27 |        36 |        41 |        43 |        44 |      8065 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     80032 |     80063 |     80063 |     80063 |     80063 |     80063 |     84128 |       312 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8377 |
|                    Δ                     |    -80032 |    -80063 |    -80063 |    -80063 |    -80063 |    -80063 |    -84128 |      8065 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8065 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         2 |         2 |         2 |         2 |         2 |         2 |         4 |       312 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8377 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -4 |      8065 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8065 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        17 |        17 |        17 |        17 |        17 |        17 |        19 |       312 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8377 |
|                    Δ                     |        11 |        11 |        11 |        11 |        11 |        11 |         9 |      8065 |
|              Improvement %               |       -65 |       -65 |       -65 |       -65 |       -65 |       -65 |       -47 |      8065 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       990 |       990 |       990 |       990 |       990 |       990 |       994 |       312 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      8377 |
|                    Δ                     |       168 |       168 |       168 |       168 |       168 |       168 |       164 |      8065 |
|              Improvement %               |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |      8065 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     77078 |     77136 |     77136 |     77136 |     77201 |     81986 |     82220 |       312 |
|                  jbird                   |      3329 |      3330 |      3330 |      3330 |      3332 |      3346 |      3765 |      8377 |
|                    Δ                     |    -73749 |    -73806 |    -73806 |    -73806 |    -73869 |    -78640 |    -78455 |      8065 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |        95 |      8065 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       312 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8377 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      8065 |
|              Improvement %               |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |      8065 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     65416 |     66224 |     66683 |     66847 |     67043 |     67087 |     67087 |        16 |
|                  jbird                   |      5615 |      5911 |      5980 |      6050 |      6119 |      6238 |      6281 |       167 |
|                    Δ                     |    -59801 |    -60313 |    -60703 |    -60797 |    -60924 |    -60849 |    -60806 |       151 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        91 |       151 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     65432 |     66224 |     66716 |     66879 |     67076 |     67118 |     67118 |        16 |
|                  jbird                   |      5617 |      5915 |      5980 |      6058 |      6128 |      6238 |      6287 |       167 |
|                    Δ                     |    -59815 |    -60309 |    -60736 |    -60821 |    -60948 |    -60880 |    -60831 |       151 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        91 |       151 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |        16 |
|                  jbird                   |       178 |       169 |       167 |       165 |       163 |       160 |       159 |       167 |
|                    Δ                     |       163 |       154 |       152 |       150 |       148 |       145 |       144 |       151 |
|              Improvement %               |      1087 |      1027 |      1013 |      1000 |       987 |       967 |       960 |       151 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        56 |        82 |       117 |       151 |       177 |       185 |       185 |        16 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       167 |
|                    Δ                     |        -8 |       -30 |       -65 |       -99 |      -125 |      -133 |      -133 |       151 |
|              Improvement %               |        14 |        37 |        56 |        66 |        71 |        72 |        72 |       151 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |   5790800 |   5790960 |   5790960 |   5790960 |   5790960 |   5790960 |   5790960 |        16 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       167 |
|                    Δ                     |  -5790800 |  -5790960 |  -5790960 |  -5790960 |  -5790960 |  -5790960 |  -5790960 |       151 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       151 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |    167131 |    167133 |    167133 |    167133 |    167133 |    167133 |    167133 |        16 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       167 |
|                    Δ                     |   -167131 |   -167133 |   -167133 |   -167133 |   -167133 |   -167133 |   -167133 |       151 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       151 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       279 |       279 |       279 |       279 |       279 |       279 |       279 |        16 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       167 |
|                    Δ                     |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |       151 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       151 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        16 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       167 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |       151 |
|              Improvement %               |        10 |        10 |        10 |        10 |        10 |        10 |        10 |       151 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1661 |      1662 |      1662 |      1662 |      1662 |      1662 |      1662 |        16 |
|                  jbird                   |       158 |       158 |       158 |       158 |       158 |       159 |       160 |       167 |
|                    Δ                     |     -1503 |     -1504 |     -1504 |     -1504 |     -1504 |     -1503 |     -1502 |       151 |
|              Improvement %               |        90 |        90 |        90 |        90 |        90 |        90 |        90 |       151 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       112 |       112 |       112 |       112 |       112 |       112 |       112 |        16 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       167 |
|                    Δ                     |       -56 |       -56 |       -56 |       -56 |       -56 |       -56 |       -56 |       151 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       151 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       141 |       154 |       160 |       163 |       166 |       180 |       232 |      6160 |
|                  jbird                   |        29 |        32 |        33 |        33 |        33 |        40 |        61 |     27786 |
|                    Δ                     |      -112 |      -122 |      -127 |      -130 |      -133 |      -140 |      -171 |     21626 |
|              Improvement %               |        79 |        79 |        79 |        80 |        80 |        78 |        74 |     21626 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       143 |       156 |       161 |       164 |       168 |       183 |       224 |      6160 |
|                  jbird                   |        30 |        34 |        34 |        35 |        35 |        42 |        56 |     27786 |
|                    Δ                     |      -113 |      -122 |      -127 |      -129 |      -133 |      -141 |      -168 |     21626 |
|              Improvement %               |        79 |        78 |        79 |        79 |        79 |        77 |        75 |     21626 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7080 |      6495 |      6259 |      6143 |      6031 |      5547 |      4311 |      6160 |
|                  jbird                   |     34832 |     30895 |     30543 |     30351 |     30079 |     24879 |     16327 |     27786 |
|                    Δ                     |     27752 |     24400 |     24284 |     24208 |     24048 |     19332 |     12016 |     21626 |
|              Improvement %               |       392 |       376 |       388 |       394 |       399 |       349 |       279 |     21626 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        42 |        53 |        64 |        71 |        75 |        76 |      6160 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     27786 |
|                    Δ                     |         0 |       -11 |       -22 |       -33 |       -40 |       -44 |       -45 |     21626 |
|              Improvement %               |         0 |        26 |        42 |        52 |        56 |        59 |        59 |     21626 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4864 |      4867 |      4867 |      4867 |      4867 |      4867 |      8960 |      6160 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     27786 |
|                    Δ                     |     -4864 |     -4867 |     -4867 |     -4867 |     -4867 |     -4867 |     -8960 |     21626 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     21626 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       152 |       152 |       152 |       152 |       152 |       152 |       155 |      6160 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     27786 |
|                    Δ                     |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -155 |     21626 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     21626 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      6160 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     27786 |
|                    Δ                     |      -302 |      -302 |      -302 |      -302 |      -302 |      -302 |      -305 |     21626 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |     21626 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        64 |        64 |        64 |        64 |        64 |        64 |        68 |      6160 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     27786 |
|                    Δ                     |        27 |        27 |        27 |        27 |        27 |        27 |        23 |     21626 |
|              Improvement %               |       -42 |       -42 |       -42 |       -42 |       -42 |       -42 |       -34 |     21626 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2981 |      2984 |      2984 |      2990 |      2992 |      3125 |      3183 |      6160 |
|                  jbird                   |       739 |       739 |       739 |       739 |       739 |       757 |       804 |     27786 |
|                    Δ                     |     -2242 |     -2245 |     -2245 |     -2251 |     -2253 |     -2368 |     -2379 |     21626 |
|              Improvement %               |        75 |        75 |        75 |        75 |        75 |        76 |        75 |     21626 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       304 |       304 |       304 |       304 |       304 |       304 |       304 |      6160 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     27786 |
|                    Δ                     |      -150 |      -150 |      -150 |      -150 |      -150 |      -150 |      -150 |     21626 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        49 |        49 |     21626 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1795 |      1930 |      1950 |      1979 |      2050 |      2183 |      2300 |       508 |
|                  jbird                   |        87 |        97 |        97 |        99 |       100 |       111 |       153 |      9878 |
|                    Δ                     |     -1708 |     -1833 |     -1853 |     -1880 |     -1950 |     -2072 |     -2147 |      9370 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        93 |      9370 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1797 |      1931 |      1952 |      1982 |      2051 |      2185 |      2293 |       508 |
|                  jbird                   |        88 |        99 |        99 |       100 |       102 |       113 |       156 |      9878 |
|                    Δ                     |     -1709 |     -1832 |     -1853 |     -1882 |     -1949 |     -2072 |     -2137 |      9370 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        93 |      9370 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       557 |       518 |       513 |       505 |       488 |       458 |       435 |       508 |
|                  jbird                   |     11539 |     10311 |     10279 |     10159 |     10007 |      9015 |      6545 |      9878 |
|                    Δ                     |     10982 |      9793 |      9766 |      9654 |      9519 |      8557 |      6110 |      9370 |
|              Improvement %               |      1972 |      1891 |      1904 |      1912 |      1951 |      1868 |      1405 |      9370 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        42 |        53 |        65 |        71 |        75 |        75 |       508 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9878 |
|                    Δ                     |         0 |       -11 |       -22 |       -34 |       -40 |       -44 |       -44 |      9370 |
|              Improvement %               |         0 |        26 |        42 |        52 |        56 |        59 |        59 |      9370 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     71232 |     71295 |     71295 |     71295 |     71295 |     71295 |     75328 |       508 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9878 |
|                    Δ                     |    -71232 |    -71295 |    -71295 |    -71295 |    -71295 |    -71295 |    -75328 |      9370 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9370 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       802 |       802 |       802 |       802 |       802 |       802 |       804 |       508 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9878 |
|                    Δ                     |      -802 |      -802 |      -802 |      -802 |      -802 |      -802 |      -804 |      9370 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9370 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       508 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9878 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      9370 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      9370 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       575 |       575 |       575 |       575 |       575 |       575 |       579 |       508 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9878 |
|                    Δ                     |        86 |        86 |        86 |        86 |        86 |        86 |        82 |      9370 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      9370 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     48594 |     48628 |     48628 |     48660 |     48660 |     51577 |     51720 |       508 |
|                  jbird                   |      2575 |      2576 |      2576 |      2576 |      2578 |      2589 |      2817 |      9878 |
|                    Δ                     |    -46019 |    -46052 |    -46052 |    -46084 |    -46082 |    -48988 |    -48903 |      9370 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        95 |      9370 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |       508 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9878 |
|                    Δ                     |         4 |         4 |         4 |         4 |         4 |         4 |         4 |      9370 |
|              Improvement %               |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |      9370 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1249 |      1355 |      1371 |      1381 |      1397 |      1462 |      1535 |       727 |
|                  jbird                   |        58 |        65 |        66 |        67 |        70 |        78 |       209 |     14338 |
|                    Δ                     |     -1191 |     -1290 |     -1305 |     -1314 |     -1327 |     -1384 |     -1326 |     13611 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        86 |     13611 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1251 |      1357 |      1372 |      1384 |      1399 |      1464 |      1537 |       727 |
|                  jbird                   |        60 |        67 |        68 |        69 |        71 |        80 |       197 |     14338 |
|                    Δ                     |     -1191 |     -1290 |     -1304 |     -1315 |     -1328 |     -1384 |     -1340 |     13611 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        87 |     13611 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       801 |       738 |       730 |       724 |       716 |       684 |       651 |       727 |
|                  jbird                   |     17217 |     15399 |     15191 |     14927 |     14399 |     12807 |      4781 |     14338 |
|                    Δ                     |     16416 |     14661 |     14461 |     14203 |     13683 |     12123 |      4130 |     13611 |
|              Improvement %               |      2049 |      1987 |      1981 |      1962 |      1911 |      1772 |       634 |     13611 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        53 |        77 |        99 |       113 |       122 |       122 |       727 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     14338 |
|                    Δ                     |         0 |       -22 |       -46 |       -68 |       -82 |       -91 |       -91 |     13611 |
|              Improvement %               |         0 |        42 |        60 |        69 |        73 |        75 |        75 |     13611 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     88992 |     89023 |     89023 |     89023 |     89023 |     89023 |     93088 |       727 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14338 |
|                    Δ                     |    -88992 |    -89023 |    -89023 |    -89023 |    -89023 |    -89023 |    -93088 |     13611 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13611 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2088 |      2089 |      2089 |      2089 |      2089 |      2089 |      2090 |       727 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14338 |
|                    Δ                     |     -2088 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     -2090 |     13611 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13611 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2681 |      2681 |      2681 |      2681 |      2681 |      2681 |      2683 |       727 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     14338 |
|                    Δ                     |     -2671 |     -2671 |     -2671 |     -2671 |     -2671 |     -2671 |     -2673 |     13611 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     13611 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       368 |       368 |       368 |       368 |       368 |       368 |       372 |       727 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     14338 |
|                    Δ                     |       -39 |       -39 |       -39 |       -39 |       -39 |       -39 |       -43 |     13611 |
|              Improvement %               |        11 |        11 |        11 |        11 |        11 |        11 |        12 |     13611 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     31345 |     31375 |     31375 |     31392 |     31441 |     33194 |     33380 |       727 |
|                  jbird                   |      1588 |      1588 |      1588 |      1589 |      1589 |      1595 |      1750 |     14338 |
|                    Δ                     |    -29757 |    -29787 |    -29787 |    -29803 |    -29852 |    -31599 |    -31630 |     13611 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        95 |     13611 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       593 |       593 |       593 |       593 |       593 |       593 |       593 |       727 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     14338 |
|                    Δ                     |      -583 |      -583 |      -583 |      -583 |      -583 |      -583 |      -583 |     13611 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |     13611 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |       105 |       107 |       108 |       111 |       122 |       150 |      9076 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        13 |        40 |     72754 |
|                    Δ                     |       -85 |       -95 |       -97 |       -98 |      -101 |      -109 |      -110 |     63678 |
|              Improvement %               |        90 |        90 |        91 |        91 |        91 |        89 |        73 |     63678 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        96 |       107 |       108 |       110 |       113 |       124 |       152 |      9076 |
|                  jbird                   |        10 |        12 |        12 |        12 |        12 |        15 |        38 |     72754 |
|                    Δ                     |       -86 |       -95 |       -96 |       -98 |      -101 |      -109 |      -114 |     63678 |
|              Improvement %               |        90 |        89 |        89 |        89 |        89 |        88 |        75 |     63678 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10596 |      9535 |      9359 |      9231 |      8999 |      8231 |      6672 |      9076 |
|                  jbird                   |    111620 |     98367 |     97599 |     96831 |     95679 |     76927 |     24870 |     72754 |
|                    Δ                     |    101024 |     88832 |     88240 |     87600 |     86680 |     68696 |     18198 |     63678 |
|              Improvement %               |       953 |       932 |       943 |       949 |       963 |       835 |       273 |     63678 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |       173 |       323 |       468 |       558 |       607 |       614 |      9076 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     72754 |
|                    Δ                     |         0 |      -142 |      -292 |      -437 |      -527 |      -576 |      -583 |     63678 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |     63678 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     57648 |     57663 |     57663 |     57663 |     57663 |     57663 |     61744 |      9076 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     72754 |
|                    Δ                     |    -57648 |    -57663 |    -57663 |    -57663 |    -57663 |    -57663 |    -61744 |     63678 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     63678 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        80 |        80 |        80 |        80 |        80 |        80 |        83 |      9076 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     72754 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -83 |     63678 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     63678 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      9076 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     72754 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |     63678 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |     63678 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        73 |        73 |        73 |        73 |        73 |        73 |        77 |      9076 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     72754 |
|                    Δ                     |        53 |        53 |        53 |        53 |        53 |        53 |        49 |     63678 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -64 |     63678 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2516 |      2525 |      2533 |      2542 |      2550 |      2587 |      2635 |      9076 |
|                  jbird                   |       231 |       231 |       231 |       231 |       232 |       236 |       319 |     72754 |
|                    Δ                     |     -2285 |     -2294 |     -2302 |     -2311 |     -2318 |     -2351 |     -2316 |     63678 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        88 |     63678 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      9076 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     72754 |
|                    Δ                     |        69 |        69 |        69 |        69 |        69 |        69 |        69 |     63678 |
|              Improvement %               |      -862 |      -862 |      -862 |      -862 |      -862 |      -862 |      -862 |     63678 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9094 |      9535 |      9609 |      9675 |      9773 |     10035 |     10301 |       104 |
|                  jbird                   |      1045 |      1125 |      1137 |      1148 |      1162 |      1204 |      1293 |       876 |
|                    Δ                     |     -8049 |     -8410 |     -8472 |     -8527 |     -8611 |     -8831 |     -9008 |       772 |
|              Improvement %               |        89 |        88 |        88 |        88 |        88 |        88 |        87 |       772 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9087 |      9535 |      9617 |      9683 |      9781 |     10043 |     10304 |       104 |
|                  jbird                   |      1047 |      1127 |      1139 |      1150 |      1164 |      1204 |      1295 |       876 |
|                    Δ                     |     -8040 |     -8408 |     -8478 |     -8533 |     -8617 |     -8839 |     -9009 |       772 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        87 |       772 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       110 |       105 |       104 |       103 |       102 |       100 |        97 |       104 |
|                  jbird                   |       957 |       889 |       880 |       872 |       861 |       831 |       773 |       876 |
|                    Δ                     |       847 |       784 |       776 |       769 |       759 |       731 |       676 |       772 |
|              Improvement %               |       770 |       747 |       746 |       747 |       744 |       731 |       697 |       772 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        33 |        55 |        76 |        98 |       111 |       119 |       119 |       104 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       876 |
|                    Δ                     |         0 |       -20 |       -41 |       -63 |       -76 |       -84 |       -84 |       772 |
|              Improvement %               |         0 |        36 |        54 |        64 |        68 |        71 |        71 |       772 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |    669235 |    669363 |    669363 |    669363 |    669363 |    669363 |    669363 |       104 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       876 |
|                    Δ                     |   -669235 |   -669363 |   -669363 |   -669363 |   -669363 |   -669363 |   -669363 |       772 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       772 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6133 |      6134 |      6134 |      6134 |      6134 |      6134 |      6134 |       104 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       876 |
|                    Δ                     |     -6133 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |       772 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       772 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9774 |      9775 |      9775 |      9775 |      9775 |      9775 |      9775 |       104 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       876 |
|                    Δ                     |     -5723 |     -5724 |     -5724 |     -5724 |     -5724 |     -5724 |     -5724 |       772 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        59 |       772 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3160 |      3160 |      3160 |      3160 |      3160 |      3160 |      3160 |       104 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       876 |
|                    Δ                     |       751 |       751 |       751 |       751 |       751 |       751 |       751 |       772 |
|              Improvement %               |       -24 |       -24 |       -24 |       -24 |       -24 |       -24 |       -24 |       772 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       194 |       194 |       194 |       194 |       194 |       199 |       203 |       104 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       876 |
|                    Δ                     |      -170 |      -170 |      -170 |      -170 |      -170 |      -174 |      -178 |       772 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        87 |        88 |       772 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3641 |      3641 |      3641 |      3641 |      3641 |      3641 |      3641 |       104 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       876 |
|                    Δ                     |       410 |       410 |       410 |       410 |       410 |       410 |       410 |       772 |
|              Improvement %               |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       772 |

<p>
</details>

