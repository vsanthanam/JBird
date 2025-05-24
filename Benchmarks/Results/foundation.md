# JBird vs. Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2591 |      2802 |      2830 |      2861 |      2953 |      3553 |      3806 |       345 |
|                  jbird                   |      1871 |      2059 |      2079 |      2114 |      2171 |      2601 |      3233 |       466 |
|                    Δ                     |      -720 |      -743 |      -751 |      -747 |      -782 |      -952 |      -573 |       121 |
|              Improvement %               |        28 |        27 |        27 |        26 |        26 |        27 |        15 |       121 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2592 |      2806 |      2832 |      2863 |      2957 |      3566 |      3811 |       345 |
|                  jbird                   |      1873 |      2062 |      2082 |      2116 |      2173 |      2603 |      3238 |       466 |
|                    Δ                     |      -719 |      -744 |      -750 |      -747 |      -784 |      -963 |      -573 |       121 |
|              Improvement %               |        28 |        27 |        26 |        26 |        27 |        27 |        15 |       121 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       386 |       357 |       353 |       350 |       339 |       281 |       263 |       345 |
|                  jbird                   |       534 |       486 |       481 |       473 |       461 |       385 |       309 |       466 |
|                    Δ                     |       148 |       129 |       128 |       123 |       122 |       104 |        46 |       121 |
|              Improvement %               |        38 |        36 |        36 |        35 |        36 |        37 |        17 |       121 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       152 |       277 |       403 |       479 |       523 |       523 |       345 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       466 |
|                    Δ                     |         3 |      -121 |      -246 |      -372 |      -448 |      -492 |      -492 |       121 |
|              Improvement %               |       -12 |        80 |        89 |        92 |        94 |        94 |        94 |       121 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       345 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       466 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       121 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       121 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        64 |        65 |       345 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        48 |        49 |       466 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |       -16 |       121 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        25 |        25 |       121 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2674 |      2865 |      2892 |      2920 |      2959 |      3037 |      3088 |       341 |
|                  jbird                   |      1922 |      2103 |      2138 |      2185 |      2214 |      2310 |      2339 |       458 |
|                    Δ                     |      -752 |      -762 |      -754 |      -735 |      -745 |      -727 |      -749 |       117 |
|              Improvement %               |        28 |        27 |        26 |        25 |        25 |        24 |        24 |       117 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2676 |      2867 |      2894 |      2922 |      2963 |      3043 |      3094 |       341 |
|                  jbird                   |      1924 |      2103 |      2140 |      2189 |      2216 |      2312 |      2341 |       458 |
|                    Δ                     |      -752 |      -764 |      -754 |      -733 |      -747 |      -731 |      -753 |       117 |
|              Improvement %               |        28 |        27 |        26 |        25 |        25 |        24 |        24 |       117 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       374 |       349 |       346 |       343 |       338 |       329 |       324 |       341 |
|                  jbird                   |       520 |       476 |       468 |       458 |       452 |       433 |       427 |       458 |
|                    Δ                     |       146 |       127 |       122 |       115 |       114 |       104 |       103 |       117 |
|              Improvement %               |        39 |        36 |        35 |        34 |        34 |        32 |        32 |       117 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       151 |       270 |       398 |       471 |       515 |       520 |       341 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       458 |
|                    Δ                     |         3 |      -120 |      -239 |      -367 |      -440 |      -484 |      -489 |       117 |
|              Improvement %               |       -12 |        79 |        89 |        92 |        93 |        94 |        94 |       117 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       341 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       458 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       117 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       117 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        65 |        65 |       341 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        50 |        50 |       458 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -15 |       -15 |       117 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        23 |        23 |       117 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       643 |       695 |       706 |       716 |       727 |       757 |       876 |      1349 |
|                  jbird                   |       464 |       511 |       518 |       528 |       537 |       566 |       589 |      1792 |
|                    Δ                     |      -179 |      -184 |      -188 |      -188 |      -190 |      -191 |      -287 |       443 |
|              Improvement %               |        28 |        26 |        27 |        26 |        26 |        25 |        33 |       443 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       645 |       696 |       708 |       717 |       729 |       758 |       862 |      1349 |
|                  jbird                   |       466 |       513 |       520 |       530 |       539 |       567 |       594 |      1792 |
|                    Δ                     |      -179 |      -183 |      -188 |      -187 |      -190 |      -191 |      -268 |       443 |
|              Improvement %               |        28 |        26 |        27 |        26 |        26 |        25 |        31 |       443 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1554 |      1440 |      1417 |      1397 |      1377 |      1321 |      1142 |      1349 |
|                  jbird                   |      2154 |      1958 |      1929 |      1895 |      1863 |      1768 |      1697 |      1792 |
|                    Δ                     |       600 |       518 |       512 |       498 |       486 |       447 |       555 |       443 |
|              Improvement %               |        39 |        36 |        36 |        36 |        35 |        34 |        49 |       443 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       147 |       271 |       395 |       471 |       518 |       518 |      1349 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1792 |
|                    Δ                     |         1 |      -120 |      -244 |      -368 |      -444 |      -491 |      -491 |       443 |
|              Improvement %               |        -4 |        82 |        90 |        93 |        94 |        95 |        95 |       443 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1349 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1792 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       443 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       443 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1349 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1792 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       443 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       443 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       668 |       721 |       730 |       738 |       749 |       779 |       813 |      1307 |
|                  jbird                   |       480 |       521 |       528 |       547 |       562 |       608 |      1099 |      1740 |
|                    Δ                     |      -188 |      -200 |      -202 |      -191 |      -187 |      -171 |       286 |       433 |
|              Improvement %               |        28 |        28 |        28 |        26 |        25 |        22 |       -35 |       433 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       669 |       722 |       731 |       740 |       751 |       781 |       815 |      1307 |
|                  jbird                   |       482 |       523 |       530 |       549 |       563 |       610 |       765 |      1740 |
|                    Δ                     |      -187 |      -199 |      -201 |      -191 |      -188 |      -171 |       -50 |       433 |
|              Improvement %               |        28 |        28 |        27 |        26 |        25 |        22 |         6 |       433 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1498 |      1388 |      1371 |      1355 |      1337 |      1285 |      1229 |      1307 |
|                  jbird                   |      2082 |      1919 |      1893 |      1827 |      1781 |      1645 |       910 |      1740 |
|                    Δ                     |       584 |       531 |       522 |       472 |       444 |       360 |      -319 |       433 |
|              Improvement %               |        39 |        38 |        38 |        35 |        33 |        28 |       -26 |       433 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       146 |       262 |       384 |       456 |       501 |       507 |      1307 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1740 |
|                    Δ                     |         1 |      -119 |      -235 |      -357 |      -429 |      -474 |      -480 |       433 |
|              Improvement %               |        -4 |        82 |        90 |        93 |        94 |        95 |        95 |       433 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1307 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1740 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       433 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       433 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1307 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1740 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -4 |       433 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        29 |        24 |       433 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1287 |      1392 |      1405 |      1426 |      1449 |      1493 |      1533 |       692 |
|                  jbird                   |       946 |      1029 |      1036 |      1049 |      1078 |      1117 |      1162 |       926 |
|                    Δ                     |      -341 |      -363 |      -369 |      -377 |      -371 |      -376 |      -371 |       234 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        25 |        24 |       234 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1288 |      1393 |      1406 |      1428 |      1450 |      1496 |      1535 |       692 |
|                  jbird                   |       947 |      1030 |      1038 |      1051 |      1080 |      1119 |      1166 |       926 |
|                    Δ                     |      -341 |      -363 |      -368 |      -377 |      -370 |      -377 |      -369 |       234 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        25 |        24 |       234 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       777 |       719 |       712 |       701 |       690 |       670 |       652 |       692 |
|                  jbird                   |      1057 |       973 |       965 |       954 |       928 |       895 |       861 |       926 |
|                    Δ                     |       280 |       254 |       253 |       253 |       238 |       225 |       209 |       234 |
|              Improvement %               |        36 |        35 |        36 |        36 |        34 |        34 |        32 |       234 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       147 |       276 |       401 |       478 |       521 |       527 |       692 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       926 |
|                    Δ                     |         0 |      -119 |      -248 |      -373 |      -450 |      -493 |      -499 |       234 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        95 |        95 |       234 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       692 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       926 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       234 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       234 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       692 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       926 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -7 |       234 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        22 |       234 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1313 |      1447 |      1462 |      1476 |      1488 |      1538 |      1682 |       668 |
|                  jbird                   |       966 |      1037 |      1056 |      1081 |      1102 |      1150 |      1310 |       909 |
|                    Δ                     |      -347 |      -410 |      -406 |      -395 |      -386 |      -388 |      -372 |       241 |
|              Improvement %               |        26 |        28 |        28 |        27 |        26 |        25 |        22 |       241 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1315 |      1449 |      1464 |      1478 |      1490 |      1539 |      1683 |       668 |
|                  jbird                   |       967 |      1039 |      1058 |      1083 |      1104 |      1151 |      1263 |       909 |
|                    Δ                     |      -348 |      -410 |      -406 |      -395 |      -386 |      -388 |      -420 |       241 |
|              Improvement %               |        26 |        28 |        28 |        27 |        26 |        25 |        25 |       241 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       761 |       691 |       684 |       678 |       673 |       650 |       595 |       668 |
|                  jbird                   |      1036 |       964 |       948 |       925 |       908 |       870 |       764 |       909 |
|                    Δ                     |       275 |       273 |       264 |       247 |       235 |       220 |       169 |       241 |
|              Improvement %               |        36 |        40 |        39 |        36 |        35 |        34 |        28 |       241 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       146 |       268 |       386 |       461 |       505 |       511 |       668 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       909 |
|                    Δ                     |         0 |      -118 |      -240 |      -358 |      -433 |      -477 |      -483 |       241 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        94 |        95 |       241 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       668 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       909 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       241 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       241 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       668 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       909 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -9 |       241 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        26 |       241 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        72 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        13 |        13 |        86 |
|                    Δ                     |        -2 |        -3 |        -3 |        -2 |        -2 |        -1 |        -1 |        14 |
|              Improvement %               |        15 |        21 |        21 |        14 |        14 |         7 |         7 |        14 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        72 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        86 |
|                    Δ                     |        -2 |        -3 |        -3 |        -2 |        -2 |        -2 |        -2 |        14 |
|              Improvement %               |        15 |        21 |        21 |        14 |        14 |        14 |        14 |        14 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        72 |        72 |        71 |        71 |        70 |        70 |        72 |
|                  jbird                   |        93 |        88 |        87 |        87 |        85 |        78 |        78 |        86 |
|                    Δ                     |        18 |        16 |        15 |        16 |        14 |         8 |         8 |        14 |
|              Improvement %               |        24 |        22 |        21 |        23 |        20 |        11 |        11 |        14 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       158 |       293 |       420 |       497 |       553 |       553 |        72 |
|                  jbird                   |        28 |        50 |        50 |        50 |        50 |        50 |        50 |        86 |
|                    Δ                     |       -11 |      -108 |      -243 |      -370 |      -447 |      -503 |      -503 |        14 |
|              Improvement %               |        28 |        68 |        83 |        88 |        90 |        91 |        91 |        14 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        72 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        86 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        14 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        14 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       319 |       319 |       320 |       320 |       321 |       321 |        72 |
|                  jbird                   |       246 |       246 |       246 |       246 |       246 |       251 |       251 |        86 |
|                    Δ                     |       -73 |       -73 |       -73 |       -74 |       -74 |       -70 |       -70 |        14 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        22 |        22 |        14 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        15 |        15 |        15 |        15 |        70 |
|                  jbird                   |        11 |        12 |        12 |        12 |        12 |        13 |        13 |        84 |
|                    Δ                     |        -3 |        -2 |        -2 |        -3 |        -3 |        -2 |        -2 |        14 |
|              Improvement %               |        21 |        14 |        14 |        20 |        20 |        13 |        13 |        14 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        15 |        15 |        15 |        15 |        70 |
|                  jbird                   |        11 |        12 |        12 |        12 |        12 |        13 |        13 |        84 |
|                    Δ                     |        -3 |        -2 |        -2 |        -3 |        -3 |        -2 |        -2 |        14 |
|              Improvement %               |        21 |        14 |        14 |        20 |        20 |        13 |        13 |        14 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        72 |        70 |        69 |        69 |        69 |        68 |        68 |        70 |
|                  jbird                   |        89 |        86 |        85 |        83 |        82 |        76 |        76 |        84 |
|                    Δ                     |        17 |        16 |        16 |        14 |        13 |         8 |         8 |        14 |
|              Improvement %               |        24 |        23 |        23 |        20 |        19 |        12 |        12 |        14 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        38 |       161 |       285 |       412 |       485 |       534 |       534 |        70 |
|                  jbird                   |        28 |        51 |        51 |        52 |        52 |        52 |        52 |        84 |
|                    Δ                     |       -10 |      -110 |      -234 |      -360 |      -433 |      -482 |      -482 |        14 |
|              Improvement %               |        26 |        68 |        82 |        87 |        89 |        90 |        90 |        14 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        70 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        84 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        14 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        14 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       324 |       325 |       325 |       325 |       326 |       326 |        70 |
|                  jbird                   |       252 |       252 |       252 |       252 |       252 |       261 |       261 |        84 |
|                    Δ                     |       -72 |       -72 |       -73 |       -73 |       -73 |       -65 |       -65 |        14 |
|              Improvement %               |        22 |        22 |        22 |        22 |        22 |        20 |        20 |        14 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       165 |       178 |       185 |       190 |       194 |       209 |       289 |      4517 |
|                  jbird                   |       116 |       127 |       131 |       133 |       136 |       145 |       178 |      5987 |
|                    Δ                     |       -49 |       -51 |       -54 |       -57 |       -58 |       -64 |      -111 |      1470 |
|              Improvement %               |        30 |        29 |        29 |        30 |        30 |        31 |        38 |      1470 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       166 |       180 |       187 |       191 |       195 |       211 |       290 |      4517 |
|                  jbird                   |       117 |       129 |       133 |       135 |       137 |       148 |       180 |      5987 |
|                    Δ                     |       -49 |       -51 |       -54 |       -56 |       -58 |       -63 |      -110 |      1470 |
|              Improvement %               |        30 |        28 |        29 |        29 |        30 |        30 |        38 |      1470 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6064 |      5611 |      5399 |      5279 |      5163 |      4787 |      3463 |      4517 |
|                  jbird                   |      8618 |      7871 |      7627 |      7507 |      7379 |      6903 |      5622 |      5987 |
|                    Δ                     |      2554 |      2260 |      2228 |      2228 |      2216 |      2116 |      2159 |      1470 |
|              Improvement %               |        42 |        40 |        41 |        42 |        43 |        44 |        62 |      1470 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       132 |       242 |       350 |       417 |       456 |       462 |      4517 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      5987 |
|                    Δ                     |         0 |      -107 |      -216 |      -324 |      -391 |      -430 |      -436 |      1470 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |      1470 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4517 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5987 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1470 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1470 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4082 |      4106 |      4114 |      4125 |      4133 |      4157 |      4364 |      4517 |
|                  jbird                   |      2959 |      2959 |      2959 |      2959 |      2961 |      3033 |      3110 |      5987 |
|                    Δ                     |     -1123 |     -1147 |     -1155 |     -1166 |     -1172 |     -1124 |     -1254 |      1470 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        27 |        29 |      1470 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       171 |       185 |       192 |       197 |       202 |       222 |       787 |      4365 |
|                  jbird                   |       120 |       131 |       134 |       137 |       139 |       148 |       177 |      5870 |
|                    Δ                     |       -51 |       -54 |       -58 |       -60 |       -63 |       -74 |      -610 |      1505 |
|              Improvement %               |        30 |        29 |        30 |        30 |        31 |        33 |        78 |      1505 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       172 |       187 |       194 |       199 |       204 |       223 |       273 |      4365 |
|                  jbird                   |       122 |       132 |       136 |       138 |       140 |       150 |       176 |      5870 |
|                    Δ                     |       -50 |       -55 |       -58 |       -61 |       -64 |       -73 |       -97 |      1505 |
|              Improvement %               |        29 |        29 |        30 |        31 |        31 |        33 |        36 |      1505 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5858 |      5395 |      5199 |      5075 |      4951 |      4507 |      1270 |      4365 |
|                  jbird                   |      8328 |      7663 |      7443 |      7327 |      7219 |      6779 |      5652 |      5870 |
|                    Δ                     |      2470 |      2268 |      2244 |      2252 |      2268 |      2272 |      4382 |      1505 |
|              Improvement %               |        42 |        42 |        43 |        44 |        46 |        50 |       345 |      1505 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       130 |       233 |       342 |       407 |       443 |       449 |      4365 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      5870 |
|                    Δ                     |         0 |      -105 |      -207 |      -316 |      -381 |      -417 |      -423 |      1505 |
|              Improvement %               |         0 |        81 |        89 |        92 |        94 |        94 |        94 |      1505 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4365 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5870 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1505 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1505 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4145 |      4170 |      4178 |      4188 |      4198 |      4219 |      4484 |      4365 |
|                  jbird                   |      3017 |      3017 |      3019 |      3019 |      3019 |      3090 |      3162 |      5870 |
|                    Δ                     |     -1128 |     -1153 |     -1159 |     -1169 |     -1179 |     -1129 |     -1322 |      1505 |
|              Improvement %               |        27 |        28 |        28 |        28 |        28 |        27 |        29 |      1505 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        77 |        78 |        83 |        87 |        99 |       148 |      9069 |
|                  jbird                   |        58 |        62 |        65 |        66 |        66 |        74 |        94 |     10400 |
|                    Δ                     |       -17 |       -15 |       -13 |       -17 |       -21 |       -25 |       -54 |      1331 |
|              Improvement %               |        23 |        19 |        17 |        20 |        24 |        25 |        36 |      1331 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        78 |        80 |        85 |        88 |       101 |       116 |      9069 |
|                  jbird                   |        59 |        63 |        67 |        67 |        68 |        76 |        98 |     10400 |
|                    Δ                     |       -18 |       -15 |       -13 |       -18 |       -20 |       -25 |       -18 |      1331 |
|              Improvement %               |        23 |        19 |        16 |        21 |        23 |        25 |        16 |      1331 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        12 |        10 |         7 |      9069 |
|                  jbird                   |        17 |        16 |        15 |        15 |        15 |        13 |        11 |     10400 |
|                    Δ                     |         4 |         3 |         2 |         3 |         3 |         3 |         4 |      1331 |
|              Improvement %               |        31 |        23 |        15 |        25 |        25 |        30 |        57 |      1331 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        36 |        48 |        59 |        65 |        69 |        70 |      9069 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10400 |
|                    Δ                     |         0 |       -11 |       -23 |       -34 |       -40 |       -44 |       -45 |      1331 |
|              Improvement %               |         0 |        31 |        48 |        58 |        62 |        64 |        64 |      1331 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      9069 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     10400 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |      1331 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      1331 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1148 |      1149 |      1150 |      1156 |      1160 |      1168 |      1262 |      9069 |
|                  jbird                   |      1612 |      1613 |      1613 |      1613 |      1613 |      1641 |      1666 |     10400 |
|                    Δ                     |       464 |       464 |       463 |       457 |       453 |       473 |       404 |      1331 |
|              Improvement %               |       -40 |       -40 |       -40 |       -40 |       -39 |       -40 |       -32 |      1331 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       245 |       269 |       274 |       279 |       284 |       300 |       320 |      3257 |
|                  jbird                   |        86 |        96 |        98 |        99 |       101 |       114 |       178 |      7739 |
|                    Δ                     |      -159 |      -173 |      -176 |      -180 |      -183 |      -186 |      -142 |      4482 |
|              Improvement %               |        65 |        64 |        64 |        65 |        64 |        62 |        44 |      4482 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       246 |       270 |       275 |       281 |       286 |       301 |       316 |      3257 |
|                  jbird                   |        87 |        97 |       100 |       101 |       103 |       116 |       182 |      7739 |
|                    Δ                     |      -159 |      -173 |      -175 |      -180 |      -183 |      -185 |      -134 |      4482 |
|              Improvement %               |        65 |        64 |        64 |        64 |        64 |        61 |        42 |      4482 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4082 |      3721 |      3651 |      3585 |      3523 |      3341 |      3127 |      3257 |
|                  jbird                   |     11645 |     10463 |     10191 |     10079 |      9887 |      8799 |      5604 |      7739 |
|                    Δ                     |      7563 |      6742 |      6540 |      6494 |      6364 |      5458 |      2477 |      4482 |
|              Improvement %               |       185 |       181 |       179 |       181 |       181 |       163 |        79 |      4482 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        87 |       148 |       211 |       248 |       269 |       272 |      3257 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7739 |
|                    Δ                     |         0 |       -61 |      -122 |      -185 |      -222 |      -243 |      -246 |      4482 |
|              Improvement %               |         0 |        70 |        82 |        88 |        90 |        90 |        90 |      4482 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3257 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7739 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4482 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4482 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6960 |      6967 |      6971 |      6988 |      7000 |      7029 |      7310 |      3257 |
|                  jbird                   |      2546 |      2548 |      2548 |      2548 |      2548 |      2560 |      2789 |      7739 |
|                    Δ                     |     -4414 |     -4419 |     -4423 |     -4440 |     -4452 |     -4469 |     -4521 |      4482 |
|              Improvement %               |        63 |        63 |        63 |        64 |        64 |        64 |        62 |      4482 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       384 |       419 |       423 |       428 |       434 |       458 |       499 |      2186 |
|                  jbird                   |        57 |        63 |        65 |        66 |        67 |        76 |       137 |     10423 |
|                    Δ                     |      -327 |      -356 |      -358 |      -362 |      -367 |      -382 |      -362 |      8237 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        83 |        73 |      8237 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       385 |       421 |       425 |       430 |       436 |       461 |       492 |      2186 |
|                  jbird                   |        58 |        65 |        67 |        68 |        69 |        78 |       141 |     10423 |
|                    Δ                     |      -327 |      -356 |      -358 |      -362 |      -367 |      -383 |      -351 |      8237 |
|              Improvement %               |        85 |        85 |        84 |        84 |        84 |        83 |        71 |      8237 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2603 |      2387 |      2365 |      2337 |      2305 |      2185 |      2005 |      2186 |
|                  jbird                   |     17634 |     15815 |     15359 |     15127 |     14903 |     13119 |      7290 |     10423 |
|                    Δ                     |     15031 |     13428 |     12994 |     12790 |     12598 |     10934 |      5285 |      8237 |
|              Improvement %               |       577 |       563 |       549 |       547 |       547 |       500 |       264 |      8237 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        76 |       127 |       176 |       207 |       226 |       228 |      2186 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10423 |
|                    Δ                     |         0 |       -50 |      -101 |      -150 |      -181 |      -200 |      -202 |      8237 |
|              Improvement %               |         0 |        66 |        80 |        85 |        87 |        88 |        89 |      8237 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2186 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10423 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      8237 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8237 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9065 |      9093 |      9101 |      9101 |      9110 |      9232 |      9508 |      2186 |
|                  jbird                   |      1566 |      1567 |      1567 |      1567 |      1567 |      1573 |      1690 |     10423 |
|                    Δ                     |     -7499 |     -7526 |     -7534 |     -7534 |     -7543 |     -7659 |     -7818 |      8237 |
|              Improvement %               |        83 |        83 |        83 |        83 |        83 |        83 |        82 |      8237 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        73 |        80 |        84 |        87 |        90 |       100 |       212 |      8492 |
|                  jbird                   |        28 |        31 |        32 |        33 |        34 |        40 |        70 |     15018 |
|                    Δ                     |       -45 |       -49 |       -52 |       -54 |       -56 |       -60 |      -142 |      6526 |
|              Improvement %               |        62 |        61 |        62 |        62 |        62 |        60 |        67 |      6526 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        81 |        85 |        89 |        92 |       102 |       199 |      8492 |
|                  jbird                   |        30 |        32 |        34 |        34 |        36 |        42 |        68 |     15018 |
|                    Δ                     |       -44 |       -49 |       -51 |       -55 |       -56 |       -60 |      -131 |      6526 |
|              Improvement %               |        59 |        60 |        60 |        62 |        61 |        59 |        66 |      6526 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        13 |        12 |        11 |        11 |        10 |         5 |      8492 |
|                  jbird                   |        35 |        33 |        31 |        31 |        29 |        25 |        14 |     15018 |
|                    Δ                     |        21 |        20 |        19 |        20 |        18 |        15 |         9 |      6526 |
|              Improvement %               |       150 |       154 |       158 |       182 |       164 |       150 |       180 |      6526 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       156 |       290 |       424 |       503 |       549 |       555 |      8492 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     15018 |
|                    Δ                     |         0 |      -131 |      -265 |      -399 |      -478 |      -524 |      -530 |      6526 |
|              Improvement %               |         0 |        84 |        91 |        94 |        95 |        95 |        95 |      6526 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |      8492 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15018 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |      6526 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      6526 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1891 |      1907 |      1912 |      1918 |      1924 |      1950 |      2077 |      8492 |
|                  jbird                   |       876 |       877 |       877 |       877 |       877 |       882 |       928 |     15018 |
|                    Δ                     |     -1015 |     -1030 |     -1035 |     -1041 |     -1047 |     -1068 |     -1149 |      6526 |
|              Improvement %               |        54 |        54 |        54 |        54 |        54 |        55 |        55 |      6526 |

<p>
</details>

