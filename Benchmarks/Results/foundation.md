
# JBird vs. Foundation

```
Host 'Varuns-MacBook-Pro.local' with 16 'arm64' processors with 128 GB memory, running:
Darwin Kernel Version 25.0.0: Mon Aug 25 21:17:54 PDT 2025; root:xnu-12377.1.9~3/RELEASE_ARM64_T6041
```
## JBirdBenchmark

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2488 |      2634 |      2650 |      2671 |      2703 |      3475 |      4051 |       369 |
|                  jbird                   |      1817 |      1920 |      1933 |      1947 |      1974 |      2114 |     20013 |       498 |
|                    Δ                     |      -671 |      -714 |      -717 |      -724 |      -729 |     -1361 |     15962 |       129 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        39 |      -394 |       129 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2489 |      2636 |      2652 |      2673 |      2705 |      3478 |      4055 |       369 |
|                  jbird                   |      1818 |      1922 |      1934 |      1949 |      1974 |      2116 |      2220 |       498 |
|                    Δ                     |      -671 |      -714 |      -718 |      -724 |      -731 |     -1362 |     -1835 |       129 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        39 |        45 |       129 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       402 |       380 |       377 |       375 |       370 |       288 |       247 |       369 |
|                  jbird                   |       550 |       521 |       518 |       514 |       507 |       473 |        50 |       498 |
|                    Δ                     |       148 |       141 |       141 |       139 |       137 |       185 |      -197 |       129 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        64 |       -80 |       129 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       159 |       299 |       433 |       513 |       559 |       566 |       369 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       498 |
|                    Δ                     |         2 |      -124 |      -264 |      -398 |      -478 |      -524 |      -531 |       129 |
|              Improvement %               |        -7 |        78 |        88 |        92 |        93 |        94 |        94 |       129 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       369 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       498 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       129 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       129 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        65 |        65 |        65 |       369 |
|                  jbird                   |        46 |        46 |        46 |        46 |        46 |        46 |        47 |       498 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -19 |       -19 |       -18 |       129 |
|              Improvement %               |        28 |        28 |        28 |        28 |        29 |        29 |        28 |       129 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2564 |      2755 |      2777 |      2796 |      2832 |      3097 |      3318 |       355 |
|                  jbird                   |      1834 |      1947 |      1961 |      1977 |      1999 |      2132 |     19549 |       492 |
|                    Δ                     |      -730 |      -808 |      -816 |      -819 |      -833 |      -965 |     16231 |       137 |
|              Improvement %               |        28 |        29 |        29 |        29 |        29 |        31 |      -489 |       137 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2566 |      2757 |      2779 |      2798 |      2832 |      3105 |      3324 |       355 |
|                  jbird                   |      1835 |      1948 |      1963 |      1979 |      2001 |      2134 |      2212 |       492 |
|                    Δ                     |      -731 |      -809 |      -816 |      -819 |      -831 |      -971 |     -1112 |       137 |
|              Improvement %               |        28 |        29 |        29 |        29 |        29 |        31 |        33 |       137 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       390 |       363 |       360 |       358 |       353 |       323 |       301 |       355 |
|                  jbird                   |       545 |       514 |       510 |       506 |       500 |       469 |        51 |       492 |
|                    Δ                     |       155 |       151 |       150 |       148 |       147 |       146 |      -250 |       137 |
|              Improvement %               |        40 |        42 |        42 |        41 |        42 |        45 |       -83 |       137 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        30 |       156 |       287 |       413 |       493 |       538 |       544 |       355 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       492 |
|                    Δ                     |         2 |      -121 |      -252 |      -378 |      -458 |      -503 |      -509 |       137 |
|              Improvement %               |        -7 |        78 |        88 |        92 |        93 |        93 |        94 |       137 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       355 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       492 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       137 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       137 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        66 |        66 |        66 |       355 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        47 |        48 |       492 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -19 |       -19 |       -18 |       137 |
|              Improvement %               |        28 |        28 |        28 |        28 |        29 |        29 |        27 |       137 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       627 |       670 |       679 |       688 |       697 |       719 |       805 |      1400 |
|                  jbird                   |       445 |       478 |       484 |       489 |       496 |       525 |     16396 |      1887 |
|                    Δ                     |      -182 |      -192 |      -195 |      -199 |      -201 |      -194 |     15591 |       487 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        27 |     -1937 |       487 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       628 |       671 |       681 |       689 |       700 |       723 |       806 |      1400 |
|                  jbird                   |       446 |       480 |       486 |       491 |       497 |       526 |       679 |      1887 |
|                    Δ                     |      -182 |      -191 |      -195 |      -198 |      -203 |      -197 |      -127 |       487 |
|              Improvement %               |        29 |        28 |        29 |        29 |        29 |        27 |        16 |       487 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1595 |      1494 |      1473 |      1455 |      1434 |      1390 |      1242 |      1400 |
|                  jbird                   |      2249 |      2091 |      2067 |      2043 |      2019 |      1907 |        61 |      1887 |
|                    Δ                     |       654 |       597 |       594 |       588 |       585 |       517 |     -1181 |       487 |
|              Improvement %               |        41 |        40 |        40 |        40 |        41 |        37 |       -95 |       487 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        29 |       153 |       284 |       415 |       494 |       537 |       542 |      1400 |
|                  jbird                   |        29 |        30 |        30 |        30 |        30 |        30 |        30 |      1887 |
|                    Δ                     |         0 |      -123 |      -254 |      -385 |      -464 |      -507 |      -512 |       487 |
|              Improvement %               |         0 |        80 |        89 |        93 |        94 |        94 |        94 |       487 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1400 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1887 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       487 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       487 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1400 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1887 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       487 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       487 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       652 |       693 |       701 |       710 |       716 |       738 |       779 |      1358 |
|                  jbird                   |       447 |       484 |       490 |       498 |       505 |       520 |       557 |      1895 |
|                    Δ                     |      -205 |      -209 |      -211 |      -212 |      -211 |      -218 |      -222 |       537 |
|              Improvement %               |        31 |        30 |        30 |        30 |        29 |        30 |        28 |       537 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       654 |       694 |       703 |       711 |       719 |       742 |       780 |      1358 |
|                  jbird                   |       448 |       485 |       492 |       500 |       507 |       523 |       559 |      1895 |
|                    Δ                     |      -206 |      -209 |      -211 |      -211 |      -212 |      -219 |      -221 |       537 |
|              Improvement %               |        31 |        30 |        30 |        30 |        29 |        30 |        28 |       537 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1533 |      1444 |      1426 |      1410 |      1397 |      1355 |      1284 |      1358 |
|                  jbird                   |      2238 |      2069 |      2041 |      2008 |      1979 |      1922 |      1796 |      1895 |
|                    Δ                     |       705 |       625 |       615 |       598 |       582 |       567 |       512 |       537 |
|              Improvement %               |        46 |        43 |        43 |        42 |        42 |        42 |        40 |       537 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        29 |       149 |       275 |       402 |       475 |       524 |       529 |      1358 |
|                  jbird                   |        29 |        30 |        30 |        30 |        30 |        30 |        30 |      1895 |
|                    Δ                     |         0 |      -119 |      -245 |      -372 |      -445 |      -494 |      -499 |       537 |
|              Improvement %               |         0 |        80 |        89 |        93 |        94 |        94 |        94 |       537 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1358 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1895 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       537 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       537 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1358 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1895 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -5 |       537 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        29 |        29 |       537 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1256 |      1337 |      1349 |      1359 |      1369 |      1403 |      1429 |       723 |
|                  jbird                   |       893 |       962 |       969 |       978 |       987 |      1016 |      1043 |       993 |
|                    Δ                     |      -363 |      -375 |      -380 |      -381 |      -382 |      -387 |      -386 |       270 |
|              Improvement %               |        29 |        28 |        28 |        28 |        28 |        28 |        27 |       270 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1258 |      1339 |      1351 |      1361 |      1371 |      1405 |      1431 |       723 |
|                  jbird                   |       894 |       963 |       971 |       979 |       989 |      1018 |      1046 |       993 |
|                    Δ                     |      -364 |      -376 |      -380 |      -382 |      -382 |      -387 |      -385 |       270 |
|              Improvement %               |        29 |        28 |        28 |        28 |        28 |        28 |        27 |       270 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       796 |       748 |       742 |       736 |       731 |       713 |       700 |       723 |
|                  jbird                   |      1120 |      1040 |      1032 |      1023 |      1014 |       984 |       959 |       993 |
|                    Δ                     |       324 |       292 |       290 |       287 |       283 |       271 |       259 |       270 |
|              Improvement %               |        41 |        39 |        39 |        39 |        39 |        38 |        37 |       270 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        29 |       161 |       293 |       424 |       503 |       550 |       556 |       723 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |       993 |
|                    Δ                     |         1 |      -129 |      -261 |      -392 |      -471 |      -518 |      -524 |       270 |
|              Improvement %               |        -3 |        80 |        89 |        92 |        94 |        94 |        94 |       270 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       723 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       993 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       270 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       270 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        33 |        33 |       723 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       993 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |       -10 |        -9 |       270 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        30 |        27 |       270 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1273 |      1358 |      1371 |      1393 |      1407 |      1443 |      1514 |       710 |
|                  jbird                   |       901 |       971 |       980 |       988 |       997 |      1021 |      1054 |       984 |
|                    Δ                     |      -372 |      -387 |      -391 |      -405 |      -410 |      -422 |      -460 |       274 |
|              Improvement %               |        29 |        28 |        29 |        29 |        29 |        29 |        30 |       274 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1275 |      1360 |      1373 |      1395 |      1409 |      1448 |      1542 |       710 |
|                  jbird                   |       902 |       972 |       982 |       990 |       998 |      1024 |      1057 |       984 |
|                    Δ                     |      -373 |      -388 |      -391 |      -405 |      -411 |      -424 |      -485 |       274 |
|              Improvement %               |        29 |        29 |        28 |        29 |        29 |        29 |        31 |       274 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       785 |       737 |       729 |       718 |       711 |       693 |       660 |       710 |
|                  jbird                   |      1110 |      1030 |      1020 |      1012 |      1003 |       979 |       949 |       984 |
|                    Δ                     |       325 |       293 |       291 |       294 |       292 |       286 |       289 |       274 |
|              Improvement %               |        41 |        40 |        40 |        41 |        41 |        41 |        44 |       274 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        29 |       154 |       285 |       416 |       492 |       538 |       545 |       710 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |       984 |
|                    Δ                     |         1 |      -122 |      -253 |      -384 |      -460 |      -506 |      -513 |       274 |
|              Improvement %               |        -3 |        79 |        89 |        92 |        93 |        94 |        94 |       274 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       710 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       984 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       274 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       274 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       710 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        24 |        24 |       984 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |        -9 |       274 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        27 |        27 |       274 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        76 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        97 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -2 |        -2 |        21 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        15 |        15 |        21 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        76 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        97 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -2 |        -2 |        21 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        15 |        15 |        21 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        79 |        76 |        76 |        75 |        75 |        74 |        74 |        76 |
|                  jbird                   |       102 |        98 |        98 |        97 |        97 |        92 |        92 |        97 |
|                    Δ                     |        23 |        22 |        22 |        22 |        22 |        18 |        18 |        21 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        24 |        24 |        21 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        42 |       172 |       308 |       441 |       530 |       583 |       583 |        76 |
|                  jbird                   |        31 |        55 |        55 |        55 |        55 |        55 |        55 |        97 |
|                    Δ                     |       -11 |      -117 |      -253 |      -386 |      -475 |      -528 |      -528 |        21 |
|              Improvement %               |        26 |        68 |        82 |        88 |        90 |        91 |        91 |        21 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        76 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        97 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        21 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        21 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       321 |       321 |       322 |       322 |       322 |       322 |       322 |        76 |
|                  jbird                   |       236 |       236 |       236 |       237 |       237 |       245 |       245 |        97 |
|                    Δ                     |       -85 |       -85 |       -86 |       -85 |       -85 |       -77 |       -77 |        21 |
|              Improvement %               |        26 |        26 |        27 |        26 |        26 |        24 |        24 |        21 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        73 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        94 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        21 |
|              Improvement %               |        23 |        21 |        21 |        21 |        21 |        21 |        21 |        21 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        73 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        94 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        21 |
|              Improvement %               |        23 |        21 |        21 |        21 |        21 |        21 |        21 |        21 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        74 |        73 |        72 |        72 |        72 |        72 |        73 |
|                  jbird                   |        98 |        95 |        94 |        94 |        93 |        92 |        92 |        94 |
|                    Δ                     |        22 |        21 |        21 |        22 |        21 |        20 |        20 |        21 |
|              Improvement %               |        29 |        28 |        29 |        31 |        29 |        28 |        28 |        21 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        42 |       173 |       302 |       429 |       512 |       559 |       559 |        73 |
|                  jbird                   |        31 |        55 |        55 |        55 |        55 |        55 |        55 |        94 |
|                    Δ                     |       -11 |      -118 |      -247 |      -374 |      -457 |      -504 |      -504 |        21 |
|              Improvement %               |        26 |        68 |        82 |        87 |        89 |        90 |        90 |        21 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        73 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        94 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        21 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        21 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       326 |       327 |       327 |       327 |       327 |       328 |       328 |        73 |
|                  jbird                   |       240 |       244 |       244 |       244 |       244 |       249 |       249 |        94 |
|                    Δ                     |       -86 |       -83 |       -83 |       -83 |       -83 |       -79 |       -79 |        21 |
|              Improvement %               |        26 |        25 |        25 |        25 |        25 |        24 |        24 |        21 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       160 |       169 |       178 |       184 |       193 |       215 |       244 |      4670 |
|                  jbird                   |       112 |       114 |       121 |       126 |       127 |       135 |       186 |      6404 |
|                    Δ                     |       -48 |       -55 |       -57 |       -58 |       -66 |       -80 |       -58 |      1734 |
|              Improvement %               |        30 |        33 |        32 |        32 |        34 |        37 |        24 |      1734 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       162 |       171 |       179 |       185 |       195 |       217 |       247 |      4670 |
|                  jbird                   |       113 |       116 |       123 |       127 |       128 |       137 |       178 |      6404 |
|                    Δ                     |       -49 |       -55 |       -56 |       -58 |       -67 |       -80 |       -69 |      1734 |
|              Improvement %               |        30 |        32 |        31 |        31 |        34 |        37 |        28 |      1734 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6239 |      5911 |      5627 |      5451 |      5183 |      4655 |      4096 |      4670 |
|                  jbird                   |      8959 |      8743 |      8255 |      7955 |      7879 |      7419 |      5386 |      6404 |
|                    Δ                     |      2720 |      2832 |      2628 |      2504 |      2696 |      2764 |      1290 |      1734 |
|              Improvement %               |        44 |        48 |        47 |        46 |        52 |        59 |        31 |      1734 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        28 |       138 |       253 |       364 |       435 |       476 |       482 |      4670 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |      6404 |
|                    Δ                     |         0 |      -109 |      -224 |      -335 |      -406 |      -447 |      -453 |      1734 |
|              Improvement %               |         0 |        79 |        89 |        92 |        93 |        94 |        94 |      1734 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4670 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6404 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1734 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1734 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4105 |      4131 |      4141 |      4149 |      4159 |      4301 |      4345 |      4670 |
|                  jbird                   |      2884 |      2886 |      2886 |      2886 |      2886 |      2908 |      2991 |      6404 |
|                    Δ                     |     -1221 |     -1245 |     -1255 |     -1263 |     -1273 |     -1393 |     -1354 |      1734 |
|              Improvement %               |        30 |        30 |        30 |        30 |        31 |        32 |        31 |      1734 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       166 |       176 |       184 |       190 |       193 |       205 |       227 |      4557 |
|                  jbird                   |       112 |       116 |       123 |       127 |       129 |       137 |       158 |      6347 |
|                    Δ                     |       -54 |       -60 |       -61 |       -63 |       -64 |       -68 |       -69 |      1790 |
|              Improvement %               |        33 |        34 |        33 |        33 |        33 |        33 |        30 |      1790 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       168 |       178 |       185 |       192 |       195 |       206 |       229 |      4557 |
|                  jbird                   |       113 |       118 |       124 |       128 |       130 |       140 |       160 |      6347 |
|                    Δ                     |       -55 |       -60 |       -61 |       -64 |       -65 |       -66 |       -69 |      1790 |
|              Improvement %               |        33 |        34 |        33 |        33 |        33 |        32 |        30 |      1790 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6014 |      5675 |      5443 |      5263 |      5175 |      4887 |      4411 |      4557 |
|                  jbird                   |      8929 |      8615 |      8131 |      7895 |      7783 |      7275 |      6329 |      6347 |
|                    Δ                     |      2915 |      2940 |      2688 |      2632 |      2608 |      2388 |      1918 |      1790 |
|              Improvement %               |        48 |        52 |        49 |        50 |        50 |        49 |        43 |      1790 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        28 |       137 |       249 |       359 |       425 |       463 |       469 |      4557 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |      6347 |
|                    Δ                     |         0 |      -108 |      -220 |      -330 |      -396 |      -434 |      -440 |      1790 |
|              Improvement %               |         0 |        79 |        88 |        92 |        93 |        94 |        94 |      1790 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4557 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6347 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1790 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1790 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4168 |      4194 |      4207 |      4215 |      4227 |      4362 |      4416 |      4557 |
|                  jbird                   |      2929 |      2931 |      2931 |      2931 |      2931 |      2953 |      3037 |      6347 |
|                    Δ                     |     -1239 |     -1263 |     -1276 |     -1284 |     -1296 |     -1409 |     -1379 |      1790 |
|              Improvement %               |        30 |        30 |        30 |        30 |        31 |        32 |        31 |      1790 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        77 |        77 |        78 |        81 |        94 |       193 |      9284 |
|                  jbird                   |        47 |        48 |        48 |        53 |        53 |        60 |        74 |     12402 |
|                    Δ                     |       -28 |       -29 |       -29 |       -25 |       -28 |       -34 |      -119 |      3118 |
|              Improvement %               |        37 |        38 |        38 |        32 |        35 |        36 |        62 |      3118 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        78 |        79 |        79 |        83 |        96 |       179 |      9284 |
|                  jbird                   |        48 |        49 |        50 |        54 |        55 |        61 |        78 |     12402 |
|                    Δ                     |       -29 |       -29 |       -29 |       -25 |       -28 |       -35 |      -101 |      3118 |
|              Improvement %               |        38 |        37 |        37 |        32 |        34 |        36 |        56 |      3118 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        12 |        11 |         5 |      9284 |
|                  jbird                   |        21 |        21 |        21 |        19 |        19 |        17 |        13 |     12402 |
|                    Δ                     |         8 |         8 |         8 |         6 |         7 |         6 |         8 |      3118 |
|              Improvement %               |        62 |        62 |        62 |        46 |        58 |        55 |       160 |      3118 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        28 |        40 |        51 |        63 |        70 |        74 |        74 |      9284 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |     12402 |
|                    Δ                     |         0 |       -11 |       -22 |       -34 |       -41 |       -45 |       -45 |      3118 |
|              Improvement %               |         0 |        28 |        43 |        54 |        59 |        61 |        61 |      3118 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      9284 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     12402 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |      3118 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      3118 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1146 |      1147 |      1148 |      1154 |      1158 |      1165 |      1329 |      9284 |
|                  jbird                   |      1307 |      1308 |      1308 |      1308 |      1308 |      1325 |      1351 |     12402 |
|                    Δ                     |       161 |       161 |       160 |       154 |       150 |       160 |        22 |      3118 |
|              Improvement %               |       -14 |       -14 |       -14 |       -13 |       -13 |       -14 |        -2 |      3118 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       235 |       252 |       258 |       264 |       268 |       279 |       542 |      3441 |
|                  jbird                   |        86 |        90 |        96 |        98 |        99 |       107 |       155 |      7964 |
|                    Δ                     |      -149 |      -162 |      -162 |      -166 |      -169 |      -172 |      -387 |      4523 |
|              Improvement %               |        63 |        64 |        63 |        63 |        63 |        62 |        71 |      4523 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       236 |       253 |       260 |       266 |       270 |       281 |       300 |      3441 |
|                  jbird                   |        87 |        91 |        98 |       100 |       100 |       109 |       159 |      7964 |
|                    Δ                     |      -149 |      -162 |      -162 |      -166 |      -170 |      -172 |      -141 |      4523 |
|              Improvement %               |        63 |        64 |        62 |        62 |        63 |        61 |        47 |      4523 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4263 |      3971 |      3875 |      3789 |      3731 |      3583 |      1846 |      3441 |
|                  jbird                   |     11656 |     11127 |     10399 |     10183 |     10151 |      9391 |      6433 |      7964 |
|                    Δ                     |      7393 |      7156 |      6524 |      6394 |      6420 |      5808 |      4587 |      4523 |
|              Improvement %               |       173 |       180 |       168 |       169 |       172 |       162 |       248 |      4523 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        28 |        92 |       157 |       224 |       262 |       285 |       288 |      3441 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |      7964 |
|                    Δ                     |         0 |       -63 |      -128 |      -195 |      -233 |      -256 |      -259 |      4523 |
|              Improvement %               |         0 |        68 |        82 |        87 |        89 |        90 |        90 |      4523 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3441 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7964 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4523 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4523 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6952 |      6963 |      6963 |      6992 |      6992 |      7119 |      7147 |      3441 |
|                  jbird                   |      2683 |      2683 |      2683 |      2683 |      2683 |      2691 |      2915 |      7964 |
|                    Δ                     |     -4269 |     -4280 |     -4280 |     -4309 |     -4309 |     -4428 |     -4232 |      4523 |
|              Improvement %               |        61 |        61 |        61 |        62 |        62 |        62 |        59 |      4523 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       373 |       402 |       407 |       412 |       417 |       435 |       460 |      2272 |
|                  jbird                   |        51 |        54 |        58 |        59 |        59 |        66 |       134 |     11397 |
|                    Δ                     |      -322 |      -348 |      -349 |      -353 |      -358 |      -369 |      -326 |      9125 |
|              Improvement %               |        86 |        87 |        86 |        86 |        86 |        85 |        71 |      9125 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       374 |       404 |       408 |       413 |       419 |       436 |       461 |      2272 |
|                  jbird                   |        52 |        55 |        60 |        60 |        61 |        69 |       137 |     11397 |
|                    Δ                     |      -322 |      -349 |      -348 |      -353 |      -358 |      -367 |      -324 |      9125 |
|              Improvement %               |        86 |        86 |        85 |        85 |        85 |        84 |        70 |      9125 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2682 |      2487 |      2461 |      2431 |      2401 |      2299 |      2175 |      2272 |
|                  jbird                   |     19560 |     18703 |     17247 |     17071 |     16943 |     15119 |      7481 |     11397 |
|                    Δ                     |     16878 |     16216 |     14786 |     14640 |     14542 |     12820 |      5306 |      9125 |
|              Improvement %               |       629 |       652 |       601 |       602 |       606 |       558 |       244 |      9125 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        28 |        80 |       133 |       187 |       217 |       238 |       238 |      2272 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |     11397 |
|                    Δ                     |         0 |       -51 |      -104 |      -158 |      -188 |      -209 |      -209 |      9125 |
|              Improvement %               |         0 |        64 |        78 |        84 |        87 |        88 |        88 |      9125 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2272 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11397 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      9125 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      9125 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8918 |      8937 |      8937 |      8946 |      8954 |      9101 |      9119 |      2272 |
|                  jbird                   |      1631 |      1631 |      1631 |      1631 |      1631 |      1637 |      1767 |     11397 |
|                    Δ                     |     -7287 |     -7306 |     -7306 |     -7315 |     -7323 |     -7464 |     -7352 |      9125 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        82 |        81 |      9125 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        73 |        77 |        80 |        84 |        87 |        95 |       122 |      8716 |
|                  jbird                   |        27 |        27 |        30 |        30 |        33 |        36 |        59 |     15886 |
|                    Δ                     |       -46 |       -50 |       -50 |       -54 |       -54 |       -59 |       -63 |      7170 |
|              Improvement %               |        63 |        65 |        62 |        64 |        62 |        62 |        52 |      7170 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        78 |        82 |        86 |        89 |        97 |       117 |      8716 |
|                  jbird                   |        28 |        29 |        31 |        32 |        34 |        37 |        59 |     15886 |
|                    Δ                     |       -46 |       -49 |       -51 |       -54 |       -55 |       -60 |       -58 |      7170 |
|              Improvement %               |        62 |        63 |        62 |        63 |        62 |        62 |        50 |      7170 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        13 |        12 |        12 |        12 |        11 |         8 |      8716 |
|                  jbird                   |        38 |        37 |        33 |        33 |        31 |        28 |        17 |     15886 |
|                    Δ                     |        24 |        24 |        21 |        21 |        19 |        17 |         9 |      7170 |
|              Improvement %               |       171 |       185 |       175 |       175 |       158 |       155 |       112 |      7170 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        28 |       162 |       299 |       433 |       516 |       570 |       570 |      8716 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |     15886 |
|                    Δ                     |         0 |      -133 |      -270 |      -404 |      -487 |      -541 |      -541 |      7170 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |      7170 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |      8716 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15886 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |      7170 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      7170 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1890 |      1907 |      1914 |      1920 |      1926 |      2068 |      2121 |      8716 |
|                  jbird                   |       859 |       859 |       859 |       859 |       859 |       860 |       914 |     15886 |
|                    Δ                     |     -1031 |     -1048 |     -1055 |     -1061 |     -1067 |     -1208 |     -1207 |      7170 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        58 |        57 |      7170 |

<p>
</details>

