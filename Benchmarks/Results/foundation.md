
## JBird vs Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2568 |      2793 |      2820 |      2843 |      2869 |      2968 |     10365 |       348 |
|                  jbird                   |      1773 |      1939 |      1955 |      1975 |      2001 |      2427 |      2791 |       498 |
|                    Δ                     |      -795 |      -854 |      -865 |      -868 |      -868 |      -541 |     -7574 |       150 |
|              Improvement %               |        31 |        31 |        31 |        31 |        30 |        18 |        73 |       150 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2570 |      2796 |      2822 |      2845 |      2871 |      2961 |      3047 |       348 |
|                  jbird                   |      1775 |      1942 |      1958 |      1978 |      2006 |      2437 |      2794 |       498 |
|                    Δ                     |      -795 |      -854 |      -864 |      -867 |      -865 |      -524 |      -253 |       150 |
|              Improvement %               |        31 |        31 |        31 |        30 |        30 |        18 |         8 |       150 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       389 |       358 |       355 |       352 |       349 |       337 |        96 |       348 |
|                  jbird                   |       564 |       516 |       512 |       506 |       500 |       412 |       358 |       498 |
|                    Δ                     |       175 |       158 |       157 |       154 |       151 |        75 |       262 |       150 |
|              Improvement %               |        45 |        44 |        44 |        44 |        43 |        22 |       273 |       150 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |       158 |       282 |       409 |       484 |       529 |       535 |       348 |
|                  jbird                   |        35 |        37 |        37 |        38 |        38 |        38 |        38 |       498 |
|                    Δ                     |         2 |      -121 |      -245 |      -371 |      -446 |      -491 |      -497 |       150 |
|              Improvement %               |        -6 |        77 |        87 |        91 |        92 |        93 |        93 |       150 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       348 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       498 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       150 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       150 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        65 |        66 |       348 |
|                  jbird                   |        46 |        46 |        46 |        46 |        46 |        46 |        47 |       498 |
|                    Δ                     |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       150 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       150 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2705 |      2894 |      2914 |      2939 |      2961 |      3023 |      3073 |       339 |
|                  jbird                   |      1853 |      1981 |      1992 |      2009 |      2033 |      2130 |      2177 |       491 |
|                    Δ                     |      -852 |      -913 |      -922 |      -930 |      -928 |      -893 |      -896 |       152 |
|              Improvement %               |        31 |        32 |        32 |        32 |        31 |        30 |        29 |       152 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2712 |      2896 |      2918 |      2941 |      2966 |      3027 |      3066 |       339 |
|                  jbird                   |      1855 |      1985 |      1996 |      2011 |      2035 |      2130 |      2179 |       491 |
|                    Δ                     |      -857 |      -911 |      -922 |      -930 |      -931 |      -897 |      -887 |       152 |
|              Improvement %               |        32 |        31 |        32 |        32 |        31 |        30 |        29 |       152 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       370 |       346 |       343 |       340 |       338 |       331 |       325 |       339 |
|                  jbird                   |       540 |       505 |       502 |       498 |       492 |       470 |       459 |       491 |
|                    Δ                     |       170 |       159 |       159 |       158 |       154 |       139 |       134 |       152 |
|              Improvement %               |        46 |        46 |        46 |        46 |        46 |        42 |        41 |       152 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |       154 |       278 |       401 |       473 |       516 |       522 |       339 |
|                  jbird                   |        35 |        38 |        38 |        38 |        38 |        38 |        38 |       491 |
|                    Δ                     |         2 |      -116 |      -240 |      -363 |      -435 |      -478 |      -484 |       152 |
|              Improvement %               |        -6 |        75 |        86 |        91 |        92 |        93 |        93 |       152 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       339 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       491 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       152 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       152 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        66 |        66 |        66 |        66 |        66 |        66 |       339 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        47 |        48 |       491 |
|                    Δ                     |       -18 |       -19 |       -19 |       -19 |       -19 |       -19 |       -18 |       152 |
|              Improvement %               |        28 |        29 |        29 |        29 |        29 |        29 |        27 |       152 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       647 |       706 |       712 |       718 |       727 |       762 |     10304 |      1323 |
|                  jbird                   |       436 |       481 |       484 |       488 |       495 |       529 |       564 |      1908 |
|                    Δ                     |      -211 |      -225 |      -228 |      -230 |      -232 |      -233 |     -9740 |       585 |
|              Improvement %               |        33 |        32 |        32 |        32 |        32 |        31 |        95 |       585 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       649 |       707 |       714 |       720 |       729 |       760 |       834 |      1323 |
|                  jbird                   |       437 |       483 |       486 |       490 |       497 |       531 |       566 |      1908 |
|                    Δ                     |      -212 |      -224 |      -228 |      -230 |      -232 |      -229 |      -268 |       585 |
|              Improvement %               |        33 |        32 |        32 |        32 |        32 |        30 |        32 |       585 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1545 |      1418 |      1406 |      1394 |      1377 |      1313 |        97 |      1323 |
|                  jbird                   |      2294 |      2079 |      2065 |      2049 |      2023 |      1889 |      1772 |      1908 |
|                    Δ                     |       749 |       661 |       659 |       655 |       646 |       576 |      1675 |       585 |
|              Improvement %               |        48 |        47 |        47 |        47 |        47 |        44 |      1727 |       585 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       151 |       273 |       396 |       469 |       511 |       516 |      1323 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1908 |
|                    Δ                     |         0 |      -118 |      -240 |      -363 |      -436 |      -478 |      -483 |       585 |
|              Improvement %               |         0 |        78 |        88 |        92 |        93 |        94 |        94 |       585 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1323 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1908 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       585 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       585 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1323 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |      1908 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |        -5 |       585 |
|              Improvement %               |        31 |        31 |        31 |        31 |        31 |        25 |        29 |       585 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       672 |       732 |       739 |       748 |       759 |       799 |       850 |      1286 |
|                  jbird                   |       444 |       491 |       495 |       499 |       505 |       539 |       584 |      1870 |
|                    Δ                     |      -228 |      -241 |      -244 |      -249 |      -254 |      -260 |      -266 |       584 |
|              Improvement %               |        34 |        33 |        33 |        33 |        33 |        33 |        31 |       584 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       674 |       734 |       741 |       750 |       762 |       801 |       856 |      1286 |
|                  jbird                   |       445 |       493 |       496 |       501 |       508 |       540 |       588 |      1870 |
|                    Δ                     |      -229 |      -241 |      -245 |      -249 |      -254 |      -261 |      -268 |       584 |
|              Improvement %               |        34 |        33 |        33 |        33 |        33 |        33 |        31 |       584 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1487 |      1366 |      1353 |      1338 |      1318 |      1251 |      1176 |      1286 |
|                  jbird                   |      2253 |      2038 |      2022 |      2003 |      1980 |      1858 |      1711 |      1870 |
|                    Δ                     |       766 |       672 |       669 |       665 |       662 |       607 |       535 |       584 |
|              Improvement %               |        52 |        49 |        49 |        50 |        50 |        49 |        45 |       584 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       147 |       268 |       388 |       454 |       501 |       501 |      1286 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1870 |
|                    Δ                     |         0 |      -114 |      -235 |      -355 |      -421 |      -468 |      -468 |       584 |
|              Improvement %               |         0 |        78 |        88 |        91 |        93 |        93 |        93 |       584 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1286 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1870 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       584 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       584 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        17 |        17 |        17 |        17 |        17 |      1286 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1870 |
|                    Δ                     |        -4 |        -4 |        -5 |        -5 |        -5 |        -5 |        -5 |       584 |
|              Improvement %               |        25 |        25 |        29 |        29 |        29 |        29 |        29 |       584 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1286 |      1403 |      1412 |      1422 |      1435 |      1476 |      1577 |       690 |
|                  jbird                   |       883 |       969 |       975 |       982 |       992 |      1037 |      1078 |       984 |
|                    Δ                     |      -403 |      -434 |      -437 |      -440 |      -443 |      -439 |      -499 |       294 |
|              Improvement %               |        31 |        31 |        31 |        31 |        31 |        30 |        32 |       294 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1288 |      1405 |      1414 |      1424 |      1438 |      1480 |      1579 |       690 |
|                  jbird                   |       885 |       971 |       977 |       985 |       994 |      1038 |      1080 |       984 |
|                    Δ                     |      -403 |      -434 |      -437 |      -439 |      -444 |      -442 |      -499 |       294 |
|              Improvement %               |        31 |        31 |        31 |        31 |        31 |        30 |        32 |       294 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       777 |       713 |       708 |       703 |       697 |       678 |       634 |       690 |
|                  jbird                   |      1132 |      1032 |      1026 |      1018 |      1008 |       965 |       928 |       984 |
|                    Δ                     |       355 |       319 |       318 |       315 |       311 |       287 |       294 |       294 |
|              Improvement %               |        46 |        45 |        45 |        45 |        45 |        42 |        46 |       294 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       158 |       280 |       405 |       486 |       530 |       530 |       690 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       984 |
|                    Δ                     |         1 |      -123 |      -245 |      -370 |      -451 |      -495 |      -495 |       294 |
|              Improvement %               |        -3 |        78 |        88 |        91 |        93 |        93 |        93 |       294 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       690 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       984 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       294 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       294 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        33 |        33 |       690 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       984 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |       -10 |        -9 |       294 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        30 |        27 |       294 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1318 |      1434 |      1451 |      1466 |      1479 |      1525 |      1612 |       673 |
|                  jbird                   |       897 |       980 |       989 |       996 |      1007 |      1052 |      1121 |       972 |
|                    Δ                     |      -421 |      -454 |      -462 |      -470 |      -472 |      -473 |      -491 |       299 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        31 |        30 |       299 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1320 |      1436 |      1453 |      1468 |      1482 |      1529 |      1614 |       673 |
|                  jbird                   |       899 |       982 |       991 |       999 |      1008 |      1055 |      1112 |       972 |
|                    Δ                     |      -421 |      -454 |      -462 |      -469 |      -474 |      -474 |      -502 |       299 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        31 |        31 |       299 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       759 |       698 |       690 |       682 |       677 |       656 |       620 |       673 |
|                  jbird                   |      1115 |      1021 |      1012 |      1004 |       993 |       952 |       892 |       972 |
|                    Δ                     |       356 |       323 |       322 |       322 |       316 |       296 |       272 |       299 |
|              Improvement %               |        47 |        46 |        47 |        47 |        47 |        45 |        44 |       299 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       154 |       277 |       397 |       470 |       519 |       519 |       673 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       972 |
|                    Δ                     |         1 |      -119 |      -242 |      -362 |      -435 |      -484 |      -484 |       299 |
|              Improvement %               |        -3 |        77 |        87 |        91 |        93 |        93 |        93 |       299 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       673 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       972 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       299 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       299 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       673 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       972 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       299 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        29 |       299 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        72 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        94 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        22 |
|              Improvement %               |        23 |        21 |        21 |        21 |        21 |        21 |        21 |        22 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        72 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        94 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        22 |
|              Improvement %               |        23 |        21 |        21 |        21 |        21 |        21 |        21 |        22 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        72 |        72 |        71 |        71 |        70 |        70 |        72 |
|                  jbird                   |       100 |        95 |        95 |        94 |        94 |        93 |        93 |        94 |
|                    Δ                     |        25 |        23 |        23 |        23 |        23 |        23 |        23 |        22 |
|              Improvement %               |        33 |        32 |        32 |        32 |        32 |        33 |        33 |        22 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        45 |       164 |       296 |       430 |       509 |       559 |       559 |        72 |
|                  jbird                   |        35 |        58 |        58 |        58 |        58 |        58 |        58 |        94 |
|                    Δ                     |       -10 |      -106 |      -238 |      -372 |      -451 |      -501 |      -501 |        22 |
|              Improvement %               |        22 |        65 |        80 |        87 |        89 |        90 |        90 |        22 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        72 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        94 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        22 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        22 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       322 |       322 |       322 |       322 |       322 |       324 |       324 |        72 |
|                  jbird                   |       235 |       239 |       239 |       239 |       240 |       244 |       244 |        94 |
|                    Δ                     |       -87 |       -83 |       -83 |       -83 |       -82 |       -80 |       -80 |        22 |
|              Improvement %               |        27 |        26 |        26 |        26 |        25 |        25 |        25 |        22 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        15 |        15 |        15 |        15 |        16 |        16 |        67 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        93 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -5 |        26 |
|              Improvement %               |        29 |        27 |        27 |        27 |        27 |        31 |        31 |        26 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        15 |        15 |        15 |        15 |        16 |        16 |        67 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        93 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -5 |        26 |
|              Improvement %               |        29 |        27 |        27 |        27 |        27 |        31 |        31 |        26 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        69 |        67 |        67 |        66 |        65 |        64 |        64 |        67 |
|                  jbird                   |        98 |        94 |        94 |        93 |        92 |        90 |        90 |        93 |
|                    Δ                     |        29 |        27 |        27 |        27 |        27 |        26 |        26 |        26 |
|              Improvement %               |        42 |        40 |        40 |        41 |        42 |        41 |        41 |        26 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        44 |       157 |       280 |       405 |       476 |       517 |       517 |        67 |
|                  jbird                   |        35 |        58 |        58 |        58 |        58 |        58 |        58 |        93 |
|                    Δ                     |        -9 |       -99 |      -222 |      -347 |      -418 |      -459 |      -459 |        26 |
|              Improvement %               |        20 |        63 |        79 |        86 |        88 |        89 |        89 |        26 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        67 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        93 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        26 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        26 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       327 |       328 |       328 |       328 |       328 |       329 |       329 |        67 |
|                  jbird                   |       238 |       243 |       243 |       243 |       243 |       248 |       248 |        93 |
|                    Δ                     |       -89 |       -85 |       -85 |       -85 |       -85 |       -81 |       -81 |        26 |
|              Improvement %               |        27 |        26 |        26 |        26 |        26 |        25 |        25 |        26 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       169 |       189 |       194 |       200 |       204 |       217 |       245 |      4335 |
|                  jbird                   |       110 |       121 |       123 |       124 |       126 |       138 |       177 |      6264 |
|                    Δ                     |       -59 |       -68 |       -71 |       -76 |       -78 |       -79 |       -68 |      1929 |
|              Improvement %               |        35 |        36 |        37 |        38 |        38 |        36 |        28 |      1929 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       170 |       190 |       196 |       202 |       206 |       219 |       243 |      4335 |
|                  jbird                   |       111 |       122 |       125 |       126 |       128 |       141 |       181 |      6264 |
|                    Δ                     |       -59 |       -68 |       -71 |       -76 |       -78 |       -78 |       -62 |      1929 |
|              Improvement %               |        35 |        36 |        36 |        38 |        38 |        36 |        26 |      1929 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5920 |      5307 |      5159 |      4995 |      4903 |      4607 |      4078 |      4335 |
|                  jbird                   |      9129 |      8295 |      8127 |      8071 |      7939 |      7227 |      5646 |      6264 |
|                    Δ                     |      3209 |      2988 |      2968 |      3076 |      3036 |      2620 |      1568 |      1929 |
|              Improvement %               |        54 |        56 |        58 |        62 |        62 |        57 |        38 |      1929 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       136 |       239 |       348 |       411 |       446 |       451 |      4335 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6264 |
|                    Δ                     |         0 |      -104 |      -207 |      -316 |      -379 |      -414 |      -419 |      1929 |
|              Improvement %               |         0 |        76 |        87 |        91 |        92 |        93 |        93 |      1929 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4335 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6264 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1929 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1929 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4113 |      4143 |      4151 |      4159 |      4170 |      4198 |      4384 |      4335 |
|                  jbird                   |      2863 |      2865 |      2865 |      2865 |      2865 |      2888 |      3049 |      6264 |
|                    Δ                     |     -1250 |     -1278 |     -1286 |     -1294 |     -1305 |     -1310 |     -1335 |      1929 |
|              Improvement %               |        30 |        31 |        31 |        31 |        31 |        31 |        30 |      1929 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       174 |       192 |       197 |       202 |       207 |       222 |       297 |      4264 |
|                  jbird                   |       111 |       122 |       125 |       126 |       127 |       139 |       169 |      6210 |
|                    Δ                     |       -63 |       -70 |       -72 |       -76 |       -80 |       -83 |      -128 |      1946 |
|              Improvement %               |        36 |        36 |        37 |        38 |        39 |        37 |        43 |      1946 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       175 |       194 |       199 |       204 |       209 |       225 |       299 |      4264 |
|                  jbird                   |       113 |       124 |       126 |       128 |       129 |       141 |       172 |      6210 |
|                    Δ                     |       -62 |       -70 |       -73 |       -76 |       -80 |       -84 |      -127 |      1946 |
|              Improvement %               |        35 |        36 |        37 |        37 |        38 |        37 |        42 |      1946 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5750 |      5215 |      5075 |      4943 |      4835 |      4499 |      3362 |      4264 |
|                  jbird                   |      8985 |      8199 |      8027 |      7939 |      7851 |      7195 |      5923 |      6210 |
|                    Δ                     |      3235 |      2984 |      2952 |      2996 |      3016 |      2696 |      2561 |      1946 |
|              Improvement %               |        56 |        57 |        58 |        61 |        62 |        60 |        76 |      1946 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       132 |       235 |       340 |       402 |       439 |       445 |      4264 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6210 |
|                    Δ                     |         0 |      -100 |      -203 |      -308 |      -370 |      -407 |      -413 |      1946 |
|              Improvement %               |         0 |        76 |        86 |        91 |        92 |        93 |        93 |      1946 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4264 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6210 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1946 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1946 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4177 |      4207 |      4215 |      4223 |      4235 |      4260 |      4468 |      4264 |
|                  jbird                   |      2910 |      2910 |      2910 |      2912 |      2912 |      2933 |      3050 |      6210 |
|                    Δ                     |     -1267 |     -1297 |     -1305 |     -1311 |     -1323 |     -1327 |     -1418 |      1946 |
|              Improvement %               |        30 |        31 |        31 |        31 |        31 |        31 |        32 |      1946 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       294 |       328 |       340 |       362 |       375 |       399 |       454 |      2641 |
|                  jbird                   |       114 |       128 |       130 |       131 |       133 |       144 |       197 |      6196 |
|                    Δ                     |      -180 |      -200 |      -210 |      -231 |      -242 |      -255 |      -257 |      3555 |
|              Improvement %               |        61 |        61 |        62 |        64 |        65 |        64 |        57 |      3555 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       296 |       330 |       341 |       364 |       377 |       402 |       455 |      2641 |
|                  jbird                   |       116 |       129 |       131 |       132 |       135 |       146 |       201 |      6196 |
|                    Δ                     |      -180 |      -201 |      -210 |      -232 |      -242 |      -256 |      -254 |      3555 |
|              Improvement %               |        61 |        61 |        62 |        64 |        64 |        64 |        56 |      3555 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3396 |      3049 |      2947 |      2765 |      2667 |      2507 |      2204 |      2641 |
|                  jbird                   |      8762 |      7839 |      7715 |      7663 |      7527 |      6927 |      5070 |      6196 |
|                    Δ                     |      5366 |      4790 |      4768 |      4898 |      4860 |      4420 |      2866 |      3555 |
|              Improvement %               |       158 |       157 |       162 |       177 |       182 |       176 |       130 |      3555 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |        95 |       160 |       222 |       262 |       285 |       285 |      2641 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      6196 |
|                    Δ                     |         0 |       -62 |      -127 |      -189 |      -229 |      -252 |      -252 |      3555 |
|              Improvement %               |         0 |        65 |        79 |        85 |        87 |        88 |        88 |      3555 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        14 |      2641 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      6196 |
|                    Δ                     |        15 |        15 |        15 |        15 |        15 |        15 |        14 |      3555 |
|              Improvement %               |      -115 |      -115 |      -115 |      -115 |      -115 |      -115 |      -100 |      3555 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8707 |      8724 |      8724 |      8724 |      8741 |      8749 |      9035 |      2641 |
|                  jbird                   |      3804 |      3805 |      3805 |      3805 |      3805 |      3822 |      4292 |      6196 |
|                    Δ                     |     -4903 |     -4919 |     -4919 |     -4919 |     -4936 |     -4927 |     -4743 |      3555 |
|              Improvement %               |        56 |        56 |        56 |        56 |        56 |        56 |        52 |      3555 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        13 |        14 |        14 |        14 |        14 |        14 |        74 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       185 |
|                    Δ                     |        -7 |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |       111 |
|              Improvement %               |        58 |        62 |        64 |        64 |        64 |        64 |        64 |       111 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        13 |        14 |        14 |        14 |        14 |        14 |        74 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       185 |
|                    Δ                     |        -7 |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |       111 |
|              Improvement %               |        58 |        62 |        64 |        64 |        64 |        64 |        64 |       111 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        75 |        74 |        72 |        71 |        70 |        70 |        74 |
|                  jbird                   |       195 |       188 |       187 |       186 |       185 |       183 |       182 |       185 |
|                    Δ                     |       115 |       113 |       113 |       114 |       114 |       113 |       112 |       111 |
|              Improvement %               |       144 |       151 |       153 |       158 |       161 |       161 |       160 |       111 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        43 |       151 |       258 |       372 |       434 |       475 |       475 |        74 |
|                  jbird                   |        33 |        51 |        51 |        51 |        51 |        51 |        51 |       185 |
|                    Δ                     |       -10 |      -100 |      -207 |      -321 |      -383 |      -424 |      -424 |       111 |
|              Improvement %               |        23 |        66 |        80 |        86 |        88 |        89 |        89 |       111 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        74 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       185 |
|                    Δ                     |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |       111 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |       111 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       310 |       310 |       310 |       310 |       310 |       314 |       314 |        74 |
|                  jbird                   |       146 |       146 |       146 |       147 |       147 |       147 |       151 |       185 |
|                    Δ                     |      -164 |      -164 |      -164 |      -163 |      -163 |      -167 |      -163 |       111 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        53 |        52 |       111 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        80 |        84 |        88 |        90 |       100 |       122 |      8689 |
|                  jbird                   |        47 |        50 |        53 |        53 |        54 |        62 |        77 |     11885 |
|                    Δ                     |       -29 |       -30 |       -31 |       -35 |       -36 |       -38 |       -45 |      3196 |
|              Improvement %               |        38 |        38 |        37 |        40 |        40 |        38 |        37 |      3196 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        81 |        85 |        90 |        91 |       102 |       121 |      8689 |
|                  jbird                   |        48 |        52 |        54 |        55 |        55 |        64 |        76 |     11885 |
|                    Δ                     |       -29 |       -29 |       -31 |       -35 |       -36 |       -38 |       -45 |      3196 |
|              Improvement %               |        38 |        36 |        36 |        39 |        40 |        37 |        37 |      3196 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        12 |        11 |        11 |        10 |         8 |      8689 |
|                  jbird                   |        21 |        20 |        19 |        19 |        19 |        16 |        13 |     11885 |
|                    Δ                     |         8 |         7 |         7 |         8 |         8 |         6 |         5 |      3196 |
|              Improvement %               |        62 |        54 |        58 |        73 |        73 |        60 |        62 |      3196 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |        42 |        53 |        64 |        70 |        74 |        74 |      8689 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     11885 |
|                    Δ                     |         0 |       -10 |       -21 |       -32 |       -38 |       -42 |       -42 |      3196 |
|              Improvement %               |         0 |        24 |        40 |        50 |        54 |        57 |        57 |      3196 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      8689 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11885 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |      3196 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      3196 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1149 |      1150 |      1151 |      1158 |      1163 |      1171 |      1262 |      8689 |
|                  jbird                   |      1303 |      1304 |      1304 |      1304 |      1304 |      1321 |      1373 |     11885 |
|                    Δ                     |       154 |       154 |       153 |       146 |       141 |       150 |       111 |      3196 |
|              Improvement %               |       -13 |       -13 |       -13 |       -13 |       -12 |       -13 |        -9 |      3196 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       246 |       269 |       276 |       288 |       298 |       314 |       337 |      3196 |
|                  jbird                   |        88 |        98 |        99 |        99 |       101 |       111 |       150 |      7687 |
|                    Δ                     |      -158 |      -171 |      -177 |      -189 |      -197 |      -203 |      -187 |      4491 |
|              Improvement %               |        64 |        64 |        64 |        66 |        66 |        65 |        55 |      4491 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       248 |       271 |       278 |       290 |       300 |       315 |       341 |      3196 |
|                  jbird                   |        89 |        99 |       100 |       101 |       103 |       114 |       153 |      7687 |
|                    Δ                     |      -159 |      -172 |      -178 |      -189 |      -197 |      -201 |      -188 |      4491 |
|              Improvement %               |        64 |        63 |        64 |        65 |        66 |        64 |        55 |      4491 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4060 |      3717 |      3627 |      3477 |      3355 |      3191 |      2968 |      3196 |
|                  jbird                   |     11396 |     10263 |     10159 |     10063 |      9903 |      8999 |      6683 |      7687 |
|                    Δ                     |      7336 |      6546 |      6532 |      6586 |      6548 |      5808 |      3715 |      4491 |
|              Improvement %               |       181 |       176 |       180 |       189 |       195 |       182 |       125 |      4491 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |        93 |       152 |       211 |       249 |       272 |       272 |      3196 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      7687 |
|                    Δ                     |         0 |       -61 |      -120 |      -179 |      -217 |      -240 |      -240 |      4491 |
|              Improvement %               |         0 |        66 |        79 |        85 |        87 |        88 |        88 |      4491 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3196 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7687 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4491 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4491 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7049 |      7057 |      7062 |      7078 |      7090 |      7119 |      7404 |      3196 |
|                  jbird                   |      2631 |      2632 |      2632 |      2632 |      2632 |      2648 |      2876 |      7687 |
|                    Δ                     |     -4418 |     -4425 |     -4430 |     -4446 |     -4458 |     -4471 |     -4528 |      4491 |
|              Improvement %               |        63 |        63 |        63 |        63 |        63 |        63 |        61 |      4491 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       378 |       418 |       425 |       432 |       439 |       460 |       494 |      2174 |
|                  jbird                   |        51 |        57 |        58 |        59 |        60 |        68 |       136 |     11091 |
|                    Δ                     |      -327 |      -361 |      -367 |      -373 |      -379 |      -392 |      -358 |      8917 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        85 |        72 |      8917 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       420 |       427 |       434 |       441 |       461 |       496 |      2174 |
|                  jbird                   |        53 |        59 |        60 |        60 |        62 |        70 |       140 |     11091 |
|                    Δ                     |      -326 |      -361 |      -367 |      -374 |      -379 |      -391 |      -356 |      8917 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        72 |      8917 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2649 |      2393 |      2353 |      2315 |      2279 |      2177 |      2024 |      2174 |
|                  jbird                   |     19544 |     17439 |     17231 |     17023 |     16751 |     14647 |      7330 |     11091 |
|                    Δ                     |     16895 |     15046 |     14878 |     14708 |     14472 |     12470 |      5306 |      8917 |
|              Improvement %               |       638 |       629 |       632 |       635 |       635 |       573 |       262 |      8917 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |        80 |       132 |       183 |       212 |       230 |       233 |      2174 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     11091 |
|                    Δ                     |         0 |       -48 |      -100 |      -151 |      -180 |      -198 |      -201 |      8917 |
|              Improvement %               |         0 |        60 |        76 |        83 |        85 |        86 |        86 |      8917 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2174 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11091 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      8917 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8917 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8854 |      8880 |      8888 |      8888 |      8897 |      9003 |      9357 |      2174 |
|                  jbird                   |      1593 |      1594 |      1594 |      1594 |      1594 |      1601 |      1750 |     11091 |
|                    Δ                     |     -7261 |     -7286 |     -7294 |     -7294 |     -7303 |     -7402 |     -7607 |      8917 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        82 |        81 |      8917 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        83 |        87 |        89 |        91 |       100 |       125 |      8227 |
|                  jbird                   |        26 |        29 |        30 |        30 |        30 |        36 |        58 |     15582 |
|                    Δ                     |       -50 |       -54 |       -57 |       -59 |       -61 |       -64 |       -67 |      7355 |
|              Improvement %               |        66 |        65 |        66 |        66 |        67 |        64 |        54 |      7355 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        85 |        89 |        90 |        93 |       103 |       121 |      8227 |
|                  jbird                   |        28 |        31 |        31 |        31 |        32 |        38 |        57 |     15582 |
|                    Δ                     |       -49 |       -54 |       -58 |       -59 |       -61 |       -65 |       -64 |      7355 |
|              Improvement %               |        64 |        64 |        65 |        66 |        66 |        63 |        53 |      7355 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        12 |        11 |        11 |        11 |        10 |         8 |      8227 |
|                  jbird                   |        38 |        34 |        34 |        34 |        33 |        28 |        17 |     15582 |
|                    Δ                     |        25 |        22 |        23 |        23 |        22 |        18 |         9 |      7355 |
|              Improvement %               |       192 |       183 |       209 |       209 |       200 |       180 |       112 |      7355 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       158 |       287 |       413 |       494 |       539 |       546 |      8227 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     15582 |
|                    Δ                     |         0 |      -126 |      -255 |      -381 |      -462 |      -507 |      -514 |      7355 |
|              Improvement %               |         0 |        80 |        89 |        92 |        94 |        94 |        94 |      7355 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |      8227 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15582 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |      7355 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      7355 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1895 |      1912 |      1918 |      1924 |      1930 |      1948 |      2057 |      8227 |
|                  jbird                   |       850 |       851 |       851 |       851 |       851 |       856 |       901 |     15582 |
|                    Δ                     |     -1045 |     -1061 |     -1067 |     -1073 |     -1079 |     -1092 |     -1156 |      7355 |
|              Improvement %               |        55 |        55 |        56 |        56 |        56 |        56 |        56 |      7355 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1939 |      2073 |      2092 |      2116 |      2140 |      2218 |      2271 |       470 |
|                  jbird                   |      1556 |      1639 |      1653 |      1667 |      1691 |      1751 |      1849 |       590 |
|                    Δ                     |      -383 |      -434 |      -439 |      -449 |      -449 |      -467 |      -422 |       120 |
|              Improvement %               |        20 |        21 |        21 |        21 |        21 |        21 |        19 |       120 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1940 |      2075 |      2094 |      2118 |      2142 |      2220 |      2273 |       470 |
|                  jbird                   |      1557 |      1641 |      1656 |      1669 |      1693 |      1752 |      1851 |       590 |
|                    Δ                     |      -383 |      -434 |      -438 |      -449 |      -449 |      -468 |      -422 |       120 |
|              Improvement %               |        20 |        21 |        21 |        21 |        21 |        21 |        19 |       120 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       516 |       483 |       478 |       473 |       467 |       451 |       440 |       470 |
|                  jbird                   |       643 |       610 |       605 |       600 |       591 |       571 |       541 |       590 |
|                    Δ                     |       127 |       127 |       127 |       127 |       124 |       120 |       101 |       120 |
|              Improvement %               |        25 |        26 |        27 |        27 |        27 |        27 |        23 |       120 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       112 |       201 |       284 |       334 |       365 |       369 |       470 |
|                  jbird                   |        34 |        37 |        37 |        37 |        37 |        37 |        37 |       590 |
|                    Δ                     |         2 |       -75 |      -164 |      -247 |      -297 |      -328 |      -332 |       120 |
|              Improvement %               |        -6 |        67 |        82 |        87 |        89 |        90 |        90 |       120 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6636 |      6637 |      6637 |      6637 |      6637 |      6637 |      6637 |       470 |
|                  jbird                   |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |       590 |
|                    Δ                     |      1359 |      1358 |      1358 |      1358 |      1358 |      1358 |      1358 |       120 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       120 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        44 |        44 |        44 |        44 |        44 |        44 |        45 |       470 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       590 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       120 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        24 |       120 |

<p>
</details>

