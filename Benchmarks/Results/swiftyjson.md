## JBird vs SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        11 |        11 |        11 |        12 |        12 |        95 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         2 |         2 |       716 |
|                    Δ                     |        -9 |        -9 |       -10 |       -10 |       -10 |       -10 |       -10 |       621 |
|              Improvement %               |        90 |        90 |        91 |        91 |        91 |        83 |        83 |       621 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        11 |        11 |        11 |        12 |        12 |        95 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         2 |         2 |       716 |
|                    Δ                     |        -9 |        -9 |       -10 |       -10 |       -10 |       -10 |       -10 |       621 |
|              Improvement %               |        90 |        90 |        91 |        91 |        91 |        83 |        83 |       621 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        98 |        97 |        95 |        93 |        91 |        83 |        83 |        95 |
|                  jbird                   |       799 |       728 |       720 |       711 |       700 |       635 |       514 |       716 |
|                    Δ                     |       701 |       631 |       625 |       618 |       609 |       552 |       431 |       621 |
|              Improvement %               |       715 |       651 |       658 |       665 |       669 |       665 |       519 |       621 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        36 |        76 |       118 |       160 |       183 |       200 |       200 |        95 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       716 |
|                    Δ                     |        -2 |       -40 |       -82 |      -124 |      -147 |      -164 |      -164 |       621 |
|              Improvement %               |         6 |        53 |        69 |        78 |        80 |        82 |        82 |       621 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |        95 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       716 |
|                    Δ                     |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |       621 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       621 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |        95 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       716 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       621 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       621 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        95 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       716 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       621 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       621 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4563 |      4564 |      4564 |      4564 |      4564 |      4564 |      4564 |        95 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       716 |
|                    Δ                     |       669 |       668 |       668 |       668 |       668 |       668 |       668 |       621 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       621 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       250 |       250 |       250 |       251 |       251 |       264 |       264 |        95 |
|                  jbird                   |        31 |        31 |        31 |        31 |        31 |        32 |        33 |       716 |
|                    Δ                     |      -219 |      -219 |      -219 |      -220 |      -220 |      -232 |      -231 |       621 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        88 |       621 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |        95 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       716 |
|                    Δ                     |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |       621 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       621 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        96 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         1 |         2 |       698 |
|                    Δ                     |        -9 |        -9 |        -9 |       -10 |       -10 |       -10 |        -9 |       602 |
|              Improvement %               |        90 |        90 |        90 |        91 |        91 |        91 |        82 |       602 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        96 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         1 |         2 |       698 |
|                    Δ                     |        -9 |        -9 |        -9 |       -10 |       -10 |       -10 |        -9 |       602 |
|              Improvement %               |        90 |        90 |        90 |        91 |        91 |        91 |        82 |       602 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       100 |        97 |        96 |        95 |        94 |        88 |        88 |        96 |
|                  jbird                   |       769 |       705 |       698 |       692 |       686 |       669 |       628 |       698 |
|                    Δ                     |       669 |       608 |       602 |       597 |       592 |       581 |       540 |       602 |
|              Improvement %               |       669 |       627 |       627 |       628 |       630 |       660 |       614 |       602 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        34 |        76 |       118 |       160 |       186 |       201 |       201 |        96 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       698 |
|                    Δ                     |         0 |       -40 |       -82 |      -124 |      -150 |      -165 |      -165 |       602 |
|              Improvement %               |         0 |        53 |        69 |        78 |        81 |        82 |        82 |       602 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |        96 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       698 |
|                    Δ                     |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |       602 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       602 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |        96 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       698 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       602 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       602 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        96 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       698 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       602 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       602 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4563 |      4564 |      4564 |      4564 |      4564 |      4564 |      4564 |        96 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       698 |
|                    Δ                     |       669 |       668 |       668 |       668 |       668 |       668 |       668 |       602 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       602 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       246 |       246 |       246 |       247 |       247 |       260 |       260 |        96 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       698 |
|                    Δ                     |      -214 |      -214 |      -214 |      -215 |      -215 |      -228 |      -227 |       602 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        87 |       602 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |        96 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       698 |
|                    Δ                     |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |       602 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       602 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2489 |      2681 |      2710 |      2746 |      2798 |      2918 |      3147 |       368 |
|                  jbird                   |       315 |       345 |       350 |       356 |       364 |       377 |       403 |      2824 |
|                    Δ                     |     -2174 |     -2336 |     -2360 |     -2390 |     -2434 |     -2541 |     -2744 |      2456 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |      2456 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2490 |      2683 |      2712 |      2748 |      2800 |      2918 |      3030 |       368 |
|                  jbird                   |       316 |       346 |       351 |       358 |       366 |       379 |       407 |      2824 |
|                    Δ                     |     -2174 |     -2337 |     -2361 |     -2390 |     -2434 |     -2539 |     -2623 |      2456 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |      2456 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       402 |       373 |       369 |       364 |       358 |       343 |       318 |       368 |
|                  jbird                   |      3176 |      2903 |      2859 |      2807 |      2749 |      2651 |      2482 |      2824 |
|                    Δ                     |      2774 |      2530 |      2490 |      2443 |      2391 |      2308 |      2164 |      2456 |
|              Improvement %               |       690 |       678 |       675 |       671 |       668 |       673 |       681 |      2456 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        71 |       111 |       153 |       178 |       192 |       194 |       368 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2824 |
|                    Δ                     |         0 |       -39 |       -79 |      -121 |      -146 |      -160 |      -162 |      2456 |
|              Improvement %               |         0 |        55 |        71 |        79 |        82 |        83 |        84 |      2456 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |       368 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2824 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      2456 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2456 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3748 |       368 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2824 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3748 |      2456 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2456 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       368 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2824 |
|                    Δ                     |     -2699 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |      2456 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      2456 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1152 |      1153 |      1153 |      1153 |      1153 |      1153 |      1156 |       368 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2824 |
|                    Δ                     |       222 |       221 |       221 |       221 |       221 |       221 |       218 |      2456 |
|              Improvement %               |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |      2456 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        63 |        63 |        63 |        63 |        63 |        66 |        67 |       368 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2824 |
|                    Δ                     |       -55 |       -55 |       -55 |       -55 |       -55 |       -58 |       -59 |      2456 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        88 |      2456 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |       368 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2824 |
|                    Δ                     |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      2456 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      2456 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2475 |      2650 |      2675 |      2716 |      2777 |      3033 |      3104 |       371 |
|                  jbird                   |       324 |       356 |       360 |       367 |       374 |       389 |       467 |      2746 |
|                    Δ                     |     -2151 |     -2294 |     -2315 |     -2349 |     -2403 |     -2644 |     -2637 |      2375 |
|              Improvement %               |        87 |        87 |        87 |        86 |        87 |        87 |        85 |      2375 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2477 |      2648 |      2677 |      2718 |      2779 |      3002 |      3096 |       371 |
|                  jbird                   |       325 |       357 |       362 |       368 |       375 |       391 |       434 |      2746 |
|                    Δ                     |     -2152 |     -2291 |     -2315 |     -2350 |     -2404 |     -2611 |     -2662 |      2375 |
|              Improvement %               |        87 |        87 |        86 |        86 |        87 |        87 |        86 |      2375 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       404 |       378 |       374 |       368 |       360 |       330 |       322 |       371 |
|                  jbird                   |      3088 |      2813 |      2777 |      2729 |      2679 |      2573 |      2140 |      2746 |
|                    Δ                     |      2684 |      2435 |      2403 |      2361 |      2319 |      2243 |      1818 |      2375 |
|              Improvement %               |       664 |       644 |       643 |       642 |       644 |       680 |       565 |      2375 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        72 |       113 |       154 |       179 |       194 |       194 |       371 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        33 |        33 |      2746 |
|                    Δ                     |         0 |       -40 |       -81 |      -122 |      -147 |      -161 |      -161 |      2375 |
|              Improvement %               |         0 |        56 |        72 |        79 |        82 |        83 |        83 |      2375 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |       371 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2746 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      2375 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2375 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3748 |       371 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2746 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3748 |      2375 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2375 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       371 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2746 |
|                    Δ                     |     -2699 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |      2375 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      2375 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1152 |      1153 |      1153 |      1153 |      1153 |      1153 |      1156 |       371 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2746 |
|                    Δ                     |       222 |       221 |       221 |       221 |       221 |       221 |       218 |      2375 |
|              Improvement %               |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |      2375 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        63 |        63 |        63 |        63 |        63 |        66 |        66 |       371 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2746 |
|                    Δ                     |       -55 |       -55 |       -55 |       -55 |       -55 |       -58 |       -58 |      2375 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        88 |      2375 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |       371 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2746 |
|                    Δ                     |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      2375 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      2375 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5131 |      5390 |      5472 |      5554 |      5661 |      5870 |      5909 |       183 |
|                  jbird                   |       629 |       689 |       699 |       708 |       717 |       737 |       770 |      1428 |
|                    Δ                     |     -4502 |     -4701 |     -4773 |     -4846 |     -4944 |     -5133 |     -5139 |      1245 |
|              Improvement %               |        88 |        87 |        87 |        87 |        87 |        87 |        87 |      1245 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5134 |      5390 |      5472 |      5558 |      5657 |      5870 |      5910 |       183 |
|                  jbird                   |       631 |       690 |       700 |       710 |       718 |       735 |       772 |      1428 |
|                    Δ                     |     -4503 |     -4700 |     -4772 |     -4848 |     -4939 |     -5135 |     -5138 |      1245 |
|              Improvement %               |        88 |        87 |        87 |        87 |        87 |        87 |        87 |      1245 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       195 |       186 |       183 |       180 |       177 |       170 |       169 |       183 |
|                  jbird                   |      1589 |      1452 |      1432 |      1413 |      1395 |      1357 |      1298 |      1428 |
|                    Δ                     |      1394 |      1266 |      1249 |      1233 |      1218 |      1187 |      1129 |      1245 |
|              Improvement %               |       715 |       681 |       683 |       685 |       688 |       698 |       668 |      1245 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        73 |       113 |       153 |       177 |       191 |       193 |       183 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1428 |
|                    Δ                     |        -1 |       -40 |       -80 |      -120 |      -144 |      -158 |      -160 |      1245 |
|              Improvement %               |         3 |        55 |        71 |        78 |        81 |        83 |        83 |      1245 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       703 |       703 |       703 |       703 |       703 |       703 |       703 |       183 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1428 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      1245 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1245 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7432 |       183 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1428 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7432 |      1245 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1245 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       183 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      1428 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      1245 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |      1245 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |       183 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1428 |
|                    Δ                     |       459 |       459 |       459 |       459 |       459 |       459 |       459 |      1245 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |      1245 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       127 |       127 |       127 |       127 |       127 |       134 |       134 |       183 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1428 |
|                    Δ                     |      -111 |      -111 |      -111 |      -111 |      -111 |      -118 |      -117 |      1245 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        87 |      1245 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |       183 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1428 |
|                    Δ                     |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      1245 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      1245 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5173 |      5431 |      5501 |      5566 |      5677 |      6021 |      6074 |       182 |
|                  jbird                   |       648 |       709 |       718 |       726 |       734 |       751 |       856 |      1390 |
|                    Δ                     |     -4525 |     -4722 |     -4783 |     -4840 |     -4943 |     -5270 |     -5218 |      1208 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        86 |      1208 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5175 |      5431 |      5501 |      5575 |      5677 |      6025 |      6077 |       182 |
|                  jbird                   |       649 |       711 |       719 |       727 |       736 |       751 |       859 |      1390 |
|                    Δ                     |     -4526 |     -4720 |     -4782 |     -4848 |     -4941 |     -5274 |     -5218 |      1208 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        86 |      1208 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       193 |       184 |       182 |       180 |       176 |       166 |       165 |       182 |
|                  jbird                   |      1544 |      1410 |      1393 |      1378 |      1363 |      1332 |      1169 |      1390 |
|                    Δ                     |      1351 |      1226 |      1211 |      1198 |      1187 |      1166 |      1004 |      1208 |
|              Improvement %               |       700 |       666 |       665 |       666 |       674 |       702 |       608 |      1208 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        73 |       112 |       152 |       176 |       189 |       191 |       182 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1390 |
|                    Δ                     |        -1 |       -40 |       -79 |      -119 |      -143 |      -156 |      -158 |      1208 |
|              Improvement %               |         3 |        55 |        71 |        78 |        81 |        83 |        83 |      1208 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       703 |       703 |       703 |       703 |       703 |       703 |       703 |       182 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1390 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      1208 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1208 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7432 |       182 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1390 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7432 |      1208 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1208 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       182 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      1390 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      1208 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |      1208 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |       182 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1390 |
|                    Δ                     |       459 |       459 |       459 |       459 |       459 |       459 |       459 |      1208 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |      1208 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       128 |       128 |       128 |       128 |       128 |       135 |       135 |       182 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1390 |
|                    Δ                     |      -112 |      -112 |      -112 |      -112 |      -112 |      -119 |      -118 |      1208 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        87 |      1208 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |       182 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1390 |
|                    Δ                     |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      1208 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      1208 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        54 |        55 |        55 |        55 |        56 |        56 |        19 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       144 |
|                    Δ                     |       -46 |       -47 |       -48 |       -48 |       -48 |       -49 |       -49 |       125 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        88 |       125 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        54 |        55 |        55 |        55 |        56 |        56 |        19 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       144 |
|                    Δ                     |       -46 |       -47 |       -48 |       -48 |       -48 |       -49 |       -49 |       125 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        88 |       125 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        19 |        19 |        18 |        18 |        18 |        18 |        18 |        19 |
|                  jbird                   |       152 |       145 |       143 |       142 |       142 |       140 |       140 |       144 |
|                    Δ                     |       133 |       126 |       125 |       124 |       124 |       122 |       122 |       125 |
|              Improvement %               |       700 |       663 |       694 |       689 |       689 |       678 |       678 |       125 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        57 |        92 |       136 |       179 |       205 |       213 |       213 |        19 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       144 |
|                    Δ                     |        -2 |       -34 |       -78 |      -121 |      -147 |      -155 |      -155 |       125 |
|              Improvement %               |         4 |        37 |        57 |        68 |        72 |        73 |        73 |       125 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       144 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |       125 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       125 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       144 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       125 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       125 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       144 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       125 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       125 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        23 |        23 |        23 |        23 |        23 |        23 |        23 |        19 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       144 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       125 |
|              Improvement %               |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       125 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1252 |      1253 |      1253 |      1254 |      1255 |      1256 |      1256 |        19 |
|                  jbird                   |       157 |       157 |       157 |       157 |       157 |       158 |       159 |       144 |
|                    Δ                     |     -1095 |     -1096 |     -1096 |     -1097 |     -1098 |     -1098 |     -1097 |       125 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |       125 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       144 |
|                    Δ                     |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       125 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       125 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        53 |        54 |        54 |        55 |        55 |        55 |        19 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         8 |       140 |
|                    Δ                     |       -46 |       -46 |       -47 |       -47 |       -48 |       -48 |       -47 |       121 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        85 |       121 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        53 |        54 |        54 |        55 |        55 |        55 |        19 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         8 |       140 |
|                    Δ                     |       -46 |       -46 |       -47 |       -47 |       -48 |       -48 |       -47 |       121 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        85 |       121 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        19 |        19 |        19 |        18 |        18 |        18 |        18 |        19 |
|                  jbird                   |       150 |       142 |       139 |       137 |       137 |       135 |       131 |       140 |
|                    Δ                     |       131 |       123 |       120 |       119 |       119 |       117 |       113 |       121 |
|              Improvement %               |       689 |       647 |       632 |       661 |       661 |       650 |       628 |       121 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        57 |        92 |       136 |       179 |       205 |       213 |       213 |        19 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       140 |
|                    Δ                     |        -2 |       -34 |       -78 |      -121 |      -147 |      -155 |      -155 |       121 |
|              Improvement %               |         4 |        37 |        57 |        68 |        72 |        73 |        73 |       121 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       140 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |       121 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       121 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       140 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       121 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       121 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       140 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       121 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       121 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        23 |        23 |        23 |        23 |        23 |        23 |        23 |        19 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       140 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       121 |
|              Improvement %               |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       121 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1250 |      1252 |      1252 |      1252 |      1253 |      1254 |      1254 |        19 |
|                  jbird                   |       160 |       160 |       160 |       160 |       160 |       161 |       162 |       140 |
|                    Δ                     |     -1090 |     -1092 |     -1092 |     -1092 |     -1093 |     -1093 |     -1092 |       121 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |       121 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       140 |
|                    Δ                     |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       121 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       121 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       586 |       652 |       662 |       671 |       684 |       723 |       777 |      1504 |
|                  jbird                   |        79 |        85 |        89 |        91 |        93 |       106 |       124 |     10859 |
|                    Δ                     |      -507 |      -567 |      -573 |      -580 |      -591 |      -617 |      -653 |      9355 |
|              Improvement %               |        87 |        87 |        87 |        86 |        86 |        85 |        84 |      9355 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       588 |       653 |       664 |       673 |       685 |       723 |       772 |      1504 |
|                  jbird                   |        81 |        87 |        91 |        92 |        95 |       105 |       124 |     10859 |
|                    Δ                     |      -507 |      -566 |      -573 |      -581 |      -590 |      -618 |      -648 |      9355 |
|              Improvement %               |        86 |        87 |        86 |        86 |        86 |        85 |        84 |      9355 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1705 |      1534 |      1512 |      1490 |      1463 |      1384 |      1287 |      1504 |
|                  jbird                   |     12618 |     11719 |     11215 |     11047 |     10767 |      9447 |      8092 |     10859 |
|                    Δ                     |     10913 |     10185 |      9703 |      9557 |      9304 |      8063 |      6805 |      9355 |
|              Improvement %               |       640 |       664 |       642 |       641 |       636 |       583 |       529 |      9355 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        73 |       117 |       162 |       188 |       204 |       206 |      1504 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10859 |
|                    Δ                     |         0 |       -42 |       -86 |      -131 |      -157 |      -173 |      -175 |      9355 |
|              Improvement %               |         0 |        58 |        74 |        81 |        84 |        85 |        85 |      9355 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      1504 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10859 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      9355 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9355 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       981 |       981 |       981 |       981 |       981 |       981 |       983 |      1504 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10859 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -983 |      9355 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9355 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1504 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10859 |
|                    Δ                     |      -716 |      -716 |      -716 |      -716 |      -716 |      -716 |      -718 |      9355 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      9355 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       298 |       298 |       298 |       298 |       298 |       298 |       302 |      1504 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10859 |
|                    Δ                     |        46 |        46 |        46 |        46 |        46 |        46 |        42 |      9355 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      9355 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1504 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10859 |
|                    Δ                     |       -13 |       -13 |       -13 |       -13 |       -13 |       -14 |       -14 |      9355 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        88 |      9355 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       403 |       403 |       403 |       403 |       403 |       403 |       403 |      1504 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10859 |
|                    Δ                     |       265 |       265 |       265 |       265 |       265 |       265 |       265 |      9355 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      9355 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       678 |       756 |       788 |       803 |       818 |       851 |       899 |      1273 |
|                  jbird                   |        82 |        89 |        92 |        94 |        96 |       108 |       127 |     10517 |
|                    Δ                     |      -596 |      -667 |      -696 |      -709 |      -722 |      -743 |      -772 |      9244 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        87 |        86 |      9244 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       680 |       758 |       790 |       804 |       819 |       852 |       901 |      1273 |
|                  jbird                   |        83 |        90 |        94 |        95 |        98 |       109 |       131 |     10517 |
|                    Δ                     |      -597 |      -668 |      -696 |      -709 |      -721 |      -743 |      -770 |      9244 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        87 |        85 |      9244 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1474 |      1323 |      1270 |      1245 |      1223 |      1175 |      1113 |      1273 |
|                  jbird                   |     12226 |     11279 |     10831 |     10695 |     10391 |      9295 |      7892 |     10517 |
|                    Δ                     |     10752 |      9956 |      9561 |      9450 |      9168 |      8120 |      6779 |      9244 |
|              Improvement %               |       729 |       753 |       753 |       759 |       750 |       691 |       609 |      9244 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        68 |       104 |       141 |       164 |       177 |       178 |      1273 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10517 |
|                    Δ                     |         0 |       -37 |       -73 |      -110 |      -133 |      -146 |      -147 |      9244 |
|              Improvement %               |         0 |        54 |        70 |        78 |        81 |        82 |        83 |      9244 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      1273 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10517 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      9244 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9244 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       981 |       981 |       981 |       981 |       981 |       981 |       983 |      1273 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10517 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -983 |      9244 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9244 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1273 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10517 |
|                    Δ                     |      -716 |      -716 |      -716 |      -716 |      -716 |      -716 |      -718 |      9244 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      9244 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       298 |       298 |       298 |       298 |       298 |       298 |       302 |      1273 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10517 |
|                    Δ                     |        46 |        46 |        46 |        46 |        46 |        46 |        42 |      9244 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      9244 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        17 |        17 |        17 |        17 |        17 |        18 |        18 |      1273 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10517 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -16 |       -16 |      9244 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        89 |        89 |      9244 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       403 |       403 |       403 |       403 |       403 |       403 |       403 |      1273 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10517 |
|                    Δ                     |       265 |       265 |       265 |       265 |       265 |       265 |       265 |      9244 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      9244 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2848 |      3054 |      3154 |      3211 |      3248 |      3381 |      3634 |       318 |
|                  jbird                   |       110 |       126 |       128 |       136 |       142 |       155 |       208 |      7459 |
|                    Δ                     |     -2738 |     -2928 |     -3026 |     -3075 |     -3106 |     -3226 |     -3426 |      7141 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        95 |        94 |      7141 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2848 |      3056 |      3156 |      3213 |      3250 |      3391 |      3634 |       318 |
|                  jbird                   |       112 |       127 |       130 |       138 |       144 |       156 |       207 |      7459 |
|                    Δ                     |     -2736 |     -2929 |     -3026 |     -3075 |     -3106 |     -3235 |     -3427 |      7141 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        95 |        94 |      7141 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       351 |       328 |       317 |       312 |       308 |       296 |       275 |       318 |
|                  jbird                   |      9053 |      7947 |      7787 |      7343 |      7031 |      6471 |      4819 |      7459 |
|                    Δ                     |      8702 |      7619 |      7470 |      7031 |      6723 |      6175 |      4544 |      7141 |
|              Improvement %               |      2479 |      2323 |      2356 |      2254 |      2183 |      2086 |      1652 |      7141 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        38 |        44 |        51 |        55 |        58 |        58 |       318 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |      7459 |
|                    Δ                     |         0 |        -6 |       -12 |       -19 |       -23 |       -26 |       -26 |      7141 |
|              Improvement %               |         0 |        16 |        27 |        37 |        42 |        45 |        45 |      7141 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        80 |        80 |        80 |        80 |        80 |        80 |        84 |       318 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7459 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -84 |      7141 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7141 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         2 |         2 |         2 |         2 |         2 |         2 |         4 |       318 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7459 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -4 |      7141 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7141 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        17 |        17 |        17 |        17 |        17 |        17 |        19 |       318 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7459 |
|                    Δ                     |        11 |        11 |        11 |        11 |        11 |        11 |         9 |      7141 |
|              Improvement %               |       -65 |       -65 |       -65 |       -65 |       -65 |       -65 |       -47 |      7141 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       990 |       990 |       990 |       990 |       990 |       990 |       994 |       318 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      7459 |
|                    Δ                     |       168 |       168 |       168 |       168 |       168 |       168 |       164 |      7141 |
|              Improvement %               |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |      7141 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        79 |        79 |        79 |        79 |        79 |        84 |        84 |       318 |
|                  jbird                   |         4 |         4 |         4 |         4 |         4 |         4 |         4 |      7459 |
|                    Δ                     |       -75 |       -75 |       -75 |       -75 |       -75 |       -80 |       -80 |      7141 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        95 |      7141 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       318 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7459 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      7141 |
|              Improvement %               |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |      7141 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        67 |        67 |        68 |        68 |        69 |        69 |        69 |        15 |
|                  jbird                   |         5 |         6 |         6 |         6 |         6 |         6 |         6 |       180 |
|                    Δ                     |       -62 |       -61 |       -62 |       -62 |       -63 |       -63 |       -63 |       165 |
|              Improvement %               |        93 |        91 |        91 |        91 |        91 |        91 |        91 |       165 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        67 |        67 |        68 |        69 |        69 |        69 |        69 |        15 |
|                  jbird                   |         5 |         6 |         6 |         6 |         6 |         6 |         6 |       180 |
|                    Δ                     |       -62 |       -61 |       -62 |       -63 |       -63 |       -63 |       -63 |       165 |
|              Improvement %               |        93 |        91 |        91 |        91 |        91 |        91 |        91 |       165 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        14 |        14 |        15 |
|                  jbird                   |       190 |       181 |       180 |       178 |       177 |       175 |       175 |       180 |
|                    Δ                     |       175 |       166 |       165 |       163 |       162 |       161 |       161 |       165 |
|              Improvement %               |      1167 |      1107 |      1100 |      1087 |      1080 |      1150 |      1150 |       165 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        56 |        82 |       116 |       151 |       168 |       177 |       177 |        15 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       180 |
|                    Δ                     |        -8 |       -30 |       -64 |       -99 |      -116 |      -125 |      -125 |       165 |
|              Improvement %               |        14 |        37 |        55 |        66 |        69 |        71 |        71 |       165 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |        15 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       180 |
|                    Δ                     |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |       165 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       165 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        15 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       180 |
|                    Δ                     |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |       165 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       165 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       279 |       279 |       279 |       279 |       279 |       279 |       279 |        15 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       180 |
|                    Δ                     |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |       165 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       165 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        15 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       180 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |       165 |
|              Improvement %               |        10 |        10 |        10 |        10 |        10 |        10 |        10 |       165 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1685 |      1685 |      1685 |      1685 |      1685 |      1685 |      1685 |        15 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       155 |       156 |       180 |
|                    Δ                     |     -1531 |     -1531 |     -1531 |     -1531 |     -1531 |     -1530 |     -1529 |       165 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        91 |       165 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       112 |       112 |       112 |       112 |       112 |       112 |       112 |        15 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       180 |
|                    Δ                     |       -56 |       -56 |       -56 |       -56 |       -56 |       -56 |       -56 |       165 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       165 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       144 |       151 |       161 |       165 |       170 |       185 |       256 |      6138 |
|                  jbird                   |        51 |        52 |        57 |        58 |        59 |        69 |        99 |     16912 |
|                    Δ                     |       -93 |       -99 |      -104 |      -107 |      -111 |      -116 |      -157 |     10774 |
|              Improvement %               |        65 |        66 |        65 |        65 |        65 |        63 |        61 |     10774 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       146 |       153 |       162 |       166 |       172 |       186 |       244 |      6138 |
|                  jbird                   |        52 |        54 |        58 |        59 |        60 |        71 |       104 |     16912 |
|                    Δ                     |       -94 |       -99 |      -104 |      -107 |      -112 |      -115 |      -140 |     10774 |
|              Improvement %               |        64 |        65 |        64 |        64 |        65 |        62 |        57 |     10774 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6932 |      6615 |      6231 |      6071 |      5879 |      5407 |      3912 |      6138 |
|                  jbird                   |     19672 |     19199 |     17599 |     17295 |     17023 |     14415 |     10144 |     16912 |
|                    Δ                     |     12740 |     12584 |     11368 |     11224 |     11144 |      9008 |      6232 |     10774 |
|              Improvement %               |       184 |       190 |       182 |       185 |       190 |       167 |       159 |     10774 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        42 |        53 |        64 |        71 |        75 |        75 |      6138 |
|                  jbird                   |        30 |        30 |        30 |        30 |        31 |        31 |        31 |     16912 |
|                    Δ                     |         0 |       -12 |       -23 |       -34 |       -40 |       -44 |       -44 |     10774 |
|              Improvement %               |         0 |        29 |        43 |        53 |        56 |        59 |        59 |     10774 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4864 |      4867 |      4867 |      4867 |      4867 |      4867 |      8960 |      6138 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16912 |
|                    Δ                     |     -4864 |     -4867 |     -4867 |     -4867 |     -4867 |     -4867 |     -8960 |     10774 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10774 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       152 |       152 |       152 |       152 |       152 |       152 |       155 |      6138 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16912 |
|                    Δ                     |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -155 |     10774 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10774 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      6138 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     16912 |
|                    Δ                     |      -302 |      -302 |      -302 |      -302 |      -302 |      -302 |      -305 |     10774 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |     10774 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        64 |        64 |        64 |        64 |        64 |        64 |        68 |      6138 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     16912 |
|                    Δ                     |        27 |        27 |        27 |        27 |        27 |        27 |        23 |     10774 |
|              Improvement %               |       -42 |       -42 |       -42 |       -42 |       -42 |       -42 |       -34 |     10774 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2988 |      2990 |      2990 |      2996 |      2998 |      3117 |      3173 |      6138 |
|                  jbird                   |      1353 |      1355 |      1355 |      1355 |      1355 |      1372 |      1434 |     16912 |
|                    Δ                     |     -1635 |     -1635 |     -1635 |     -1641 |     -1643 |     -1745 |     -1739 |     10774 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        56 |        55 |     10774 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       304 |       304 |       304 |       304 |       304 |       304 |       304 |      6138 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     16912 |
|                    Δ                     |      -150 |      -150 |      -150 |      -150 |      -150 |      -150 |      -150 |     10774 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        49 |        49 |     10774 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2009 |      2175 |      2193 |      2220 |      2247 |      2341 |      2520 |       455 |
|                  jbird                   |        96 |       103 |       108 |       111 |       115 |       127 |       167 |      8994 |
|                    Δ                     |     -1913 |     -2072 |     -2085 |     -2109 |     -2132 |     -2214 |     -2353 |      8539 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        93 |      8539 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2011 |      2175 |      2195 |      2220 |      2249 |      2343 |      2522 |       455 |
|                  jbird                   |        98 |       105 |       110 |       113 |       116 |       127 |       168 |      8994 |
|                    Δ                     |     -1913 |     -2070 |     -2085 |     -2107 |     -2133 |     -2216 |     -2354 |      8539 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        93 |      8539 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       498 |       460 |       456 |       451 |       445 |       427 |       397 |       455 |
|                  jbird                   |     10385 |      9711 |      9247 |      8991 |      8719 |      7879 |      6000 |      8994 |
|                    Δ                     |      9887 |      9251 |      8791 |      8540 |      8274 |      7452 |      5603 |      8539 |
|              Improvement %               |      1985 |      2011 |      1928 |      1894 |      1859 |      1745 |      1411 |      8539 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        41 |        51 |        61 |        67 |        71 |        71 |       455 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      8994 |
|                    Δ                     |         0 |       -10 |       -20 |       -30 |       -36 |       -40 |       -40 |      8539 |
|              Improvement %               |         0 |        24 |        39 |        49 |        54 |        56 |        56 |      8539 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        71 |        71 |        71 |        71 |        71 |        71 |        75 |       455 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8994 |
|                    Δ                     |       -71 |       -71 |       -71 |       -71 |       -71 |       -71 |       -75 |      8539 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8539 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       802 |       802 |       802 |       802 |       802 |       802 |       804 |       455 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8994 |
|                    Δ                     |      -802 |      -802 |      -802 |      -802 |      -802 |      -802 |      -804 |      8539 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8539 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       455 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      8994 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      8539 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      8539 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       575 |       575 |       575 |       575 |       575 |       575 |       579 |       455 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      8994 |
|                    Δ                     |        86 |        86 |        86 |        86 |        86 |        86 |        82 |      8539 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      8539 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        54 |        54 |        54 |        54 |        54 |        54 |        57 |       455 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      8994 |
|                    Δ                     |       -51 |       -51 |       -51 |       -51 |       -51 |       -51 |       -54 |      8539 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        95 |      8539 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |       455 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      8994 |
|                    Δ                     |         4 |         4 |         4 |         4 |         4 |         4 |         4 |      8539 |
|              Improvement %               |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |      8539 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1159 |      1283 |      1293 |      1304 |      1323 |      1433 |      1508 |       769 |
|                  jbird                   |        60 |        66 |        68 |        72 |        78 |        88 |       119 |     13744 |
|                    Δ                     |     -1099 |     -1217 |     -1225 |     -1232 |     -1245 |     -1345 |     -1389 |     12975 |
|              Improvement %               |        95 |        95 |        95 |        94 |        94 |        94 |        92 |     12975 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1160 |      1284 |      1294 |      1306 |      1325 |      1442 |      1510 |       769 |
|                  jbird                   |        62 |        67 |        70 |        74 |        79 |        89 |       123 |     13744 |
|                    Δ                     |     -1098 |     -1217 |     -1224 |     -1232 |     -1246 |     -1353 |     -1387 |     12975 |
|              Improvement %               |        95 |        95 |        95 |        94 |        94 |        94 |        92 |     12975 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       863 |       780 |       774 |       767 |       756 |       698 |       663 |       769 |
|                  jbird                   |     16620 |     15223 |     14663 |     13823 |     12871 |     11407 |      8392 |     13744 |
|                    Δ                     |     15757 |     14443 |     13889 |     13056 |     12115 |     10709 |      7729 |     12975 |
|              Improvement %               |      1826 |      1852 |      1794 |      1702 |      1603 |      1534 |      1166 |     12975 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        54 |        79 |       104 |       119 |       127 |       127 |       769 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     13744 |
|                    Δ                     |         0 |       -23 |       -48 |       -73 |       -88 |       -96 |       -96 |     12975 |
|              Improvement %               |         0 |        43 |        61 |        70 |        74 |        76 |        76 |     12975 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        89 |        89 |        89 |        89 |        89 |        89 |        93 |       769 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13744 |
|                    Δ                     |       -89 |       -89 |       -89 |       -89 |       -89 |       -89 |       -93 |     12975 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12975 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2088 |      2089 |      2089 |      2089 |      2089 |      2089 |      2090 |       769 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13744 |
|                    Δ                     |     -2088 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     -2090 |     12975 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12975 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2681 |      2681 |      2681 |      2681 |      2681 |      2681 |      2683 |       769 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13744 |
|                    Δ                     |     -2671 |     -2671 |     -2671 |     -2671 |     -2671 |     -2671 |     -2673 |     12975 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     12975 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       368 |       368 |       368 |       368 |       368 |       368 |       372 |       769 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     13744 |
|                    Δ                     |       -39 |       -39 |       -39 |       -39 |       -39 |       -39 |       -43 |     12975 |
|              Improvement %               |        11 |        11 |        11 |        11 |        11 |        11 |        12 |     12975 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        30 |        30 |        30 |        30 |        32 |        32 |       769 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     13744 |
|                    Δ                     |       -28 |       -28 |       -28 |       -28 |       -28 |       -30 |       -30 |     12975 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |     12975 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       593 |       593 |       593 |       593 |       593 |       593 |       593 |       769 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13744 |
|                    Δ                     |      -583 |      -583 |      -583 |      -583 |      -583 |      -583 |      -583 |     12975 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |     12975 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |       102 |       109 |       113 |       117 |       132 |       197 |      8909 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        13 |        36 |     75316 |
|                    Δ                     |       -85 |       -92 |       -99 |      -103 |      -107 |      -119 |      -161 |     66407 |
|              Improvement %               |        90 |        90 |        91 |        91 |        91 |        90 |        82 |     66407 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        96 |       104 |       111 |       114 |       119 |       132 |       191 |      8909 |
|                  jbird                   |        10 |        11 |        12 |        12 |        12 |        15 |        34 |     75316 |
|                    Δ                     |       -86 |       -93 |       -99 |      -102 |      -107 |      -117 |      -157 |     66407 |
|              Improvement %               |        90 |        89 |        89 |        89 |        90 |        89 |        82 |     66407 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10615 |      9775 |      9175 |      8887 |      8551 |      7563 |      5070 |      8909 |
|                  jbird                   |    114286 |    103039 |     99583 |     97215 |     95999 |     76223 |     27397 |     75316 |
|                    Δ                     |    103671 |     93264 |     90408 |     88328 |     87448 |     68660 |     22327 |     66407 |
|              Improvement %               |       977 |       954 |       985 |       994 |      1023 |       908 |       440 |     66407 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |       168 |       316 |       462 |       549 |       598 |       605 |      8909 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     75316 |
|                    Δ                     |         0 |      -137 |      -285 |      -431 |      -518 |      -567 |      -574 |     66407 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |     66407 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        58 |        58 |        58 |        58 |        58 |        58 |        62 |      8909 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     75316 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -62 |     66407 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     66407 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        80 |        80 |        80 |        80 |        80 |        80 |        83 |      8909 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     75316 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -83 |     66407 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     66407 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      8909 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     75316 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |     66407 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |     66407 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        73 |        73 |        73 |        73 |        73 |        73 |        77 |      8909 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     75316 |
|                    Δ                     |        53 |        53 |        53 |        53 |        53 |        53 |        49 |     66407 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -64 |     66407 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2544 |      2562 |      2568 |      2576 |      2591 |      2728 |      2803 |      8909 |
|                  jbird                   |       230 |       230 |       230 |       230 |       231 |       236 |       291 |     75316 |
|                    Δ                     |     -2314 |     -2332 |     -2338 |     -2346 |     -2360 |     -2492 |     -2512 |     66407 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        90 |     66407 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      8909 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     75316 |
|                    Δ                     |        69 |        69 |        69 |        69 |        69 |        69 |        69 |     66407 |
|              Improvement %               |      -862 |      -862 |      -862 |      -862 |      -862 |      -862 |      -862 |     66407 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        96 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       949 |
|                    Δ                     |        -9 |        -9 |        -9 |       -10 |       -10 |       -10 |       -10 |       853 |
|              Improvement %               |        90 |        90 |        90 |        91 |        91 |        91 |        91 |       853 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        96 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       949 |
|                    Δ                     |        -9 |        -9 |        -9 |       -10 |       -10 |       -10 |       -10 |       853 |
|              Improvement %               |        90 |        90 |        90 |        91 |        91 |        91 |        91 |       853 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       101 |        97 |        96 |        95 |        94 |        91 |        91 |        96 |
|                  jbird                   |      1047 |       964 |       951 |       940 |       927 |       888 |       833 |       949 |
|                    Δ                     |       946 |       867 |       855 |       845 |       833 |       797 |       742 |       853 |
|              Improvement %               |       937 |       894 |       891 |       889 |       886 |       876 |       815 |       853 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        34 |        52 |        73 |        92 |       105 |       112 |       112 |        96 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       949 |
|                    Δ                     |        -2 |       -17 |       -38 |       -57 |       -70 |       -77 |       -77 |       853 |
|              Improvement %               |         6 |        33 |        52 |        62 |        67 |        69 |        69 |       853 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       669 |       669 |       669 |       669 |       669 |       669 |       669 |        96 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       949 |
|                    Δ                     |      -669 |      -669 |      -669 |      -669 |      -669 |      -669 |      -669 |       853 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       853 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6133 |      6134 |      6134 |      6134 |      6134 |      6134 |      6134 |        96 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       949 |
|                    Δ                     |     -6133 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |       853 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       853 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9774 |      9775 |      9775 |      9775 |      9775 |      9775 |      9775 |        96 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       949 |
|                    Δ                     |     -5723 |     -5724 |     -5724 |     -5724 |     -5724 |     -5724 |     -5724 |       853 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        59 |       853 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3160 |      3160 |      3160 |      3160 |      3160 |      3160 |      3160 |        96 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       949 |
|                    Δ                     |       751 |       751 |       751 |       751 |       751 |       751 |       751 |       853 |
|              Improvement %               |       -24 |       -24 |       -24 |       -24 |       -24 |       -24 |       -24 |       853 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       212 |       212 |       212 |       213 |       213 |       222 |       222 |        96 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       949 |
|                    Δ                     |      -189 |      -189 |      -189 |      -190 |      -190 |      -199 |      -198 |       853 |
|              Improvement %               |        89 |        89 |        89 |        89 |        89 |        90 |        89 |       853 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3641 |      3641 |      3641 |      3641 |      3641 |      3641 |      3641 |        96 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       949 |
|                    Δ                     |       410 |       410 |       410 |       410 |       410 |       410 |       410 |       853 |
|              Improvement %               |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       853 |

<p>
</details>

