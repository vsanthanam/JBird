## JBird vs SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        97 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         2 |         2 |       715 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       618 |
|              Improvement %               |        90 |        90 |        90 |        90 |        90 |        82 |        82 |       618 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        97 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         2 |         2 |       715 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       618 |
|              Improvement %               |        90 |        90 |        90 |        90 |        90 |        82 |        82 |       618 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       101 |        98 |        97 |        96 |        96 |        87 |        87 |        97 |
|                  jbird                   |       794 |       731 |       725 |       717 |       696 |       563 |       411 |       715 |
|                    Δ                     |       693 |       633 |       628 |       621 |       600 |       476 |       324 |       618 |
|              Improvement %               |       686 |       646 |       647 |       647 |       625 |       547 |       372 |       618 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        36 |        76 |       119 |       161 |       187 |       203 |       203 |        97 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       715 |
|                    Δ                     |        -2 |       -40 |       -83 |      -125 |      -151 |      -167 |      -167 |       618 |
|              Improvement %               |         6 |        53 |        70 |        78 |        81 |        82 |        82 |       618 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |        97 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       715 |
|                    Δ                     |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |       618 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       618 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |        97 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       715 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       618 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       618 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        97 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       715 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       618 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       618 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4563 |      4564 |      4564 |      4564 |      4564 |      4564 |      4564 |        97 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       715 |
|                    Δ                     |       669 |       668 |       668 |       668 |       668 |       668 |       668 |       618 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       618 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       247 |       247 |       248 |       248 |       248 |       260 |       260 |        97 |
|                  jbird                   |        31 |        31 |        31 |        31 |        31 |        31 |        32 |       715 |
|                    Δ                     |      -216 |      -216 |      -217 |      -217 |      -217 |      -229 |      -228 |       618 |
|              Improvement %               |        87 |        87 |        88 |        88 |        88 |        88 |        88 |       618 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |        97 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       715 |
|                    Δ                     |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |       618 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       618 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        94 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         2 |        12 |       680 |
|                    Δ                     |        -9 |       -10 |       -10 |       -10 |       -10 |       -10 |         0 |       586 |
|              Improvement %               |        90 |        91 |        91 |        91 |        91 |        83 |         0 |       586 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        94 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         2 |         2 |       680 |
|                    Δ                     |        -9 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       586 |
|              Improvement %               |        90 |        91 |        91 |        91 |        91 |        83 |        83 |       586 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       100 |        95 |        93 |        93 |        92 |        86 |        86 |        94 |
|                  jbird                   |       765 |       703 |       699 |       692 |       675 |       638 |        85 |       680 |
|                    Δ                     |       665 |       608 |       606 |       599 |       583 |       552 |        -1 |       586 |
|              Improvement %               |       665 |       640 |       652 |       644 |       634 |       642 |        -1 |       586 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        34 |        76 |       116 |       158 |       182 |       198 |       198 |        94 |
|                  jbird                   |        34 |        36 |        39 |        39 |        39 |        39 |        39 |       680 |
|                    Δ                     |         0 |       -40 |       -77 |      -119 |      -143 |      -159 |      -159 |       586 |
|              Improvement %               |         0 |        53 |        66 |        75 |        79 |        80 |        80 |       586 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |      1398 |        94 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       680 |
|                    Δ                     |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |     -1398 |       586 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       586 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |        94 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       680 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       586 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       586 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        94 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       680 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       586 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       586 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4563 |      4564 |      4564 |      4564 |      4564 |      4564 |      4564 |        94 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       680 |
|                    Δ                     |       669 |       668 |       668 |       668 |       668 |       668 |       668 |       586 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       586 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       249 |       249 |       249 |       249 |       249 |       263 |       263 |        94 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       680 |
|                    Δ                     |      -217 |      -217 |      -217 |      -217 |      -217 |      -231 |      -230 |       586 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        87 |       586 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |      6349 |        94 |
|                  jbird                   |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |     10542 |       680 |
|                    Δ                     |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |      4193 |       586 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       586 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2429 |      2617 |      2652 |      2679 |      2703 |      2875 |      2933 |       377 |
|                  jbird                   |       314 |       341 |       346 |       351 |       357 |       377 |       414 |      2857 |
|                    Δ                     |     -2115 |     -2276 |     -2306 |     -2328 |     -2346 |     -2498 |     -2519 |      2480 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        86 |      2480 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2430 |      2617 |      2656 |      2681 |      2705 |      2877 |      2934 |       377 |
|                  jbird                   |       316 |       343 |       347 |       353 |       359 |       379 |       407 |      2857 |
|                    Δ                     |     -2114 |     -2274 |     -2309 |     -2328 |     -2346 |     -2498 |     -2527 |      2480 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        86 |      2480 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       412 |       382 |       377 |       373 |       370 |       348 |       341 |       377 |
|                  jbird                   |      3181 |      2933 |      2895 |      2849 |      2807 |      2653 |      2415 |      2857 |
|                    Δ                     |      2769 |      2551 |      2518 |      2476 |      2437 |      2305 |      2074 |      2480 |
|              Improvement %               |       672 |       668 |       668 |       664 |       659 |       662 |       608 |      2480 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        72 |       113 |       156 |       181 |       195 |       197 |       377 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2857 |
|                    Δ                     |         0 |       -40 |       -81 |      -124 |      -149 |      -163 |      -165 |      2480 |
|              Improvement %               |         0 |        56 |        72 |        79 |        82 |        84 |        84 |      2480 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |       377 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2857 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      2480 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2480 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3748 |       377 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2857 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3748 |      2480 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2480 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       377 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2857 |
|                    Δ                     |     -2699 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |      2480 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      2480 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1152 |      1153 |      1153 |      1153 |      1153 |      1153 |      1156 |       377 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2857 |
|                    Δ                     |       222 |       221 |       221 |       221 |       221 |       221 |       218 |      2480 |
|              Improvement %               |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |      2480 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        63 |        63 |        63 |        63 |        63 |        66 |        66 |       377 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2857 |
|                    Δ                     |       -55 |       -55 |       -55 |       -55 |       -55 |       -58 |       -58 |      2480 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        88 |      2480 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |       377 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2857 |
|                    Δ                     |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      2480 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      2480 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2394 |      2644 |      2666 |      2691 |      2726 |      2871 |      2972 |       375 |
|                  jbird                   |       334 |       360 |       365 |       371 |       382 |       414 |       454 |      2699 |
|                    Δ                     |     -2060 |     -2284 |     -2301 |     -2320 |     -2344 |     -2457 |     -2518 |      2324 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        86 |        85 |      2324 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2398 |      2646 |      2669 |      2691 |      2730 |      2873 |      2980 |       375 |
|                  jbird                   |       335 |       361 |       366 |       373 |       384 |       415 |       451 |      2699 |
|                    Δ                     |     -2063 |     -2285 |     -2303 |     -2318 |     -2346 |     -2458 |     -2529 |      2324 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        86 |        85 |      2324 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       418 |       378 |       375 |       372 |       367 |       348 |       337 |       375 |
|                  jbird                   |      2998 |      2779 |      2745 |      2697 |      2617 |      2417 |      2201 |      2699 |
|                    Δ                     |      2580 |      2401 |      2370 |      2325 |      2250 |      2069 |      1864 |      2324 |
|              Improvement %               |       617 |       635 |       632 |       625 |       613 |       595 |       553 |      2324 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        71 |       114 |       154 |       181 |       196 |       196 |       375 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2699 |
|                    Δ                     |         0 |       -39 |       -82 |      -122 |      -149 |      -164 |      -164 |      2324 |
|              Improvement %               |         0 |        55 |        72 |        79 |        82 |        84 |        84 |      2324 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       355 |       355 |       355 |       355 |       355 |       355 |       359 |       375 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2699 |
|                    Δ                     |      -355 |      -355 |      -355 |      -355 |      -355 |      -355 |      -359 |      2324 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2324 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3746 |      3747 |      3747 |      3747 |      3747 |      3747 |      3748 |       375 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2699 |
|                    Δ                     |     -3746 |     -3747 |     -3747 |     -3747 |     -3747 |     -3747 |     -3748 |      2324 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2324 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       375 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2699 |
|                    Δ                     |     -2699 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |     -2701 |      2324 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      2324 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1152 |      1153 |      1153 |      1153 |      1153 |      1153 |      1156 |       375 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2699 |
|                    Δ                     |       222 |       221 |       221 |       221 |       221 |       221 |       218 |      2324 |
|              Improvement %               |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |      2324 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        63 |        63 |        63 |        63 |        63 |        66 |        66 |       375 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2699 |
|                    Δ                     |       -55 |       -55 |       -55 |       -55 |       -55 |       -58 |       -58 |      2324 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        88 |        88 |      2324 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |      1595 |       375 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2699 |
|                    Δ                     |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      1047 |      2324 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      2324 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4909 |      5079 |      5173 |      5255 |      5374 |      5956 |      5958 |       193 |
|                  jbird                   |       626 |       686 |       694 |       702 |       712 |       765 |       811 |      1431 |
|                    Δ                     |     -4283 |     -4393 |     -4479 |     -4553 |     -4662 |     -5191 |     -5147 |      1238 |
|              Improvement %               |        87 |        86 |        87 |        87 |        87 |        87 |        86 |      1238 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4915 |      5087 |      5181 |      5255 |      5382 |      5960 |      5968 |       193 |
|                  jbird                   |       627 |       688 |       695 |       704 |       714 |       766 |       816 |      1431 |
|                    Δ                     |     -4288 |     -4399 |     -4486 |     -4551 |     -4668 |     -5194 |     -5152 |      1238 |
|              Improvement %               |        87 |        86 |        87 |        87 |        87 |        87 |        86 |      1238 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       204 |       197 |       193 |       190 |       186 |       168 |       168 |       193 |
|                  jbird                   |      1599 |      1458 |      1442 |      1425 |      1405 |      1308 |      1234 |      1431 |
|                    Δ                     |      1395 |      1261 |      1249 |      1235 |      1219 |      1140 |      1066 |      1238 |
|              Improvement %               |       684 |       640 |       647 |       650 |       655 |       679 |       635 |      1238 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        74 |       116 |       158 |       184 |       200 |       200 |       193 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1431 |
|                    Δ                     |        -1 |       -41 |       -83 |      -125 |      -151 |      -167 |      -167 |      1238 |
|              Improvement %               |         3 |        55 |        72 |        79 |        82 |        84 |        84 |      1238 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       703 |       703 |       703 |       703 |       703 |       703 |       703 |       193 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1431 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      1238 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1238 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7432 |       193 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1431 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7432 |      1238 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1238 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       193 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      1431 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      1238 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |      1238 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |       193 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1431 |
|                    Δ                     |       459 |       459 |       459 |       459 |       459 |       459 |       459 |      1238 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |      1238 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       127 |       128 |       128 |       128 |       128 |       134 |       134 |       193 |
|                  jbird                   |        15 |        15 |        15 |        15 |        16 |        16 |        16 |      1431 |
|                    Δ                     |      -112 |      -113 |      -113 |      -113 |      -112 |      -118 |      -118 |      1238 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        88 |      1238 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |       193 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1431 |
|                    Δ                     |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      1238 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      1238 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4934 |      5267 |      5317 |      5374 |      5444 |      5849 |      5920 |       188 |
|                  jbird                   |       660 |       717 |       724 |       732 |       741 |       799 |       845 |      1372 |
|                    Δ                     |     -4274 |     -4550 |     -4593 |     -4642 |     -4703 |     -5050 |     -5075 |      1184 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        86 |        86 |      1184 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4935 |      5267 |      5325 |      5378 |      5448 |      5853 |      5927 |       188 |
|                  jbird                   |       661 |       719 |       726 |       734 |       744 |       800 |       847 |      1372 |
|                    Δ                     |     -4274 |     -4548 |     -4599 |     -4644 |     -4704 |     -5053 |     -5080 |      1184 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        86 |        86 |      1184 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       203 |       190 |       188 |       186 |       184 |       171 |       169 |       188 |
|                  jbird                   |      1515 |      1395 |      1382 |      1367 |      1349 |      1253 |      1184 |      1372 |
|                    Δ                     |      1312 |      1205 |      1194 |      1181 |      1165 |      1082 |      1015 |      1184 |
|              Improvement %               |       646 |       634 |       635 |       635 |       633 |       633 |       601 |      1184 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        73 |       114 |       156 |       180 |       194 |       197 |       188 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1372 |
|                    Δ                     |        -1 |       -40 |       -81 |      -123 |      -147 |      -161 |      -164 |      1184 |
|              Improvement %               |         3 |        55 |        71 |        79 |        82 |        83 |        83 |      1184 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       703 |       703 |       703 |       703 |       703 |       703 |       703 |       188 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1372 |
|                    Δ                     |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      -703 |      1184 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1184 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7430 |      7431 |      7431 |      7431 |      7431 |      7431 |      7432 |       188 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1372 |
|                    Δ                     |     -7430 |     -7431 |     -7431 |     -7431 |     -7431 |     -7431 |     -7432 |      1184 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1184 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       188 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      1372 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      1184 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |      1184 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |      2289 |       188 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1372 |
|                    Δ                     |       459 |       459 |       459 |       459 |       459 |       459 |       459 |      1184 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |      1184 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       130 |       130 |       130 |       130 |       130 |       137 |       137 |       188 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1372 |
|                    Δ                     |      -114 |      -114 |      -114 |      -114 |      -114 |      -121 |      -120 |      1184 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        88 |      1184 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |      3180 |       188 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1372 |
|                    Δ                     |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      2096 |      1184 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      1184 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        52 |        53 |        53 |        53 |        54 |        55 |        55 |        19 |
|                  jbird                   |         6 |         7 |         7 |         7 |         7 |         7 |         7 |       146 |
|                    Δ                     |       -46 |       -46 |       -46 |       -46 |       -47 |       -48 |       -48 |       127 |
|              Improvement %               |        88 |        87 |        87 |        87 |        87 |        87 |        87 |       127 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        52 |        53 |        53 |        53 |        54 |        55 |        55 |        19 |
|                  jbird                   |         6 |         7 |         7 |         7 |         7 |         7 |         7 |       146 |
|                    Δ                     |       -46 |       -46 |       -46 |       -46 |       -47 |       -48 |       -48 |       127 |
|              Improvement %               |        88 |        87 |        87 |        87 |        87 |        87 |        87 |       127 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        19 |        19 |        19 |        19 |        18 |        18 |        18 |        19 |
|                  jbird                   |       155 |       147 |       145 |       144 |       143 |       139 |       139 |       146 |
|                    Δ                     |       136 |       128 |       126 |       125 |       125 |       121 |       121 |       127 |
|              Improvement %               |       716 |       674 |       663 |       658 |       694 |       672 |       672 |       127 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        57 |        92 |       136 |       179 |       205 |       213 |       213 |        19 |
|                  jbird                   |        56 |        58 |        58 |        76 |        76 |        76 |        76 |       146 |
|                    Δ                     |        -1 |       -34 |       -78 |      -103 |      -129 |      -137 |      -137 |       127 |
|              Improvement %               |         2 |        37 |        57 |        58 |        63 |        64 |        64 |       127 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       146 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |       127 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       127 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       146 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       127 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       127 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       146 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       127 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       127 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        23 |        23 |        23 |        23 |        23 |        23 |        23 |        19 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       146 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       127 |
|              Improvement %               |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       127 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1267 |      1268 |      1268 |      1269 |      1270 |      1270 |      1270 |        19 |
|                  jbird                   |       155 |       155 |       155 |       155 |       155 |       156 |       161 |       146 |
|                    Δ                     |     -1112 |     -1113 |     -1113 |     -1114 |     -1115 |     -1114 |     -1109 |       127 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        87 |       127 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |        19 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       146 |
|                    Δ                     |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       127 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       127 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        54 |        54 |        54 |        55 |        55 |        55 |        55 |        19 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         8 |         8 |       138 |
|                    Δ                     |       -47 |       -47 |       -47 |       -48 |       -48 |       -47 |       -47 |       119 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        85 |        85 |       119 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        54 |        54 |        54 |        55 |        55 |        55 |        55 |        19 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         8 |         8 |       138 |
|                    Δ                     |       -47 |       -47 |       -47 |       -48 |       -48 |       -47 |       -47 |       119 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        85 |        85 |       119 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        19 |        18 |        18 |        18 |        18 |        18 |        18 |        19 |
|                  jbird                   |       148 |       139 |       138 |       137 |       135 |       133 |       133 |       138 |
|                    Δ                     |       129 |       121 |       120 |       119 |       117 |       115 |       115 |       119 |
|              Improvement %               |       679 |       672 |       667 |       661 |       650 |       639 |       639 |       119 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        57 |        92 |       136 |       179 |       205 |       214 |       214 |        19 |
|                  jbird                   |        56 |        58 |        58 |        58 |        58 |        58 |        58 |       138 |
|                    Δ                     |        -1 |       -34 |       -78 |      -121 |      -147 |      -156 |      -156 |       119 |
|              Improvement %               |         2 |        37 |        57 |        68 |        72 |        73 |        73 |       119 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6962 |      6963 |      6963 |      6963 |      6963 |      6963 |      6963 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |     -6962 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |     -6963 |       119 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       119 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        19 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       119 |
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
|                swiftyjson                |      1290 |      1291 |      1291 |      1292 |      1293 |      1293 |      1293 |        19 |
|                  jbird                   |       160 |       160 |       160 |       160 |       161 |       162 |       162 |       138 |
|                    Δ                     |     -1130 |     -1131 |     -1131 |     -1132 |     -1132 |     -1131 |     -1131 |       119 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        87 |        87 |       119 |

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

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       611 |       668 |       674 |       679 |       689 |       736 |       785 |      1474 |
|                  jbird                   |        78 |        85 |        89 |        90 |        91 |       104 |       130 |     10974 |
|                    Δ                     |      -533 |      -583 |      -585 |      -589 |      -598 |      -632 |      -655 |      9500 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        86 |        83 |      9500 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       612 |       669 |       676 |       681 |       691 |       738 |       786 |      1474 |
|                  jbird                   |        80 |        86 |        90 |        91 |        92 |       106 |       128 |     10974 |
|                    Δ                     |      -532 |      -583 |      -586 |      -590 |      -599 |      -632 |      -658 |      9500 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        86 |        84 |      9500 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1636 |      1499 |      1484 |      1472 |      1452 |      1360 |      1274 |      1474 |
|                  jbird                   |     12780 |     11767 |     11295 |     11159 |     11023 |      9583 |      7722 |     10974 |
|                    Δ                     |     11144 |     10268 |      9811 |      9687 |      9571 |      8223 |      6448 |      9500 |
|              Improvement %               |       681 |       685 |       661 |       658 |       659 |       605 |       506 |      9500 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        73 |       116 |       159 |       185 |       200 |       202 |      1474 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10974 |
|                    Δ                     |         0 |       -42 |       -85 |      -128 |      -154 |      -169 |      -171 |      9500 |
|              Improvement %               |         0 |        58 |        73 |        81 |        83 |        84 |        85 |      9500 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      1474 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10974 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      9500 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9500 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       981 |       981 |       981 |       981 |       981 |       981 |       983 |      1474 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10974 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -983 |      9500 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9500 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1474 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10974 |
|                    Δ                     |      -716 |      -716 |      -716 |      -716 |      -716 |      -716 |      -718 |      9500 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      9500 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       298 |       298 |       298 |       298 |       298 |       298 |       302 |      1474 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10974 |
|                    Δ                     |        46 |        46 |        46 |        46 |        46 |        46 |        42 |      9500 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      9500 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1474 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10974 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -15 |       -15 |      9500 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        88 |      9500 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       403 |       403 |       403 |       403 |       403 |       403 |       403 |      1474 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10974 |
|                    Δ                     |       265 |       265 |       265 |       265 |       265 |       265 |       265 |      9500 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      9500 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       596 |       654 |       659 |       666 |       676 |       726 |       753 |      1505 |
|                  jbird                   |        82 |        89 |        93 |        94 |        95 |       109 |       141 |     10477 |
|                    Δ                     |      -514 |      -565 |      -566 |      -572 |      -581 |      -617 |      -612 |      8972 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        81 |      8972 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       598 |       655 |       661 |       668 |       679 |       727 |       754 |      1505 |
|                  jbird                   |        84 |        91 |        95 |        95 |        97 |       111 |       143 |     10477 |
|                    Δ                     |      -514 |      -564 |      -566 |      -573 |      -582 |      -616 |      -611 |      8972 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        81 |      8972 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1677 |      1530 |      1517 |      1502 |      1479 |      1379 |      1329 |      1505 |
|                  jbird                   |     12121 |     11207 |     10759 |     10671 |     10487 |      9191 |      7082 |     10477 |
|                    Δ                     |     10444 |      9677 |      9242 |      9169 |      9008 |      7812 |      5753 |      8972 |
|              Improvement %               |       623 |       632 |       609 |       610 |       609 |       566 |       433 |      8972 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        74 |       118 |       161 |       188 |       203 |       205 |      1505 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10477 |
|                    Δ                     |         0 |       -43 |       -87 |      -130 |      -157 |      -172 |      -174 |      8972 |
|              Improvement %               |         0 |        58 |        74 |        81 |        84 |        85 |        85 |      8972 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |        94 |        94 |        94 |        94 |        94 |        98 |      1505 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10477 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      8972 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8972 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       981 |       981 |       981 |       981 |       981 |       981 |       983 |      1505 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10477 |
|                    Δ                     |      -981 |      -981 |      -981 |      -981 |      -981 |      -981 |      -983 |      8972 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8972 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1505 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10477 |
|                    Δ                     |      -716 |      -716 |      -716 |      -716 |      -716 |      -716 |      -718 |      8972 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      8972 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       298 |       298 |       298 |       298 |       298 |       298 |       302 |      1505 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10477 |
|                    Δ                     |        46 |        46 |        46 |        46 |        46 |        46 |        42 |      8972 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      8972 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1505 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10477 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -15 |       -15 |      8972 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        88 |      8972 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       403 |       403 |       403 |       403 |       403 |       403 |       403 |      1505 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10477 |
|                    Δ                     |       265 |       265 |       265 |       265 |       265 |       265 |       265 |      8972 |
|              Improvement %               |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |       -66 |      8972 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2981 |      3215 |      3238 |      3265 |      3291 |      3525 |      3557 |       309 |
|                  jbird                   |       108 |       122 |       125 |       128 |       134 |       147 |       172 |      7757 |
|                    Δ                     |     -2873 |     -3093 |     -3113 |     -3137 |     -3157 |     -3378 |     -3385 |      7448 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |        95 |      7448 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2988 |      3217 |      3240 |      3265 |      3293 |      3529 |      3559 |       309 |
|                  jbird                   |       110 |       123 |       126 |       129 |       135 |       149 |       178 |      7757 |
|                    Δ                     |     -2878 |     -3094 |     -3114 |     -3136 |     -3158 |     -3380 |     -3381 |      7448 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |        95 |      7448 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       335 |       311 |       309 |       306 |       304 |       284 |       281 |       309 |
|                  jbird                   |      9217 |      8215 |      8007 |      7823 |      7479 |      6787 |      5820 |      7757 |
|                    Δ                     |      8882 |      7904 |      7698 |      7517 |      7175 |      6503 |      5539 |      7448 |
|              Improvement %               |      2651 |      2541 |      2491 |      2457 |      2360 |      2290 |      1971 |      7448 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        37 |        44 |        50 |        54 |        56 |        57 |       309 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |      7757 |
|                    Δ                     |         0 |        -5 |       -12 |       -18 |       -22 |       -24 |       -25 |      7448 |
|              Improvement %               |         0 |        14 |        27 |        36 |        41 |        43 |        44 |      7448 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        80 |        80 |        80 |        80 |        80 |        80 |        84 |       309 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7757 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -84 |      7448 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7448 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         2 |         2 |         2 |         2 |         2 |         2 |         4 |       309 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7757 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -4 |      7448 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7448 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        17 |        17 |        17 |        17 |        17 |        17 |        19 |       309 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7757 |
|                    Δ                     |        11 |        11 |        11 |        11 |        11 |        11 |         9 |      7448 |
|              Improvement %               |       -65 |       -65 |       -65 |       -65 |       -65 |       -65 |       -47 |      7448 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       990 |       990 |       990 |       990 |       990 |       990 |       994 |       309 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      7757 |
|                    Δ                     |       168 |       168 |       168 |       168 |       168 |       168 |       164 |      7448 |
|              Improvement %               |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |      7448 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        81 |        81 |        81 |        81 |        81 |        86 |        86 |       309 |
|                  jbird                   |         4 |         4 |         4 |         4 |         4 |         4 |         4 |      7757 |
|                    Δ                     |       -77 |       -77 |       -77 |       -77 |       -77 |       -82 |       -82 |      7448 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        95 |      7448 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       309 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7757 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      7448 |
|              Improvement %               |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |      7448 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        64 |        65 |        65 |        66 |        70 |        71 |        71 |        16 |
|                  jbird                   |         5 |         5 |         5 |         6 |         6 |         6 |         6 |       183 |
|                    Δ                     |       -59 |       -60 |       -60 |       -60 |       -64 |       -65 |       -65 |       167 |
|              Improvement %               |        92 |        92 |        92 |        91 |        91 |        92 |        92 |       167 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        64 |        65 |        65 |        66 |        70 |        71 |        71 |        16 |
|                  jbird                   |         5 |         5 |         5 |         6 |         6 |         6 |         6 |       183 |
|                    Δ                     |       -59 |       -60 |       -60 |       -60 |       -64 |       -65 |       -65 |       167 |
|              Improvement %               |        92 |        92 |        92 |        91 |        91 |        92 |        92 |       167 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        16 |        15 |        15 |        15 |        14 |        14 |        14 |        16 |
|                  jbird                   |       195 |       185 |       183 |       182 |       179 |       175 |       174 |       183 |
|                    Δ                     |       179 |       170 |       168 |       167 |       165 |       161 |       160 |       167 |
|              Improvement %               |      1119 |      1133 |      1120 |      1113 |      1179 |      1150 |      1143 |       167 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        56 |        82 |       117 |       151 |       176 |       185 |       185 |        16 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       183 |
|                    Δ                     |        -8 |       -30 |       -65 |       -99 |      -124 |      -133 |      -133 |       167 |
|              Improvement %               |        14 |        37 |        56 |        66 |        70 |        72 |        72 |       167 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |      5791 |        16 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       183 |
|                    Δ                     |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |     -5791 |       167 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       167 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        16 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       183 |
|                    Δ                     |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |      -167 |       167 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       167 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       279 |       279 |       279 |       279 |       279 |       279 |       279 |        16 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       183 |
|                    Δ                     |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |       167 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       167 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        16 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       183 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |       167 |
|              Improvement %               |        10 |        10 |        10 |        10 |        10 |        10 |        10 |       167 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1664 |      1664 |      1664 |      1664 |      1665 |      1665 |      1665 |        16 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       154 |       154 |       183 |
|                    Δ                     |     -1511 |     -1511 |     -1511 |     -1511 |     -1512 |     -1511 |     -1511 |       167 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        91 |       167 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       112 |       112 |       112 |       112 |       112 |       112 |       112 |        16 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       183 |
|                    Δ                     |       -56 |       -56 |       -56 |       -56 |       -56 |       -56 |       -56 |       167 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       167 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       143 |       149 |       156 |       163 |       165 |       178 |       208 |      6264 |
|                  jbird                   |        28 |        29 |        32 |        32 |        32 |        40 |        83 |     29126 |
|                    Δ                     |      -115 |      -120 |      -124 |      -131 |      -133 |      -138 |      -125 |     22862 |
|              Improvement %               |        80 |        81 |        79 |        80 |        81 |        78 |        60 |     22862 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       145 |       150 |       158 |       164 |       167 |       180 |       206 |      6264 |
|                  jbird                   |        29 |        31 |        33 |        33 |        34 |        42 |        69 |     29126 |
|                    Δ                     |      -116 |      -119 |      -125 |      -131 |      -133 |      -138 |      -137 |     22862 |
|              Improvement %               |        80 |        79 |        79 |        80 |        80 |        77 |        67 |     22862 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6975 |      6727 |      6411 |      6155 |      6051 |      5607 |      4816 |      6264 |
|                  jbird                   |     36364 |     34239 |     31631 |     31295 |     30895 |     25215 |     11982 |     29126 |
|                    Δ                     |     29389 |     27512 |     25220 |     25140 |     24844 |     19608 |      7166 |     22862 |
|              Improvement %               |       421 |       409 |       393 |       408 |       411 |       350 |       149 |     22862 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        42 |        53 |        65 |        71 |        76 |        76 |      6264 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     29126 |
|                    Δ                     |         0 |       -11 |       -22 |       -34 |       -40 |       -45 |       -45 |     22862 |
|              Improvement %               |         0 |        26 |        42 |        52 |        56 |        59 |        59 |     22862 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4864 |      4867 |      4867 |      4867 |      4867 |      4867 |      8960 |      6264 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     29126 |
|                    Δ                     |     -4864 |     -4867 |     -4867 |     -4867 |     -4867 |     -4867 |     -8960 |     22862 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     22862 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       152 |       152 |       152 |       152 |       152 |       152 |       155 |      6264 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     29126 |
|                    Δ                     |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -155 |     22862 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     22862 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      6264 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     29126 |
|                    Δ                     |      -302 |      -302 |      -302 |      -302 |      -302 |      -302 |      -305 |     22862 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |     22862 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        64 |        64 |        64 |        64 |        64 |        64 |        68 |      6264 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     29126 |
|                    Δ                     |        27 |        27 |        27 |        27 |        27 |        27 |        23 |     22862 |
|              Improvement %               |       -42 |       -42 |       -42 |       -42 |       -42 |       -42 |       -34 |     22862 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3014 |      3015 |      3017 |      3023 |      3023 |      3142 |      3199 |      6264 |
|                  jbird                   |       730 |       730 |       730 |       731 |       731 |       748 |       793 |     29126 |
|                    Δ                     |     -2284 |     -2285 |     -2287 |     -2292 |     -2292 |     -2394 |     -2406 |     22862 |
|              Improvement %               |        76 |        76 |        76 |        76 |        76 |        76 |        75 |     22862 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       304 |       304 |       304 |       304 |       304 |       304 |       304 |      6264 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     29126 |
|                    Δ                     |      -150 |      -150 |      -150 |      -150 |      -150 |      -150 |      -150 |     22862 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        49 |        49 |     22862 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1810 |      1972 |      1987 |      2003 |      2024 |      2173 |      2216 |       502 |
|                  jbird                   |        91 |        98 |       103 |       105 |       107 |       120 |       157 |      9484 |
|                    Δ                     |     -1719 |     -1874 |     -1884 |     -1898 |     -1917 |     -2053 |     -2059 |      8982 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        93 |      8982 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1811 |      1974 |      1989 |      2005 |      2026 |      2173 |      2218 |       502 |
|                  jbird                   |        92 |       100 |       104 |       106 |       109 |       122 |       158 |      9484 |
|                    Δ                     |     -1719 |     -1874 |     -1885 |     -1899 |     -1917 |     -2051 |     -2060 |      8982 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        93 |      8982 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       553 |       507 |       503 |       499 |       494 |       461 |       451 |       502 |
|                  jbird                   |     10979 |     10167 |      9735 |      9567 |      9351 |      8319 |      6371 |      9484 |
|                    Δ                     |     10426 |      9660 |      9232 |      9068 |      8857 |      7858 |      5920 |      8982 |
|              Improvement %               |      1885 |      1905 |      1835 |      1817 |      1793 |      1705 |      1313 |      8982 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        42 |        53 |        64 |        70 |        74 |        75 |       502 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9484 |
|                    Δ                     |         0 |       -11 |       -22 |       -33 |       -39 |       -43 |       -44 |      8982 |
|              Improvement %               |         0 |        26 |        42 |        52 |        56 |        58 |        59 |      8982 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        71 |        71 |        71 |        71 |        71 |        71 |        75 |       502 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9484 |
|                    Δ                     |       -71 |       -71 |       -71 |       -71 |       -71 |       -71 |       -75 |      8982 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8982 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       802 |       802 |       802 |       802 |       802 |       802 |       804 |       502 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9484 |
|                    Δ                     |      -802 |      -802 |      -802 |      -802 |      -802 |      -802 |      -804 |      8982 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8982 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       502 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9484 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      8982 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      8982 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       575 |       575 |       575 |       575 |       575 |       575 |       579 |       502 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9484 |
|                    Δ                     |        86 |        86 |        86 |        86 |        86 |        86 |        82 |      8982 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |      8982 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        49 |        49 |        49 |        49 |        49 |        52 |        52 |       502 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      9484 |
|                    Δ                     |       -46 |       -46 |       -46 |       -46 |       -46 |       -49 |       -49 |      8982 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        94 |      8982 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |       502 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9484 |
|                    Δ                     |         4 |         4 |         4 |         4 |         4 |         4 |         4 |      8982 |
|              Improvement %               |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |      8982 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1169 |      1291 |      1304 |      1317 |      1332 |      1416 |      1450 |       764 |
|                  jbird                   |        59 |        66 |        68 |        71 |        74 |        83 |       132 |     13980 |
|                    Δ                     |     -1110 |     -1225 |     -1236 |     -1246 |     -1258 |     -1333 |     -1318 |     13216 |
|              Improvement %               |        95 |        95 |        95 |        95 |        94 |        94 |        91 |     13216 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1171 |      1293 |      1305 |      1319 |      1334 |      1419 |      1452 |       764 |
|                  jbird                   |        60 |        67 |        70 |        72 |        75 |        86 |       133 |     13980 |
|                    Δ                     |     -1111 |     -1226 |     -1235 |     -1247 |     -1259 |     -1333 |     -1319 |     13216 |
|              Improvement %               |        95 |        95 |        95 |        95 |        94 |        94 |        91 |     13216 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       855 |       774 |       768 |       760 |       751 |       706 |       690 |       764 |
|                  jbird                   |     17009 |     15223 |     14727 |     14135 |     13575 |     12007 |      7605 |     13980 |
|                    Δ                     |     16154 |     14449 |     13959 |     13375 |     12824 |     11301 |      6915 |     13216 |
|              Improvement %               |      1889 |      1867 |      1818 |      1760 |      1708 |      1601 |      1002 |     13216 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        54 |        79 |       103 |       118 |       127 |       127 |       764 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     13980 |
|                    Δ                     |         0 |       -23 |       -48 |       -72 |       -87 |       -96 |       -96 |     13216 |
|              Improvement %               |         0 |        43 |        61 |        70 |        74 |        76 |        76 |     13216 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        89 |        89 |        89 |        89 |        89 |        89 |        93 |       764 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13980 |
|                    Δ                     |       -89 |       -89 |       -89 |       -89 |       -89 |       -89 |       -93 |     13216 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13216 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2088 |      2089 |      2089 |      2089 |      2089 |      2089 |      2090 |       764 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13980 |
|                    Δ                     |     -2088 |     -2089 |     -2089 |     -2089 |     -2089 |     -2089 |     -2090 |     13216 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13216 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2681 |      2681 |      2681 |      2681 |      2681 |      2681 |      2683 |       764 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13980 |
|                    Δ                     |     -2671 |     -2671 |     -2671 |     -2671 |     -2671 |     -2671 |     -2673 |     13216 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     13216 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       368 |       368 |       368 |       368 |       368 |       368 |       372 |       764 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     13980 |
|                    Δ                     |       -39 |       -39 |       -39 |       -39 |       -39 |       -39 |       -43 |     13216 |
|              Improvement %               |        11 |        11 |        11 |        11 |        11 |        11 |        12 |     13216 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        31 |        31 |        31 |        31 |        33 |        33 |       764 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     13980 |
|                    Δ                     |       -29 |       -29 |       -29 |       -29 |       -29 |       -31 |       -31 |     13216 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        94 |     13216 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       593 |       593 |       593 |       593 |       593 |       593 |       593 |       764 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13980 |
|                    Δ                     |      -583 |      -583 |      -583 |      -583 |      -583 |      -583 |      -583 |     13216 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |     13216 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        92 |       100 |       106 |       109 |       112 |       123 |       224 |      9208 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        13 |        47 |     75900 |
|                    Δ                     |       -83 |       -90 |       -96 |       -99 |      -102 |      -110 |      -177 |     66692 |
|              Improvement %               |        90 |        90 |        91 |        91 |        91 |        89 |        79 |     66692 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        94 |       102 |       107 |       111 |       113 |       125 |       213 |      9208 |
|                  jbird                   |        10 |        11 |        12 |        12 |        12 |        15 |        40 |     75900 |
|                    Δ                     |       -84 |       -91 |       -95 |       -99 |      -101 |      -110 |      -173 |     66692 |
|              Improvement %               |        89 |        89 |        89 |        89 |        89 |        88 |        81 |     66692 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10811 |      9999 |      9447 |      9167 |      8975 |      8127 |      4473 |      9208 |
|                  jbird                   |    114286 |    103039 |     99647 |     98815 |     97983 |     77439 |     21108 |     75900 |
|                    Δ                     |    103475 |     93040 |     90200 |     89648 |     89008 |     69312 |     16635 |     66692 |
|              Improvement %               |       957 |       930 |       955 |       978 |       992 |       853 |       372 |     66692 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |       175 |       326 |       477 |       566 |       620 |       620 |      9208 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     75900 |
|                    Δ                     |         0 |      -144 |      -295 |      -446 |      -535 |      -589 |      -589 |     66692 |
|              Improvement %               |         0 |        82 |        90 |        94 |        95 |        95 |        95 |     66692 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        58 |        58 |        58 |        58 |        58 |        58 |        62 |      9208 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     75900 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -62 |     66692 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     66692 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        80 |        80 |        80 |        80 |        80 |        80 |        83 |      9208 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     75900 |
|                    Δ                     |       -80 |       -80 |       -80 |       -80 |       -80 |       -80 |       -83 |     66692 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     66692 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      9208 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     75900 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |     66692 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |     66692 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        73 |        73 |        73 |        73 |        73 |        73 |        77 |      9208 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     75900 |
|                    Δ                     |        53 |        53 |        53 |        53 |        53 |        53 |        49 |     66692 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -64 |     66692 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2512 |      2529 |      2535 |      2544 |      2552 |      2597 |      2732 |      9208 |
|                  jbird                   |       230 |       230 |       230 |       230 |       230 |       235 |       278 |     75900 |
|                    Δ                     |     -2282 |     -2299 |     -2305 |     -2314 |     -2322 |     -2362 |     -2454 |     66692 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        90 |     66692 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      9208 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     75900 |
|                    Δ                     |        69 |        69 |        69 |        69 |        69 |        69 |        69 |     66692 |
|              Improvement %               |      -862 |      -862 |      -862 |      -862 |      -862 |      -862 |      -862 |     66692 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      8962 |      9249 |      9355 |      9429 |      9470 |      9937 |     10090 |       107 |
|                  jbird                   |       951 |      1019 |      1027 |      1038 |      1060 |      1138 |      1205 |       965 |
|                    Δ                     |     -8011 |     -8230 |     -8328 |     -8391 |     -8410 |     -8799 |     -8885 |       858 |
|              Improvement %               |        89 |        89 |        89 |        89 |        89 |        89 |        88 |       858 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      8968 |      9249 |      9363 |      9429 |      9478 |      9945 |     10099 |       107 |
|                  jbird                   |       953 |      1020 |      1029 |      1040 |      1061 |      1139 |      1208 |       965 |
|                    Δ                     |     -8015 |     -8229 |     -8334 |     -8389 |     -8417 |     -8806 |     -8891 |       858 |
|              Improvement %               |        89 |        89 |        89 |        89 |        89 |        89 |        88 |       858 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       112 |       108 |       107 |       106 |       106 |       101 |        99 |       107 |
|                  jbird                   |      1051 |       982 |       974 |       964 |       944 |       880 |       830 |       965 |
|                    Δ                     |       939 |       874 |       867 |       858 |       838 |       779 |       731 |       858 |
|              Improvement %               |       838 |       809 |       810 |       809 |       791 |       771 |       738 |       858 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        33 |        56 |        78 |       100 |       114 |       120 |       122 |       107 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       965 |
|                    Δ                     |        -1 |       -21 |       -43 |       -65 |       -79 |       -85 |       -87 |       858 |
|              Improvement %               |         3 |        38 |        55 |        65 |        69 |        71 |        71 |       858 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       669 |       669 |       669 |       669 |       669 |       669 |       669 |       107 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       965 |
|                    Δ                     |      -669 |      -669 |      -669 |      -669 |      -669 |      -669 |      -669 |       858 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       858 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6133 |      6134 |      6134 |      6134 |      6134 |      6134 |      6134 |       107 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       965 |
|                    Δ                     |     -6133 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |     -6134 |       858 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       858 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9774 |      9775 |      9775 |      9775 |      9775 |      9775 |      9775 |       107 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       965 |
|                    Δ                     |     -5723 |     -5724 |     -5724 |     -5724 |     -5724 |     -5724 |     -5724 |       858 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        59 |       858 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3160 |      3160 |      3160 |      3160 |      3160 |      3160 |      3160 |       107 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       965 |
|                    Δ                     |       751 |       751 |       751 |       751 |       751 |       751 |       751 |       858 |
|              Improvement %               |       -24 |       -24 |       -24 |       -24 |       -24 |       -24 |       -24 |       858 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       198 |       199 |       199 |       199 |       199 |       208 |       208 |       107 |
|                  jbird                   |        22 |        22 |        22 |        22 |        22 |        23 |        23 |       965 |
|                    Δ                     |      -176 |      -177 |      -177 |      -177 |      -177 |      -185 |      -185 |       858 |
|              Improvement %               |        89 |        89 |        89 |        89 |        89 |        89 |        89 |       858 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3641 |      3641 |      3641 |      3641 |      3641 |      3641 |      3641 |       107 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       965 |
|                    Δ                     |       410 |       410 |       410 |       410 |       410 |       410 |       410 |       858 |
|              Improvement %               |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       858 |

<p>
</details>

