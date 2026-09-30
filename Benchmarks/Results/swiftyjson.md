## JBird vs SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        11 |        11 |        11 |        11 |        11 |        94 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         2 |         2 |       708 |
|                    Δ                     |        -9 |        -9 |       -10 |       -10 |       -10 |        -9 |        -9 |       614 |
|              Improvement %               |        90 |        90 |        91 |        91 |        91 |        82 |        82 |       614 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        11 |        11 |        11 |        11 |        11 |        94 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         2 |         2 |       708 |
|                    Δ                     |        -9 |        -9 |       -10 |       -10 |       -10 |        -9 |        -9 |       614 |
|              Improvement %               |        90 |        90 |        91 |        91 |        91 |        82 |        82 |       614 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        98 |        95 |        93 |        92 |        92 |        89 |        89 |        94 |
|                  jbird                   |       787 |       721 |       712 |       703 |       694 |       595 |       474 |       708 |
|                    Δ                     |       689 |       626 |       619 |       611 |       602 |       506 |       385 |       614 |
|              Improvement %               |       703 |       659 |       666 |       664 |       654 |       569 |       433 |       614 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        34 |        76 |       116 |       158 |       182 |       196 |       196 |        94 |
|                  jbird                   |        34 |        36 |        39 |        39 |        39 |        39 |        39 |       708 |
|                    Δ                     |         0 |       -40 |       -77 |      -119 |      -143 |      -157 |      -157 |       614 |
|              Improvement %               |         0 |        53 |        66 |        75 |        79 |        80 |        80 |       614 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |        94 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       708 |
|                    Δ                     |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |       614 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       614 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |        94 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       708 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       614 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       614 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        94 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       708 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       614 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       614 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4563 |      4564 |      4564 |      4564 |      4564 |      4564 |      4564 |        94 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       708 |
|                    Δ                     |       669 |       668 |       668 |       668 |       668 |       668 |       668 |       614 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       614 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       250 |       250 |       250 |       250 |       250 |       263 |       263 |        94 |
|                  jbird                   |        31 |        31 |        31 |        31 |        31 |        31 |        33 |       708 |
|                    Δ                     |      -219 |      -219 |      -219 |      -219 |      -219 |      -232 |      -230 |       614 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        87 |       614 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |        94 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       708 |
|                    Δ                     |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |       614 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       614 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        94 |
|                  jbird                   |         1 |         1 |         1 |         1 |         2 |         2 |         2 |       677 |
|                    Δ                     |        -9 |       -10 |       -10 |       -10 |        -9 |        -9 |        -9 |       583 |
|              Improvement %               |        90 |        91 |        91 |        91 |        82 |        82 |        82 |       583 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        94 |
|                  jbird                   |         1 |         1 |         1 |         1 |         2 |         2 |         2 |       677 |
|                    Δ                     |        -9 |       -10 |       -10 |       -10 |        -9 |       -10 |       -10 |       583 |
|              Improvement %               |        90 |        91 |        91 |        91 |        82 |        83 |        83 |       583 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        98 |        95 |        93 |        92 |        92 |        87 |        87 |        94 |
|                  jbird                   |       750 |       685 |       678 |       671 |       663 |       647 |       625 |       677 |
|                    Δ                     |       652 |       590 |       585 |       579 |       571 |       560 |       538 |       583 |
|              Improvement %               |       665 |       621 |       629 |       629 |       621 |       644 |       618 |       583 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        36 |        74 |       116 |       158 |       180 |       197 |       197 |        94 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       677 |
|                    Δ                     |        -2 |       -38 |       -80 |      -122 |      -144 |      -161 |      -161 |       583 |
|              Improvement %               |         6 |        51 |        69 |        77 |        80 |        82 |        82 |       583 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |        94 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       677 |
|                    Δ                     |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |       583 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       583 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |        94 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       677 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       583 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       583 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        94 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       677 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       583 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       583 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4563 |      4564 |      4564 |      4564 |      4564 |      4564 |      4564 |        94 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       677 |
|                    Δ                     |       669 |       668 |       668 |       668 |       668 |       668 |       668 |       583 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       583 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       251 |       251 |       252 |       252 |       252 |       262 |       262 |        94 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        33 |        34 |       677 |
|                    Δ                     |      -219 |      -219 |      -220 |      -220 |      -220 |      -229 |      -228 |       583 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |       583 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |        94 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       677 |
|                    Δ                     |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |       583 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       583 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2440 |      2626 |      2646 |      2681 |      2705 |      2898 |      2938 |       377 |
|                  jbird                   |       320 |       353 |       357 |       363 |       370 |       384 |       456 |      2766 |
|                    Δ                     |     -2120 |     -2273 |     -2289 |     -2318 |     -2335 |     -2514 |     -2482 |      2389 |
|              Improvement %               |        87 |        87 |        87 |        86 |        86 |        87 |        84 |      2389 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2436 |      2626 |      2648 |      2685 |      2707 |      2900 |      2940 |       377 |
|                  jbird                   |       321 |       354 |       359 |       365 |       372 |       386 |       434 |      2766 |
|                    Δ                     |     -2115 |     -2272 |     -2289 |     -2320 |     -2335 |     -2514 |     -2506 |      2389 |
|              Improvement %               |        87 |        87 |        86 |        86 |        86 |        87 |        85 |      2389 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       410 |       381 |       378 |       373 |       370 |       345 |       340 |       377 |
|                  jbird                   |      3128 |      2839 |      2801 |      2755 |      2707 |      2603 |      2195 |      2766 |
|                    Δ                     |      2718 |      2458 |      2423 |      2382 |      2337 |      2258 |      1855 |      2389 |
|              Improvement %               |       663 |       645 |       641 |       639 |       632 |       654 |       546 |      2389 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        72 |       115 |       156 |       182 |       195 |       198 |       377 |
|                  jbird                   |        31 |        32 |        33 |        33 |        33 |        33 |        33 |      2766 |
|                    Δ                     |         0 |       -40 |       -82 |      -123 |      -149 |      -162 |      -165 |      2389 |
|              Improvement %               |         0 |        56 |        71 |        79 |        82 |        83 |        83 |      2389 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |       377 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2766 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      2389 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2389 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3748 |       377 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2766 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3748 |      2389 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2389 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       377 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2766 |
|                    Δ                     |     -2699 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |      2389 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      2389 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1152 |      1153 |      1153 |      1153 |      1153 |      1153 |      1156 |       377 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2766 |
|                    Δ                     |       222 |       221 |       221 |       221 |       221 |       221 |       218 |      2389 |
|              Improvement %               |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |      2389 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        62 |        62 |        62 |        62 |        62 |        65 |        65 |       377 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2766 |
|                    Δ                     |       -54 |       -54 |       -54 |       -54 |       -54 |       -57 |       -57 |      2389 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        88 |      2389 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |       377 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2766 |
|                    Δ                     |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      2389 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      2389 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2484 |      2683 |      2724 |      2753 |      2781 |      3015 |      3177 |       367 |
|                  jbird                   |       334 |       368 |       373 |       378 |       385 |       401 |       463 |      2652 |
|                    Δ                     |     -2150 |     -2315 |     -2351 |     -2375 |     -2396 |     -2614 |     -2714 |      2285 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        87 |        85 |      2285 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2485 |      2683 |      2726 |      2753 |      2781 |      3013 |      3158 |       367 |
|                  jbird                   |       336 |       370 |       375 |       380 |       387 |       402 |       467 |      2652 |
|                    Δ                     |     -2149 |     -2313 |     -2351 |     -2373 |     -2394 |     -2611 |     -2691 |      2285 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        87 |        85 |      2285 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       403 |       373 |       367 |       364 |       360 |       332 |       315 |       367 |
|                  jbird                   |      2991 |      2717 |      2683 |      2647 |      2601 |      2495 |      2161 |      2652 |
|                    Δ                     |      2588 |      2344 |      2316 |      2283 |      2241 |      2163 |      1846 |      2285 |
|              Improvement %               |       642 |       628 |       631 |       627 |       622 |       652 |       586 |      2285 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        72 |       111 |       153 |       176 |       192 |       192 |       367 |
|                  jbird                   |        31 |        32 |        32 |        32 |        33 |        33 |        33 |      2652 |
|                    Δ                     |         0 |       -40 |       -79 |      -121 |      -143 |      -159 |      -159 |      2285 |
|              Improvement %               |         0 |        56 |        71 |        79 |        81 |        83 |        83 |      2285 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |       367 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2652 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      2285 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2285 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3748 |       367 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2652 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3748 |      2285 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2285 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       367 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2652 |
|                    Δ                     |     -2699 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |      2285 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      2285 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1152 |      1153 |      1153 |      1153 |      1153 |      1153 |      1156 |       367 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2652 |
|                    Δ                     |       222 |       221 |       221 |       221 |       221 |       221 |       218 |      2285 |
|              Improvement %               |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |      2285 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        64 |        64 |        64 |        64 |        64 |        67 |        67 |       367 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      2652 |
|                    Δ                     |       -56 |       -56 |       -56 |       -56 |       -56 |       -59 |       -58 |      2285 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        87 |      2285 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |       367 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2652 |
|                    Δ                     |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      2285 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      2285 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5062 |      5452 |      5526 |      5587 |      5845 |      6009 |      6030 |       180 |
|                  jbird                   |       640 |       701 |       712 |       722 |       732 |       755 |       827 |      1401 |
|                    Δ                     |     -4422 |     -4751 |     -4814 |     -4865 |     -5113 |     -5254 |     -5203 |      1221 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        86 |      1221 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5068 |      5448 |      5526 |      5591 |      5841 |      6009 |      6036 |       180 |
|                  jbird                   |       642 |       703 |       713 |       724 |       733 |       758 |       829 |      1401 |
|                    Δ                     |     -4426 |     -4745 |     -4813 |     -4867 |     -5108 |     -5251 |     -5207 |      1221 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        86 |      1221 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       198 |       183 |       181 |       179 |       171 |       167 |       166 |       180 |
|                  jbird                   |      1562 |      1426 |      1405 |      1385 |      1367 |      1326 |      1209 |      1401 |
|                    Δ                     |      1364 |      1243 |      1224 |      1206 |      1196 |      1159 |      1043 |      1221 |
|              Improvement %               |       689 |       679 |       676 |       674 |       699 |       694 |       628 |      1221 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        72 |       110 |       150 |       173 |       189 |       189 |       180 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1401 |
|                    Δ                     |        -1 |       -39 |       -77 |      -117 |      -140 |      -156 |      -156 |      1221 |
|              Improvement %               |         3 |        54 |        70 |        78 |        81 |        83 |        83 |      1221 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       703 |       703 |       703 |       703 |       703 |       703 |       703 |       180 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1401 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      1221 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1221 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7432 |       180 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1401 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7432 |      1221 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1221 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       180 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      1401 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      1221 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |      1221 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |       180 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1401 |
|                    Δ                     |       459 |       459 |       459 |       459 |       459 |       459 |       459 |      1221 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |      1221 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       129 |       129 |       129 |       129 |       129 |       136 |       136 |       180 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1401 |
|                    Δ                     |      -113 |      -113 |      -113 |      -113 |      -113 |      -120 |      -120 |      1221 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        88 |      1221 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |       180 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1401 |
|                    Δ                     |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      1221 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      1221 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4904 |      5177 |      5239 |      5317 |      5595 |      5722 |      5783 |       190 |
|                  jbird                   |       672 |       736 |       744 |       753 |       763 |       792 |       821 |      1340 |
|                    Δ                     |     -4232 |     -4441 |     -4495 |     -4564 |     -4832 |     -4930 |     -4962 |      1150 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        86 |        86 |      1150 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4906 |      5169 |      5235 |      5325 |      5599 |      5722 |      5790 |       190 |
|                  jbird                   |       673 |       737 |       745 |       754 |       764 |       791 |       822 |      1340 |
|                    Δ                     |     -4233 |     -4432 |     -4490 |     -4571 |     -4835 |     -4931 |     -4968 |      1150 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        86 |        86 |      1150 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       204 |       193 |       191 |       188 |       179 |       175 |       173 |       190 |
|                  jbird                   |      1489 |      1360 |      1344 |      1328 |      1311 |      1263 |      1218 |      1340 |
|                    Δ                     |      1285 |      1167 |      1153 |      1140 |      1132 |      1088 |      1045 |      1150 |
|              Improvement %               |       630 |       605 |       604 |       606 |       632 |       622 |       604 |      1150 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        74 |       115 |       157 |       180 |       197 |       198 |       190 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1340 |
|                    Δ                     |        -1 |       -41 |       -82 |      -124 |      -147 |      -164 |      -165 |      1150 |
|              Improvement %               |         3 |        55 |        71 |        79 |        82 |        83 |        83 |      1150 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       703 |       703 |       703 |       703 |       703 |       703 |       703 |       190 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1340 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      1150 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1150 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7432 |       190 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1340 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7432 |      1150 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1150 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       190 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      1340 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      1150 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |      1150 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |       190 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1340 |
|                    Δ                     |       459 |       459 |       459 |       459 |       459 |       459 |       459 |      1150 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |      1150 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       124 |       124 |       124 |       124 |       124 |       130 |       131 |       190 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1340 |
|                    Δ                     |      -108 |      -108 |      -108 |      -108 |      -108 |      -114 |      -114 |      1150 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        87 |      1150 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |       190 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1340 |
|                    Δ                     |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      1150 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      1150 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        52 |        53 |        53 |        54 |        54 |        57 |        57 |        19 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       143 |
|                    Δ                     |       -45 |       -46 |       -46 |       -47 |       -47 |       -50 |       -50 |       124 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        88 |       124 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        52 |        53 |        53 |        54 |        54 |        57 |        57 |        19 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       143 |
|                    Δ                     |       -45 |       -46 |       -46 |       -47 |       -47 |       -50 |       -50 |       124 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        88 |       124 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        19 |        19 |        19 |        19 |        18 |        18 |        18 |        19 |
|                  jbird                   |       150 |       144 |       142 |       141 |       140 |       138 |       136 |       143 |
|                    Δ                     |       131 |       125 |       123 |       122 |       122 |       120 |       118 |       124 |
|              Improvement %               |       689 |       658 |       647 |       642 |       678 |       667 |       656 |       124 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        57 |        92 |       136 |       179 |       205 |       213 |       213 |        19 |
|                  jbird                   |        56 |        58 |        58 |        58 |        58 |        58 |        58 |       143 |
|                    Δ                     |        -1 |       -34 |       -78 |      -121 |      -147 |      -155 |      -155 |       124 |
|              Improvement %               |         2 |        37 |        57 |        68 |        72 |        73 |        73 |       124 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       143 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |       124 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       124 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       143 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       124 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       124 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       143 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       124 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       124 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        23 |        23 |        23 |        23 |        23 |        23 |        23 |        19 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       143 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       124 |
|              Improvement %               |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       124 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1254 |      1254 |      1255 |      1255 |      1256 |      1256 |      1256 |        19 |
|                  jbird                   |       156 |       156 |       156 |       156 |       156 |       157 |       158 |       143 |
|                    Δ                     |     -1098 |     -1098 |     -1099 |     -1099 |     -1100 |     -1099 |     -1098 |       124 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        87 |       124 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       143 |
|                    Δ                     |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       124 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       124 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        53 |        54 |        54 |        54 |        54 |        54 |        19 |
|                  jbird                   |         7 |         7 |         7 |         7 |         8 |         8 |         8 |       135 |
|                    Δ                     |       -46 |       -46 |       -47 |       -47 |       -46 |       -46 |       -46 |       116 |
|              Improvement %               |        87 |        87 |        87 |        87 |        85 |        85 |        85 |       116 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        53 |        54 |        54 |        54 |        54 |        54 |        19 |
|                  jbird                   |         7 |         7 |         7 |         7 |         8 |         8 |         8 |       135 |
|                    Δ                     |       -46 |       -46 |       -47 |       -47 |       -46 |       -46 |       -46 |       116 |
|              Improvement %               |        87 |        87 |        87 |        87 |        85 |        85 |        85 |       116 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        19 |        19 |        19 |        19 |        18 |        18 |        18 |        19 |
|                  jbird                   |       143 |       136 |       135 |       134 |       133 |       132 |       131 |       135 |
|                    Δ                     |       124 |       117 |       116 |       115 |       115 |       114 |       113 |       116 |
|              Improvement %               |       653 |       616 |       611 |       605 |       639 |       633 |       628 |       116 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        57 |        92 |       136 |       179 |       205 |       213 |       213 |        19 |
|                  jbird                   |        56 |        58 |        71 |        73 |        73 |        73 |        73 |       135 |
|                    Δ                     |        -1 |       -34 |       -65 |      -106 |      -132 |      -140 |      -140 |       116 |
|              Improvement %               |         2 |        37 |        48 |        59 |        64 |        66 |        66 |       116 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       135 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |       116 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       116 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       135 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       116 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       116 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       135 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       116 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       116 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        23 |        23 |        23 |        23 |        23 |        23 |        23 |        19 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       135 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       116 |
|              Improvement %               |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       116 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1259 |      1259 |      1260 |      1260 |      1261 |      1261 |      1261 |        19 |
|                  jbird                   |       162 |       162 |       162 |       162 |       162 |       164 |       166 |       135 |
|                    Δ                     |     -1097 |     -1097 |     -1098 |     -1098 |     -1099 |     -1097 |     -1095 |       116 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |       116 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       135 |
|                    Δ                     |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       116 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       116 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       592 |       654 |       662 |       671 |       681 |       716 |       742 |      1499 |
|                  jbird                   |        81 |        86 |        91 |        92 |        95 |       108 |       133 |     10717 |
|                    Δ                     |      -511 |      -568 |      -571 |      -579 |      -586 |      -608 |      -609 |      9218 |
|              Improvement %               |        86 |        87 |        86 |        86 |        86 |        85 |        82 |      9218 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       594 |       656 |       664 |       672 |       682 |       719 |       743 |      1499 |
|                  jbird                   |        82 |        88 |        92 |        94 |        96 |       108 |       130 |     10717 |
|                    Δ                     |      -512 |      -568 |      -572 |      -578 |      -586 |      -611 |      -613 |      9218 |
|              Improvement %               |        86 |        87 |        86 |        86 |        86 |        85 |        83 |      9218 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1689 |      1528 |      1511 |      1492 |      1469 |      1398 |      1349 |      1499 |
|                  jbird                   |     12384 |     11583 |     11023 |     10879 |     10575 |      9239 |      7533 |     10717 |
|                    Δ                     |     10695 |     10055 |      9512 |      9387 |      9106 |      7841 |      6184 |      9218 |
|              Improvement %               |       633 |       658 |       630 |       629 |       620 |       561 |       458 |      9218 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        73 |       116 |       161 |       186 |       204 |       204 |      1499 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10717 |
|                    Δ                     |         0 |       -42 |       -85 |      -130 |      -155 |      -173 |      -173 |      9218 |
|              Improvement %               |         0 |        58 |        73 |        81 |        83 |        85 |        85 |      9218 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      1499 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10717 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      9218 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9218 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       981 |       981 |       981 |       981 |       981 |       981 |       983 |      1499 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10717 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -983 |      9218 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9218 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1499 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10717 |
|                    Δ                     |      -716 |      -716 |      -716 |      -716 |      -716 |      -716 |      -718 |      9218 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      9218 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       298 |       298 |       298 |       298 |       298 |       298 |       302 |      1499 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10717 |
|                    Δ                     |        46 |        46 |        46 |        46 |        46 |        46 |        42 |      9218 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      9218 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        16 |        16 |        16 |        16 |        16 |        16 |      1499 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10717 |
|                    Δ                     |       -13 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |      9218 |
|              Improvement %               |        87 |        88 |        88 |        88 |        88 |        88 |        88 |      9218 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       403 |       403 |       403 |       403 |       403 |       403 |       403 |      1499 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10717 |
|                    Δ                     |       265 |       265 |       265 |       265 |       265 |       265 |       265 |      9218 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      9218 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       603 |       675 |       683 |       692 |       703 |       741 |       823 |      1454 |
|                  jbird                   |        85 |        91 |        95 |        96 |        99 |       113 |       137 |     10221 |
|                    Δ                     |      -518 |      -584 |      -588 |      -596 |      -604 |      -628 |      -686 |      8767 |
|              Improvement %               |        86 |        87 |        86 |        86 |        86 |        85 |        83 |      8767 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       604 |       677 |       685 |       694 |       706 |       744 |       825 |      1454 |
|                  jbird                   |        86 |        92 |        97 |        98 |       101 |       112 |       132 |     10221 |
|                    Δ                     |      -518 |      -585 |      -588 |      -596 |      -605 |      -632 |      -693 |      8767 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        84 |      8767 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1659 |      1482 |      1465 |      1445 |      1422 |      1349 |      1215 |      1454 |
|                  jbird                   |     11788 |     11031 |     10503 |     10375 |     10071 |      8863 |      7288 |     10221 |
|                    Δ                     |     10129 |      9549 |      9038 |      8930 |      8649 |      7514 |      6073 |      8767 |
|              Improvement %               |       611 |       644 |       617 |       618 |       608 |       557 |       500 |      8767 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        72 |       114 |       157 |       182 |       198 |       198 |      1454 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10221 |
|                    Δ                     |         0 |       -41 |       -83 |      -126 |      -151 |      -167 |      -167 |      8767 |
|              Improvement %               |         0 |        57 |        73 |        80 |        83 |        84 |        84 |      8767 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      1454 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10221 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      8767 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8767 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       981 |       981 |       981 |       981 |       981 |       981 |       983 |      1454 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10221 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -983 |      8767 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8767 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1454 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10221 |
|                    Δ                     |      -716 |      -716 |      -716 |      -716 |      -716 |      -716 |      -718 |      8767 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      8767 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       298 |       298 |       298 |       298 |       298 |       298 |       302 |      1454 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10221 |
|                    Δ                     |        46 |        46 |        46 |        46 |        46 |        46 |        42 |      8767 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      8767 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1454 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10221 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -15 |       -15 |      8767 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        88 |      8767 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       403 |       403 |       403 |       403 |       403 |       403 |       403 |      1454 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10221 |
|                    Δ                     |       265 |       265 |       265 |       265 |       265 |       265 |       265 |      8767 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      8767 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3071 |      3279 |      3301 |      3322 |      3357 |      3592 |      3670 |       302 |
|                  jbird                   |       100 |       111 |       112 |       116 |       119 |       129 |       177 |      8507 |
|                    Δ                     |     -2971 |     -3168 |     -3189 |     -3206 |     -3238 |     -3463 |     -3493 |      8205 |
|              Improvement %               |        97 |        97 |        97 |        97 |        96 |        96 |        95 |      8205 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3072 |      3281 |      3303 |      3328 |      3361 |      3594 |      3672 |       302 |
|                  jbird                   |       101 |       113 |       114 |       118 |       121 |       131 |       181 |      8507 |
|                    Δ                     |     -2971 |     -3168 |     -3189 |     -3210 |     -3240 |     -3463 |     -3491 |      8205 |
|              Improvement %               |        97 |        97 |        97 |        96 |        96 |        96 |        95 |      8205 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       326 |       305 |       303 |       301 |       298 |       278 |       272 |       302 |
|                  jbird                   |     10025 |      8975 |      8911 |      8591 |      8423 |      7767 |      5642 |      8507 |
|                    Δ                     |      9699 |      8670 |      8608 |      8290 |      8125 |      7489 |      5370 |      8205 |
|              Improvement %               |      2975 |      2843 |      2841 |      2754 |      2727 |      2694 |      1974 |      8205 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        37 |        43 |        50 |        54 |        56 |        56 |       302 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |      8507 |
|                    Δ                     |         0 |        -5 |       -11 |       -18 |       -22 |       -24 |       -24 |      8205 |
|              Improvement %               |         0 |        14 |        26 |        36 |        41 |        43 |        43 |      8205 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        80 |        80 |        80 |        80 |        80 |        80 |        84 |       302 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8507 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -84 |      8205 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8205 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         2 |         2 |         2 |         2 |         2 |         2 |         4 |       302 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8507 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -4 |      8205 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8205 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        17 |        17 |        17 |        17 |        17 |        17 |        19 |       302 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8507 |
|                    Δ                     |        11 |        11 |        11 |        11 |        11 |        11 |         9 |      8205 |
|              Improvement %               |       -65 |       -65 |       -65 |       -65 |       -65 |       -65 |       -47 |      8205 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       990 |       990 |       990 |       990 |       990 |       990 |       994 |       302 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      8507 |
|                    Δ                     |       168 |       168 |       168 |       168 |       168 |       168 |       164 |      8205 |
|              Improvement %               |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |      8205 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        81 |        81 |        81 |        81 |        81 |        86 |        86 |       302 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         4 |      8507 |
|                    Δ                     |       -78 |       -78 |       -78 |       -78 |       -78 |       -83 |       -82 |      8205 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        97 |        95 |      8205 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       302 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8507 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      8205 |
|              Improvement %               |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |      8205 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        68 |        68 |        69 |        70 |        70 |        70 |        70 |        15 |
|                  jbird                   |         6 |         6 |         6 |         6 |         6 |         6 |         6 |       172 |
|                    Δ                     |       -62 |       -62 |       -63 |       -64 |       -64 |       -64 |       -64 |       157 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        91 |       157 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        68 |        68 |        69 |        70 |        70 |        70 |        70 |        15 |
|                  jbird                   |         6 |         6 |         6 |         6 |         6 |         6 |         6 |       172 |
|                    Δ                     |       -62 |       -62 |       -63 |       -64 |       -64 |       -64 |       -64 |       157 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        91 |       157 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        14 |        14 |        14 |        14 |        15 |
|                  jbird                   |       181 |       173 |       171 |       170 |       168 |       167 |       167 |       172 |
|                    Δ                     |       166 |       158 |       156 |       156 |       154 |       153 |       153 |       157 |
|              Improvement %               |      1107 |      1053 |      1040 |      1114 |      1100 |      1093 |      1093 |       157 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        56 |        82 |       117 |       151 |       168 |       176 |       176 |        15 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       172 |
|                    Δ                     |        -8 |       -30 |       -65 |       -99 |      -116 |      -124 |      -124 |       157 |
|              Improvement %               |        14 |        37 |        56 |        66 |        69 |        70 |        70 |       157 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |        15 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       172 |
|                    Δ                     |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |       157 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       157 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        15 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       172 |
|                    Δ                     |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |       157 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       157 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       279 |       279 |       279 |       279 |       279 |       279 |       279 |        15 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       172 |
|                    Δ                     |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |       157 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       157 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        15 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       172 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |       157 |
|              Improvement %               |        10 |        10 |        10 |        10 |        10 |        10 |        10 |       157 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1725 |      1726 |      1726 |      1726 |      1726 |      1727 |      1727 |        15 |
|                  jbird                   |       157 |       157 |       157 |       158 |       158 |       158 |       159 |       172 |
|                    Δ                     |     -1568 |     -1569 |     -1569 |     -1568 |     -1568 |     -1569 |     -1568 |       157 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        91 |       157 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       112 |       112 |       112 |       112 |       112 |       112 |       112 |        15 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       172 |
|                    Δ                     |       -56 |       -56 |       -56 |       -56 |       -56 |       -56 |       -56 |       157 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       157 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       143 |       152 |       161 |       166 |       172 |       185 |       201 |      6119 |
|                  jbird                   |        29 |        30 |        33 |        33 |        33 |        41 |        58 |     28321 |
|                    Δ                     |      -114 |      -122 |      -128 |      -133 |      -139 |      -144 |      -143 |     22202 |
|              Improvement %               |        80 |        80 |        80 |        80 |        81 |        78 |        71 |     22202 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       145 |       153 |       162 |       167 |       174 |       188 |       203 |      6119 |
|                  jbird                   |        30 |        31 |        34 |        34 |        35 |        43 |        53 |     28321 |
|                    Δ                     |      -115 |      -122 |      -128 |      -133 |      -139 |      -145 |      -150 |     22202 |
|              Improvement %               |        79 |        80 |        79 |        80 |        80 |        77 |        74 |     22202 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6975 |      6599 |      6219 |      6039 |      5807 |      5395 |      4971 |      6119 |
|                  jbird                   |     34934 |     33407 |     30655 |     30383 |     30047 |     24367 |     17155 |     28321 |
|                    Δ                     |     27959 |     26808 |     24436 |     24344 |     24240 |     18972 |     12184 |     22202 |
|              Improvement %               |       401 |       406 |       393 |       403 |       417 |       352 |       245 |     22202 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        42 |        53 |        64 |        71 |        75 |        75 |      6119 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     28321 |
|                    Δ                     |         0 |       -12 |       -23 |       -34 |       -41 |       -45 |       -45 |     22202 |
|              Improvement %               |         0 |        29 |        43 |        53 |        58 |        60 |        60 |     22202 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4864 |      4867 |      4867 |      4867 |      4867 |      4867 |      8960 |      6119 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     28321 |
|                    Δ                     |     -4864 |     -4867 |     -4867 |     -4867 |     -4867 |     -4867 |     -8960 |     22202 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     22202 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       152 |       152 |       152 |       152 |       152 |       152 |       155 |      6119 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     28321 |
|                    Δ                     |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -155 |     22202 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     22202 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      6119 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     28321 |
|                    Δ                     |      -302 |      -302 |      -302 |      -302 |      -302 |      -302 |      -305 |     22202 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |     22202 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        64 |        64 |        64 |        64 |        64 |        64 |        68 |      6119 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     28321 |
|                    Δ                     |        27 |        27 |        27 |        27 |        27 |        27 |        23 |     22202 |
|              Improvement %               |       -42 |       -42 |       -42 |       -42 |       -42 |       -42 |       -34 |     22202 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3005 |      3006 |      3006 |      3013 |      3015 |      3133 |      3181 |      6119 |
|                  jbird                   |       733 |       733 |       733 |       733 |       733 |       751 |       796 |     28321 |
|                    Δ                     |     -2272 |     -2273 |     -2273 |     -2280 |     -2282 |     -2382 |     -2385 |     22202 |
|              Improvement %               |        76 |        76 |        76 |        76 |        76 |        76 |        75 |     22202 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       304 |       304 |       304 |       304 |       304 |       304 |       304 |      6119 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     28321 |
|                    Δ                     |      -150 |      -150 |      -150 |      -150 |      -150 |      -150 |      -150 |     22202 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        49 |        49 |     22202 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1706 |      1844 |      1859 |      1875 |      1897 |      2116 |      2197 |       535 |
|                  jbird                   |        86 |        94 |        96 |        97 |       100 |       113 |       132 |     10064 |
|                    Δ                     |     -1620 |     -1750 |     -1763 |     -1778 |     -1797 |     -2003 |     -2065 |      9529 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        94 |      9529 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1709 |      1846 |      1862 |      1876 |      1901 |      2116 |      2199 |       535 |
|                  jbird                   |        88 |        95 |        98 |        99 |       102 |       113 |       134 |     10064 |
|                    Δ                     |     -1621 |     -1751 |     -1764 |     -1777 |     -1799 |     -2003 |     -2065 |      9529 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        94 |      9529 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       586 |       542 |       538 |       534 |       527 |       473 |       455 |       535 |
|                  jbird                   |     11611 |     10655 |     10375 |     10271 |      9991 |      8839 |      7576 |     10064 |
|                    Δ                     |     11025 |     10113 |      9837 |      9737 |      9464 |      8366 |      7121 |      9529 |
|              Improvement %               |      1881 |      1866 |      1828 |      1823 |      1796 |      1769 |      1565 |      9529 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        43 |        54 |        66 |        74 |        78 |        78 |       535 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10064 |
|                    Δ                     |         0 |       -12 |       -23 |       -35 |       -43 |       -47 |       -47 |      9529 |
|              Improvement %               |         0 |        28 |        43 |        53 |        58 |        60 |        60 |      9529 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        71 |        71 |        71 |        71 |        71 |        71 |        75 |       535 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10064 |
|                    Δ                     |       -71 |       -71 |       -71 |       -71 |       -71 |       -71 |       -75 |      9529 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9529 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       802 |       802 |       802 |       802 |       802 |       802 |       804 |       535 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10064 |
|                    Δ                     |      -802 |      -802 |      -802 |      -802 |      -802 |      -802 |      -804 |      9529 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9529 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       535 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |     10064 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      9529 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      9529 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       575 |       575 |       575 |       575 |       575 |       575 |       579 |       535 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |     10064 |
|                    Δ                     |        86 |        86 |        86 |        86 |        86 |        86 |        82 |      9529 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      9529 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        47 |        47 |        47 |        47 |        50 |        50 |       535 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |     10064 |
|                    Δ                     |       -44 |       -44 |       -44 |       -44 |       -44 |       -47 |       -47 |      9529 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        94 |      9529 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |       535 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |     10064 |
|                    Δ                     |         4 |         4 |         4 |         4 |         4 |         4 |         4 |      9529 |
|              Improvement %               |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |      9529 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1186 |      1302 |      1313 |      1324 |      1336 |      1404 |      1463 |       759 |
|                  jbird                   |        56 |        62 |        64 |        65 |        67 |        80 |       118 |     14956 |
|                    Δ                     |     -1130 |     -1240 |     -1249 |     -1259 |     -1269 |     -1324 |     -1345 |     14197 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        92 |     14197 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1187 |      1304 |      1315 |      1326 |      1338 |      1406 |      1465 |       759 |
|                  jbird                   |        58 |        63 |        65 |        67 |        69 |        79 |       119 |     14956 |
|                    Δ                     |     -1129 |     -1241 |     -1250 |     -1259 |     -1269 |     -1327 |     -1346 |     14197 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        92 |     14197 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       843 |       769 |       762 |       755 |       749 |       712 |       683 |       759 |
|                  jbird                   |     17725 |     16135 |     15751 |     15343 |     14951 |     12575 |      8484 |     14956 |
|                    Δ                     |     16882 |     15366 |     14989 |     14588 |     14202 |     11863 |      7801 |     14197 |
|              Improvement %               |      2003 |      1998 |      1967 |      1932 |      1896 |      1666 |      1142 |     14197 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        54 |        78 |       102 |       118 |       126 |       127 |       759 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     14956 |
|                    Δ                     |         0 |       -23 |       -47 |       -71 |       -87 |       -95 |       -96 |     14197 |
|              Improvement %               |         0 |        43 |        60 |        70 |        74 |        75 |        76 |     14197 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        89 |        89 |        89 |        89 |        89 |        89 |        93 |       759 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14956 |
|                    Δ                     |       -89 |       -89 |       -89 |       -89 |       -89 |       -89 |       -93 |     14197 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14197 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2088 |      2089 |      2089 |      2089 |      2089 |      2089 |      2090 |       759 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14956 |
|                    Δ                     |     -2088 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     -2090 |     14197 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14197 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2681 |      2681 |      2681 |      2681 |      2681 |      2681 |      2683 |       759 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     14956 |
|                    Δ                     |     -2671 |     -2671 |     -2671 |     -2671 |     -2671 |     -2671 |     -2673 |     14197 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     14197 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       368 |       368 |       368 |       368 |       368 |       368 |       372 |       759 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     14956 |
|                    Δ                     |       -39 |       -39 |       -39 |       -39 |       -39 |       -39 |       -43 |     14197 |
|              Improvement %               |        11 |        11 |        11 |        11 |        11 |        11 |        12 |     14197 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        31 |        31 |        31 |        31 |        33 |        33 |       759 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     14956 |
|                    Δ                     |       -29 |       -29 |       -29 |       -29 |       -29 |       -31 |       -31 |     14197 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        94 |     14197 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       593 |       593 |       593 |       593 |       593 |       593 |       593 |       759 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     14956 |
|                    Δ                     |      -583 |      -583 |      -583 |      -583 |      -583 |      -583 |      -583 |     14197 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |     14197 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        92 |       102 |       107 |       110 |       113 |       123 |       156 |      9095 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        13 |        38 |     74899 |
|                    Δ                     |       -83 |       -92 |       -97 |      -100 |      -103 |      -110 |      -118 |     65804 |
|              Improvement %               |        90 |        90 |        91 |        91 |        91 |        89 |        76 |     65804 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |       104 |       109 |       111 |       115 |       125 |       158 |      9095 |
|                  jbird                   |        10 |        12 |        12 |        12 |        12 |        15 |        32 |     74899 |
|                    Δ                     |       -84 |       -92 |       -97 |       -99 |      -103 |      -110 |      -126 |     65804 |
|              Improvement %               |        89 |        88 |        89 |        89 |        90 |        88 |        80 |     65804 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10845 |      9791 |      9343 |      9119 |      8831 |      8127 |      6417 |      9095 |
|                  jbird                   |    111620 |     99199 |     97599 |     96831 |     95679 |     75519 |     26608 |     74899 |
|                    Δ                     |    100775 |     89408 |     88256 |     87712 |     86848 |     67392 |     20191 |     65804 |
|              Improvement %               |       929 |       913 |       945 |       962 |       983 |       829 |       315 |     65804 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |       172 |       320 |       471 |       558 |       610 |       617 |      9095 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     74899 |
|                    Δ                     |         0 |      -141 |      -289 |      -440 |      -527 |      -579 |      -586 |     65804 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |     65804 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        58 |        58 |        58 |        58 |        58 |        58 |        62 |      9095 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     74899 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -62 |     65804 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     65804 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        80 |        80 |        80 |        80 |        80 |        80 |        83 |      9095 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     74899 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -83 |     65804 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     65804 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      9095 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     74899 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |     65804 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |     65804 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        73 |        73 |        73 |        73 |        73 |        73 |        77 |      9095 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     74899 |
|                    Δ                     |        53 |        53 |        53 |        53 |        53 |        53 |        49 |     65804 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -64 |     65804 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2494 |      2511 |      2519 |      2527 |      2542 |      2679 |      2723 |      9095 |
|                  jbird                   |       230 |       231 |       231 |       231 |       231 |       235 |       288 |     74899 |
|                    Δ                     |     -2264 |     -2280 |     -2288 |     -2296 |     -2311 |     -2444 |     -2435 |     65804 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        89 |     65804 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      9095 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     74899 |
|                    Δ                     |        69 |        69 |        69 |        69 |        69 |        69 |        69 |     65804 |
|              Improvement %               |      -862 |      -862 |      -862 |      -862 |      -862 |      -862 |      -862 |     65804 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      8801 |      9241 |      9339 |      9445 |      9560 |      9896 |      9985 |       107 |
|                  jbird                   |      1016 |      1106 |      1116 |      1127 |      1141 |      1217 |      1266 |       893 |
|                    Δ                     |     -7785 |     -8135 |     -8223 |     -8318 |     -8419 |     -8679 |     -8719 |       786 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        87 |       786 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      8794 |      9249 |      9339 |      9445 |      9552 |      9904 |      9998 |       107 |
|                  jbird                   |      1017 |      1107 |      1117 |      1128 |      1143 |      1218 |      1268 |       893 |
|                    Δ                     |     -7777 |     -8142 |     -8222 |     -8317 |     -8409 |     -8686 |     -8730 |       786 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        87 |       786 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       114 |       108 |       107 |       106 |       105 |       101 |       100 |       107 |
|                  jbird                   |       985 |       905 |       896 |       888 |       877 |       822 |       790 |       893 |
|                    Δ                     |       871 |       797 |       789 |       782 |       772 |       721 |       690 |       786 |
|              Improvement %               |       764 |       738 |       737 |       738 |       735 |       714 |       690 |       786 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        33 |        55 |        78 |       100 |       113 |       120 |       122 |       107 |
|                  jbird                   |        32 |        37 |        37 |        37 |        37 |        37 |        37 |       893 |
|                    Δ                     |        -1 |       -18 |       -41 |       -63 |       -76 |       -83 |       -85 |       786 |
|              Improvement %               |         3 |        33 |        53 |        63 |        67 |        69 |        70 |       786 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       669 |       669 |       669 |       669 |       669 |       669 |       669 |       107 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       893 |
|                    Δ                     |      -669 |      -669 |      -669 |      -669 |      -669 |      -669 |      -669 |       786 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       786 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6133 |      6134 |      6134 |      6134 |      6134 |      6134 |      6134 |       107 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       893 |
|                    Δ                     |     -6133 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |       786 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       786 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9774 |      9775 |      9775 |      9775 |      9775 |      9775 |      9775 |       107 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       893 |
|                    Δ                     |     -5723 |     -5724 |     -5724 |     -5724 |     -5724 |     -5724 |     -5724 |       786 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        59 |       786 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3160 |      3160 |      3160 |      3160 |      3160 |      3160 |      3160 |       107 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       893 |
|                    Δ                     |       751 |       751 |       751 |       751 |       751 |       751 |       751 |       786 |
|              Improvement %               |       -24 |       -24 |       -24 |       -24 |       -24 |       -24 |       -24 |       786 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       193 |       193 |       193 |       193 |       193 |       203 |       203 |       107 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       893 |
|                    Δ                     |      -169 |      -169 |      -169 |      -169 |      -169 |      -178 |      -178 |       786 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        88 |       786 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3641 |      3641 |      3641 |      3641 |      3641 |      3641 |      3641 |       107 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       893 |
|                    Δ                     |       410 |       410 |       410 |       410 |       410 |       410 |       410 |       786 |
|              Improvement %               |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       786 |

<p>
</details>

