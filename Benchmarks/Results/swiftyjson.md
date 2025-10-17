# JBird vs. SwiftyJSON

## JBirdBenchmark

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      8867 |      9355 |      9486 |      9585 |      9683 |     11461 |     15066 |       105 |
|                  jbird                   |      1893 |      2057 |      2073 |      2087 |      2109 |      2847 |      3757 |       469 |
|                    Δ                     |     -6974 |     -7298 |     -7413 |     -7498 |     -7574 |     -8614 |    -11309 |       364 |
|              Improvement %               |        79 |        78 |        78 |        78 |        78 |        75 |        75 |       364 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      8872 |      9355 |      9486 |      9585 |      9691 |     11469 |     15077 |       105 |
|                  jbird                   |      1894 |      2058 |      2074 |      2089 |      2111 |      2851 |      3761 |       469 |
|                    Δ                     |     -6978 |     -7297 |     -7412 |     -7496 |     -7580 |     -8618 |    -11316 |       364 |
|              Improvement %               |        79 |        78 |        78 |        78 |        78 |        75 |        75 |       364 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       113 |       107 |       105 |       104 |       103 |        87 |        66 |       105 |
|                  jbird                   |       528 |       486 |       483 |       479 |       474 |       351 |       266 |       469 |
|                    Δ                     |       415 |       379 |       378 |       375 |       371 |       264 |       200 |       364 |
|              Improvement %               |       367 |       354 |       360 |       361 |       360 |       303 |       303 |       364 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        67 |       105 |       142 |       166 |       179 |       182 |       105 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       469 |
|                    Δ                     |        -1 |       -36 |       -74 |      -111 |      -135 |      -148 |      -151 |       364 |
|              Improvement %               |         3 |        54 |        70 |        78 |        81 |        83 |        83 |       364 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       105 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       469 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       364 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       364 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       234 |       234 |       234 |       235 |       235 |       237 |       243 |       105 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        50 |       469 |
|                    Δ                     |      -185 |      -185 |      -185 |      -186 |      -186 |      -187 |      -193 |       364 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        79 |       364 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9218 |      9642 |      9773 |      9888 |     10404 |     11231 |     11242 |       101 |
|                  jbird                   |      1935 |      2072 |      2107 |      2163 |      2292 |      2343 |      2368 |       460 |
|                    Δ                     |     -7283 |     -7570 |     -7666 |     -7725 |     -8112 |     -8888 |     -8874 |       359 |
|              Improvement %               |        79 |        79 |        78 |        78 |        78 |        79 |        79 |       359 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9212 |      9642 |      9781 |      9896 |     10404 |     11239 |     11249 |       101 |
|                  jbird                   |      1936 |      2074 |      2109 |      2165 |      2296 |      2345 |      2360 |       460 |
|                    Δ                     |     -7276 |     -7568 |     -7672 |     -7731 |     -8108 |     -8894 |     -8889 |       359 |
|              Improvement %               |        79 |        78 |        78 |        78 |        78 |        79 |        79 |       359 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       108 |       104 |       102 |       101 |        96 |        89 |        89 |       101 |
|                  jbird                   |       517 |       483 |       475 |       462 |       436 |       427 |       422 |       460 |
|                    Δ                     |       409 |       379 |       373 |       361 |       340 |       338 |       333 |       359 |
|              Improvement %               |       379 |       364 |       366 |       357 |       354 |       380 |       374 |       359 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        27 |        66 |       102 |       138 |       161 |       174 |       175 |       101 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       460 |
|                    Δ                     |         2 |       -35 |       -71 |      -107 |      -130 |      -143 |      -144 |       359 |
|              Improvement %               |        -7 |        53 |        70 |        78 |        81 |        82 |        82 |       359 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       101 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       460 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       359 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       359 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       234 |       235 |       235 |       235 |       235 |       240 |       248 |       101 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        49 |        51 |       460 |
|                    Δ                     |      -185 |      -186 |      -186 |      -186 |      -186 |      -191 |      -197 |       359 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        79 |       359 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2155 |      2284 |      2298 |      2329 |      2515 |      2746 |      2763 |       420 |
|                  jbird                   |       468 |       513 |       516 |       527 |       543 |       559 |       580 |      1790 |
|                    Δ                     |     -1687 |     -1771 |     -1782 |     -1802 |     -1972 |     -2187 |     -2183 |      1370 |
|              Improvement %               |        78 |        78 |        78 |        77 |        78 |        80 |        79 |      1370 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2161 |      2286 |      2300 |      2331 |      2515 |      2753 |      2765 |       420 |
|                  jbird                   |       469 |       514 |       518 |       529 |       545 |       561 |       575 |      1790 |
|                    Δ                     |     -1692 |     -1772 |     -1782 |     -1802 |     -1970 |     -2192 |     -2190 |      1370 |
|              Improvement %               |        78 |        78 |        77 |        77 |        78 |        80 |        79 |      1370 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       464 |       438 |       435 |       430 |       397 |       364 |       362 |       420 |
|                  jbird                   |      2139 |      1952 |      1937 |      1897 |      1842 |      1789 |      1723 |      1790 |
|                    Δ                     |      1675 |      1514 |      1502 |      1467 |      1445 |      1425 |      1361 |      1370 |
|              Improvement %               |       361 |       346 |       345 |       341 |       364 |       391 |       376 |      1370 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       104 |       142 |       165 |       179 |       181 |       420 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1790 |
|                    Δ                     |         0 |       -37 |       -77 |      -115 |      -138 |      -152 |      -154 |      1370 |
|              Improvement %               |         0 |        58 |        74 |        81 |        84 |        85 |        85 |      1370 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       420 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1790 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1370 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1370 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        58 |        58 |        58 |        58 |        58 |        60 |        63 |       420 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1790 |
|                    Δ                     |       -46 |       -46 |       -46 |       -46 |       -46 |       -48 |       -50 |      1370 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        79 |      1370 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2170 |      2392 |      2478 |      2642 |      2830 |      2931 |      2950 |       390 |
|                  jbird                   |       466 |       513 |       525 |       557 |       572 |       585 |       607 |      1753 |
|                    Δ                     |     -1704 |     -1879 |     -1953 |     -2085 |     -2258 |     -2346 |     -2343 |      1363 |
|              Improvement %               |        79 |        79 |        79 |        79 |        80 |        80 |        79 |      1363 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2172 |      2396 |      2478 |      2642 |      2830 |      2931 |      2951 |       390 |
|                  jbird                   |       467 |       515 |       526 |       559 |       573 |       587 |       608 |      1753 |
|                    Δ                     |     -1705 |     -1881 |     -1952 |     -2083 |     -2257 |     -2344 |     -2343 |      1363 |
|              Improvement %               |        78 |        79 |        79 |        79 |        80 |        80 |        79 |      1363 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       461 |       418 |       404 |       379 |       352 |       341 |       339 |       390 |
|                  jbird                   |      2147 |      1950 |      1907 |      1795 |      1750 |      1711 |      1648 |      1753 |
|                    Δ                     |      1686 |      1532 |      1503 |      1416 |      1398 |      1370 |      1309 |      1363 |
|              Improvement %               |       366 |       367 |       372 |       374 |       397 |       402 |       386 |      1363 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        62 |        98 |       134 |       156 |       169 |       171 |       390 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1753 |
|                    Δ                     |         0 |       -35 |       -71 |      -107 |      -129 |      -142 |      -144 |      1363 |
|              Improvement %               |         0 |        56 |        72 |        80 |        83 |        84 |        84 |      1363 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       390 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1753 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1363 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1363 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        59 |        59 |        59 |        59 |        62 |        63 |       390 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        13 |        13 |      1753 |
|                    Δ                     |       -47 |       -47 |       -47 |       -47 |       -47 |       -49 |       -50 |      1363 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        79 |      1363 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4396 |      4665 |      4719 |      4801 |      4993 |      5063 |      5150 |       209 |
|                  jbird                   |       937 |      1026 |      1037 |      1051 |      1061 |      1084 |      1111 |       928 |
|                    Δ                     |     -3459 |     -3639 |     -3682 |     -3750 |     -3932 |     -3979 |     -4039 |       719 |
|              Improvement %               |        79 |        78 |        78 |        78 |        79 |        79 |        78 |       719 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4394 |      4669 |      4723 |      4805 |      5001 |      5063 |      5152 |       209 |
|                  jbird                   |       938 |      1028 |      1040 |      1053 |      1062 |      1086 |      1112 |       928 |
|                    Δ                     |     -3456 |     -3641 |     -3683 |     -3752 |     -3939 |     -3977 |     -4040 |       719 |
|              Improvement %               |        79 |        78 |        78 |        78 |        79 |        79 |        78 |       719 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       227 |       214 |       212 |       208 |       200 |       198 |       194 |       209 |
|                  jbird                   |      1067 |       975 |       964 |       952 |       943 |       922 |       900 |       928 |
|                    Δ                     |       840 |       761 |       752 |       744 |       743 |       724 |       706 |       719 |
|              Improvement %               |       370 |       356 |       355 |       358 |       372 |       366 |       364 |       719 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        65 |       103 |       142 |       164 |       178 |       179 |       209 |
|                  jbird                   |        26 |        29 |        29 |        29 |        29 |        29 |        29 |       928 |
|                    Δ                     |         0 |       -36 |       -74 |      -113 |      -135 |      -149 |      -150 |       719 |
|              Improvement %               |         0 |        55 |        72 |        80 |        82 |        84 |        84 |       719 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       209 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       928 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       719 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       719 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       116 |       116 |       116 |       116 |       116 |       122 |       123 |       209 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       928 |
|                    Δ                     |       -92 |       -92 |       -92 |       -92 |       -92 |       -97 |       -97 |       719 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        79 |       719 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4517 |      4776 |      4829 |      4981 |      5095 |      5222 |      5240 |       204 |
|                  jbird                   |       946 |      1040 |      1062 |      1076 |      1100 |      1149 |      1175 |       908 |
|                    Δ                     |     -3571 |     -3736 |     -3767 |     -3905 |     -3995 |     -4073 |     -4065 |       704 |
|              Improvement %               |        79 |        78 |        78 |        78 |        78 |        78 |        78 |       704 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4518 |      4780 |      4829 |      4985 |      5095 |      5222 |      5246 |       204 |
|                  jbird                   |       948 |      1042 |      1063 |      1078 |      1102 |      1151 |      1181 |       908 |
|                    Δ                     |     -3570 |     -3738 |     -3766 |     -3907 |     -3993 |     -4071 |     -4065 |       704 |
|              Improvement %               |        79 |        78 |        78 |        78 |        78 |        78 |        77 |       704 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       221 |       209 |       207 |       201 |       196 |       192 |       191 |       204 |
|                  jbird                   |      1057 |       961 |       942 |       929 |       909 |       871 |       851 |       908 |
|                    Δ                     |       836 |       752 |       735 |       728 |       713 |       679 |       660 |       704 |
|              Improvement %               |       378 |       360 |       355 |       362 |       364 |       354 |       346 |       704 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        65 |       100 |       138 |       161 |       174 |       176 |       204 |
|                  jbird                   |        26 |        29 |        29 |        29 |        29 |        29 |        29 |       908 |
|                    Δ                     |         0 |       -36 |       -71 |      -109 |      -132 |      -145 |      -147 |       704 |
|              Improvement %               |         0 |        55 |        71 |        79 |        82 |        83 |        84 |       704 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       204 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       908 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       704 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       704 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       118 |       118 |       118 |       118 |       118 |       120 |       124 |       204 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        26 |       908 |
|                    Δ                     |       -93 |       -93 |       -93 |       -93 |       -93 |       -95 |       -98 |       704 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        79 |       704 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        47 |        48 |        50 |        51 |        52 |        52 |        21 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        90 |
|                    Δ                     |       -36 |       -36 |       -37 |       -39 |       -40 |       -41 |       -41 |        69 |
|              Improvement %               |        77 |        77 |        77 |        78 |        78 |        79 |        79 |        69 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        47 |        48 |        50 |        51 |        52 |        52 |        21 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        90 |
|                    Δ                     |       -36 |       -36 |       -37 |       -39 |       -40 |       -41 |       -41 |        69 |
|              Improvement %               |        77 |        77 |        77 |        78 |        78 |        79 |        79 |        69 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        20 |        20 |        19 |        19 |        21 |
|                  jbird                   |        95 |        91 |        91 |        89 |        88 |        87 |        87 |        90 |
|                    Δ                     |        74 |        70 |        70 |        69 |        68 |        68 |        68 |        69 |
|              Improvement %               |       352 |       333 |       333 |       345 |       340 |       358 |       358 |        69 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        46 |        85 |       123 |       160 |       183 |       192 |       192 |        21 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        90 |
|                    Δ                     |       -18 |       -33 |       -71 |      -108 |      -131 |      -140 |      -140 |        69 |
|              Improvement %               |        39 |        39 |        58 |        68 |        72 |        73 |        73 |        69 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        21 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        90 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        69 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        69 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1170 |      1171 |      1172 |      1173 |      1174 |      1210 |      1210 |        21 |
|                  jbird                   |       247 |       251 |       251 |       251 |       251 |       260 |       260 |        90 |
|                    Δ                     |      -923 |      -920 |      -921 |      -922 |      -923 |      -950 |      -950 |        69 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        79 |        69 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        48 |        50 |        51 |        52 |        53 |        53 |        21 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        89 |
|                    Δ                     |       -36 |       -37 |       -39 |       -40 |       -40 |       -41 |       -41 |        68 |
|              Improvement %               |        77 |        77 |        78 |        78 |        77 |        77 |        77 |        68 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        48 |        50 |        51 |        52 |        53 |        53 |        21 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        89 |
|                    Δ                     |       -36 |       -37 |       -39 |       -40 |       -40 |       -41 |       -41 |        68 |
|              Improvement %               |        77 |        77 |        78 |        78 |        77 |        77 |        77 |        68 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        20 |        20 |        19 |        19 |        19 |        21 |
|                  jbird                   |        94 |        91 |        90 |        88 |        85 |        85 |        85 |        89 |
|                    Δ                     |        73 |        70 |        70 |        68 |        66 |        66 |        66 |        68 |
|              Improvement %               |       348 |       333 |       350 |       340 |       347 |       347 |       347 |        68 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        49 |        87 |       125 |       159 |       183 |       193 |       193 |        21 |
|                  jbird                   |        28 |        51 |        51 |        52 |        52 |        52 |        52 |        89 |
|                    Δ                     |       -21 |       -36 |       -74 |      -107 |      -131 |      -141 |      -141 |        68 |
|              Improvement %               |        43 |        41 |        59 |        67 |        72 |        73 |        73 |        68 |

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
|                swiftyjson                |      1184 |      1185 |      1186 |      1188 |      1190 |      1209 |      1209 |        21 |
|                  jbird                   |       255 |       255 |       255 |       255 |       256 |       264 |       264 |        89 |
|                    Δ                     |      -929 |      -930 |      -931 |      -933 |      -934 |      -945 |      -945 |        68 |
|              Improvement %               |        78 |        78 |        78 |        79 |        78 |        78 |        78 |        68 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       526 |       575 |       583 |       590 |       599 |       635 |       678 |      1610 |
|                  jbird                   |       116 |       128 |       132 |       137 |       148 |       154 |       175 |      5909 |
|                    Δ                     |      -410 |      -447 |      -451 |      -453 |      -451 |      -481 |      -503 |      4299 |
|              Improvement %               |        78 |        78 |        77 |        77 |        75 |        76 |        74 |      4299 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       530 |       577 |       585 |       591 |       601 |       635 |       680 |      1610 |
|                  jbird                   |       117 |       129 |       134 |       139 |       149 |       155 |       174 |      5909 |
|                    Δ                     |      -413 |      -448 |      -451 |      -452 |      -452 |      -480 |      -506 |      4299 |
|              Improvement %               |        78 |        78 |        77 |        76 |        75 |        76 |        74 |      4299 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1901 |      1739 |      1716 |      1696 |      1671 |      1574 |      1475 |      1610 |
|                  jbird                   |      8633 |      7835 |      7563 |      7291 |      6771 |      6507 |      5714 |      5909 |
|                    Δ                     |      6732 |      6096 |      5847 |      5595 |      5100 |      4933 |      4239 |      4299 |
|              Improvement %               |       354 |       351 |       341 |       330 |       305 |       313 |       287 |      4299 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        64 |       103 |       142 |       166 |       180 |       182 |      1610 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      5909 |
|                    Δ                     |         0 |       -38 |       -77 |      -116 |      -140 |      -154 |      -156 |      4299 |
|              Improvement %               |         0 |        59 |        75 |        82 |        84 |        86 |        86 |      4299 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1610 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5909 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4299 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4299 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        16 |      1610 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      5909 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |      4299 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        81 |      4299 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       555 |       612 |       620 |       635 |       686 |       737 |       810 |      1499 |
|                  jbird                   |       119 |       130 |       134 |       139 |       143 |       151 |       180 |      5855 |
|                    Δ                     |      -436 |      -482 |      -486 |      -496 |      -543 |      -586 |      -630 |      4356 |
|              Improvement %               |        79 |        79 |        78 |        78 |        79 |        80 |        78 |      4356 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       557 |       613 |       622 |       637 |       688 |       739 |       812 |      1499 |
|                  jbird                   |       120 |       132 |       136 |       141 |       145 |       154 |       174 |      5855 |
|                    Δ                     |      -437 |      -481 |      -486 |      -496 |      -543 |      -585 |      -638 |      4356 |
|              Improvement %               |        78 |        78 |        78 |        78 |        79 |        79 |        79 |      4356 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1800 |      1636 |      1614 |      1574 |      1459 |      1357 |      1235 |      1499 |
|                  jbird                   |      8406 |      7687 |      7459 |      7183 |      6975 |      6615 |      5571 |      5855 |
|                    Δ                     |      6606 |      6051 |      5845 |      5609 |      5516 |      5258 |      4336 |      4356 |
|              Improvement %               |       367 |       370 |       362 |       356 |       378 |       387 |       351 |      4356 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        61 |        99 |       135 |       156 |       170 |       170 |      1499 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      5855 |
|                    Δ                     |         0 |       -35 |       -73 |      -109 |      -130 |      -144 |      -144 |      4356 |
|              Improvement %               |         0 |        57 |        74 |        81 |        83 |        85 |        85 |      4356 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1499 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5855 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4356 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4356 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1499 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      5855 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4356 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4356 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       142 |       152 |       161 |       166 |       175 |       183 |       206 |      5215 |
|                  jbird                   |        48 |        50 |        54 |        55 |        56 |        63 |        89 |     11861 |
|                    Δ                     |       -94 |      -102 |      -107 |      -111 |      -119 |      -120 |      -117 |      6646 |
|              Improvement %               |        66 |        67 |        66 |        67 |        68 |        66 |        57 |      6646 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       143 |       154 |       162 |       167 |       176 |       185 |       206 |      5215 |
|                  jbird                   |        49 |        51 |        55 |        57 |        58 |        65 |        87 |     11861 |
|                    Δ                     |       -94 |      -103 |      -107 |      -110 |      -118 |      -120 |      -119 |      6646 |
|              Improvement %               |        66 |        67 |        66 |        66 |        67 |        65 |        58 |      6646 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7046 |      6571 |      6235 |      6035 |      5731 |      5459 |      4858 |      5215 |
|                  jbird                   |     20870 |     19983 |     18591 |     18063 |     17791 |     15919 |     11257 |     11861 |
|                    Δ                     |     13824 |     13412 |     12356 |     12028 |     12060 |     10460 |      6399 |      6646 |
|              Improvement %               |       196 |       204 |       198 |       199 |       210 |       192 |       132 |      6646 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        32 |        38 |        45 |        48 |        51 |        51 |      5215 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     11861 |
|                    Δ                     |         0 |        -6 |       -12 |       -19 |       -22 |       -25 |       -25 |      6646 |
|              Improvement %               |         0 |        19 |        32 |        42 |        46 |        49 |        49 |      6646 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5215 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11861 |
|                    Δ                     |      -303 |      -303 |      -303 |      -303 |      -303 |      -303 |      -306 |      6646 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        67 |      6646 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2931 |      2933 |      2935 |      2941 |      2945 |      3058 |      3107 |      5215 |
|                  jbird                   |      1322 |      1322 |      1322 |      1322 |      1322 |      1351 |      1424 |     11861 |
|                    Δ                     |     -1609 |     -1611 |     -1613 |     -1619 |     -1623 |     -1707 |     -1683 |      6646 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        56 |        54 |      6646 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1565 |      1727 |      1752 |      1773 |      1800 |      1898 |      2010 |       560 |
|                  jbird                   |        88 |        94 |        99 |       100 |       101 |       110 |       129 |      7778 |
|                    Δ                     |     -1477 |     -1633 |     -1653 |     -1673 |     -1699 |     -1788 |     -1881 |      7218 |
|              Improvement %               |        94 |        95 |        94 |        94 |        94 |        94 |        94 |      7218 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1566 |      1730 |      1754 |      1775 |      1802 |      1900 |      2012 |       560 |
|                  jbird                   |        89 |        96 |       100 |       102 |       102 |       112 |       129 |      7778 |
|                    Δ                     |     -1477 |     -1634 |     -1654 |     -1673 |     -1700 |     -1788 |     -1883 |      7218 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        94 |      7218 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       639 |       579 |       571 |       564 |       556 |       527 |       497 |       560 |
|                  jbird                   |     11429 |     10607 |     10119 |      9999 |      9943 |      9111 |      7727 |      7778 |
|                    Δ                     |     10790 |     10028 |      9548 |      9435 |      9387 |      8584 |      7230 |      7218 |
|              Improvement %               |      1689 |      1732 |      1672 |      1673 |      1688 |      1629 |      1455 |      7218 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        37 |        47 |        58 |        64 |        68 |        69 |       560 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7778 |
|                    Δ                     |         0 |       -11 |       -21 |       -32 |       -38 |       -42 |       -43 |      7218 |
|              Improvement %               |         0 |        30 |        45 |        55 |        59 |        62 |        62 |      7218 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       560 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7778 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      7218 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      7218 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        45 |        45 |        45 |        45 |        45 |        47 |        48 |       560 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      7778 |
|                    Δ                     |       -42 |       -42 |       -42 |       -42 |       -42 |       -44 |       -45 |      7218 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      7218 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1064 |      1169 |      1190 |      1204 |      1225 |      1412 |      1492 |       812 |
|                  jbird                   |        52 |        57 |        59 |        60 |        61 |        68 |       115 |     11135 |
|                    Δ                     |     -1012 |     -1112 |     -1131 |     -1144 |     -1164 |     -1344 |     -1377 |     10323 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        92 |     10323 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1066 |      1171 |      1192 |      1206 |      1228 |      1414 |      1500 |       812 |
|                  jbird                   |        54 |        59 |        61 |        61 |        63 |        70 |       111 |     11135 |
|                    Δ                     |     -1012 |     -1112 |     -1131 |     -1145 |     -1165 |     -1344 |     -1389 |     10323 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        93 |     10323 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       939 |       855 |       840 |       831 |       817 |       708 |       670 |       812 |
|                  jbird                   |     19048 |     17423 |     16879 |     16735 |     16343 |     14695 |      8670 |     11135 |
|                    Δ                     |     18109 |     16568 |     16039 |     15904 |     15526 |     13987 |      8000 |     10323 |
|              Improvement %               |      1929 |      1938 |      1909 |      1914 |      1900 |      1976 |      1194 |     10323 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        45 |        64 |        83 |        94 |       101 |       102 |       812 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     11135 |
|                    Δ                     |         0 |       -19 |       -38 |       -57 |       -68 |       -75 |       -76 |     10323 |
|              Improvement %               |         0 |        42 |        59 |        69 |        72 |        74 |        75 |     10323 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       812 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11135 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |     10323 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     10323 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        29 |        29 |        29 |        29 |        29 |        30 |        31 |       812 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     11135 |
|                    Δ                     |       -27 |       -27 |       -27 |       -27 |       -27 |       -28 |       -29 |     10323 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        94 |     10323 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        97 |       103 |       110 |       112 |       115 |       123 |       151 |      7012 |
|                  jbird                   |        27 |        31 |        32 |        33 |        35 |        40 |        73 |     15286 |
|                    Δ                     |       -70 |       -72 |       -78 |       -79 |       -80 |       -83 |       -78 |      8274 |
|              Improvement %               |        72 |        70 |        71 |        71 |        70 |        67 |        52 |      8274 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        98 |       104 |       111 |       114 |       117 |       125 |       143 |      7012 |
|                  jbird                   |        29 |        32 |        33 |        34 |        36 |        42 |        68 |     15286 |
|                    Δ                     |       -69 |       -72 |       -78 |       -80 |       -81 |       -83 |       -75 |      8274 |
|              Improvement %               |        70 |        69 |        70 |        70 |        69 |        66 |        52 |      8274 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10340 |      9719 |      9143 |      8903 |      8679 |      8151 |      6633 |      7012 |
|                  jbird                   |     36642 |     32575 |     31711 |     30703 |     28815 |     24927 |     13746 |     15286 |
|                    Δ                     |     26302 |     22856 |     22568 |     21800 |     20136 |     16776 |      7113 |      8274 |
|              Improvement %               |       254 |       235 |       247 |       245 |       232 |       206 |       107 |      8274 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |       130 |       241 |       353 |       420 |       458 |       464 |      7012 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |     15286 |
|                    Δ                     |         0 |      -105 |      -215 |      -327 |      -394 |      -432 |      -438 |      8274 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |      8274 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      7012 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15286 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |      8274 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |      8274 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2504 |      2521 |      2527 |      2533 |      2540 |      2570 |      2668 |      7012 |
|                  jbird                   |       878 |       879 |       879 |       879 |       879 |       885 |       946 |     15286 |
|                    Δ                     |     -1626 |     -1642 |     -1648 |     -1654 |     -1661 |     -1685 |     -1722 |      8274 |
|              Improvement %               |        65 |        65 |        65 |        65 |        65 |        66 |        65 |      8274 |

<p>
</details>

