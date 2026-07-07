
## JBird vs Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2561 |      2740 |      2763 |      2779 |      2796 |      2843 |      2882 |       358 |
|                  jbird                   |      1797 |      1951 |      1966 |      1977 |      1986 |      2025 |      2052 |       500 |
|                    Δ                     |      -764 |      -789 |      -797 |      -802 |      -810 |      -818 |      -830 |       142 |
|              Improvement %               |        30 |        29 |        29 |        29 |        29 |        29 |        29 |       142 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2562 |      2742 |      2765 |      2781 |      2802 |      2847 |      2884 |       358 |
|                  jbird                   |      1798 |      1953 |      1968 |      1979 |      1990 |      2026 |      2053 |       500 |
|                    Δ                     |      -764 |      -789 |      -797 |      -802 |      -812 |      -821 |      -831 |       142 |
|              Improvement %               |        30 |        29 |        29 |        29 |        29 |        29 |        29 |       142 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       391 |       365 |       362 |       360 |       358 |       352 |       347 |       358 |
|                  jbird                   |       557 |       513 |       509 |       506 |       504 |       493 |       487 |       500 |
|                    Δ                     |       166 |       148 |       147 |       146 |       146 |       141 |       140 |       142 |
|              Improvement %               |        42 |        41 |        41 |        41 |        41 |        40 |        40 |       142 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |       162 |       293 |       420 |       498 |       544 |       551 |       358 |
|                  jbird                   |        35 |        38 |        38 |        38 |        38 |        38 |        38 |       500 |
|                    Δ                     |         2 |      -124 |      -255 |      -382 |      -460 |      -506 |      -513 |       142 |
|              Improvement %               |        -6 |        77 |        87 |        91 |        92 |        93 |        93 |       142 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       358 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       500 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       142 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       142 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        65 |        65 |        65 |        65 |        65 |        65 |       358 |
|                  jbird                   |        46 |        46 |        46 |        46 |        46 |        46 |        47 |       500 |
|                    Δ                     |       -18 |       -19 |       -19 |       -19 |       -19 |       -19 |       -18 |       142 |
|              Improvement %               |        28 |        29 |        29 |        29 |        29 |        29 |        28 |       142 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2645 |      2843 |      2875 |      2914 |      2986 |      3037 |      3142 |       343 |
|                  jbird                   |      1798 |      1956 |      1971 |      1990 |      2004 |      2042 |      2070 |       498 |
|                    Δ                     |      -847 |      -887 |      -904 |      -924 |      -982 |      -995 |     -1072 |       155 |
|              Improvement %               |        32 |        31 |        31 |        32 |        33 |        33 |        34 |       155 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2646 |      2847 |      2879 |      2918 |      2990 |      3039 |      3144 |       343 |
|                  jbird                   |      1800 |      1958 |      1972 |      1992 |      2007 |      2043 |      2076 |       498 |
|                    Δ                     |      -846 |      -889 |      -907 |      -926 |      -983 |      -996 |     -1068 |       155 |
|              Improvement %               |        32 |        31 |        32 |        32 |        33 |        33 |        34 |       155 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       378 |       352 |       348 |       343 |       335 |       329 |       318 |       343 |
|                  jbird                   |       556 |       511 |       507 |       503 |       499 |       490 |       483 |       498 |
|                    Δ                     |       178 |       159 |       159 |       160 |       164 |       161 |       165 |       155 |
|              Improvement %               |        47 |        45 |        46 |        47 |        49 |        49 |        52 |       155 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |       158 |       277 |       407 |       480 |       523 |       529 |       343 |
|                  jbird                   |        36 |        38 |        38 |        38 |        38 |        38 |        38 |       498 |
|                    Δ                     |         3 |      -120 |      -239 |      -369 |      -442 |      -485 |      -491 |       155 |
|              Improvement %               |        -9 |        76 |        86 |        91 |        92 |        93 |        93 |       155 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       343 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       498 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       155 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       155 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        66 |        66 |        66 |        66 |        66 |        66 |        67 |       343 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        47 |        48 |       498 |
|                    Δ                     |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       155 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        28 |       155 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       639 |       694 |       702 |       718 |       735 |       759 |       785 |      1347 |
|                  jbird                   |       440 |       481 |       486 |       492 |       509 |       527 |       542 |      1898 |
|                    Δ                     |      -199 |      -213 |      -216 |      -226 |      -226 |      -232 |      -243 |       551 |
|              Improvement %               |        31 |        31 |        31 |        31 |        31 |        31 |        31 |       551 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       641 |       696 |       704 |       720 |       737 |       761 |       786 |      1347 |
|                  jbird                   |       441 |       483 |       488 |       494 |       511 |       529 |       544 |      1898 |
|                    Δ                     |      -200 |      -213 |      -216 |      -226 |      -226 |      -232 |      -242 |       551 |
|              Improvement %               |        31 |        31 |        31 |        31 |        31 |        30 |        31 |       551 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1564 |      1442 |      1425 |      1393 |      1361 |      1318 |      1274 |      1347 |
|                  jbird                   |      2273 |      2079 |      2059 |      2033 |      1966 |      1898 |      1845 |      1898 |
|                    Δ                     |       709 |       637 |       634 |       640 |       605 |       580 |       571 |       551 |
|              Improvement %               |        45 |        44 |        44 |        46 |        44 |        44 |        45 |       551 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       150 |       276 |       403 |       474 |       518 |       525 |      1347 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1898 |
|                    Δ                     |         0 |      -117 |      -243 |      -370 |      -441 |      -485 |      -492 |       551 |
|              Improvement %               |         0 |        78 |        88 |        92 |        93 |        94 |        94 |       551 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1347 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1898 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       551 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       551 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1347 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |      1898 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |        -5 |       551 |
|              Improvement %               |        31 |        31 |        31 |        31 |        31 |        25 |        29 |       551 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       651 |       706 |       715 |       724 |       732 |       758 |       840 |      1332 |
|                  jbird                   |       444 |       488 |       493 |       498 |       505 |       520 |       588 |      1882 |
|                    Δ                     |      -207 |      -218 |      -222 |      -226 |      -227 |      -238 |      -252 |       550 |
|              Improvement %               |        32 |        31 |        31 |        31 |        31 |        31 |        30 |       550 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       652 |       708 |       717 |       726 |       734 |       760 |       828 |      1332 |
|                  jbird                   |       446 |       490 |       495 |       500 |       507 |       522 |       575 |      1882 |
|                    Δ                     |      -206 |      -218 |      -222 |      -226 |      -227 |      -238 |      -253 |       550 |
|              Improvement %               |        32 |        31 |        31 |        31 |        31 |        31 |        31 |       550 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1537 |      1417 |      1399 |      1381 |      1368 |      1320 |      1191 |      1332 |
|                  jbird                   |      2250 |      2051 |      2030 |      2008 |      1981 |      1925 |      1702 |      1882 |
|                    Δ                     |       713 |       634 |       631 |       627 |       613 |       605 |       511 |       550 |
|              Improvement %               |        46 |        45 |        45 |        45 |        45 |        46 |        43 |       550 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       153 |       272 |       396 |       468 |       517 |       517 |      1332 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1882 |
|                    Δ                     |         0 |      -120 |      -239 |      -363 |      -435 |      -484 |      -484 |       550 |
|              Improvement %               |         0 |        78 |        88 |        92 |        93 |        94 |        94 |       550 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1332 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1882 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       550 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       550 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        17 |        17 |        17 |        17 |        17 |      1332 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1882 |
|                    Δ                     |        -4 |        -4 |        -5 |        -5 |        -5 |        -5 |        -5 |       550 |
|              Improvement %               |        25 |        25 |        29 |        29 |        29 |        29 |        29 |       550 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1271 |      1376 |      1396 |      1421 |      1438 |      1468 |      1524 |       697 |
|                  jbird                   |       864 |       954 |       961 |       970 |       980 |      1007 |      1102 |       999 |
|                    Δ                     |      -407 |      -422 |      -435 |      -451 |      -458 |      -461 |      -422 |       302 |
|              Improvement %               |        32 |        31 |        31 |        32 |        32 |        31 |        28 |       302 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1273 |      1378 |      1399 |      1423 |      1441 |      1470 |      1530 |       697 |
|                  jbird                   |       866 |       955 |       963 |       972 |       983 |      1008 |      1117 |       999 |
|                    Δ                     |      -407 |      -423 |      -436 |      -451 |      -458 |      -462 |      -413 |       302 |
|              Improvement %               |        32 |        31 |        31 |        32 |        32 |        31 |        27 |       302 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       787 |       727 |       717 |       704 |       696 |       681 |       656 |       697 |
|                  jbird                   |      1157 |      1049 |      1041 |      1032 |      1021 |       994 |       907 |       999 |
|                    Δ                     |       370 |       322 |       324 |       328 |       325 |       313 |       251 |       302 |
|              Improvement %               |        47 |        44 |        45 |        47 |        47 |        46 |        38 |       302 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       155 |       287 |       411 |       486 |       535 |       541 |       697 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       999 |
|                    Δ                     |         1 |      -120 |      -252 |      -376 |      -451 |      -500 |      -506 |       302 |
|              Improvement %               |        -3 |        77 |        88 |        91 |        93 |        93 |        94 |       302 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       697 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       999 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       302 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       302 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        33 |        33 |       697 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       999 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |       -10 |        -9 |       302 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        30 |        27 |       302 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1317 |      1416 |      1430 |      1446 |      1477 |      1516 |     12529 |       673 |
|                  jbird                   |       888 |       974 |       982 |       990 |      1001 |      1040 |      1122 |       979 |
|                    Δ                     |      -429 |      -442 |      -448 |      -456 |      -476 |      -476 |    -11407 |       306 |
|              Improvement %               |        33 |        31 |        31 |        32 |        32 |        31 |        91 |       306 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1319 |      1418 |      1432 |      1448 |      1479 |      1517 |      1534 |       673 |
|                  jbird                   |       890 |       976 |       984 |       993 |      1004 |      1042 |      1124 |       979 |
|                    Δ                     |      -429 |      -442 |      -448 |      -455 |      -475 |      -475 |      -410 |       306 |
|              Improvement %               |        33 |        31 |        31 |        31 |        32 |        31 |        27 |       306 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       759 |       706 |       700 |       692 |       677 |       660 |        80 |       673 |
|                  jbird                   |      1126 |      1027 |      1019 |      1010 |       999 |       961 |       891 |       979 |
|                    Δ                     |       367 |       321 |       319 |       318 |       322 |       301 |       811 |       306 |
|              Improvement %               |        48 |        45 |        46 |        46 |        48 |        46 |      1014 |       306 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       153 |       272 |       400 |       470 |       515 |       521 |       673 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       979 |
|                    Δ                     |         1 |      -118 |      -237 |      -365 |      -435 |      -480 |      -486 |       306 |
|              Improvement %               |        -3 |        77 |        87 |        91 |        93 |        93 |        93 |       306 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       673 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       979 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       306 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       306 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       673 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       979 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |       306 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        27 |       306 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        73 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        98 |
|                    Δ                     |        -3 |        -4 |        -4 |        -4 |        -4 |        -3 |        -3 |        25 |
|              Improvement %               |        23 |        29 |        29 |        29 |        29 |        21 |        21 |        25 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        73 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        98 |
|                    Δ                     |        -3 |        -4 |        -4 |        -4 |        -4 |        -3 |        -3 |        25 |
|              Improvement %               |        23 |        29 |        29 |        29 |        29 |        21 |        21 |        25 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        73 |        73 |        72 |        72 |        70 |        70 |        73 |
|                  jbird                   |       103 |        99 |        98 |        98 |        97 |        94 |        94 |        98 |
|                    Δ                     |        28 |        26 |        25 |        26 |        25 |        24 |        24 |        25 |
|              Improvement %               |        37 |        36 |        34 |        36 |        35 |        34 |        34 |        25 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        45 |       172 |       306 |       435 |       514 |       565 |       565 |        73 |
|                  jbird                   |        35 |        58 |        58 |        58 |        58 |        58 |        58 |        98 |
|                    Δ                     |       -10 |      -114 |      -248 |      -377 |      -456 |      -507 |      -507 |        25 |
|              Improvement %               |        22 |        66 |        81 |        87 |        89 |        90 |        90 |        25 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        73 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        98 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        25 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        25 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       322 |       322 |       322 |       322 |       323 |       324 |       324 |        73 |
|                  jbird                   |       234 |       235 |       235 |       235 |       235 |       243 |       243 |        98 |
|                    Δ                     |       -88 |       -87 |       -87 |       -87 |       -88 |       -81 |       -81 |        25 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        25 |        25 |        25 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        15 |        15 |        15 |        15 |        70 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        11 |        11 |       100 |
|                    Δ                     |        -5 |        -4 |        -4 |        -5 |        -5 |        -4 |        -4 |        30 |
|              Improvement %               |        36 |        29 |        29 |        33 |        33 |        27 |        27 |        30 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        15 |        15 |        15 |        15 |        70 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        11 |        11 |       100 |
|                    Δ                     |        -5 |        -4 |        -4 |        -5 |        -5 |        -4 |        -4 |        30 |
|              Improvement %               |        36 |        29 |        29 |        33 |        33 |        27 |        27 |        30 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        73 |        70 |        70 |        68 |        68 |        67 |        67 |        70 |
|                  jbird                   |       106 |       101 |       100 |        99 |        95 |        93 |        93 |       100 |
|                    Δ                     |        33 |        31 |        30 |        31 |        27 |        26 |        26 |        30 |
|              Improvement %               |        45 |        44 |        43 |        46 |        40 |        39 |        39 |        30 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        45 |       165 |       286 |       416 |       492 |       544 |       544 |        70 |
|                  jbird                   |        35 |        60 |        61 |        64 |        64 |        64 |        64 |       100 |
|                    Δ                     |       -10 |      -105 |      -225 |      -352 |      -428 |      -480 |      -480 |        30 |
|              Improvement %               |        22 |        64 |        79 |        85 |        87 |        88 |        88 |        30 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        70 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       100 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        30 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        30 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       327 |       328 |       328 |       328 |       328 |       329 |       329 |        70 |
|                  jbird                   |       234 |       234 |       234 |       235 |       238 |       243 |       247 |       100 |
|                    Δ                     |       -93 |       -94 |       -94 |       -93 |       -90 |       -86 |       -82 |        30 |
|              Improvement %               |        28 |        29 |        29 |        28 |        27 |        26 |        25 |        30 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       164 |       178 |       184 |       188 |       194 |       206 |       245 |      4512 |
|                  jbird                   |       110 |       118 |       124 |       125 |       127 |       137 |       158 |      6307 |
|                    Δ                     |       -54 |       -60 |       -60 |       -63 |       -67 |       -69 |       -87 |      1795 |
|              Improvement %               |        33 |        34 |        33 |        34 |        35 |        33 |        36 |      1795 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       166 |       179 |       186 |       190 |       196 |       207 |       247 |      4512 |
|                  jbird                   |       112 |       120 |       126 |       127 |       129 |       140 |       166 |      6307 |
|                    Δ                     |       -54 |       -59 |       -60 |       -63 |       -67 |       -67 |       -81 |      1795 |
|              Improvement %               |        33 |        33 |        32 |        33 |        34 |        32 |        33 |      1795 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6094 |      5639 |      5435 |      5319 |      5171 |      4863 |      4075 |      4512 |
|                  jbird                   |      9050 |      8463 |      8075 |      8003 |      7895 |      7291 |      6316 |      6307 |
|                    Δ                     |      2956 |      2824 |      2640 |      2684 |      2724 |      2428 |      2241 |      1795 |
|              Improvement %               |        49 |        50 |        49 |        50 |        53 |        50 |        55 |      1795 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       140 |       251 |       359 |       426 |       464 |       470 |      4512 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6307 |
|                    Δ                     |         0 |      -108 |      -219 |      -327 |      -394 |      -432 |      -438 |      1795 |
|              Improvement %               |         0 |        77 |        87 |        91 |        92 |        93 |        93 |      1795 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4512 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6307 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1795 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1795 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4113 |      4143 |      4149 |      4159 |      4168 |      4190 |      4375 |      4512 |
|                  jbird                   |      2864 |      2865 |      2865 |      2865 |      2867 |      2888 |      3004 |      6307 |
|                    Δ                     |     -1249 |     -1278 |     -1284 |     -1294 |     -1301 |     -1302 |     -1371 |      1795 |
|              Improvement %               |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      1795 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       168 |       180 |       187 |       191 |       195 |       207 |       286 |      4499 |
|                  jbird                   |       112 |       120 |       126 |       128 |       130 |       141 |       171 |      6211 |
|                    Δ                     |       -56 |       -60 |       -61 |       -63 |       -65 |       -66 |      -115 |      1712 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        32 |        40 |      1712 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       170 |       182 |       189 |       193 |       197 |       209 |       276 |      4499 |
|                  jbird                   |       113 |       122 |       127 |       130 |       131 |       143 |       180 |      6211 |
|                    Δ                     |       -57 |       -60 |       -62 |       -63 |       -66 |       -66 |       -96 |      1712 |
|              Improvement %               |        34 |        33 |        33 |        33 |        34 |        32 |        35 |      1712 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5954 |      5551 |      5339 |      5231 |      5131 |      4831 |      3498 |      4499 |
|                  jbird                   |      8925 |      8311 |      7963 |      7815 |      7723 |      7083 |      5857 |      6211 |
|                    Δ                     |      2971 |      2760 |      2624 |      2584 |      2592 |      2252 |      2359 |      1712 |
|              Improvement %               |        50 |        50 |        49 |        49 |        51 |        47 |        67 |      1712 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       141 |       247 |       355 |       423 |       466 |       466 |      4499 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6211 |
|                    Δ                     |         0 |      -109 |      -215 |      -323 |      -391 |      -434 |      -434 |      1712 |
|              Improvement %               |         0 |        77 |        87 |        91 |        92 |        93 |        93 |      1712 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4499 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6211 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1712 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1712 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4177 |      4207 |      4215 |      4223 |      4235 |      4260 |      4467 |      4499 |
|                  jbird                   |      2907 |      2908 |      2908 |      2908 |      2910 |      2931 |      3050 |      6211 |
|                    Δ                     |     -1270 |     -1299 |     -1307 |     -1315 |     -1325 |     -1329 |     -1417 |      1712 |
|              Improvement %               |        30 |        31 |        31 |        31 |        31 |        31 |        32 |      1712 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       287 |       320 |       329 |       343 |       352 |       366 |       386 |      2738 |
|                  jbird                   |       114 |       125 |       128 |       131 |       133 |       143 |       189 |      6239 |
|                    Δ                     |      -173 |      -195 |      -201 |      -212 |      -219 |      -223 |      -197 |      3501 |
|              Improvement %               |        60 |        61 |        61 |        62 |        62 |        61 |        51 |      3501 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       288 |       322 |       330 |       345 |       354 |       368 |       387 |      2738 |
|                  jbird                   |       116 |       127 |       130 |       132 |       135 |       146 |       194 |      6239 |
|                    Δ                     |      -172 |      -195 |      -200 |      -213 |      -219 |      -222 |      -193 |      3501 |
|              Improvement %               |        60 |        61 |        61 |        62 |        62 |        60 |        50 |      3501 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3486 |      3125 |      3043 |      2917 |      2843 |      2733 |      2593 |      2738 |
|                  jbird                   |      8762 |      7983 |      7807 |      7655 |      7503 |      6995 |      5289 |      6239 |
|                    Δ                     |      5276 |      4858 |      4764 |      4738 |      4660 |      4262 |      2696 |      3501 |
|              Improvement %               |       151 |       155 |       157 |       162 |       164 |       156 |       104 |      3501 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |        97 |       164 |       228 |       269 |       294 |       297 |      2738 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      6239 |
|                    Δ                     |         0 |       -64 |      -131 |      -195 |      -236 |      -261 |      -264 |      3501 |
|              Improvement %               |         0 |        66 |        80 |        86 |        88 |        89 |        89 |      3501 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        14 |      2738 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      6239 |
|                    Δ                     |        15 |        15 |        15 |        15 |        15 |        15 |        14 |      3501 |
|              Improvement %               |      -115 |      -115 |      -115 |      -115 |      -115 |      -115 |      -100 |      3501 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8707 |      8724 |      8724 |      8724 |      8741 |      8757 |      9111 |      2738 |
|                  jbird                   |      3806 |      3807 |      3807 |      3807 |      3807 |      3824 |      4303 |      6239 |
|                    Δ                     |     -4901 |     -4917 |     -4917 |     -4917 |     -4934 |     -4933 |     -4808 |      3501 |
|              Improvement %               |        56 |        56 |        56 |        56 |        56 |        56 |        53 |      3501 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        12 |        12 |        13 |        13 |        13 |        13 |        81 |
|                  jbird                   |         5 |         5 |         6 |         6 |         6 |         6 |         6 |       178 |
|                    Δ                     |        -7 |        -7 |        -6 |        -7 |        -7 |        -7 |        -7 |        97 |
|              Improvement %               |        58 |        58 |        50 |        54 |        54 |        54 |        54 |        97 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        12 |        12 |        13 |        13 |        13 |        13 |        81 |
|                  jbird                   |         5 |         5 |         6 |         6 |         6 |         6 |         6 |       178 |
|                    Δ                     |        -7 |        -7 |        -6 |        -7 |        -7 |        -7 |        -7 |        97 |
|              Improvement %               |        58 |        58 |        50 |        54 |        54 |        54 |        54 |        97 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        81 |        81 |        80 |        79 |        78 |        78 |        81 |
|                  jbird                   |       194 |       183 |       180 |       179 |       178 |       174 |       173 |       178 |
|                    Δ                     |       110 |       102 |        99 |        99 |        99 |        96 |        95 |        97 |
|              Improvement %               |       131 |       126 |       122 |       124 |       125 |       123 |       122 |        97 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        43 |       162 |       283 |       402 |       474 |       517 |       517 |        81 |
|                  jbird                   |        33 |        51 |        52 |        52 |        52 |        52 |        52 |       178 |
|                    Δ                     |       -10 |      -111 |      -231 |      -350 |      -422 |      -465 |      -465 |        97 |
|              Improvement %               |        23 |        69 |        82 |        87 |        89 |        90 |        90 |        97 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        81 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       178 |
|                    Δ                     |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |        97 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |        97 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       310 |       310 |       310 |       310 |       310 |       314 |       314 |        81 |
|                  jbird                   |       146 |       146 |       146 |       147 |       147 |       147 |       151 |       178 |
|                    Δ                     |      -164 |      -164 |      -164 |      -163 |      -163 |      -167 |      -163 |        97 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        53 |        52 |        97 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        77 |        78 |        84 |        86 |        94 |       117 |      9059 |
|                  jbird                   |        47 |        48 |        53 |        53 |        53 |        61 |        76 |     12033 |
|                    Δ                     |       -28 |       -29 |       -25 |       -31 |       -33 |       -33 |       -41 |      2974 |
|              Improvement %               |        37 |        38 |        32 |        37 |        38 |        35 |        35 |      2974 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        78 |        80 |        85 |        88 |        97 |       120 |      9059 |
|                  jbird                   |        48 |        49 |        54 |        55 |        55 |        63 |        81 |     12033 |
|                    Δ                     |       -29 |       -29 |       -26 |       -30 |       -33 |       -34 |       -39 |      2974 |
|              Improvement %               |        38 |        37 |        32 |        35 |        38 |        35 |        32 |      2974 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        12 |        11 |         9 |      9059 |
|                  jbird                   |        21 |        21 |        19 |        19 |        19 |        16 |        13 |     12033 |
|                    Δ                     |         8 |         8 |         6 |         7 |         7 |         5 |         4 |      2974 |
|              Improvement %               |        62 |        62 |        46 |        58 |        58 |        45 |        44 |      2974 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |        43 |        54 |        65 |        72 |        76 |        76 |      9059 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     12033 |
|                    Δ                     |         0 |       -11 |       -22 |       -33 |       -40 |       -44 |       -44 |      2974 |
|              Improvement %               |         0 |        26 |        41 |        51 |        56 |        58 |        58 |      2974 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      9059 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     12033 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |      2974 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      2974 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1149 |      1150 |      1151 |      1158 |      1163 |      1171 |      1268 |      9059 |
|                  jbird                   |      1303 |      1304 |      1304 |      1304 |      1304 |      1321 |      1373 |     12033 |
|                    Δ                     |       154 |       154 |       153 |       146 |       141 |       150 |       105 |      2974 |
|              Improvement %               |       -13 |       -13 |       -13 |       -13 |       -12 |       -13 |        -8 |      2974 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       237 |       259 |       265 |       273 |       287 |       302 |       348 |      3323 |
|                  jbird                   |        87 |        95 |        98 |        99 |       101 |       110 |       138 |      7755 |
|                    Δ                     |      -150 |      -164 |      -167 |      -174 |      -186 |      -192 |      -210 |      4432 |
|              Improvement %               |        63 |        63 |        63 |        64 |        65 |        64 |        60 |      4432 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       238 |       261 |       267 |       275 |       289 |       305 |       342 |      3323 |
|                  jbird                   |        88 |        96 |        99 |       101 |       103 |       112 |       140 |      7755 |
|                    Δ                     |      -150 |      -165 |      -168 |      -174 |      -186 |      -193 |      -202 |      4432 |
|              Improvement %               |        63 |        63 |        63 |        63 |        64 |        63 |        59 |      4432 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4222 |      3857 |      3767 |      3665 |      3485 |      3309 |      2874 |      3323 |
|                  jbird                   |     11555 |     10575 |     10247 |     10071 |      9903 |      9135 |      7251 |      7755 |
|                    Δ                     |      7333 |      6718 |      6480 |      6406 |      6418 |      5826 |      4377 |      4432 |
|              Improvement %               |       174 |       174 |       172 |       175 |       184 |       176 |       152 |      4432 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |        94 |       156 |       220 |       256 |       281 |       284 |      3323 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      7755 |
|                    Δ                     |         0 |       -62 |      -124 |      -188 |      -224 |      -249 |      -252 |      4432 |
|              Improvement %               |         0 |        66 |        79 |        85 |        88 |        89 |        89 |      4432 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3323 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7755 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4432 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4432 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7049 |      7057 |      7062 |      7082 |      7090 |      7119 |      7405 |      3323 |
|                  jbird                   |      2629 |      2630 |      2630 |      2630 |      2632 |      2644 |      2870 |      7755 |
|                    Δ                     |     -4420 |     -4427 |     -4432 |     -4452 |     -4458 |     -4475 |     -4535 |      4432 |
|              Improvement %               |        63 |        63 |        63 |        63 |        63 |        63 |        61 |      4432 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       365 |       399 |       404 |       411 |       446 |       463 |       522 |      2257 |
|                  jbird                   |        55 |        61 |        64 |        65 |        66 |        74 |       118 |     10554 |
|                    Δ                     |      -310 |      -338 |      -340 |      -346 |      -380 |      -389 |      -404 |      8297 |
|              Improvement %               |        85 |        85 |        84 |        84 |        85 |        84 |        77 |      8297 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       367 |       401 |       406 |       413 |       448 |       466 |       516 |      2257 |
|                  jbird                   |        57 |        63 |        65 |        66 |        67 |        76 |       120 |     10554 |
|                    Δ                     |      -310 |      -338 |      -341 |      -347 |      -381 |      -390 |      -396 |      8297 |
|              Improvement %               |        84 |        84 |        84 |        84 |        85 |        84 |        77 |      8297 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2738 |      2507 |      2475 |      2431 |      2241 |      2159 |      1916 |      2257 |
|                  jbird                   |     18086 |     16327 |     15751 |     15511 |     15263 |     13583 |      8469 |     10554 |
|                    Δ                     |     15348 |     13820 |     13276 |     13080 |     13022 |     11424 |      6553 |      8297 |
|              Improvement %               |       561 |       551 |       536 |       538 |       581 |       529 |       342 |      8297 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |        83 |       135 |       189 |       221 |       240 |       240 |      2257 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     10554 |
|                    Δ                     |         0 |       -51 |      -103 |      -157 |      -189 |      -208 |      -208 |      8297 |
|              Improvement %               |         0 |        61 |        76 |        83 |        86 |        87 |        87 |      8297 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2257 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10554 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      8297 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8297 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8854 |      8880 |      8888 |      8888 |      8897 |      9003 |      9309 |      2257 |
|                  jbird                   |      1593 |      1594 |      1594 |      1594 |      1594 |      1601 |      1729 |     10554 |
|                    Δ                     |     -7261 |     -7286 |     -7294 |     -7294 |     -7303 |     -7402 |     -7580 |      8297 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        82 |        81 |      8297 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        73 |        79 |        83 |        87 |        89 |        97 |       141 |      8514 |
|                  jbird                   |        26 |        27 |        30 |        30 |        30 |        36 |        58 |     15822 |
|                    Δ                     |       -47 |       -52 |       -53 |       -57 |       -59 |       -61 |       -83 |      7308 |
|              Improvement %               |        64 |        66 |        64 |        66 |        66 |        63 |        59 |      7308 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        80 |        85 |        89 |        91 |       100 |       132 |      8514 |
|                  jbird                   |        28 |        29 |        31 |        31 |        32 |        38 |        58 |     15822 |
|                    Δ                     |       -46 |       -51 |       -54 |       -58 |       -59 |       -62 |       -74 |      7308 |
|              Improvement %               |        62 |        64 |        64 |        65 |        65 |        62 |        56 |      7308 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        13 |        12 |        11 |        11 |        10 |         7 |      8514 |
|                  jbird                   |        38 |        37 |        34 |        34 |        34 |        28 |        17 |     15822 |
|                    Δ                     |        24 |        24 |        22 |        23 |        23 |        18 |        10 |      7308 |
|              Improvement %               |       171 |       185 |       183 |       209 |       209 |       180 |       143 |      7308 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       159 |       294 |       429 |       511 |       558 |       565 |      8514 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     15822 |
|                    Δ                     |         0 |      -127 |      -262 |      -397 |      -479 |      -526 |      -533 |      7308 |
|              Improvement %               |         0 |        80 |        89 |        93 |        94 |        94 |        94 |      7308 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |      8514 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15822 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |      7308 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      7308 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1895 |      1911 |      1918 |      1925 |      1930 |      1947 |      2033 |      8514 |
|                  jbird                   |       850 |       851 |       851 |       851 |       851 |       856 |       909 |     15822 |
|                    Δ                     |     -1045 |     -1060 |     -1067 |     -1074 |     -1079 |     -1091 |     -1124 |      7308 |
|              Improvement %               |        55 |        55 |        56 |        56 |        56 |        56 |        55 |      7308 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1868 |      2006 |      2032 |      2052 |      2077 |      2130 |      2175 |       484 |
|                  jbird                   |      1468 |      1594 |      1610 |      1625 |      1642 |      1682 |      1771 |       606 |
|                    Δ                     |      -400 |      -412 |      -422 |      -427 |      -435 |      -448 |      -404 |       122 |
|              Improvement %               |        21 |        21 |        21 |        21 |        21 |        21 |        19 |       122 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1870 |      2009 |      2034 |      2055 |      2080 |      2132 |      2176 |       484 |
|                  jbird                   |      1469 |      1596 |      1612 |      1627 |      1646 |      1687 |      1773 |       606 |
|                    Δ                     |      -401 |      -413 |      -422 |      -428 |      -434 |      -445 |      -403 |       122 |
|              Improvement %               |        21 |        21 |        21 |        21 |        21 |        21 |        19 |       122 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       535 |       499 |       492 |       487 |       482 |       470 |       460 |       484 |
|                  jbird                   |       681 |       627 |       621 |       616 |       609 |       594 |       565 |       606 |
|                    Δ                     |       146 |       128 |       129 |       129 |       127 |       124 |       105 |       122 |
|              Improvement %               |        27 |        26 |        26 |        26 |        26 |        26 |        23 |       122 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       118 |       206 |       291 |       342 |       376 |       380 |       484 |
|                  jbird                   |        34 |        37 |        37 |        37 |        37 |        37 |        37 |       606 |
|                    Δ                     |         2 |       -81 |      -169 |      -254 |      -305 |      -339 |      -343 |       122 |
|              Improvement %               |        -6 |        69 |        82 |        87 |        89 |        90 |        90 |       122 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6636 |      6637 |      6637 |      6637 |      6637 |      6637 |      6637 |       484 |
|                  jbird                   |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |       606 |
|                    Δ                     |      1359 |      1358 |      1358 |      1358 |      1358 |      1358 |      1358 |       122 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       122 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        44 |        44 |        44 |        44 |        44 |        44 |        45 |       484 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       606 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       122 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        24 |       122 |

<p>
</details>

