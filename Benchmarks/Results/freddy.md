# JBird vs. Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2992 |      3246 |      3267 |      3289 |      3328 |      4121 |      4556 |       301 |
|                  jbird                   |      1843 |      2012 |      2037 |      2062 |      2096 |      2687 |      3430 |       477 |
|                    Δ                     |     -1149 |     -1234 |     -1230 |     -1227 |     -1232 |     -1434 |     -1126 |       176 |
|              Improvement %               |        38 |        38 |        38 |        37 |        37 |        35 |        25 |       176 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2985 |      3248 |      3269 |      3291 |      3330 |      4123 |      4561 |       301 |
|                  jbird                   |      1844 |      2014 |      2038 |      2065 |      2099 |      2689 |      3434 |       477 |
|                    Δ                     |     -1141 |     -1234 |     -1231 |     -1226 |     -1231 |     -1434 |     -1127 |       176 |
|              Improvement %               |        38 |        38 |        38 |        37 |        37 |        35 |        25 |       176 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       334 |       308 |       306 |       304 |       301 |       243 |       219 |       301 |
|                  jbird                   |       543 |       497 |       491 |       485 |       477 |       372 |       292 |       477 |
|                    Δ                     |       209 |       189 |       185 |       181 |       176 |       129 |        73 |       176 |
|              Improvement %               |        63 |        61 |        60 |        60 |        58 |        53 |        33 |       176 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       301 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       477 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       176 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       176 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       301 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       477 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       176 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       176 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        66 |        66 |        67 |        68 |       301 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       477 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |       176 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        26 |       176 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3046 |      3273 |      3310 |      3338 |      3394 |      4084 |      4175 |       298 |
|                  jbird                   |      1895 |      2046 |      2062 |      2077 |      2093 |      2161 |      2360 |       476 |
|                    Δ                     |     -1151 |     -1227 |     -1248 |     -1261 |     -1301 |     -1923 |     -1815 |       178 |
|              Improvement %               |        38 |        37 |        38 |        38 |        38 |        47 |        43 |       178 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3048 |      3275 |      3310 |      3342 |      3394 |      4086 |      4175 |       298 |
|                  jbird                   |      1897 |      2048 |      2064 |      2079 |      2096 |      2161 |      2323 |       476 |
|                    Δ                     |     -1151 |     -1227 |     -1246 |     -1263 |     -1298 |     -1925 |     -1852 |       178 |
|              Improvement %               |        38 |        37 |        38 |        38 |        38 |        47 |        44 |       178 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       328 |       306 |       302 |       300 |       295 |       245 |       240 |       298 |
|                  jbird                   |       528 |       489 |       485 |       482 |       478 |       463 |       424 |       476 |
|                    Δ                     |       200 |       183 |       183 |       182 |       183 |       218 |       184 |       178 |
|              Improvement %               |        61 |        60 |        61 |        61 |        62 |        89 |        77 |       178 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       298 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       476 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       178 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       178 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       298 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       476 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       178 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       178 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        68 |        68 |        68 |        68 |        69 |        69 |       298 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       476 |
|                    Δ                     |       -19 |       -20 |       -20 |       -20 |       -20 |       -20 |       -19 |       178 |
|              Improvement %               |        28 |        29 |        29 |        29 |        29 |        29 |        28 |       178 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       735 |       805 |       815 |       824 |       835 |       865 |       891 |      1171 |
|                  jbird                   |       460 |       500 |       504 |       509 |       516 |       545 |       566 |      1841 |
|                    Δ                     |      -275 |      -305 |      -311 |      -315 |      -319 |      -320 |      -325 |       670 |
|              Improvement %               |        37 |        38 |        38 |        38 |        38 |        37 |        36 |       670 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       736 |       807 |       816 |       825 |       836 |       866 |       896 |      1171 |
|                  jbird                   |       461 |       502 |       506 |       510 |       518 |       546 |       568 |      1841 |
|                    Δ                     |      -275 |      -305 |      -310 |      -315 |      -318 |      -320 |      -328 |       670 |
|              Improvement %               |        37 |        38 |        38 |        38 |        38 |        37 |        37 |       670 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1361 |      1242 |      1228 |      1214 |      1199 |      1157 |      1122 |      1171 |
|                  jbird                   |      2174 |      1998 |      1984 |      1967 |      1938 |      1837 |      1766 |      1841 |
|                    Δ                     |       813 |       756 |       756 |       753 |       739 |       680 |       644 |       670 |
|              Improvement %               |        60 |        61 |        62 |        62 |        62 |        59 |        57 |       670 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1171 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1841 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       670 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       670 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1171 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1841 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       670 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       670 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1171 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1841 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       670 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       670 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       749 |       817 |       826 |       835 |       845 |       868 |       897 |      1157 |
|                  jbird                   |       474 |       514 |       519 |       528 |       537 |       557 |       608 |      1797 |
|                    Δ                     |      -275 |      -303 |      -307 |      -307 |      -308 |      -311 |      -289 |       640 |
|              Improvement %               |        37 |        37 |        37 |        37 |        36 |        36 |        32 |       640 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       750 |       818 |       828 |       836 |       846 |       872 |       890 |      1157 |
|                  jbird                   |       475 |       515 |       521 |       529 |       538 |       558 |       610 |      1797 |
|                    Δ                     |      -275 |      -303 |      -307 |      -307 |      -308 |      -314 |      -280 |       640 |
|              Improvement %               |        37 |        37 |        37 |        37 |        36 |        36 |        31 |       640 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1335 |      1225 |      1210 |      1199 |      1184 |      1152 |      1114 |      1157 |
|                  jbird                   |      2111 |      1947 |      1926 |      1896 |      1862 |      1797 |      1644 |      1797 |
|                    Δ                     |       776 |       722 |       716 |       697 |       678 |       645 |       530 |       640 |
|              Improvement %               |        58 |        59 |        59 |        58 |        57 |        56 |        48 |       640 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1157 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1797 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       640 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       640 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1157 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1797 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       640 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       640 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1157 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1797 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |       640 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        24 |       640 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1483 |      1621 |      1634 |      1649 |      1669 |      1989 |      2094 |       595 |
|                  jbird                   |       925 |      1002 |      1014 |      1031 |      1047 |      1076 |      1109 |       950 |
|                    Δ                     |      -558 |      -619 |      -620 |      -618 |      -622 |      -913 |      -985 |       355 |
|              Improvement %               |        38 |        38 |        38 |        37 |        37 |        46 |        47 |       355 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1484 |      1622 |      1635 |      1651 |      1670 |      1991 |      2095 |       595 |
|                  jbird                   |       926 |      1002 |      1015 |      1031 |      1048 |      1078 |      1111 |       950 |
|                    Δ                     |      -558 |      -620 |      -620 |      -620 |      -622 |      -913 |      -984 |       355 |
|              Improvement %               |        38 |        38 |        38 |        38 |        37 |        46 |        47 |       355 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       617 |       612 |       607 |       599 |       503 |       478 |       595 |
|                  jbird                   |      1082 |       998 |       987 |       971 |       956 |       930 |       902 |       950 |
|                    Δ                     |       408 |       381 |       375 |       364 |       357 |       427 |       424 |       355 |
|              Improvement %               |        61 |        62 |        61 |        60 |        60 |        85 |        89 |       355 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        28 |        28 |        28 |       595 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       950 |
|                    Δ                     |         0 |         1 |         1 |         1 |         0 |         0 |         0 |       355 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |         0 |         0 |         0 |       355 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       595 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       950 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       355 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       355 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       595 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       950 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |       -10 |        -9 |       355 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        29 |        26 |       355 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1504 |      1635 |      1651 |      1669 |      1686 |      1740 |      1759 |       592 |
|                  jbird                   |       944 |      1027 |      1034 |      1046 |      1057 |      1087 |      1185 |       931 |
|                    Δ                     |      -560 |      -608 |      -617 |      -623 |      -629 |      -653 |      -574 |       339 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        38 |        33 |       339 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1506 |      1636 |      1653 |      1670 |      1687 |      1742 |      1761 |       592 |
|                  jbird                   |       946 |      1028 |      1036 |      1047 |      1060 |      1090 |      1189 |       931 |
|                    Δ                     |      -560 |      -608 |      -617 |      -623 |      -627 |      -652 |      -572 |       339 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        37 |        32 |       339 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       665 |       612 |       606 |       599 |       593 |       575 |       569 |       592 |
|                  jbird                   |      1059 |       974 |       967 |       957 |       946 |       920 |       844 |       931 |
|                    Δ                     |       394 |       362 |       361 |       358 |       353 |       345 |       275 |       339 |
|              Improvement %               |        59 |        59 |        60 |        60 |        60 |        60 |        48 |       339 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        28 |        28 |        28 |        28 |       592 |
|                  jbird                   |        26 |        28 |        29 |        29 |        29 |        29 |        29 |       931 |
|                    Δ                     |         0 |         1 |         2 |         1 |         1 |         1 |         1 |       339 |
|              Improvement %               |         0 |        -4 |        -7 |        -4 |        -4 |        -4 |        -4 |       339 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       592 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       931 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       339 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       339 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        34 |       592 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       931 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |        -8 |       339 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        26 |        24 |       339 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        17 |        17 |        18 |        18 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        88 |
|                    Δ                     |        -5 |        -5 |        -5 |        -6 |        -5 |        -6 |        -6 |        27 |
|              Improvement %               |        31 |        31 |        31 |        35 |        29 |        33 |        33 |        27 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        17 |        17 |        18 |        18 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        88 |
|                    Δ                     |        -5 |        -5 |        -5 |        -6 |        -5 |        -6 |        -6 |        27 |
|              Improvement %               |        31 |        31 |        31 |        35 |        29 |        33 |        33 |        27 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        63 |        62 |        61 |        60 |        60 |        57 |        57 |        61 |
|                  jbird                   |        93 |        90 |        89 |        88 |        87 |        85 |        85 |        88 |
|                    Δ                     |        30 |        28 |        28 |        28 |        27 |        28 |        28 |        27 |
|              Improvement %               |        48 |        45 |        46 |        47 |        45 |        49 |        49 |        27 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        42 |        42 |        42 |        42 |        42 |        42 |        61 |
|                  jbird                   |        28 |        51 |        52 |        52 |        52 |        52 |        52 |        88 |
|                    Δ                     |        -7 |         9 |        10 |        10 |        10 |        10 |        10 |        27 |
|              Improvement %               |        20 |       -21 |       -24 |       -24 |       -24 |       -24 |       -24 |        27 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        61 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        88 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        27 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        27 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       332 |       333 |       333 |       333 |       335 |       337 |       337 |        61 |
|                  jbird                   |       247 |       248 |       248 |       248 |       248 |       257 |       257 |        88 |
|                    Δ                     |       -85 |       -85 |       -85 |       -85 |       -87 |       -80 |       -80 |        27 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        24 |        24 |        27 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        17 |        17 |        17 |        17 |        19 |        19 |        60 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        86 |
|                    Δ                     |        -5 |        -6 |        -6 |        -5 |        -5 |        -7 |        -7 |        26 |
|              Improvement %               |        31 |        35 |        35 |        29 |        29 |        37 |        37 |        26 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        17 |        17 |        17 |        17 |        19 |        19 |        60 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        86 |
|                    Δ                     |        -5 |        -6 |        -6 |        -5 |        -5 |        -7 |        -7 |        26 |
|              Improvement %               |        31 |        35 |        35 |        29 |        29 |        37 |        37 |        26 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        62 |        60 |        60 |        60 |        59 |        52 |        52 |        60 |
|                  jbird                   |        91 |        88 |        87 |        87 |        86 |        84 |        84 |        86 |
|                    Δ                     |        29 |        28 |        27 |        27 |        27 |        32 |        32 |        26 |
|              Improvement %               |        47 |        47 |        45 |        45 |        46 |        62 |        62 |        26 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        40 |        40 |        40 |        40 |        40 |        40 |        60 |
|                  jbird                   |        34 |        50 |        50 |        51 |        51 |        52 |        52 |        86 |
|                    Δ                     |        -2 |        10 |        10 |        11 |        11 |        12 |        12 |        26 |
|              Improvement %               |         6 |       -25 |       -25 |       -28 |       -28 |       -30 |       -30 |        26 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        60 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        86 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        26 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        26 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       338 |       338 |       338 |       338 |       339 |       344 |       344 |        60 |
|                  jbird                   |       252 |       252 |       252 |       252 |       252 |       261 |       261 |        86 |
|                    Δ                     |       -86 |       -86 |       -86 |       -86 |       -87 |       -83 |       -83 |        26 |
|              Improvement %               |        25 |        25 |        25 |        25 |        26 |        24 |        24 |        26 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       184 |       201 |       207 |       210 |       213 |       230 |       259 |      4097 |
|                  jbird                   |       115 |       124 |       130 |       132 |       135 |       147 |       204 |      6055 |
|                    Δ                     |       -69 |       -77 |       -77 |       -78 |       -78 |       -83 |       -55 |      1958 |
|              Improvement %               |        38 |        38 |        37 |        37 |        37 |        36 |        21 |      1958 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       186 |       202 |       209 |       211 |       215 |       231 |       261 |      4097 |
|                  jbird                   |       116 |       126 |       131 |       134 |       136 |       149 |       203 |      6055 |
|                    Δ                     |       -70 |       -76 |       -78 |       -77 |       -79 |       -82 |       -58 |      1958 |
|              Improvement %               |        38 |        38 |        37 |        36 |        37 |        35 |        22 |      1958 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5422 |      4983 |      4831 |      4771 |      4695 |      4355 |      3868 |      4097 |
|                  jbird                   |      8696 |      8043 |      7703 |      7559 |      7415 |      6787 |      4893 |      6055 |
|                    Δ                     |      3274 |      3060 |      2872 |      2788 |      2720 |      2432 |      1025 |      1958 |
|              Improvement %               |        60 |        61 |        59 |        58 |        58 |        56 |        26 |      1958 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4097 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6055 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1958 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |      1958 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4097 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6055 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1958 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1958 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4159 |      4162 |      4162 |      4162 |      4162 |      4227 |      4239 |      4097 |
|                  jbird                   |      2988 |      2990 |      2990 |      2990 |      2990 |      3062 |      3143 |      6055 |
|                    Δ                     |     -1171 |     -1172 |     -1172 |     -1172 |     -1172 |     -1165 |     -1096 |      1958 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        26 |      1958 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       186 |       202 |       208 |       211 |       214 |       228 |       247 |      4090 |
|                  jbird                   |       117 |       125 |       131 |       133 |       136 |       147 |       202 |      6031 |
|                    Δ                     |       -69 |       -77 |       -77 |       -78 |       -78 |       -81 |       -45 |      1941 |
|              Improvement %               |        37 |        38 |        37 |        37 |        36 |        36 |        18 |      1941 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       187 |       203 |       209 |       212 |       215 |       229 |       256 |      4090 |
|                  jbird                   |       118 |       127 |       132 |       134 |       137 |       149 |       204 |      6031 |
|                    Δ                     |       -69 |       -76 |       -77 |       -78 |       -78 |       -80 |       -52 |      1941 |
|              Improvement %               |        37 |        37 |        37 |        37 |        36 |        35 |        20 |      1941 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5375 |      4963 |      4815 |      4751 |      4687 |      4395 |      4041 |      4090 |
|                  jbird                   |      8568 |      7995 |      7643 |      7531 |      7383 |      6795 |      4950 |      6031 |
|                    Δ                     |      3193 |      3032 |      2828 |      2780 |      2696 |      2400 |       909 |      1941 |
|              Improvement %               |        59 |        61 |        59 |        59 |        58 |        55 |        22 |      1941 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4090 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6031 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1941 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |      1941 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4090 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6031 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1941 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1941 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4227 |      4231 |      4231 |      4231 |      4231 |      4293 |      4315 |      4090 |
|                  jbird                   |      3022 |      3023 |      3023 |      3023 |      3025 |      3095 |      3166 |      6031 |
|                    Δ                     |     -1205 |     -1208 |     -1208 |     -1208 |     -1206 |     -1198 |     -1149 |      1941 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        28 |        27 |      1941 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        55 |        61 |        63 |        64 |        65 |        74 |       105 |     10345 |
|                  jbird                   |        57 |        58 |        62 |        64 |        65 |        75 |        94 |     10773 |
|                    Δ                     |         2 |        -3 |        -1 |         0 |         0 |         1 |       -11 |       428 |
|              Improvement %               |        -4 |         5 |         2 |         0 |         0 |        -1 |        10 |       428 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        56 |        62 |        65 |        65 |        66 |        76 |        93 |     10345 |
|                  jbird                   |        58 |        59 |        64 |        65 |        66 |        77 |        98 |     10773 |
|                    Δ                     |         2 |        -3 |        -1 |         0 |         0 |         1 |         5 |       428 |
|              Improvement %               |        -4 |         5 |         2 |         0 |         0 |        -1 |        -5 |       428 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        16 |        16 |        16 |        15 |        14 |        10 |     10345 |
|                  jbird                   |        18 |        17 |        16 |        16 |        15 |        13 |        11 |     10773 |
|                    Δ                     |         0 |         1 |         0 |         0 |         0 |        -1 |         1 |       428 |
|              Improvement %               |         0 |         6 |         0 |         0 |         0 |        -7 |        10 |       428 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10345 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10773 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       428 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       428 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     10345 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     10773 |
|                    Δ                     |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |       428 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       428 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1612 |      1613 |      1613 |      1613 |      1613 |      1646 |      1661 |     10345 |
|                  jbird                   |      1513 |      1513 |      1513 |      1513 |      1513 |      1542 |      1567 |     10773 |
|                    Δ                     |       -99 |      -100 |      -100 |      -100 |      -100 |      -104 |       -94 |       428 |
|              Improvement %               |         6 |         6 |         6 |         6 |         6 |         6 |         6 |       428 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        90 |        98 |       102 |       103 |       105 |       118 |       139 |      7337 |
|                  jbird                   |        87 |        93 |        97 |        98 |       100 |       111 |       177 |      7841 |
|                    Δ                     |        -3 |        -5 |        -5 |        -5 |        -5 |        -7 |        38 |       504 |
|              Improvement %               |         3 |         5 |         5 |         5 |         5 |         6 |       -27 |       504 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        91 |       100 |       103 |       105 |       107 |       118 |       142 |      7337 |
|                  jbird                   |        88 |        95 |        99 |       100 |       102 |       113 |       178 |      7841 |
|                    Δ                     |        -3 |        -5 |        -4 |        -5 |        -5 |        -5 |        36 |       504 |
|              Improvement %               |         3 |         5 |         4 |         5 |         5 |         4 |       -25 |       504 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     11111 |     10159 |      9831 |      9703 |      9511 |      8447 |      7177 |      7337 |
|                  jbird                   |     11527 |     10735 |     10271 |     10175 |      9967 |      9023 |      5660 |      7841 |
|                    Δ                     |       416 |       576 |       440 |       472 |       456 |       576 |     -1517 |       504 |
|              Improvement %               |         4 |         6 |         4 |         5 |         5 |         7 |       -21 |       504 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7337 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7841 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       504 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       504 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      7337 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7841 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       504 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       504 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2662 |      2662 |      2662 |      2664 |      2664 |      2685 |      2826 |      7337 |
|                  jbird                   |      2592 |      2593 |      2593 |      2593 |      2593 |      2603 |      2830 |      7841 |
|                    Δ                     |       -70 |       -69 |       -69 |       -71 |       -71 |       -82 |         4 |       504 |
|              Improvement %               |         3 |         3 |         3 |         3 |         3 |         3 |         0 |       504 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        85 |        89 |        95 |        96 |        98 |       110 |       201 |      7863 |
|                  jbird                   |        56 |        60 |        63 |        64 |        65 |        73 |       133 |     10685 |
|                    Δ                     |       -29 |       -29 |       -32 |       -32 |       -33 |       -37 |       -68 |      2822 |
|              Improvement %               |        34 |        33 |        34 |        33 |        34 |        34 |        34 |      2822 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        86 |        90 |        97 |        97 |        99 |       112 |       203 |      7863 |
|                  jbird                   |        57 |        62 |        65 |        65 |        66 |        75 |       137 |     10685 |
|                    Δ                     |       -29 |       -28 |       -32 |       -32 |       -33 |       -37 |       -66 |      2822 |
|              Improvement %               |        34 |        31 |        33 |        33 |        33 |        33 |        33 |      2822 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        11 |        10 |        10 |         9 |         5 |      7863 |
|                  jbird                   |        18 |        17 |        16 |        16 |        15 |        14 |         8 |     10685 |
|                    Δ                     |         6 |         6 |         5 |         6 |         5 |         5 |         3 |      2822 |
|              Improvement %               |        50 |        55 |        45 |        60 |        50 |        56 |        60 |      2822 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7863 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10685 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2822 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2822 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      7863 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10685 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      2822 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      2822 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1802 |      1803 |      1803 |      1803 |      1803 |      1818 |      1892 |      7863 |
|                  jbird                   |      1588 |      1589 |      1589 |      1589 |      1589 |      1594 |      1713 |     10685 |
|                    Δ                     |      -214 |      -214 |      -214 |      -214 |      -214 |      -224 |      -179 |      2822 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |         9 |      2822 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       100 |       113 |       119 |       122 |       124 |       136 |       157 |      6477 |
|                  jbird                   |        28 |        29 |        31 |        31 |        32 |        38 |        75 |     15448 |
|                    Δ                     |       -72 |       -84 |       -88 |       -91 |       -92 |       -98 |       -82 |      8971 |
|              Improvement %               |        72 |        74 |        74 |        75 |        74 |        72 |        52 |      8971 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       101 |       114 |       121 |       123 |       126 |       137 |       153 |      6477 |
|                  jbird                   |        29 |        30 |        33 |        33 |        33 |        41 |        67 |     15448 |
|                    Δ                     |       -72 |       -84 |       -88 |       -90 |       -93 |       -96 |       -86 |      8971 |
|              Improvement %               |        71 |        74 |        73 |        73 |        74 |        70 |        56 |      8971 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10021 |      8863 |      8399 |      8215 |      8051 |      7383 |      6378 |      6477 |
|                  jbird                   |     36036 |     34783 |     31967 |     31839 |     31503 |     26063 |     13393 |     15448 |
|                    Δ                     |     26015 |     25920 |     23568 |     23624 |     23452 |     18680 |      7015 |      8971 |
|              Improvement %               |       260 |       292 |       281 |       288 |       291 |       253 |       110 |      8971 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      6477 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |     15448 |
|                    Δ                     |         0 |         0 |         1 |         1 |         1 |         1 |         1 |      8971 |
|              Improvement %               |         0 |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |      8971 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      6477 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15448 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      8971 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      8971 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2103 |      2105 |      2105 |      2105 |      2105 |      2120 |      2143 |      6477 |
|                  jbird                   |       877 |       878 |       878 |       878 |       878 |       883 |       936 |     15448 |
|                    Δ                     |     -1226 |     -1227 |     -1227 |     -1227 |     -1227 |     -1237 |     -1207 |      8971 |
|              Improvement %               |        58 |        58 |        58 |        58 |        58 |        58 |        56 |      8971 |

<p>
</details>

