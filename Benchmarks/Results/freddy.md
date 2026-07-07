
## Comparing results between 'freddy' and 'jbird'

```
Host 'Varuns-MacBook-Pro.local' with 16 'arm64' processors with 128 GB memory, running:
Darwin Kernel Version 25.5.0: Mon Apr 27 20:41:15 PDT 2026; root:xnu-12377.121.6~2/RELEASE_ARM64_T6041
```
## JBirdBenchmark

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2780 |      3023 |      3041 |      3058 |      3076 |      3138 |      3182 |       325 |
|                  jbird                   |      1797 |      1951 |      1966 |      1977 |      1986 |      2025 |      2052 |       500 |
|                    Δ                     |      -983 |     -1072 |     -1075 |     -1081 |     -1090 |     -1113 |     -1130 |       175 |
|              Improvement %               |        35 |        35 |        35 |        35 |        35 |        35 |        36 |       175 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2782 |      3027 |      3043 |      3060 |      3078 |      3140 |      3185 |       325 |
|                  jbird                   |      1798 |      1953 |      1968 |      1979 |      1990 |      2026 |      2053 |       500 |
|                    Δ                     |      -984 |     -1074 |     -1075 |     -1081 |     -1088 |     -1114 |     -1132 |       175 |
|              Improvement %               |        35 |        35 |        35 |        35 |        35 |        35 |        36 |       175 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       360 |       331 |       329 |       327 |       325 |       319 |       314 |       325 |
|                  jbird                   |       557 |       513 |       509 |       506 |       504 |       493 |       487 |       500 |
|                    Δ                     |       197 |       182 |       180 |       179 |       179 |       174 |       173 |       175 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       175 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       325 |
|                  jbird                   |        35 |        38 |        38 |        38 |        38 |        38 |        38 |       500 |
|                    Δ                     |         2 |         3 |         3 |         3 |         3 |         3 |         3 |       175 |
|              Improvement %               |        -6 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       175 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       325 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       500 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       175 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       175 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        63 |        63 |        63 |        63 |        63 |        63 |        64 |       325 |
|                  jbird                   |        46 |        46 |        46 |        46 |        46 |        46 |        47 |       500 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       175 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       175 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2831 |      3060 |      3078 |      3099 |      3117 |      3181 |      3269 |       321 |
|                  jbird                   |      1798 |      1956 |      1971 |      1990 |      2004 |      2042 |      2070 |       498 |
|                    Δ                     |     -1033 |     -1104 |     -1107 |     -1109 |     -1113 |     -1139 |     -1199 |       177 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        36 |        37 |       177 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2832 |      3062 |      3082 |      3101 |      3121 |      3183 |      3276 |       321 |
|                  jbird                   |      1800 |      1958 |      1972 |      1992 |      2007 |      2043 |      2076 |       498 |
|                    Δ                     |     -1032 |     -1104 |     -1110 |     -1109 |     -1114 |     -1140 |     -1200 |       177 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        36 |        37 |       177 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       353 |       327 |       325 |       323 |       321 |       315 |       306 |       321 |
|                  jbird                   |       556 |       511 |       507 |       503 |       499 |       490 |       483 |       498 |
|                    Δ                     |       203 |       184 |       182 |       180 |       178 |       175 |       177 |       177 |
|              Improvement %               |        58 |        56 |        56 |        56 |        55 |        56 |        58 |       177 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       321 |
|                  jbird                   |        36 |        38 |        38 |        38 |        38 |        38 |        38 |       498 |
|                    Δ                     |         3 |         3 |         3 |         3 |         3 |         3 |         3 |       177 |
|              Improvement %               |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       177 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       321 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       498 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       177 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       177 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        64 |        64 |        64 |        64 |        64 |        65 |        65 |       321 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        47 |        48 |       498 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -18 |       -17 |       177 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        28 |        26 |       177 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       683 |       746 |       754 |       760 |       767 |       788 |       812 |      1260 |
|                  jbird                   |       440 |       481 |       486 |       492 |       509 |       527 |       542 |      1898 |
|                    Δ                     |      -243 |      -265 |      -268 |      -268 |      -258 |      -261 |      -270 |       638 |
|              Improvement %               |        36 |        36 |        36 |        35 |        34 |        33 |        33 |       638 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       685 |       748 |       755 |       763 |       770 |       788 |       815 |      1260 |
|                  jbird                   |       441 |       483 |       488 |       494 |       511 |       529 |       544 |      1898 |
|                    Δ                     |      -244 |      -265 |      -267 |      -269 |      -259 |      -259 |      -271 |       638 |
|              Improvement %               |        36 |        35 |        35 |        35 |        34 |        33 |        33 |       638 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1464 |      1341 |      1328 |      1316 |      1303 |      1270 |      1231 |      1260 |
|                  jbird                   |      2273 |      2079 |      2059 |      2033 |      1966 |      1898 |      1845 |      1898 |
|                    Δ                     |       809 |       738 |       731 |       717 |       663 |       628 |       614 |       638 |
|              Improvement %               |        55 |        55 |        55 |        54 |        51 |        49 |        50 |       638 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1260 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1898 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       638 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       638 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1260 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1898 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       638 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       638 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1260 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |      1898 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |        -4 |       638 |
|              Improvement %               |        31 |        31 |        31 |        31 |        31 |        25 |        25 |       638 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       700 |       764 |       771 |       779 |       787 |       806 |       821 |      1232 |
|                  jbird                   |       444 |       488 |       493 |       498 |       505 |       520 |       588 |      1882 |
|                    Δ                     |      -256 |      -276 |      -278 |      -281 |      -282 |      -286 |      -233 |       650 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        35 |        28 |       650 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       701 |       765 |       773 |       781 |       790 |       809 |       825 |      1232 |
|                  jbird                   |       446 |       490 |       495 |       500 |       507 |       522 |       575 |      1882 |
|                    Δ                     |      -255 |      -275 |      -278 |      -281 |      -283 |      -287 |      -250 |       650 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        35 |        30 |       650 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1429 |      1310 |      1297 |      1283 |      1270 |      1241 |      1218 |      1232 |
|                  jbird                   |      2250 |      2051 |      2030 |      2008 |      1981 |      1925 |      1702 |      1882 |
|                    Δ                     |       821 |       741 |       733 |       725 |       711 |       684 |       484 |       650 |
|              Improvement %               |        57 |        57 |        57 |        57 |        56 |        55 |        40 |       650 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1232 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1882 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       650 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       650 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1232 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1882 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       650 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       650 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1232 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1882 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       650 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       650 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1389 |      1513 |      1522 |      1532 |      1546 |      1594 |      1678 |       640 |
|                  jbird                   |       864 |       954 |       961 |       970 |       980 |      1007 |      1102 |       999 |
|                    Δ                     |      -525 |      -559 |      -561 |      -562 |      -566 |      -587 |      -576 |       359 |
|              Improvement %               |        38 |        37 |        37 |        37 |        37 |        37 |        34 |       359 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1390 |      1516 |      1524 |      1535 |      1548 |      1595 |      1679 |       640 |
|                  jbird                   |       866 |       955 |       963 |       972 |       983 |      1008 |      1117 |       999 |
|                    Δ                     |      -524 |      -561 |      -561 |      -563 |      -565 |      -587 |      -562 |       359 |
|              Improvement %               |        38 |        37 |        37 |        37 |        36 |        37 |        33 |       359 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       720 |       661 |       657 |       653 |       647 |       628 |       596 |       640 |
|                  jbird                   |      1157 |      1049 |      1041 |      1032 |      1021 |       994 |       907 |       999 |
|                    Δ                     |       437 |       388 |       384 |       379 |       374 |       366 |       311 |       359 |
|              Improvement %               |        61 |        59 |        58 |        58 |        58 |        58 |        52 |       359 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        34 |        34 |        34 |        34 |        34 |        34 |       640 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       999 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       359 |
|              Improvement %               |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       359 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       640 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       999 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       359 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       359 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       640 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       999 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       359 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        27 |       359 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1398 |      1528 |      1537 |      1546 |      1558 |      1605 |      1656 |       634 |
|                  jbird                   |       888 |       974 |       982 |       990 |      1001 |      1040 |      1122 |       979 |
|                    Δ                     |      -510 |      -554 |      -555 |      -556 |      -557 |      -565 |      -534 |       345 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        35 |        32 |       345 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1399 |      1530 |      1539 |      1548 |      1560 |      1607 |      1663 |       634 |
|                  jbird                   |       890 |       976 |       984 |       993 |      1004 |      1042 |      1124 |       979 |
|                    Δ                     |      -509 |      -554 |      -555 |      -555 |      -556 |      -565 |      -539 |       345 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        35 |        32 |       345 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       715 |       655 |       651 |       647 |       642 |       623 |       604 |       634 |
|                  jbird                   |      1126 |      1027 |      1019 |      1010 |       999 |       961 |       891 |       979 |
|                    Δ                     |       411 |       372 |       368 |       363 |       357 |       338 |       287 |       345 |
|              Improvement %               |        57 |        57 |        57 |        56 |        56 |        54 |        48 |       345 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        34 |        34 |        34 |        34 |        34 |        34 |       634 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       979 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       345 |
|              Improvement %               |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       345 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       634 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       979 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       345 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       345 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       634 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       979 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       345 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        27 |       345 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        15 |        15 |        15 |        15 |        16 |        16 |        66 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        98 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        32 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        31 |        31 |        32 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        15 |        15 |        15 |        15 |        16 |        16 |        66 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        98 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        32 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        31 |        31 |        32 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        68 |        65 |        65 |        65 |        65 |        64 |        64 |        66 |
|                  jbird                   |       103 |        99 |        98 |        98 |        97 |        94 |        94 |        98 |
|                    Δ                     |        35 |        34 |        33 |        33 |        32 |        30 |        30 |        32 |
|              Improvement %               |        51 |        52 |        51 |        51 |        49 |        47 |        47 |        32 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        51 |        51 |        51 |        52 |        52 |        52 |        66 |
|                  jbird                   |        35 |        58 |        58 |        58 |        58 |        58 |        58 |        98 |
|                    Δ                     |        -9 |         7 |         7 |         7 |         6 |         6 |         6 |        32 |
|              Improvement %               |        20 |       -14 |       -14 |       -14 |       -12 |       -12 |       -12 |        32 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        66 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        98 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        32 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        32 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       317 |       317 |       317 |       318 |       318 |       319 |       319 |        66 |
|                  jbird                   |       234 |       235 |       235 |       235 |       235 |       243 |       243 |        98 |
|                    Δ                     |       -83 |       -82 |       -82 |       -83 |       -83 |       -76 |       -76 |        32 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        24 |        24 |        32 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        15 |        15 |        15 |        16 |        16 |        16 |        65 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        11 |        11 |       100 |
|                    Δ                     |        -6 |        -5 |        -5 |        -5 |        -6 |        -5 |        -5 |        35 |
|              Improvement %               |        40 |        33 |        33 |        33 |        38 |        31 |        31 |        35 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        15 |        15 |        15 |        16 |        16 |        16 |        65 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        11 |        11 |       100 |
|                    Δ                     |        -6 |        -5 |        -5 |        -5 |        -6 |        -5 |        -5 |        35 |
|              Improvement %               |        40 |        33 |        33 |        33 |        38 |        31 |        31 |        35 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        66 |        65 |        65 |        64 |        64 |        64 |        65 |
|                  jbird                   |       106 |       101 |       100 |        99 |        95 |        93 |        93 |       100 |
|                    Δ                     |        39 |        35 |        35 |        34 |        31 |        29 |        29 |        35 |
|              Improvement %               |        58 |        53 |        54 |        52 |        48 |        45 |        45 |        35 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        43 |        49 |        49 |        50 |        50 |        50 |        50 |        65 |
|                  jbird                   |        35 |        60 |        61 |        64 |        64 |        64 |        64 |       100 |
|                    Δ                     |        -8 |        11 |        12 |        14 |        14 |        14 |        14 |        35 |
|              Improvement %               |        19 |       -22 |       -24 |       -28 |       -28 |       -28 |       -28 |        35 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        65 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       100 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        35 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        35 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       322 |       323 |       323 |       323 |       323 |       325 |       325 |        65 |
|                  jbird                   |       234 |       234 |       234 |       235 |       238 |       243 |       247 |       100 |
|                    Δ                     |       -88 |       -89 |       -89 |       -88 |       -85 |       -82 |       -78 |        35 |
|              Improvement %               |        27 |        28 |        28 |        27 |        26 |        25 |        24 |        35 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       173 |       187 |       193 |       197 |       200 |       213 |       239 |      4343 |
|                  jbird                   |       110 |       118 |       124 |       125 |       127 |       137 |       158 |      6307 |
|                    Δ                     |       -63 |       -69 |       -69 |       -72 |       -73 |       -76 |       -81 |      1964 |
|              Improvement %               |        36 |        37 |        36 |        37 |        36 |        36 |        34 |      1964 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       175 |       188 |       195 |       199 |       202 |       215 |       241 |      4343 |
|                  jbird                   |       112 |       120 |       126 |       127 |       129 |       140 |       166 |      6307 |
|                    Δ                     |       -63 |       -68 |       -69 |       -72 |       -73 |       -75 |       -75 |      1964 |
|              Improvement %               |        36 |        36 |        35 |        36 |        36 |        35 |        31 |      1964 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5773 |      5359 |      5179 |      5079 |      5007 |      4707 |      4183 |      4343 |
|                  jbird                   |      9050 |      8463 |      8075 |      8003 |      7895 |      7291 |      6316 |      6307 |
|                    Δ                     |      3277 |      3104 |      2896 |      2924 |      2888 |      2584 |      2133 |      1964 |
|              Improvement %               |        57 |        58 |        56 |        58 |        58 |        55 |        51 |      1964 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      4343 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6307 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1964 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1964 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4343 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6307 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1964 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1964 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3958 |      3961 |      3961 |      3961 |      3963 |      3977 |      4177 |      4343 |
|                  jbird                   |      2864 |      2865 |      2865 |      2865 |      2867 |      2888 |      3004 |      6307 |
|                    Δ                     |     -1094 |     -1096 |     -1096 |     -1096 |     -1096 |     -1089 |     -1173 |      1964 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        27 |        28 |      1964 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       173 |       187 |       194 |       197 |       200 |       215 |       235 |      4329 |
|                  jbird                   |       112 |       120 |       126 |       128 |       130 |       141 |       171 |      6211 |
|                    Δ                     |       -61 |       -67 |       -68 |       -69 |       -70 |       -74 |       -64 |      1882 |
|              Improvement %               |        35 |        36 |        35 |        35 |        35 |        34 |        27 |      1882 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       175 |       189 |       196 |       199 |       202 |       217 |       244 |      4329 |
|                  jbird                   |       113 |       122 |       127 |       130 |       131 |       143 |       180 |      6211 |
|                    Δ                     |       -62 |       -67 |       -69 |       -69 |       -71 |       -74 |       -64 |      1882 |
|              Improvement %               |        35 |        35 |        35 |        35 |        35 |        34 |        26 |      1882 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5779 |      5339 |      5155 |      5071 |      4999 |      4651 |      4260 |      4329 |
|                  jbird                   |      8925 |      8311 |      7963 |      7815 |      7723 |      7083 |      5857 |      6211 |
|                    Δ                     |      3146 |      2972 |      2808 |      2744 |      2724 |      2432 |      1597 |      1882 |
|              Improvement %               |        54 |        56 |        54 |        54 |        54 |        52 |        37 |      1882 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      4329 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6211 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1882 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1882 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4329 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6211 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1882 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1882 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4024 |      4026 |      4026 |      4026 |      4030 |      4043 |      4236 |      4329 |
|                  jbird                   |      2907 |      2908 |      2908 |      2908 |      2910 |      2931 |      3050 |      6211 |
|                    Δ                     |     -1117 |     -1118 |     -1118 |     -1118 |     -1120 |     -1112 |     -1186 |      1882 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      1882 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        88 |        99 |       102 |       107 |       111 |       119 |       134 |      7298 |
|                  jbird                   |       114 |       125 |       128 |       131 |       133 |       143 |       189 |      6239 |
|                    Δ                     |        26 |        26 |        26 |        24 |        22 |        24 |        55 |     -1059 |
|              Improvement %               |       -30 |       -26 |       -25 |       -22 |       -20 |       -20 |       -41 |     -1059 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        90 |       101 |       104 |       109 |       113 |       121 |       136 |      7298 |
|                  jbird                   |       116 |       127 |       130 |       132 |       135 |       146 |       194 |      6239 |
|                    Δ                     |        26 |        26 |        26 |        23 |        22 |        25 |        58 |     -1059 |
|              Improvement %               |       -29 |       -26 |       -25 |       -21 |       -19 |       -21 |       -43 |     -1059 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     11305 |     10111 |      9775 |      9327 |      9015 |      8431 |      7456 |      7298 |
|                  jbird                   |      8762 |      7983 |      7807 |      7655 |      7503 |      6995 |      5289 |      6239 |
|                    Δ                     |     -2543 |     -2128 |     -1968 |     -1672 |     -1512 |     -1436 |     -2167 |     -1059 |
|              Improvement %               |       -22 |       -21 |       -20 |       -18 |       -17 |       -17 |       -29 |     -1059 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      7298 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      6239 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1059 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1059 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        15 |        15 |        15 |        15 |        15 |        15 |      7298 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      6239 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     -1059 |
|              Improvement %               |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |     -1059 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2719 |      2720 |      2720 |      2720 |      2720 |      2736 |      3038 |      7298 |
|                  jbird                   |      3806 |      3807 |      3807 |      3807 |      3807 |      3824 |      4303 |      6239 |
|                    Δ                     |      1087 |      1087 |      1087 |      1087 |      1087 |      1088 |      1265 |     -1059 |
|              Improvement %               |       -40 |       -40 |       -40 |       -40 |       -40 |       -40 |       -42 |     -1059 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      6695 |      7102 |      7152 |      7180 |      7217 |      7287 |      7304 |       140 |
|                  jbird                   |      5163 |      5464 |      5546 |      5591 |      5632 |      5734 |      5793 |       178 |
|                    Δ                     |     -1532 |     -1638 |     -1606 |     -1589 |     -1585 |     -1553 |     -1511 |        38 |
|              Improvement %               |        23 |        23 |        22 |        22 |        22 |        21 |        21 |        38 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      6691 |      7107 |      7152 |      7184 |      7221 |      7291 |      7307 |       140 |
|                  jbird                   |      5157 |      5464 |      5550 |      5595 |      5636 |      5743 |      5798 |       178 |
|                    Δ                     |     -1534 |     -1643 |     -1602 |     -1589 |     -1585 |     -1548 |     -1509 |        38 |
|              Improvement %               |        23 |        23 |        22 |        22 |        22 |        21 |        21 |        38 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       149 |       141 |       140 |       139 |       139 |       137 |       137 |       140 |
|                  jbird                   |       194 |       183 |       180 |       179 |       178 |       174 |       173 |       178 |
|                    Δ                     |        45 |        42 |        40 |        40 |        39 |        37 |        36 |        38 |
|              Improvement %               |        30 |        30 |        29 |        29 |        28 |        27 |        26 |        38 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        39 |        39 |        39 |        39 |        39 |        39 |       140 |
|                  jbird                   |        33 |        51 |        52 |        52 |        52 |        52 |        52 |       178 |
|                    Δ                     |        -3 |        12 |        13 |        13 |        13 |        13 |        13 |        38 |
|              Improvement %               |         8 |       -31 |       -33 |       -33 |       -33 |       -33 |       -33 |        38 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       140 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       178 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        38 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        38 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       179 |       179 |       179 |       179 |       179 |       180 |       180 |       140 |
|                  jbird                   |       146 |       146 |       146 |       147 |       147 |       147 |       151 |       178 |
|                    Δ                     |       -33 |       -33 |       -33 |       -32 |       -32 |       -33 |       -29 |        38 |
|              Improvement %               |        18 |        18 |        18 |        18 |        18 |        18 |        16 |        38 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        51 |        54 |        59 |        59 |        60 |        68 |        86 |     10910 |
|                  jbird                   |        47 |        48 |        53 |        53 |        53 |        61 |        76 |     12033 |
|                    Δ                     |        -4 |        -6 |        -6 |        -6 |        -7 |        -7 |       -10 |      1123 |
|              Improvement %               |         8 |        11 |        10 |        10 |        12 |        10 |        12 |      1123 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        52 |        56 |        60 |        61 |        61 |        71 |        89 |     10910 |
|                  jbird                   |        48 |        49 |        54 |        55 |        55 |        63 |        81 |     12033 |
|                    Δ                     |        -4 |        -7 |        -6 |        -6 |        -6 |        -8 |        -8 |      1123 |
|              Improvement %               |         8 |        12 |        10 |        10 |        10 |        11 |         9 |      1123 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        20 |        18 |        17 |        17 |        17 |        15 |        12 |     10910 |
|                  jbird                   |        21 |        21 |        19 |        19 |        19 |        16 |        13 |     12033 |
|                    Δ                     |         1 |         3 |         2 |         2 |         2 |         1 |         1 |      1123 |
|              Improvement %               |         5 |        17 |        12 |        12 |        12 |         7 |         8 |      1123 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     10910 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     12033 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1123 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1123 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     10910 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     12033 |
|                    Δ                     |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      1123 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      1123 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1528 |      1529 |      1529 |      1529 |      1529 |      1541 |      1633 |     10910 |
|                  jbird                   |      1303 |      1304 |      1304 |      1304 |      1304 |      1321 |      1373 |     12033 |
|                    Δ                     |      -225 |      -225 |      -225 |      -225 |      -225 |      -220 |      -260 |      1123 |
|              Improvement %               |        15 |        15 |        15 |        15 |        15 |        14 |        16 |      1123 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        86 |        95 |        96 |        97 |        99 |       109 |       148 |      7609 |
|                  jbird                   |        87 |        95 |        98 |        99 |       101 |       110 |       138 |      7755 |
|                    Δ                     |         1 |         0 |         2 |         2 |         2 |         1 |       -10 |       146 |
|              Improvement %               |        -1 |         0 |        -2 |        -2 |        -2 |        -1 |         7 |       146 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        87 |        96 |        98 |        99 |       101 |       111 |       143 |      7609 |
|                  jbird                   |        88 |        96 |        99 |       101 |       103 |       112 |       140 |      7755 |
|                    Δ                     |         1 |         0 |         1 |         2 |         2 |         1 |        -3 |       146 |
|              Improvement %               |        -1 |         0 |        -1 |        -2 |        -2 |        -1 |         2 |       146 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        10 |        10 |        10 |         9 |         7 |      7609 |
|                  jbird                   |        12 |        11 |        10 |        10 |        10 |         9 |         7 |      7755 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       146 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       146 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      7609 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      7755 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       146 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       146 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      7609 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7755 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       146 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       146 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2570 |      2570 |      2570 |      2570 |      2572 |      2587 |      2774 |      7609 |
|                  jbird                   |      2629 |      2630 |      2630 |      2630 |      2632 |      2644 |      2870 |      7755 |
|                    Δ                     |        59 |        60 |        60 |        60 |        60 |        57 |        96 |       146 |
|              Improvement %               |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -3 |       146 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        69 |        74 |        75 |        75 |        85 |       100 |      9377 |
|                  jbird                   |        55 |        61 |        64 |        65 |        66 |        74 |       118 |     10554 |
|                    Δ                     |       -11 |        -8 |       -10 |       -10 |        -9 |       -11 |        18 |      1177 |
|              Improvement %               |        17 |        12 |        14 |        13 |        12 |        13 |       -18 |      1177 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        71 |        75 |        76 |        78 |        87 |       104 |      9377 |
|                  jbird                   |        57 |        63 |        65 |        66 |        67 |        76 |       120 |     10554 |
|                    Δ                     |       -10 |        -8 |       -10 |       -10 |       -11 |       -11 |        16 |      1177 |
|              Improvement %               |        15 |        11 |        13 |        13 |        14 |        13 |       -15 |      1177 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        14 |        14 |        13 |        13 |        12 |        10 |      9377 |
|                  jbird                   |        18 |        16 |        16 |        16 |        15 |        14 |         8 |     10554 |
|                    Δ                     |         3 |         2 |         2 |         3 |         2 |         2 |        -2 |      1177 |
|              Improvement %               |        20 |        14 |        14 |        23 |        15 |        17 |       -20 |      1177 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      9377 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     10554 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1177 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1177 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      9377 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10554 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1177 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      1177 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1587 |      1587 |      1588 |      1588 |      1588 |      1594 |      1689 |      9377 |
|                  jbird                   |      1593 |      1594 |      1594 |      1594 |      1594 |      1601 |      1729 |     10554 |
|                    Δ                     |         6 |         7 |         6 |         6 |         6 |         7 |        40 |      1177 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |        -2 |      1177 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        99 |       110 |       115 |       118 |       121 |       130 |       149 |      6632 |
|                  jbird                   |        26 |        27 |        30 |        30 |        30 |        36 |        58 |     15822 |
|                    Δ                     |       -73 |       -83 |       -85 |       -88 |       -91 |       -94 |       -91 |      9190 |
|              Improvement %               |        74 |        75 |        74 |        75 |        75 |        72 |        61 |      9190 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       100 |       111 |       117 |       120 |       123 |       132 |       151 |      6632 |
|                  jbird                   |        28 |        29 |        31 |        31 |        32 |        38 |        58 |     15822 |
|                    Δ                     |       -72 |       -82 |       -86 |       -89 |       -91 |       -94 |       -93 |      9190 |
|              Improvement %               |        72 |        74 |        74 |        74 |        74 |        71 |        62 |      9190 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10131 |      9127 |      8679 |      8479 |      8279 |      7675 |      6717 |      6632 |
|                  jbird                   |     38095 |     36671 |     33919 |     33759 |     33567 |     28047 |     17241 |     15822 |
|                    Δ                     |     27964 |     27544 |     25240 |     25280 |     25288 |     20372 |     10524 |      9190 |
|              Improvement %               |       276 |       302 |       291 |       298 |       305 |       265 |       157 |      9190 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6632 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     15822 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9190 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9190 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      6632 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15822 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      9190 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      9190 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2070 |      2071 |      2072 |      2072 |      2072 |      2087 |      2211 |      6632 |
|                  jbird                   |       850 |       851 |       851 |       851 |       851 |       856 |       909 |     15822 |
|                    Δ                     |     -1220 |     -1220 |     -1221 |     -1221 |     -1221 |     -1231 |     -1302 |      9190 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        59 |      9190 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1955 |      2111 |      2124 |      2138 |      2152 |      2204 |      2263 |       462 |
|                  jbird                   |      1468 |      1594 |      1610 |      1625 |      1642 |      1682 |      1771 |       606 |
|                    Δ                     |      -487 |      -517 |      -514 |      -513 |      -510 |      -522 |      -492 |       144 |
|              Improvement %               |        25 |        24 |        24 |        24 |        24 |        24 |        22 |       144 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1957 |      2114 |      2126 |      2142 |      2157 |      2208 |      2265 |       462 |
|                  jbird                   |      1469 |      1596 |      1612 |      1627 |      1646 |      1687 |      1773 |       606 |
|                    Δ                     |      -488 |      -518 |      -514 |      -515 |      -511 |      -521 |      -492 |       144 |
|              Improvement %               |        25 |        25 |        24 |        24 |        24 |        24 |        22 |       144 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       511 |       474 |       471 |       468 |       465 |       454 |       442 |       462 |
|                  jbird                   |       681 |       627 |       621 |       616 |       609 |       594 |       565 |       606 |
|                    Δ                     |       170 |       153 |       150 |       148 |       144 |       140 |       123 |       144 |
|              Improvement %               |        33 |        32 |        32 |        32 |        31 |        31 |        28 |       144 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        34 |        34 |        34 |        34 |        34 |        34 |       462 |
|                  jbird                   |        34 |        37 |        37 |        37 |        37 |        37 |        37 |       606 |
|                    Δ                     |         1 |         3 |         3 |         3 |         3 |         3 |         3 |       144 |
|              Improvement %               |        -3 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       144 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       462 |
|                  jbird                   |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |       606 |
|                    Δ                     |      -192 |      -192 |      -192 |      -192 |      -192 |      -192 |      -192 |       144 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       144 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        41 |        41 |        42 |        42 |        42 |        42 |        43 |       462 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       606 |
|                    Δ                     |        -8 |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |       144 |
|              Improvement %               |        20 |        20 |        21 |        21 |        21 |        21 |        21 |       144 |

<p>
</details>

