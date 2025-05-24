# JBird vs. Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2591 |      2802 |      2830 |      2861 |      2953 |      3553 |      3806 |       345 |
|                  jbird                   |      1838 |      1892 |      1909 |      1927 |      1954 |      2040 |      2147 |       513 |
|                    Δ                     |      -753 |      -910 |      -921 |      -934 |      -999 |     -1513 |     -1659 |       168 |
|              Improvement %               |        29 |        32 |        33 |        33 |        34 |        43 |        44 |       168 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2592 |      2806 |      2832 |      2863 |      2957 |      3566 |      3811 |       345 |
|                  jbird                   |      1839 |      1894 |      1911 |      1930 |      1955 |      2041 |      2150 |       513 |
|                    Δ                     |      -753 |      -912 |      -921 |      -933 |     -1002 |     -1525 |     -1661 |       168 |
|              Improvement %               |        29 |        33 |        33 |        33 |        34 |        43 |        44 |       168 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       386 |       357 |       353 |       350 |       339 |       281 |       263 |       345 |
|                  jbird                   |       544 |       529 |       524 |       519 |       512 |       490 |       466 |       513 |
|                    Δ                     |       158 |       172 |       171 |       169 |       173 |       209 |       203 |       168 |
|              Improvement %               |        41 |        48 |        48 |        48 |        51 |        74 |        77 |       168 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       152 |       277 |       403 |       479 |       523 |       523 |       345 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       513 |
|                    Δ                     |         3 |      -121 |      -246 |      -372 |      -448 |      -492 |      -492 |       168 |
|              Improvement %               |       -12 |        80 |        89 |        92 |        94 |        94 |        94 |       168 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       345 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       513 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       168 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       168 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        64 |        65 |       345 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       513 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -15 |       -15 |       168 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        23 |        23 |       168 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2674 |      2865 |      2892 |      2920 |      2959 |      3037 |      3088 |       341 |
|                  jbird                   |      1865 |      1917 |      1933 |      1950 |      1974 |      2048 |      2109 |       507 |
|                    Δ                     |      -809 |      -948 |      -959 |      -970 |      -985 |      -989 |      -979 |       166 |
|              Improvement %               |        30 |        33 |        33 |        33 |        33 |        33 |        32 |       166 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2676 |      2867 |      2894 |      2922 |      2963 |      3043 |      3094 |       341 |
|                  jbird                   |      1867 |      1919 |      1934 |      1953 |      1972 |      2050 |      2113 |       507 |
|                    Δ                     |      -809 |      -948 |      -960 |      -969 |      -991 |      -993 |      -981 |       166 |
|              Improvement %               |        30 |        33 |        33 |        33 |        33 |        33 |        32 |       166 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       374 |       349 |       346 |       343 |       338 |       329 |       324 |       341 |
|                  jbird                   |       536 |       522 |       518 |       513 |       507 |       488 |       474 |       507 |
|                    Δ                     |       162 |       173 |       172 |       170 |       169 |       159 |       150 |       166 |
|              Improvement %               |        43 |        50 |        50 |        50 |        50 |        48 |        46 |       166 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       151 |       270 |       398 |       471 |       515 |       520 |       341 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       507 |
|                    Δ                     |         3 |      -120 |      -239 |      -367 |      -440 |      -484 |      -489 |       166 |
|              Improvement %               |       -12 |        79 |        89 |        92 |        93 |        94 |        94 |       166 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       341 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       507 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       166 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       166 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        65 |        65 |       341 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        50 |        50 |       507 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -15 |       -15 |       166 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        23 |        23 |       166 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       643 |       695 |       706 |       716 |       727 |       757 |       876 |      1349 |
|                  jbird                   |       457 |       467 |       474 |       487 |       499 |       523 |       584 |      1944 |
|                    Δ                     |      -186 |      -228 |      -232 |      -229 |      -228 |      -234 |      -292 |       595 |
|              Improvement %               |        29 |        33 |        33 |        32 |        31 |        31 |        33 |       595 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       645 |       696 |       708 |       717 |       729 |       758 |       862 |      1349 |
|                  jbird                   |       458 |       468 |       476 |       489 |       501 |       524 |       587 |      1944 |
|                    Δ                     |      -187 |      -228 |      -232 |      -228 |      -228 |      -234 |      -275 |       595 |
|              Improvement %               |        29 |        33 |        33 |        32 |        31 |        31 |        32 |       595 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1554 |      1440 |      1417 |      1397 |      1377 |      1321 |      1142 |      1349 |
|                  jbird                   |      2188 |      2143 |      2109 |      2051 |      2002 |      1914 |      1713 |      1944 |
|                    Δ                     |       634 |       703 |       692 |       654 |       625 |       593 |       571 |       595 |
|              Improvement %               |        41 |        49 |        49 |        47 |        45 |        45 |        50 |       595 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       147 |       271 |       395 |       471 |       518 |       518 |      1349 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1944 |
|                    Δ                     |         1 |      -120 |      -244 |      -368 |      -444 |      -491 |      -491 |       595 |
|              Improvement %               |        -4 |        82 |        90 |        93 |        94 |        95 |        95 |       595 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1349 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1944 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       595 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       595 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1349 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1944 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       595 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       595 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       668 |       721 |       730 |       738 |       749 |       779 |       813 |      1307 |
|                  jbird                   |       463 |       473 |       481 |       494 |       504 |       525 |       601 |      1922 |
|                    Δ                     |      -205 |      -248 |      -249 |      -244 |      -245 |      -254 |      -212 |       615 |
|              Improvement %               |        31 |        34 |        34 |        33 |        33 |        33 |        26 |       615 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       669 |       722 |       731 |       740 |       751 |       781 |       815 |      1307 |
|                  jbird                   |       464 |       474 |       482 |       496 |       506 |       527 |       605 |      1922 |
|                    Δ                     |      -205 |      -248 |      -249 |      -244 |      -245 |      -254 |      -210 |       615 |
|              Improvement %               |        31 |        34 |        34 |        33 |        33 |        33 |        26 |       615 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1498 |      1388 |      1371 |      1355 |      1337 |      1285 |      1229 |      1307 |
|                  jbird                   |      2161 |      2117 |      2081 |      2025 |      1984 |      1904 |      1664 |      1922 |
|                    Δ                     |       663 |       729 |       710 |       670 |       647 |       619 |       435 |       615 |
|              Improvement %               |        44 |        53 |        52 |        49 |        48 |        48 |        35 |       615 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       146 |       262 |       384 |       456 |       501 |       507 |      1307 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1922 |
|                    Δ                     |         1 |      -119 |      -235 |      -357 |      -429 |      -474 |      -480 |       615 |
|              Improvement %               |        -4 |        82 |        90 |        93 |        94 |        95 |        95 |       615 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1307 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1922 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       615 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       615 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1307 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1922 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -4 |       615 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        29 |        24 |       615 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1287 |      1392 |      1405 |      1426 |      1449 |      1493 |      1533 |       692 |
|                  jbird                   |       918 |       946 |       958 |       969 |       980 |      1018 |      1124 |      1004 |
|                    Δ                     |      -369 |      -446 |      -447 |      -457 |      -469 |      -475 |      -409 |       312 |
|              Improvement %               |        29 |        32 |        32 |        32 |        32 |        32 |        27 |       312 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1288 |      1393 |      1406 |      1428 |      1450 |      1496 |      1535 |       692 |
|                  jbird                   |       919 |       947 |       959 |       971 |       982 |      1019 |      1127 |      1004 |
|                    Δ                     |      -369 |      -446 |      -447 |      -457 |      -468 |      -477 |      -408 |       312 |
|              Improvement %               |        29 |        32 |        32 |        32 |        32 |        32 |        27 |       312 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       777 |       719 |       712 |       701 |       690 |       670 |       652 |       692 |
|                  jbird                   |      1090 |      1058 |      1044 |      1032 |      1021 |       983 |       890 |      1004 |
|                    Δ                     |       313 |       339 |       332 |       331 |       331 |       313 |       238 |       312 |
|              Improvement %               |        40 |        47 |        47 |        47 |        48 |        47 |        37 |       312 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       147 |       276 |       401 |       478 |       521 |       527 |       692 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |      1004 |
|                    Δ                     |         0 |      -119 |      -248 |      -373 |      -450 |      -493 |      -499 |       312 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        95 |        95 |       312 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       692 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      1004 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       312 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       312 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       692 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |      1004 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -7 |       312 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        22 |       312 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1313 |      1447 |      1462 |      1476 |      1488 |      1538 |      1682 |       668 |
|                  jbird                   |       923 |       950 |       960 |       973 |       992 |      1044 |      1172 |       999 |
|                    Δ                     |      -390 |      -497 |      -502 |      -503 |      -496 |      -494 |      -510 |       331 |
|              Improvement %               |        30 |        34 |        34 |        34 |        33 |        32 |        30 |       331 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1315 |      1449 |      1464 |      1478 |      1490 |      1539 |      1683 |       668 |
|                  jbird                   |       925 |       951 |       962 |       975 |       994 |      1046 |      1175 |       999 |
|                    Δ                     |      -390 |      -498 |      -502 |      -503 |      -496 |      -493 |      -508 |       331 |
|              Improvement %               |        30 |        34 |        34 |        34 |        33 |        32 |        30 |       331 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       761 |       691 |       684 |       678 |       673 |       650 |       595 |       668 |
|                  jbird                   |      1083 |      1053 |      1042 |      1028 |      1009 |       958 |       853 |       999 |
|                    Δ                     |       322 |       362 |       358 |       350 |       336 |       308 |       258 |       331 |
|              Improvement %               |        42 |        52 |        52 |        52 |        50 |        47 |        43 |       331 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       146 |       268 |       386 |       461 |       505 |       511 |       668 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       999 |
|                    Δ                     |         0 |      -118 |      -240 |      -358 |      -433 |      -477 |      -483 |       331 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        94 |        95 |       331 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       668 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       999 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       331 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       331 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       668 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       999 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -8 |       331 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        24 |       331 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        72 |
|                  jbird                   |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        95 |
|                    Δ                     |        -3 |        -4 |        -4 |        -3 |        -3 |        -3 |        -3 |        23 |
|              Improvement %               |        23 |        29 |        29 |        21 |        21 |        21 |        21 |        23 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        72 |
|                  jbird                   |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        95 |
|                    Δ                     |        -3 |        -4 |        -4 |        -3 |        -3 |        -3 |        -3 |        23 |
|              Improvement %               |        23 |        29 |        29 |        21 |        21 |        21 |        21 |        23 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        72 |        72 |        71 |        71 |        70 |        70 |        72 |
|                  jbird                   |        98 |        96 |        96 |        95 |        94 |        91 |        91 |        95 |
|                    Δ                     |        23 |        24 |        24 |        24 |        23 |        21 |        21 |        23 |
|              Improvement %               |        31 |        33 |        33 |        34 |        32 |        30 |        30 |        23 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       158 |       293 |       420 |       497 |       553 |       553 |        72 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        95 |
|                    Δ                     |       -11 |      -106 |      -241 |      -368 |      -445 |      -501 |      -501 |        23 |
|              Improvement %               |        28 |        67 |        82 |        88 |        90 |        91 |        91 |        23 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        72 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        95 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        23 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        23 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       319 |       319 |       320 |       320 |       321 |       321 |        72 |
|                  jbird                   |       247 |       247 |       247 |       248 |       248 |       256 |       256 |        95 |
|                    Δ                     |       -72 |       -72 |       -72 |       -72 |       -72 |       -65 |       -65 |        23 |
|              Improvement %               |        23 |        23 |        23 |        22 |        22 |        20 |        20 |        23 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        15 |        15 |        15 |        15 |        70 |
|                  jbird                   |        10 |        10 |        10 |        10 |        11 |        11 |        11 |        96 |
|                    Δ                     |        -4 |        -4 |        -4 |        -5 |        -4 |        -4 |        -4 |        26 |
|              Improvement %               |        29 |        29 |        29 |        33 |        27 |        27 |        27 |        26 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        15 |        15 |        15 |        15 |        70 |
|                  jbird                   |        10 |        10 |        10 |        10 |        11 |        11 |        11 |        96 |
|                    Δ                     |        -4 |        -4 |        -4 |        -5 |        -4 |        -4 |        -4 |        26 |
|              Improvement %               |        29 |        29 |        29 |        33 |        27 |        27 |        27 |        26 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        72 |        70 |        69 |        69 |        69 |        68 |        68 |        70 |
|                  jbird                   |       100 |        98 |        98 |        97 |        95 |        89 |        89 |        96 |
|                    Δ                     |        28 |        28 |        29 |        28 |        26 |        21 |        21 |        26 |
|              Improvement %               |        39 |        40 |        42 |        41 |        38 |        31 |        31 |        26 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        38 |       161 |       285 |       412 |       485 |       534 |       534 |        70 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        96 |
|                    Δ                     |       -10 |      -109 |      -233 |      -360 |      -433 |      -482 |      -482 |        26 |
|              Improvement %               |        26 |        68 |        82 |        87 |        89 |        90 |        90 |        26 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        70 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        96 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        26 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        26 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       324 |       325 |       325 |       325 |       326 |       326 |        70 |
|                  jbird                   |       247 |       247 |       247 |       247 |       251 |       259 |       259 |        96 |
|                    Δ                     |       -77 |       -77 |       -78 |       -78 |       -74 |       -67 |       -67 |        26 |
|              Improvement %               |        24 |        24 |        24 |        24 |        23 |        21 |        21 |        26 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       165 |       178 |       185 |       190 |       194 |       209 |       289 |      4517 |
|                  jbird                   |       115 |       117 |       118 |       122 |       130 |       140 |       187 |      6471 |
|                    Δ                     |       -50 |       -61 |       -67 |       -68 |       -64 |       -69 |      -102 |      1954 |
|              Improvement %               |        30 |        34 |        36 |        36 |        33 |        33 |        35 |      1954 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       166 |       180 |       187 |       191 |       195 |       211 |       290 |      4517 |
|                  jbird                   |       116 |       118 |       119 |       123 |       131 |       142 |       191 |      6471 |
|                    Δ                     |       -50 |       -62 |       -68 |       -68 |       -64 |       -69 |       -99 |      1954 |
|              Improvement %               |        30 |        34 |        36 |        36 |        33 |        33 |        34 |      1954 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6064 |      5611 |      5399 |      5279 |      5163 |      4787 |      3463 |      4517 |
|                  jbird                   |      8727 |      8583 |      8471 |      8223 |      7723 |      7159 |      5344 |      6471 |
|                    Δ                     |      2663 |      2972 |      3072 |      2944 |      2560 |      2372 |      1881 |      1954 |
|              Improvement %               |        44 |        53 |        57 |        56 |        50 |        50 |        54 |      1954 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       132 |       242 |       350 |       417 |       456 |       462 |      4517 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6471 |
|                    Δ                     |         0 |      -107 |      -216 |      -324 |      -391 |      -430 |      -436 |      1954 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |      1954 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4517 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6471 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1954 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1954 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4082 |      4106 |      4114 |      4125 |      4133 |      4157 |      4364 |      4517 |
|                  jbird                   |      2988 |      2990 |      2990 |      2990 |      2990 |      3062 |      3134 |      6471 |
|                    Δ                     |     -1094 |     -1116 |     -1124 |     -1135 |     -1143 |     -1095 |     -1230 |      1954 |
|              Improvement %               |        27 |        27 |        27 |        28 |        28 |        26 |        28 |      1954 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       171 |       185 |       192 |       197 |       202 |       222 |       787 |      4365 |
|                  jbird                   |       116 |       117 |       119 |       123 |       131 |       140 |       180 |      6429 |
|                    Δ                     |       -55 |       -68 |       -73 |       -74 |       -71 |       -82 |      -607 |      2064 |
|              Improvement %               |        32 |        37 |        38 |        38 |        35 |        37 |        77 |      2064 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       172 |       187 |       194 |       199 |       204 |       223 |       273 |      4365 |
|                  jbird                   |       117 |       119 |       120 |       124 |       132 |       142 |       183 |      6429 |
|                    Δ                     |       -55 |       -68 |       -74 |       -75 |       -72 |       -81 |       -90 |      2064 |
|              Improvement %               |        32 |        36 |        38 |        38 |        35 |        36 |        33 |      2064 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5858 |      5395 |      5199 |      5075 |      4951 |      4507 |      1270 |      4365 |
|                  jbird                   |      8618 |      8519 |      8431 |      8163 |      7659 |      7131 |      5559 |      6429 |
|                    Δ                     |      2760 |      3124 |      3232 |      3088 |      2708 |      2624 |      4289 |      2064 |
|              Improvement %               |        47 |        58 |        62 |        61 |        55 |        58 |       338 |      2064 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       130 |       233 |       342 |       407 |       443 |       449 |      4365 |
|                  jbird                   |        25 |        25 |        25 |        25 |        26 |        26 |        26 |      6429 |
|                    Δ                     |         0 |      -105 |      -208 |      -317 |      -381 |      -417 |      -423 |      2064 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |      2064 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4365 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6429 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      2064 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      2064 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4145 |      4170 |      4178 |      4188 |      4198 |      4219 |      4484 |      4365 |
|                  jbird                   |      3020 |      3023 |      3023 |      3023 |      3023 |      3095 |      3192 |      6429 |
|                    Δ                     |     -1125 |     -1147 |     -1155 |     -1165 |     -1175 |     -1124 |     -1292 |      2064 |
|              Improvement %               |        27 |        28 |        28 |        28 |        28 |        27 |        29 |      2064 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        77 |        78 |        83 |        87 |        99 |       148 |      9069 |
|                  jbird                   |        56 |        57 |        57 |        57 |        58 |        73 |       110 |     11472 |
|                    Δ                     |       -19 |       -20 |       -21 |       -26 |       -29 |       -26 |       -38 |      2403 |
|              Improvement %               |        25 |        26 |        27 |        31 |        33 |        26 |        26 |      2403 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        78 |        80 |        85 |        88 |       101 |       116 |      9069 |
|                  jbird                   |        58 |        58 |        58 |        59 |        60 |        75 |       103 |     11472 |
|                    Δ                     |       -19 |       -20 |       -22 |       -26 |       -28 |       -26 |       -13 |      2403 |
|              Improvement %               |        25 |        26 |        28 |        31 |        32 |        26 |        11 |      2403 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        12 |        10 |         7 |      9069 |
|                  jbird                   |        18 |        18 |        18 |        17 |        17 |        14 |         9 |     11472 |
|                    Δ                     |         5 |         5 |         5 |         5 |         5 |         4 |         2 |      2403 |
|              Improvement %               |        38 |        38 |        38 |        42 |        42 |        40 |        29 |      2403 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        36 |        48 |        59 |        65 |        69 |        70 |      9069 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     11472 |
|                    Δ                     |         0 |       -11 |       -23 |       -34 |       -40 |       -44 |       -45 |      2403 |
|              Improvement %               |         0 |        31 |        48 |        58 |        62 |        64 |        64 |      2403 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      9069 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11472 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |      2403 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      2403 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1148 |      1149 |      1150 |      1156 |      1160 |      1168 |      1262 |      9069 |
|                  jbird                   |      1519 |      1520 |      1520 |      1520 |      1520 |      1548 |      1621 |     11472 |
|                    Δ                     |       371 |       371 |       370 |       364 |       360 |       380 |       359 |      2403 |
|              Improvement %               |       -32 |       -32 |       -32 |       -31 |       -31 |       -33 |       -28 |      2403 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       245 |       269 |       274 |       279 |       284 |       300 |       320 |      3257 |
|                  jbird                   |        86 |        88 |        90 |        94 |        98 |       108 |       156 |      8267 |
|                    Δ                     |      -159 |      -181 |      -184 |      -185 |      -186 |      -192 |      -164 |      5010 |
|              Improvement %               |        65 |        67 |        67 |        66 |        65 |        64 |        51 |      5010 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       246 |       270 |       275 |       281 |       286 |       301 |       316 |      3257 |
|                  jbird                   |        88 |        89 |        91 |        96 |       100 |       110 |       160 |      8267 |
|                    Δ                     |      -158 |      -181 |      -184 |      -185 |      -186 |      -191 |      -156 |      5010 |
|              Improvement %               |        64 |        67 |        67 |        66 |        65 |        63 |        49 |      5010 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4082 |      3721 |      3651 |      3585 |      3523 |      3341 |      3127 |      3257 |
|                  jbird                   |     11566 |     11375 |     11175 |     10623 |     10175 |      9263 |      6429 |      8267 |
|                    Δ                     |      7484 |      7654 |      7524 |      7038 |      6652 |      5922 |      3302 |      5010 |
|              Improvement %               |       183 |       206 |       206 |       196 |       189 |       177 |       106 |      5010 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        87 |       148 |       211 |       248 |       269 |       272 |      3257 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      8267 |
|                    Δ                     |         0 |       -61 |      -122 |      -185 |      -222 |      -243 |      -246 |      5010 |
|              Improvement %               |         0 |        70 |        82 |        88 |        90 |        90 |        90 |      5010 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3257 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      8267 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      5010 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      5010 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6960 |      6967 |      6971 |      6988 |      7000 |      7029 |      7310 |      3257 |
|                  jbird                   |      2592 |      2593 |      2593 |      2593 |      2593 |      2603 |      2831 |      8267 |
|                    Δ                     |     -4368 |     -4374 |     -4378 |     -4395 |     -4407 |     -4426 |     -4479 |      5010 |
|              Improvement %               |        63 |        63 |        63 |        63 |        63 |        63 |        61 |      5010 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       384 |       419 |       423 |       428 |       434 |       458 |       499 |      2186 |
|                  jbird                   |        52 |        53 |        54 |        58 |        59 |        69 |       137 |     11725 |
|                    Δ                     |      -332 |      -366 |      -369 |      -370 |      -375 |      -389 |      -362 |      9539 |
|              Improvement %               |        86 |        87 |        87 |        86 |        86 |        85 |        73 |      9539 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       385 |       421 |       425 |       430 |       436 |       461 |       492 |      2186 |
|                  jbird                   |        53 |        54 |        55 |        60 |        61 |        70 |       140 |     11725 |
|                    Δ                     |      -332 |      -367 |      -370 |      -370 |      -375 |      -391 |      -352 |      9539 |
|              Improvement %               |        86 |        87 |        87 |        86 |        86 |        85 |        72 |      9539 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2603 |      2387 |      2365 |      2337 |      2305 |      2185 |      2005 |      2186 |
|                  jbird                   |     19324 |     18927 |     18671 |     17167 |     16831 |     14551 |      7317 |     11725 |
|                    Δ                     |     16721 |     16540 |     16306 |     14830 |     14526 |     12366 |      5312 |      9539 |
|              Improvement %               |       642 |       693 |       689 |       635 |       630 |       566 |       265 |      9539 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        76 |       127 |       176 |       207 |       226 |       228 |      2186 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     11725 |
|                    Δ                     |         0 |       -50 |      -101 |      -150 |      -181 |      -200 |      -202 |      9539 |
|              Improvement %               |         0 |        66 |        80 |        85 |        87 |        88 |        89 |      9539 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2186 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11725 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      9539 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      9539 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9065 |      9093 |      9101 |      9101 |      9110 |      9232 |      9508 |      2186 |
|                  jbird                   |      1589 |      1589 |      1589 |      1589 |      1589 |      1595 |      1713 |     11725 |
|                    Δ                     |     -7476 |     -7504 |     -7512 |     -7512 |     -7521 |     -7637 |     -7795 |      9539 |
|              Improvement %               |        82 |        83 |        83 |        83 |        83 |        83 |        82 |      9539 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        73 |        80 |        84 |        87 |        90 |       100 |       212 |      8492 |
|                  jbird                   |        28 |        28 |        28 |        31 |        31 |        38 |        71 |     16287 |
|                    Δ                     |       -45 |       -52 |       -56 |       -56 |       -59 |       -62 |      -141 |      7795 |
|              Improvement %               |        62 |        65 |        67 |        64 |        66 |        62 |        67 |      7795 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        81 |        85 |        89 |        92 |       102 |       199 |      8492 |
|                  jbird                   |        29 |        29 |        29 |        32 |        33 |        40 |        67 |     16287 |
|                    Δ                     |       -45 |       -52 |       -56 |       -57 |       -59 |       -62 |      -132 |      7795 |
|              Improvement %               |        61 |        64 |        66 |        64 |        64 |        61 |        66 |      7795 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        13 |        12 |        11 |        11 |        10 |         5 |      8492 |
|                  jbird                   |        36 |        36 |        36 |        33 |        32 |        27 |        14 |     16287 |
|                    Δ                     |        22 |        23 |        24 |        22 |        21 |        17 |         9 |      7795 |
|              Improvement %               |       157 |       177 |       200 |       200 |       191 |       170 |       180 |      7795 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       156 |       290 |       424 |       503 |       549 |       555 |      8492 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     16287 |
|                    Δ                     |         0 |      -131 |      -265 |      -399 |      -478 |      -524 |      -530 |      7795 |
|              Improvement %               |         0 |        84 |        91 |        94 |        95 |        95 |        95 |      7795 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |      8492 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     16287 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |      7795 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      7795 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1891 |      1907 |      1912 |      1918 |      1924 |      1950 |      2077 |      8492 |
|                  jbird                   |       877 |       878 |       878 |       878 |       878 |       883 |       961 |     16287 |
|                    Δ                     |     -1014 |     -1029 |     -1034 |     -1040 |     -1046 |     -1067 |     -1116 |      7795 |
|              Improvement %               |        54 |        54 |        54 |        54 |        54 |        55 |        54 |      7795 |

<p>
</details>

