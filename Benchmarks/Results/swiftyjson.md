# JBird vs. SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9402 |      9863 |      9929 |     10002 |     10109 |     10494 |     12275 |       100 |
|                  jbird                   |      1877 |      2000 |      2017 |      2039 |      2076 |      2212 |      2336 |       485 |
|                    Δ                     |     -7525 |     -7863 |     -7912 |     -7963 |     -8033 |     -8282 |     -9939 |       385 |
|              Improvement %               |        80 |        80 |        80 |        80 |        79 |        79 |        81 |       385 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9408 |      9863 |      9929 |     10011 |     10117 |     10502 |     12280 |       100 |
|                  jbird                   |      1879 |      2001 |      2019 |      2041 |      2080 |      2218 |      2338 |       485 |
|                    Δ                     |     -7529 |     -7862 |     -7910 |     -7970 |     -8037 |     -8284 |     -9942 |       385 |
|              Improvement %               |        80 |        80 |        80 |        80 |        79 |        79 |        81 |       385 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       106 |       101 |       101 |       100 |        99 |        81 |        81 |       100 |
|                  jbird                   |       533 |       500 |       496 |       491 |       482 |       452 |       428 |       485 |
|                    Δ                     |       427 |       399 |       395 |       391 |       383 |       371 |       347 |       385 |
|              Improvement %               |       403 |       395 |       391 |       391 |       387 |       458 |       428 |       385 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        27 |        64 |       100 |       137 |       158 |       173 |       173 |       100 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       485 |
|                    Δ                     |         2 |       -33 |       -69 |      -106 |      -127 |      -142 |      -142 |       385 |
|              Improvement %               |        -7 |        52 |        69 |        77 |        80 |        82 |        82 |       385 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       100 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       485 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       385 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       385 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       234 |       234 |       234 |       234 |       235 |       235 |       238 |       100 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        49 |       485 |
|                    Δ                     |      -186 |      -186 |      -186 |      -186 |      -187 |      -186 |      -189 |       385 |
|              Improvement %               |        79 |        79 |        79 |        79 |        80 |        79 |        79 |       385 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        11 |        11 |        11 |        11 |        11 |        95 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       475 |
|                    Δ                     |        -8 |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |       380 |
|              Improvement %               |        80 |        80 |        82 |        82 |        82 |        82 |        82 |       380 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        11 |        11 |        11 |        11 |        11 |        95 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       475 |
|                    Δ                     |        -8 |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |       380 |
|              Improvement %               |        80 |        80 |        82 |        82 |        82 |        82 |        82 |       380 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        99 |        96 |        95 |        94 |        92 |        88 |        88 |        95 |
|                  jbird                   |       525 |       491 |       484 |       476 |       469 |       460 |       429 |       475 |
|                    Δ                     |       426 |       395 |       389 |       382 |       377 |       372 |       341 |       380 |
|              Improvement %               |       430 |       411 |       409 |       406 |       410 |       423 |       388 |       380 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        27 |        63 |        97 |       133 |       153 |       166 |       166 |        95 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       475 |
|                    Δ                     |         2 |       -32 |       -66 |      -102 |      -122 |      -135 |      -135 |       380 |
|              Improvement %               |        -7 |        51 |        68 |        77 |        80 |        81 |        81 |       380 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        95 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       475 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       380 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       380 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       245 |       246 |       246 |       246 |       246 |       258 |       258 |        95 |
|                  jbird                   |        48 |        48 |        48 |        48 |        49 |        50 |        50 |       475 |
|                    Δ                     |      -197 |      -198 |      -198 |      -198 |      -197 |      -208 |      -208 |       380 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |       380 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2303 |      2503 |      2517 |      2531 |      2550 |      2679 |      2750 |       391 |
|                  jbird                   |       461 |       496 |       504 |       517 |       525 |       538 |       633 |      1840 |
|                    Δ                     |     -1842 |     -2007 |     -2013 |     -2014 |     -2025 |     -2141 |     -2117 |      1449 |
|              Improvement %               |        80 |        80 |        80 |        80 |        79 |        80 |        77 |      1449 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2304 |      2505 |      2519 |      2533 |      2552 |      2679 |      2756 |       391 |
|                  jbird                   |       462 |       497 |       506 |       519 |       527 |       540 |       619 |      1840 |
|                    Δ                     |     -1842 |     -2008 |     -2013 |     -2014 |     -2025 |     -2139 |     -2137 |      1449 |
|              Improvement %               |        80 |        80 |        80 |        80 |        79 |        80 |        78 |      1449 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       434 |       400 |       398 |       395 |       392 |       374 |       364 |       391 |
|                  jbird                   |      2171 |      2018 |      1983 |      1934 |      1905 |      1860 |      1581 |      1840 |
|                    Δ                     |      1737 |      1618 |      1585 |      1539 |      1513 |      1486 |      1217 |      1449 |
|              Improvement %               |       400 |       404 |       398 |       390 |       386 |       397 |       334 |      1449 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        61 |        98 |       134 |       156 |       168 |       170 |       391 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1840 |
|                    Δ                     |         0 |       -34 |       -71 |      -107 |      -129 |      -141 |      -143 |      1449 |
|              Improvement %               |         0 |        56 |        72 |        80 |        83 |        84 |        84 |      1449 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       391 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1840 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1449 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1449 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        59 |        59 |        59 |        59 |        62 |        62 |       391 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1840 |
|                    Δ                     |       -47 |       -47 |       -47 |       -47 |       -47 |       -50 |       -50 |      1449 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      1449 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2346 |      2531 |      2546 |      2562 |      2580 |      2781 |      2789 |       387 |
|                  jbird                   |       474 |       507 |       518 |       547 |       560 |       575 |       667 |      1776 |
|                    Δ                     |     -1872 |     -2024 |     -2028 |     -2015 |     -2020 |     -2206 |     -2122 |      1389 |
|              Improvement %               |        80 |        80 |        80 |        79 |        78 |        79 |        76 |      1389 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2347 |      2533 |      2548 |      2564 |      2583 |      2783 |      2796 |       387 |
|                  jbird                   |       475 |       508 |       520 |       549 |       561 |       577 |       668 |      1776 |
|                    Δ                     |     -1872 |     -2025 |     -2028 |     -2015 |     -2022 |     -2206 |     -2128 |      1389 |
|              Improvement %               |        80 |        80 |        80 |        79 |        78 |        79 |        76 |      1389 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       426 |       395 |       393 |       391 |       388 |       360 |       359 |       387 |
|                  jbird                   |      2112 |      1974 |      1931 |      1828 |      1788 |      1740 |      1500 |      1776 |
|                    Δ                     |      1686 |      1579 |      1538 |      1437 |      1400 |      1380 |      1141 |      1389 |
|              Improvement %               |       396 |       400 |       391 |       368 |       361 |       383 |       318 |      1389 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        61 |        98 |       134 |       155 |       168 |       169 |       387 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1776 |
|                    Δ                     |         0 |       -34 |       -71 |      -107 |      -128 |      -141 |      -142 |      1389 |
|              Improvement %               |         0 |        56 |        72 |        80 |        83 |        84 |        84 |      1389 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       387 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1776 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1389 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1389 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        60 |        60 |        60 |        60 |        63 |        63 |       387 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1776 |
|                    Δ                     |       -47 |       -48 |       -48 |       -48 |       -48 |       -51 |       -50 |      1389 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        79 |      1389 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4689 |      4973 |      5046 |      5083 |      5140 |      5263 |      5328 |       198 |
|                  jbird                   |       929 |      1002 |      1032 |      1060 |      1079 |      1152 |      1196 |       932 |
|                    Δ                     |     -3760 |     -3971 |     -4014 |     -4023 |     -4061 |     -4111 |     -4132 |       734 |
|              Improvement %               |        80 |        80 |        80 |        79 |        79 |        78 |        78 |       734 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4680 |      4973 |      5046 |      5087 |      5145 |      5272 |      5331 |       198 |
|                  jbird                   |       930 |      1004 |      1034 |      1062 |      1081 |      1155 |      1197 |       932 |
|                    Δ                     |     -3750 |     -3969 |     -4012 |     -4025 |     -4064 |     -4117 |     -4134 |       734 |
|              Improvement %               |        80 |        80 |        80 |        79 |        79 |        78 |        78 |       734 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       213 |       201 |       198 |       197 |       195 |       190 |       188 |       198 |
|                  jbird                   |      1077 |       998 |       969 |       943 |       927 |       868 |       836 |       932 |
|                    Δ                     |       864 |       797 |       771 |       746 |       732 |       678 |       648 |       734 |
|              Improvement %               |       406 |       397 |       389 |       379 |       375 |       357 |       345 |       734 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       100 |       135 |       157 |       170 |       172 |       198 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       932 |
|                    Δ                     |         0 |       -36 |       -72 |      -107 |      -129 |      -142 |      -144 |       734 |
|              Improvement %               |         0 |        56 |        72 |        79 |        82 |        84 |        84 |       734 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       198 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       932 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       734 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       734 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       119 |       119 |       119 |       119 |       119 |       121 |       123 |       198 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       932 |
|                    Δ                     |       -95 |       -95 |       -95 |       -95 |       -95 |       -97 |       -98 |       734 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       734 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4429 |      4768 |      4801 |      4850 |      4895 |      5181 |      5288 |       206 |
|                  jbird                   |       941 |      1013 |      1023 |      1038 |      1051 |      1075 |      1109 |       941 |
|                    Δ                     |     -3488 |     -3755 |     -3778 |     -3812 |     -3844 |     -4106 |     -4179 |       735 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        79 |       735 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4430 |      4772 |      4809 |      4854 |      4895 |      5186 |      5292 |       206 |
|                  jbird                   |       943 |      1015 |      1025 |      1040 |      1052 |      1077 |      1113 |       941 |
|                    Δ                     |     -3487 |     -3757 |     -3784 |     -3814 |     -3843 |     -4109 |     -4179 |       735 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        79 |       735 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       226 |       210 |       208 |       206 |       204 |       193 |       189 |       206 |
|                  jbird                   |      1062 |       987 |       977 |       963 |       953 |       930 |       902 |       941 |
|                    Δ                     |       836 |       777 |       769 |       757 |       749 |       737 |       713 |       735 |
|              Improvement %               |       370 |       370 |       370 |       367 |       367 |       382 |       377 |       735 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       102 |       139 |       162 |       176 |       178 |       206 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       941 |
|                    Δ                     |         0 |       -36 |       -74 |      -111 |      -134 |      -148 |      -150 |       735 |
|              Improvement %               |         0 |        56 |        73 |        80 |        83 |        84 |        84 |       735 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       206 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       941 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       735 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       735 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       118 |       118 |       119 |       119 |       119 |       123 |       125 |       206 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       941 |
|                    Δ                     |       -94 |       -94 |       -95 |       -95 |       -95 |       -98 |      -100 |       735 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       735 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        49 |        50 |        50 |        53 |        53 |        21 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        89 |
|                    Δ                     |       -37 |       -38 |       -38 |       -39 |       -39 |       -41 |       -41 |        68 |
|              Improvement %               |        77 |        78 |        78 |        78 |        78 |        77 |        77 |        68 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        49 |        50 |        50 |        53 |        53 |        21 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        89 |
|                    Δ                     |       -37 |       -38 |       -38 |       -39 |       -39 |       -41 |       -41 |        68 |
|              Improvement %               |        77 |        78 |        78 |        78 |        78 |        77 |        77 |        68 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        20 |        20 |        20 |        20 |        19 |        19 |        21 |
|                  jbird                   |        94 |        91 |        90 |        89 |        88 |        87 |        87 |        89 |
|                    Δ                     |        73 |        71 |        70 |        69 |        68 |        68 |        68 |        68 |
|              Improvement %               |       348 |       355 |       350 |       345 |       340 |       358 |       358 |        68 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        46 |        86 |       124 |       160 |       180 |       192 |       192 |        21 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        89 |
|                    Δ                     |       -18 |       -34 |       -72 |      -108 |      -128 |      -140 |      -140 |        68 |
|              Improvement %               |        39 |        40 |        58 |        68 |        71 |        73 |        73 |        68 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        21 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        89 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        68 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        68 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1175 |      1177 |      1178 |      1179 |      1181 |      1184 |      1184 |        21 |
|                  jbird                   |       246 |       247 |       247 |       247 |       247 |       255 |       255 |        89 |
|                    Δ                     |      -929 |      -930 |      -931 |      -932 |      -934 |      -929 |      -929 |        68 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        78 |        78 |        68 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        50 |        51 |        52 |        53 |        57 |        57 |        20 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        13 |        13 |        87 |
|                    Δ                     |       -39 |       -39 |       -40 |       -41 |       -41 |       -44 |       -44 |        67 |
|              Improvement %               |        78 |        78 |        78 |        79 |        77 |        77 |        77 |        67 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        50 |        51 |        52 |        53 |        57 |        57 |        20 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        13 |        13 |        87 |
|                    Δ                     |       -39 |       -39 |       -40 |       -41 |       -41 |       -44 |       -44 |        67 |
|              Improvement %               |        78 |        78 |        78 |        79 |        77 |        77 |        77 |        67 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        20 |        20 |        19 |        19 |        18 |        18 |        18 |        20 |
|                  jbird                   |        94 |        89 |        88 |        87 |        85 |        80 |        80 |        87 |
|                    Δ                     |        74 |        69 |        69 |        68 |        67 |        62 |        62 |        67 |
|              Improvement %               |       370 |       345 |       363 |       358 |       372 |       344 |       344 |        67 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        78 |       115 |       150 |       174 |       186 |       186 |        20 |
|                  jbird                   |        43 |        51 |        52 |        52 |        52 |        52 |        52 |        87 |
|                    Δ                     |        -5 |       -27 |       -63 |       -98 |      -122 |      -134 |      -134 |        67 |
|              Improvement %               |        10 |        35 |        55 |        65 |        70 |        72 |        72 |        67 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        20 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        87 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        67 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        67 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1200 |      1202 |      1202 |      1204 |      1205 |      1207 |      1207 |        20 |
|                  jbird                   |       251 |       252 |       252 |       252 |       252 |       261 |       261 |        87 |
|                    Δ                     |      -949 |      -950 |      -950 |      -952 |      -953 |      -946 |      -946 |        67 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        78 |        78 |        67 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       585 |       654 |       661 |       668 |       676 |       706 |       757 |      1431 |
|                  jbird                   |       116 |       123 |       129 |       134 |       139 |       159 |       272 |      6039 |
|                    Δ                     |      -469 |      -531 |      -532 |      -534 |      -537 |      -547 |      -485 |      4608 |
|              Improvement %               |        80 |        81 |        80 |        80 |        79 |        77 |        64 |      4608 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       586 |       655 |       663 |       670 |       678 |       707 |       759 |      1431 |
|                  jbird                   |       118 |       125 |       131 |       135 |       140 |       159 |       229 |      6039 |
|                    Δ                     |      -468 |      -530 |      -532 |      -535 |      -538 |      -548 |      -530 |      4608 |
|              Improvement %               |        80 |        81 |        80 |        80 |        79 |        78 |        70 |      4608 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1710 |      1530 |      1513 |      1497 |      1480 |      1417 |      1322 |      1431 |
|                  jbird                   |      8599 |      8107 |      7743 |      7475 |      7219 |      6307 |      3681 |      6039 |
|                    Δ                     |      6889 |      6577 |      6230 |      5978 |      5739 |      4890 |      2359 |      4608 |
|              Improvement %               |       403 |       430 |       412 |       399 |       388 |       345 |       178 |      4608 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        60 |        95 |       130 |       150 |       163 |       165 |      1431 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6039 |
|                    Δ                     |         0 |       -35 |       -69 |      -104 |      -124 |      -137 |      -139 |      4608 |
|              Improvement %               |         0 |        58 |        73 |        80 |        83 |        84 |        84 |      4608 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1431 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6039 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4608 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4608 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1431 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6039 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4608 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4608 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       561 |       622 |       629 |       638 |       662 |       681 |       768 |      1493 |
|                  jbird                   |       117 |       122 |       129 |       133 |       137 |       156 |       197 |      6074 |
|                    Δ                     |      -444 |      -500 |      -500 |      -505 |      -525 |      -525 |      -571 |      4581 |
|              Improvement %               |        79 |        80 |        79 |        79 |        79 |        77 |        74 |      4581 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       563 |       623 |       631 |       640 |       663 |       684 |       774 |      1493 |
|                  jbird                   |       119 |       123 |       130 |       135 |       138 |       158 |       187 |      6074 |
|                    Δ                     |      -444 |      -500 |      -501 |      -505 |      -525 |      -526 |      -587 |      4581 |
|              Improvement %               |        79 |        80 |        79 |        79 |        79 |        77 |        76 |      4581 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1781 |      1610 |      1591 |      1569 |      1512 |      1468 |      1302 |      1493 |
|                  jbird                   |      8526 |      8223 |      7771 |      7515 |      7319 |      6415 |      5080 |      6074 |
|                    Δ                     |      6745 |      6613 |      6180 |      5946 |      5807 |      4947 |      3778 |      4581 |
|              Improvement %               |       379 |       411 |       388 |       379 |       384 |       337 |       290 |      4581 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        61 |        99 |       134 |       156 |       169 |       171 |      1493 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6074 |
|                    Δ                     |         0 |       -35 |       -73 |      -108 |      -130 |      -143 |      -145 |      4581 |
|              Improvement %               |         0 |        57 |        74 |        81 |        83 |        85 |        85 |      4581 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1493 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6074 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4581 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4581 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        16 |      1493 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6074 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |      4581 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        81 |      4581 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       139 |       150 |       158 |       162 |       165 |       174 |       230 |      5311 |
|                  jbird                   |        57 |        59 |        63 |        65 |        66 |        77 |        94 |     10642 |
|                    Δ                     |       -82 |       -91 |       -95 |       -97 |       -99 |       -97 |      -136 |      5331 |
|              Improvement %               |        59 |        61 |        60 |        60 |        60 |        56 |        59 |      5331 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       141 |       151 |       159 |       164 |       167 |       176 |       223 |      5311 |
|                  jbird                   |        58 |        60 |        64 |        67 |        68 |        79 |        96 |     10642 |
|                    Δ                     |       -83 |       -91 |       -95 |       -97 |       -99 |       -97 |      -127 |      5331 |
|              Improvement %               |        59 |        60 |        60 |        59 |        59 |        55 |        57 |      5331 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7177 |      6691 |      6339 |      6159 |      6059 |      5739 |      4351 |      5311 |
|                  jbird                   |     17569 |     17055 |     15895 |     15327 |     15119 |     12951 |     10601 |     10642 |
|                    Δ                     |     10392 |     10364 |      9556 |      9168 |      9060 |      7212 |      6250 |      5331 |
|              Improvement %               |       145 |       155 |       151 |       149 |       150 |       126 |       144 |      5331 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        32 |        38 |        45 |        49 |        51 |        51 |      5311 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10642 |
|                    Δ                     |         0 |        -7 |       -13 |       -20 |       -24 |       -26 |       -26 |      5331 |
|              Improvement %               |         0 |        22 |        34 |        44 |        49 |        51 |        51 |      5331 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5311 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     10642 |
|                    Δ                     |      -303 |      -303 |      -303 |      -303 |      -303 |      -303 |      -306 |      5331 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        67 |      5331 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2916 |      2916 |      2918 |      2925 |      2929 |      3041 |      3154 |      5311 |
|                  jbird                   |      1606 |      1607 |      1607 |      1607 |      1607 |      1635 |      1714 |     10642 |
|                    Δ                     |     -1310 |     -1309 |     -1311 |     -1318 |     -1322 |     -1406 |     -1440 |      5331 |
|              Improvement %               |        45 |        45 |        45 |        45 |        45 |        46 |        46 |      5331 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1673 |      1793 |      1819 |      1840 |      1858 |      1986 |      2058 |       540 |
|                  jbird                   |        86 |        93 |        98 |       101 |       105 |       117 |       277 |      7757 |
|                    Δ                     |     -1587 |     -1700 |     -1721 |     -1739 |     -1753 |     -1869 |     -1781 |      7217 |
|              Improvement %               |        95 |        95 |        95 |        95 |        94 |        94 |        87 |      7217 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1675 |      1795 |      1820 |      1842 |      1859 |      1988 |      2066 |       540 |
|                  jbird                   |        87 |        95 |       100 |       103 |       106 |       118 |       170 |      7757 |
|                    Δ                     |     -1588 |     -1700 |     -1720 |     -1739 |     -1753 |     -1870 |     -1896 |      7217 |
|              Improvement %               |        95 |        95 |        95 |        94 |        94 |        94 |        92 |      7217 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       598 |       558 |       550 |       544 |       538 |       504 |       486 |       540 |
|                  jbird                   |     11690 |     10727 |     10191 |      9895 |      9535 |      8567 |      3615 |      7757 |
|                    Δ                     |     11092 |     10169 |      9641 |      9351 |      8997 |      8063 |      3129 |      7217 |
|              Improvement %               |      1855 |      1822 |      1753 |      1719 |      1672 |      1600 |       644 |      7217 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        36 |        47 |        57 |        63 |        67 |        67 |       540 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7757 |
|                    Δ                     |         0 |       -10 |       -21 |       -31 |       -37 |       -41 |       -41 |      7217 |
|              Improvement %               |         0 |        28 |        45 |        54 |        59 |        61 |        61 |      7217 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       540 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7757 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      7217 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      7217 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        47 |        47 |        47 |        47 |        50 |        50 |       540 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      7757 |
|                    Δ                     |       -44 |       -44 |       -44 |       -44 |       -44 |       -47 |       -47 |      7217 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        94 |      7217 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1088 |      1192 |      1202 |      1224 |      1237 |      1308 |      1363 |       805 |
|                  jbird                   |        55 |        59 |        63 |        64 |        65 |        74 |       170 |     10766 |
|                    Δ                     |     -1033 |     -1133 |     -1139 |     -1160 |     -1172 |     -1234 |     -1193 |      9961 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        88 |      9961 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1090 |      1193 |      1204 |      1225 |      1239 |      1311 |      1364 |       805 |
|                  jbird                   |        57 |        60 |        64 |        65 |        66 |        76 |       156 |     10766 |
|                    Δ                     |     -1033 |     -1133 |     -1140 |     -1160 |     -1173 |     -1235 |     -1208 |      9961 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        89 |      9961 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       919 |       840 |       832 |       818 |       809 |       765 |       734 |       805 |
|                  jbird                   |     18059 |     17071 |     15919 |     15679 |     15407 |     13455 |      5888 |     10766 |
|                    Δ                     |     17140 |     16231 |     15087 |     14861 |     14598 |     12690 |      5154 |      9961 |
|              Improvement %               |      1865 |      1932 |      1813 |      1817 |      1804 |      1659 |       702 |      9961 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        45 |        64 |        83 |        94 |       101 |       101 |       805 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10766 |
|                    Δ                     |         0 |       -19 |       -38 |       -57 |       -68 |       -75 |       -75 |      9961 |
|              Improvement %               |         0 |        42 |        59 |        69 |        72 |        74 |        74 |      9961 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       805 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10766 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |      9961 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      9961 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        29 |        29 |        29 |        29 |        29 |        31 |        31 |       805 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10766 |
|                    Δ                     |       -27 |       -27 |       -27 |       -27 |       -27 |       -29 |       -29 |      9961 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      9961 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       545 |       605 |       613 |       633 |       659 |       811 |       879 |      1500 |
|                  jbird                   |        74 |        78 |        83 |        86 |        91 |       103 |       172 |      8413 |
|                    Δ                     |      -471 |      -527 |      -530 |      -547 |      -568 |      -708 |      -707 |      6913 |
|              Improvement %               |        86 |        87 |        86 |        86 |        86 |        87 |        80 |      6913 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       546 |       607 |       615 |       634 |       661 |       813 |       880 |      1500 |
|                  jbird                   |        76 |        79 |        85 |        87 |        93 |       105 |       178 |      8413 |
|                    Δ                     |      -470 |      -528 |      -530 |      -547 |      -568 |      -708 |      -702 |      6913 |
|              Improvement %               |        86 |        87 |        86 |        86 |        86 |        87 |        80 |      6913 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1834 |      1653 |      1632 |      1581 |      1516 |      1233 |      1138 |      1500 |
|                  jbird                   |     13460 |     12879 |     12047 |     11647 |     10999 |      9687 |      5807 |      8413 |
|                    Δ                     |     11626 |     11226 |     10415 |     10066 |      9483 |      8454 |      4669 |      6913 |
|              Improvement %               |       634 |       679 |       638 |       637 |       626 |       686 |       410 |      6913 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        40 |        55 |        70 |        79 |        84 |        85 |      1500 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      8413 |
|                    Δ                     |         0 |       -15 |       -30 |       -45 |       -54 |       -59 |       -60 |      6913 |
|              Improvement %               |         0 |        38 |        55 |        64 |        68 |        70 |        71 |      6913 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5760 |      5763 |      5763 |      5763 |      5763 |      5763 |      5763 |      1500 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      8413 |
|                    Δ                     |     -5711 |     -5714 |     -5714 |     -5714 |     -5714 |     -5714 |     -5714 |      6913 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      6913 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        14 |        14 |        14 |        14 |        14 |        14 |        15 |      1500 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         1 |         2 |      8413 |
|                    Δ                     |       -13 |       -13 |       -13 |       -13 |       -13 |       -13 |       -13 |      6913 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        87 |      6913 |

<p>
</details>

