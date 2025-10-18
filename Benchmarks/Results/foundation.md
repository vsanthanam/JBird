# JBird vs. Foundation

```
## JBirdBenchmark

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2514 |      2650 |      2675 |      2691 |      2707 |      4321 |      4959 |       364 |
|                  jbird                   |      1893 |      2057 |      2073 |      2087 |      2109 |      2847 |      3757 |       469 |
|                    Δ                     |      -621 |      -593 |      -602 |      -604 |      -598 |     -1474 |     -1202 |       105 |
|              Improvement %               |        25 |        22 |        23 |        22 |        22 |        34 |        24 |       105 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2516 |      2654 |      2675 |      2693 |      2710 |      4321 |      4972 |       364 |
|                  jbird                   |      1894 |      2058 |      2074 |      2089 |      2111 |      2851 |      3761 |       469 |
|                    Δ                     |      -622 |      -596 |      -601 |      -604 |      -599 |     -1470 |     -1211 |       105 |
|              Improvement %               |        25 |        22 |        22 |        22 |        22 |        34 |        24 |       105 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       398 |       377 |       374 |       372 |       370 |       232 |       202 |       364 |
|                  jbird                   |       528 |       486 |       483 |       479 |       474 |       351 |       266 |       469 |
|                    Δ                     |       130 |       109 |       109 |       107 |       104 |       119 |        64 |       105 |
|              Improvement %               |        33 |        29 |        29 |        29 |        28 |        51 |        32 |       105 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       156 |       285 |       421 |       500 |       547 |       554 |       364 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       469 |
|                    Δ                     |         3 |      -125 |      -254 |      -390 |      -469 |      -516 |      -523 |       105 |
|              Improvement %               |       -12 |        80 |        89 |        93 |        94 |        94 |        94 |       105 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       364 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       469 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       105 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       105 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        64 |        65 |       364 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        50 |       469 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -14 |       -15 |       105 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        22 |        23 |       105 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2641 |      2769 |      2791 |      2824 |      2847 |      2972 |      3025 |       353 |
|                  jbird                   |      1935 |      2072 |      2107 |      2163 |      2292 |      2343 |      2368 |       460 |
|                    Δ                     |      -706 |      -697 |      -684 |      -661 |      -555 |      -629 |      -657 |       107 |
|              Improvement %               |        27 |        25 |        25 |        23 |        19 |        21 |        22 |       107 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2642 |      2771 |      2793 |      2826 |      2849 |      2974 |      3014 |       353 |
|                  jbird                   |      1936 |      2074 |      2109 |      2165 |      2296 |      2345 |      2360 |       460 |
|                    Δ                     |      -706 |      -697 |      -684 |      -661 |      -553 |      -629 |      -654 |       107 |
|              Improvement %               |        27 |        25 |        24 |        23 |        19 |        21 |        22 |       107 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       361 |       358 |       354 |       351 |       337 |       331 |       353 |
|                  jbird                   |       517 |       483 |       475 |       462 |       436 |       427 |       422 |       460 |
|                    Δ                     |       138 |       122 |       117 |       108 |        85 |        90 |        91 |       107 |
|              Improvement %               |        36 |        34 |        33 |        31 |        24 |        27 |        27 |       107 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       154 |       278 |       409 |       487 |       531 |       537 |       353 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       460 |
|                    Δ                     |         3 |      -123 |      -247 |      -378 |      -456 |      -500 |      -506 |       107 |
|              Improvement %               |       -12 |        80 |        89 |        92 |        94 |        94 |        94 |       107 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       353 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       460 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       107 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       107 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        65 |        67 |       353 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        49 |        51 |       460 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -16 |       -16 |       107 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        24 |       107 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       631 |       672 |       686 |       717 |       733 |       753 |       827 |      1377 |
|                  jbird                   |       468 |       513 |       516 |       527 |       543 |       559 |       580 |      1790 |
|                    Δ                     |      -163 |      -159 |      -170 |      -190 |      -190 |      -194 |      -247 |       413 |
|              Improvement %               |        26 |        24 |        25 |        26 |        26 |        26 |        30 |       413 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       633 |       673 |       687 |       718 |       735 |       755 |       813 |      1377 |
|                  jbird                   |       469 |       514 |       518 |       529 |       545 |       561 |       575 |      1790 |
|                    Δ                     |      -164 |      -159 |      -169 |      -189 |      -190 |      -194 |      -238 |       413 |
|              Improvement %               |        26 |        24 |        25 |        26 |        26 |        26 |        29 |       413 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1584 |      1489 |      1460 |      1395 |      1364 |      1329 |      1209 |      1377 |
|                  jbird                   |      2139 |      1952 |      1937 |      1897 |      1842 |      1789 |      1723 |      1790 |
|                    Δ                     |       555 |       463 |       477 |       502 |       478 |       460 |       514 |       413 |
|              Improvement %               |        35 |        31 |        33 |        36 |        35 |        35 |        43 |       413 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       150 |       278 |       405 |       482 |       528 |       528 |      1377 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1790 |
|                    Δ                     |         1 |      -123 |      -251 |      -378 |      -455 |      -501 |      -501 |       413 |
|              Improvement %               |        -4 |        82 |        90 |        93 |        94 |        95 |        95 |       413 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1377 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1790 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       413 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       413 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1377 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1790 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       413 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        24 |       413 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       649 |       692 |       702 |       711 |       719 |       737 |       796 |      1358 |
|                  jbird                   |       466 |       513 |       525 |       557 |       572 |       585 |       607 |      1753 |
|                    Δ                     |      -183 |      -179 |      -177 |      -154 |      -147 |      -152 |      -189 |       395 |
|              Improvement %               |        28 |        26 |        25 |        22 |        20 |        21 |        24 |       395 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       650 |       694 |       704 |       713 |       721 |       739 |       797 |      1358 |
|                  jbird                   |       467 |       515 |       526 |       559 |       573 |       587 |       608 |      1753 |
|                    Δ                     |      -183 |      -179 |      -178 |      -154 |      -148 |      -152 |      -189 |       395 |
|              Improvement %               |        28 |        26 |        25 |        22 |        21 |        21 |        24 |       395 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1541 |      1445 |      1424 |      1407 |      1391 |      1357 |      1257 |      1358 |
|                  jbird                   |      2147 |      1950 |      1907 |      1795 |      1750 |      1711 |      1648 |      1753 |
|                    Δ                     |       606 |       505 |       483 |       388 |       359 |       354 |       391 |       395 |
|              Improvement %               |        39 |        35 |        34 |        28 |        26 |        26 |        31 |       395 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       149 |       275 |       395 |       477 |       520 |       526 |      1358 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1753 |
|                    Δ                     |         1 |      -122 |      -248 |      -368 |      -450 |      -493 |      -499 |       395 |
|              Improvement %               |        -4 |        82 |        90 |        93 |        94 |        95 |        95 |       395 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1358 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1753 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       395 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       395 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1358 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        13 |        13 |      1753 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -3 |        -4 |       395 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        19 |        24 |       395 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1266 |      1353 |      1367 |      1389 |      1408 |      1552 |      1593 |       710 |
|                  jbird                   |       937 |      1026 |      1037 |      1051 |      1061 |      1084 |      1111 |       928 |
|                    Δ                     |      -329 |      -327 |      -330 |      -338 |      -347 |      -468 |      -482 |       218 |
|              Improvement %               |        26 |        24 |        24 |        24 |        25 |        30 |        30 |       218 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1268 |      1355 |      1369 |      1391 |      1410 |      1559 |      1595 |       710 |
|                  jbird                   |       938 |      1028 |      1040 |      1053 |      1062 |      1086 |      1112 |       928 |
|                    Δ                     |      -330 |      -327 |      -329 |      -338 |      -348 |      -473 |      -483 |       218 |
|              Improvement %               |        26 |        24 |        24 |        24 |        25 |        30 |        30 |       218 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       790 |       739 |       732 |       720 |       710 |       644 |       628 |       710 |
|                  jbird                   |      1067 |       975 |       964 |       952 |       943 |       922 |       900 |       928 |
|                    Δ                     |       277 |       236 |       232 |       232 |       233 |       278 |       272 |       218 |
|              Improvement %               |        35 |        32 |        32 |        32 |        33 |        43 |        43 |       218 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       155 |       280 |       414 |       491 |       538 |       545 |       710 |
|                  jbird                   |        26 |        29 |        29 |        29 |        29 |        29 |        29 |       928 |
|                    Δ                     |         0 |      -126 |      -251 |      -385 |      -462 |      -509 |      -516 |       218 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        95 |        95 |       218 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       710 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       928 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       218 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       218 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       710 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       928 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -7 |        -7 |       218 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        22 |        21 |       218 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1326 |      1404 |      1420 |      1458 |      1476 |      1514 |      1545 |       684 |
|                  jbird                   |       946 |      1040 |      1062 |      1076 |      1100 |      1149 |      1175 |       908 |
|                    Δ                     |      -380 |      -364 |      -358 |      -382 |      -376 |      -365 |      -370 |       224 |
|              Improvement %               |        29 |        26 |        25 |        26 |        25 |        24 |        24 |       224 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1327 |      1406 |      1422 |      1459 |      1478 |      1516 |      1546 |       684 |
|                  jbird                   |       948 |      1042 |      1063 |      1078 |      1102 |      1151 |      1181 |       908 |
|                    Δ                     |      -379 |      -364 |      -359 |      -381 |      -376 |      -365 |      -365 |       224 |
|              Improvement %               |        29 |        26 |        25 |        26 |        25 |        24 |        24 |       224 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       754 |       712 |       704 |       686 |       678 |       661 |       647 |       684 |
|                  jbird                   |      1057 |       961 |       942 |       929 |       909 |       871 |       851 |       908 |
|                    Δ                     |       303 |       249 |       238 |       243 |       231 |       210 |       204 |       224 |
|              Improvement %               |        40 |        35 |        34 |        35 |        34 |        32 |        32 |       224 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       150 |       272 |       398 |       472 |       517 |       523 |       684 |
|                  jbird                   |        26 |        29 |        29 |        29 |        29 |        29 |        29 |       908 |
|                    Δ                     |         0 |      -121 |      -243 |      -369 |      -443 |      -488 |      -494 |       224 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |       224 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       684 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       908 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       224 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       224 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       684 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        26 |       908 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |       224 |
|              Improvement %               |        24 |        24 |        24 |        24 |        24 |        24 |        24 |       224 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        73 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        90 |
|                    Δ                     |        -2 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        17 |
|              Improvement %               |        15 |        21 |        21 |        21 |        21 |        21 |        21 |        17 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        73 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        90 |
|                    Δ                     |        -2 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        17 |
|              Improvement %               |        15 |        21 |        21 |        21 |        21 |        21 |        21 |        17 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        74 |        73 |        71 |        71 |        70 |        70 |        73 |
|                  jbird                   |        95 |        91 |        91 |        89 |        88 |        87 |        87 |        90 |
|                    Δ                     |        18 |        17 |        18 |        18 |        17 |        17 |        17 |        17 |
|              Improvement %               |        23 |        23 |        25 |        25 |        24 |        24 |        24 |        17 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       169 |       298 |       426 |       507 |       560 |       560 |        73 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        90 |
|                    Δ                     |       -11 |      -117 |      -246 |      -374 |      -455 |      -508 |      -508 |        17 |
|              Improvement %               |        28 |        69 |        83 |        88 |        90 |        91 |        91 |        17 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        73 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        90 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        17 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        17 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       319 |       319 |       319 |       319 |       321 |       321 |        73 |
|                  jbird                   |       247 |       251 |       251 |       251 |       251 |       260 |       260 |        90 |
|                    Δ                     |       -72 |       -68 |       -68 |       -68 |       -68 |       -61 |       -61 |        17 |
|              Improvement %               |        23 |        21 |        21 |        21 |        21 |        19 |        19 |        17 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        15 |        15 |        15 |        71 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        89 |
|                    Δ                     |        -2 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        18 |
|              Improvement %               |        15 |        21 |        21 |        21 |        20 |        20 |        20 |        18 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        15 |        15 |        15 |        71 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        89 |
|                    Δ                     |        -2 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        18 |
|              Improvement %               |        15 |        21 |        21 |        21 |        20 |        20 |        20 |        18 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        72 |        71 |        71 |        69 |        65 |        65 |        71 |
|                  jbird                   |        94 |        91 |        90 |        88 |        85 |        85 |        85 |        89 |
|                    Δ                     |        20 |        19 |        19 |        17 |        16 |        20 |        20 |        18 |
|              Improvement %               |        27 |        26 |        27 |        24 |        23 |        31 |        31 |        18 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        38 |       162 |       292 |       423 |       494 |       545 |       545 |        71 |
|                  jbird                   |        28 |        51 |        51 |        52 |        52 |        52 |        52 |        89 |
|                    Δ                     |       -10 |      -111 |      -241 |      -371 |      -442 |      -493 |      -493 |        18 |
|              Improvement %               |        26 |        69 |        83 |        88 |        89 |        90 |        90 |        18 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        71 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        89 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        18 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        18 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       325 |       325 |       325 |       325 |       327 |       327 |        71 |
|                  jbird                   |       255 |       255 |       255 |       255 |       256 |       264 |       264 |        89 |
|                    Δ                     |       -69 |       -70 |       -70 |       -70 |       -69 |       -63 |       -63 |        18 |
|              Improvement %               |        21 |        22 |        22 |        22 |        21 |        19 |        19 |        18 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       160 |       174 |       182 |       189 |       196 |       207 |       273 |      4603 |
|                  jbird                   |       116 |       128 |       132 |       137 |       148 |       154 |       175 |      5909 |
|                    Δ                     |       -44 |       -46 |       -50 |       -52 |       -48 |       -53 |       -98 |      1306 |
|              Improvement %               |        28 |        26 |        27 |        28 |        24 |        26 |        36 |      1306 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       161 |       175 |       183 |       190 |       198 |       209 |       263 |      4603 |
|                  jbird                   |       117 |       129 |       134 |       139 |       149 |       155 |       174 |      5909 |
|                    Δ                     |       -44 |       -46 |       -49 |       -51 |       -49 |       -54 |       -89 |      1306 |
|              Improvement %               |        27 |        26 |        27 |        27 |        25 |        26 |        34 |      1306 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6263 |      5759 |      5511 |      5303 |      5099 |      4823 |      3660 |      4603 |
|                  jbird                   |      8633 |      7835 |      7563 |      7291 |      6771 |      6507 |      5714 |      5909 |
|                    Δ                     |      2370 |      2076 |      2052 |      1988 |      1672 |      1684 |      2054 |      1306 |
|              Improvement %               |        38 |        36 |        37 |        37 |        33 |        35 |        56 |      1306 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       135 |       245 |       358 |       429 |       469 |       474 |      4603 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      5909 |
|                    Δ                     |         0 |      -109 |      -219 |      -332 |      -403 |      -443 |      -448 |      1306 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        95 |      1306 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4603 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5909 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1306 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1306 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4078 |      4106 |      4116 |      4125 |      4133 |      4155 |      4333 |      4603 |
|                  jbird                   |      3021 |      3023 |      3023 |      3023 |      3023 |      3095 |      3192 |      5909 |
|                    Δ                     |     -1057 |     -1083 |     -1093 |     -1102 |     -1110 |     -1060 |     -1141 |      1306 |
|              Improvement %               |        26 |        26 |        27 |        27 |        27 |        26 |        26 |      1306 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       179 |       187 |       193 |       198 |       215 |       312 |      4502 |
|                  jbird                   |       119 |       130 |       134 |       139 |       143 |       151 |       180 |      5855 |
|                    Δ                     |       -48 |       -49 |       -53 |       -54 |       -55 |       -64 |      -132 |      1353 |
|              Improvement %               |        29 |        27 |        28 |        28 |        28 |        30 |        42 |      1353 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       168 |       180 |       188 |       194 |       200 |       216 |       314 |      4502 |
|                  jbird                   |       120 |       132 |       136 |       141 |       145 |       154 |       174 |      5855 |
|                    Δ                     |       -48 |       -48 |       -52 |       -53 |       -55 |       -62 |      -140 |      1353 |
|              Improvement %               |        29 |        27 |        28 |        27 |        28 |        29 |        45 |      1353 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5997 |      5599 |      5359 |      5191 |      5051 |      4659 |      3200 |      4502 |
|                  jbird                   |      8406 |      7687 |      7459 |      7183 |      6975 |      6615 |      5571 |      5855 |
|                    Δ                     |      2409 |      2088 |      2100 |      1992 |      1924 |      1956 |      2371 |      1353 |
|              Improvement %               |        40 |        37 |        39 |        38 |        38 |        42 |        74 |      1353 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       131 |       239 |       354 |       417 |       457 |       462 |      4502 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      5855 |
|                    Δ                     |         0 |      -105 |      -213 |      -328 |      -391 |      -431 |      -436 |      1353 |
|              Improvement %               |         0 |        80 |        89 |        93 |        94 |        94 |        94 |      1353 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4502 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5855 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1353 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1353 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4142 |      4170 |      4178 |      4188 |      4198 |      4219 |      4381 |      4502 |
|                  jbird                   |      3066 |      3066 |      3066 |      3068 |      3068 |      3140 |      3236 |      5855 |
|                    Δ                     |     -1076 |     -1104 |     -1112 |     -1120 |     -1130 |     -1079 |     -1145 |      1353 |
|              Improvement %               |        26 |        26 |        27 |        27 |        27 |        26 |        26 |      1353 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        78 |        79 |        80 |        84 |        96 |       152 |      9143 |
|                  jbird                   |        48 |        50 |        54 |        55 |        56 |        63 |        89 |     11861 |
|                    Δ                     |       -28 |       -28 |       -25 |       -25 |       -28 |       -33 |       -63 |      2718 |
|              Improvement %               |        37 |        36 |        32 |        31 |        33 |        34 |        41 |      2718 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        80 |        80 |        82 |        86 |        98 |       153 |      9143 |
|                  jbird                   |        49 |        51 |        55 |        57 |        58 |        65 |        87 |     11861 |
|                    Δ                     |       -28 |       -29 |       -25 |       -25 |       -28 |       -33 |       -66 |      2718 |
|              Improvement %               |        36 |        36 |        31 |        30 |        33 |        34 |        43 |      2718 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        12 |        10 |         7 |      9143 |
|                  jbird                   |        21 |        20 |        19 |        18 |        18 |        16 |        11 |     11861 |
|                    Δ                     |         8 |         7 |         6 |         6 |         6 |         6 |         4 |      2718 |
|              Improvement %               |        62 |        54 |        46 |        50 |        50 |        60 |        57 |      2718 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        36 |        48 |        59 |        66 |        70 |        71 |      9143 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     11861 |
|                    Δ                     |         0 |       -10 |       -22 |       -33 |       -40 |       -44 |       -45 |      2718 |
|              Improvement %               |         0 |        28 |        46 |        56 |        61 |        63 |        63 |      2718 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      9143 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11861 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |      2718 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      2718 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1148 |      1149 |      1150 |      1156 |      1160 |      1168 |      1262 |      9143 |
|                  jbird                   |      1322 |      1322 |      1322 |      1322 |      1322 |      1351 |      1424 |     11861 |
|                    Δ                     |       174 |       173 |       172 |       166 |       162 |       183 |       162 |      2718 |
|              Improvement %               |       -15 |       -15 |       -15 |       -14 |       -14 |       -16 |       -13 |      2718 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       246 |       266 |       274 |       282 |       292 |       308 |       336 |      3257 |
|                  jbird                   |        88 |        94 |        99 |       100 |       101 |       110 |       129 |      7778 |
|                    Δ                     |      -158 |      -172 |      -175 |      -182 |      -191 |      -198 |      -207 |      4521 |
|              Improvement %               |        64 |        65 |        64 |        65 |        65 |        64 |        62 |      4521 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       248 |       267 |       276 |       283 |       293 |       309 |       326 |      3257 |
|                  jbird                   |        89 |        96 |       100 |       102 |       102 |       112 |       129 |      7778 |
|                    Δ                     |      -159 |      -171 |      -176 |      -181 |      -191 |      -197 |      -197 |      4521 |
|              Improvement %               |        64 |        64 |        64 |        64 |        65 |        64 |        60 |      4521 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4060 |      3765 |      3651 |      3553 |      3431 |      3251 |      2975 |      3257 |
|                  jbird                   |     11429 |     10607 |     10119 |      9999 |      9943 |      9111 |      7727 |      7778 |
|                    Δ                     |      7369 |      6842 |      6468 |      6446 |      6512 |      5860 |      4752 |      4521 |
|              Improvement %               |       182 |       182 |       177 |       181 |       190 |       180 |       160 |      4521 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        85 |       146 |       209 |       246 |       268 |       271 |      3257 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7778 |
|                    Δ                     |         0 |       -59 |      -120 |      -183 |      -220 |      -242 |      -245 |      4521 |
|              Improvement %               |         0 |        69 |        82 |        88 |        89 |        90 |        90 |      4521 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3257 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7778 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4521 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4521 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6959 |      6967 |      6971 |      6992 |      7000 |      7025 |      7273 |      3257 |
|                  jbird                   |      2666 |      2666 |      2666 |      2666 |      2666 |      2677 |      2909 |      7778 |
|                    Δ                     |     -4293 |     -4301 |     -4305 |     -4326 |     -4334 |     -4348 |     -4364 |      4521 |
|              Improvement %               |        62 |        62 |        62 |        62 |        62 |        62 |        60 |      4521 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       382 |       416 |       423 |       436 |       443 |       460 |       490 |      2179 |
|                  jbird                   |        52 |        57 |        59 |        60 |        61 |        68 |       115 |     11135 |
|                    Δ                     |      -330 |      -359 |      -364 |      -376 |      -382 |      -392 |      -375 |      8956 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        77 |      8956 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       383 |       418 |       425 |       438 |       444 |       461 |       493 |      2179 |
|                  jbird                   |        54 |        59 |        61 |        61 |        63 |        70 |       111 |     11135 |
|                    Δ                     |      -329 |      -359 |      -364 |      -377 |      -381 |      -391 |      -382 |      8956 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        77 |      8956 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2617 |      2405 |      2363 |      2293 |      2259 |      2177 |      2040 |      2179 |
|                  jbird                   |     19048 |     17423 |     16879 |     16735 |     16343 |     14695 |      8670 |     11135 |
|                    Δ                     |     16431 |     15018 |     14516 |     14442 |     14084 |     12518 |      6630 |      8956 |
|              Improvement %               |       628 |       624 |       614 |       630 |       623 |       575 |       325 |      8956 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        75 |       126 |       176 |       207 |       225 |       227 |      2179 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     11135 |
|                    Δ                     |         0 |       -49 |      -100 |      -150 |      -181 |      -199 |      -201 |      8956 |
|              Improvement %               |         0 |        65 |        79 |        85 |        87 |        88 |        89 |      8956 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2179 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11135 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      8956 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8956 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9067 |      9093 |      9101 |      9101 |      9110 |      9232 |      9502 |      2179 |
|                  jbird                   |      1625 |      1625 |      1625 |      1625 |      1625 |      1631 |      1745 |     11135 |
|                    Δ                     |     -7442 |     -7468 |     -7476 |     -7476 |     -7485 |     -7601 |     -7757 |      8956 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        82 |        82 |      8956 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        78 |        81 |        86 |        89 |        95 |       132 |      8632 |
|                  jbird                   |        27 |        31 |        32 |        33 |        35 |        40 |        73 |     15286 |
|                    Δ                     |       -48 |       -47 |       -49 |       -53 |       -54 |       -55 |       -59 |      6654 |
|              Improvement %               |        64 |        60 |        60 |        62 |        61 |        58 |        45 |      6654 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        80 |        83 |        88 |        90 |        98 |       123 |      8632 |
|                  jbird                   |        29 |        32 |        33 |        34 |        36 |        42 |        68 |     15286 |
|                    Δ                     |       -48 |       -48 |       -50 |       -54 |       -54 |       -56 |       -55 |      6654 |
|              Improvement %               |        62 |        60 |        60 |        61 |        60 |        57 |        45 |      6654 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        12 |        12 |        11 |        10 |         8 |      8632 |
|                  jbird                   |        37 |        33 |        32 |        31 |        29 |        25 |        14 |     15286 |
|                    Δ                     |        24 |        20 |        20 |        19 |        18 |        15 |         6 |      6654 |
|              Improvement %               |       185 |       154 |       167 |       158 |       164 |       150 |        75 |      6654 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       155 |       291 |       431 |       512 |       560 |       560 |      8632 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |     15286 |
|                    Δ                     |         0 |      -130 |      -265 |      -405 |      -486 |      -534 |      -534 |      6654 |
|              Improvement %               |         0 |        84 |        91 |        94 |        95 |        95 |        95 |      6654 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |      8632 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15286 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |      6654 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      6654 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1891 |      1907 |      1912 |      1918 |      1924 |      1940 |      2036 |      8632 |
|                  jbird                   |       878 |       879 |       879 |       879 |       879 |       885 |       946 |     15286 |
|                    Δ                     |     -1013 |     -1028 |     -1033 |     -1039 |     -1045 |     -1055 |     -1090 |      6654 |
|              Improvement %               |        54 |        54 |        54 |        54 |        54 |        54 |        54 |      6654 |

<p>
</details>

