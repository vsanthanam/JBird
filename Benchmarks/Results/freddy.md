
# JBird vs. Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2550 |      2761 |      2796 |      2828 |      2855 |      3375 |      4135 |       351 |
|                  freddy                  |      2972 |      3213 |      3238 |      3269 |      3303 |      3568 |      3672 |       304 |
|                    Δ                     |       422 |       452 |       442 |       441 |       448 |       193 |      -463 |       -47 |
|              Improvement %               |       -17 |       -16 |       -16 |       -16 |       -16 |        -6 |        11 |       -47 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2552 |      2763 |      2798 |      2830 |      2859 |      3377 |      4141 |       351 |
|                  freddy                  |      2975 |      3215 |      3242 |      3269 |      3305 |      3566 |      3676 |       304 |
|                    Δ                     |       423 |       452 |       444 |       439 |       446 |       189 |      -465 |       -47 |
|              Improvement %               |       -17 |       -16 |       -16 |       -16 |       -16 |        -6 |        11 |       -47 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       392 |       362 |       358 |       354 |       350 |       296 |       242 |       351 |
|                  freddy                  |       337 |       311 |       309 |       306 |       303 |       280 |       272 |       304 |
|                    Δ                     |       -55 |       -51 |       -49 |       -48 |       -47 |       -16 |        30 |       -47 |
|              Improvement %               |       -14 |       -14 |       -14 |       -14 |       -13 |        -5 |        12 |       -47 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       152 |       281 |       408 |       483 |       527 |       533 |       351 |
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       304 |
|                    Δ                     |         1 |      -123 |      -252 |      -379 |      -454 |      -498 |      -504 |       -47 |
|              Improvement %               |        -4 |        81 |        90 |        93 |        94 |        94 |        95 |       -47 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       351 |
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       304 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       -47 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       -47 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        64 |        65 |       351 |
|                  freddy                  |        66 |        66 |        66 |        66 |        66 |        67 |        68 |       304 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         3 |         3 |       -47 |
|              Improvement %               |        -3 |        -3 |        -3 |        -3 |        -3 |        -5 |        -5 |       -47 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2699 |      2869 |      2894 |      2929 |      2966 |      3013 |      3044 |       341 |
|                  freddy                  |      2996 |      3246 |      3260 |      3277 |      3303 |      3361 |      3436 |       303 |
|                    Δ                     |       297 |       377 |       366 |       348 |       337 |       348 |       392 |       -38 |
|              Improvement %               |       -11 |       -13 |       -13 |       -12 |       -11 |       -12 |       -13 |       -38 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2700 |      2871 |      2896 |      2933 |      2966 |      3015 |      3046 |       341 |
|                  freddy                  |      3003 |      3250 |      3265 |      3279 |      3303 |      3363 |      3437 |       303 |
|                    Δ                     |       303 |       379 |       369 |       346 |       337 |       348 |       391 |       -38 |
|              Improvement %               |       -11 |       -13 |       -13 |       -12 |       -11 |       -12 |       -13 |       -38 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       371 |       349 |       346 |       342 |       337 |       332 |       329 |       341 |
|                  freddy                  |       334 |       308 |       307 |       305 |       303 |       298 |       291 |       303 |
|                    Δ                     |       -37 |       -41 |       -39 |       -37 |       -34 |       -34 |       -38 |       -38 |
|              Improvement %               |       -10 |       -12 |       -11 |       -11 |       -10 |       -10 |       -12 |       -38 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       146 |       275 |       395 |       469 |       513 |       519 |       341 |
|                  freddy                  |        27 |        28 |        28 |        29 |        29 |        29 |        29 |       303 |
|                    Δ                     |         1 |      -118 |      -247 |      -366 |      -440 |      -484 |      -490 |       -38 |
|              Improvement %               |        -4 |        81 |        90 |        93 |        94 |        94 |        94 |       -38 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       341 |
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       303 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       -38 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       -38 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        65 |        66 |       341 |
|                  freddy                  |        67 |        67 |        67 |        67 |        68 |        68 |        69 |       303 |
|                    Δ                     |         2 |         2 |         2 |         2 |         3 |         3 |         3 |       -38 |
|              Improvement %               |        -3 |        -3 |        -3 |        -3 |        -5 |        -5 |        -5 |       -38 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       638 |       695 |       705 |       714 |       726 |       779 |       862 |      1348 |
|                  freddy                  |       732 |       799 |       806 |       813 |       820 |       840 |       894 |      1182 |
|                    Δ                     |        94 |       104 |       101 |        99 |        94 |        61 |        32 |      -166 |
|              Improvement %               |       -15 |       -15 |       -14 |       -14 |       -13 |        -8 |        -4 |      -166 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       640 |       696 |       707 |       716 |       728 |       780 |       844 |      1348 |
|                  freddy                  |       733 |       801 |       807 |       815 |       822 |       842 |       896 |      1182 |
|                    Δ                     |        93 |       105 |       100 |        99 |        94 |        62 |        52 |      -166 |
|              Improvement %               |       -15 |       -15 |       -14 |       -14 |       -13 |        -8 |        -6 |      -166 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1567 |      1440 |      1419 |      1400 |      1379 |      1284 |      1160 |      1348 |
|                  freddy                  |      1366 |      1252 |      1241 |      1231 |      1220 |      1190 |      1118 |      1182 |
|                    Δ                     |      -201 |      -188 |      -178 |      -169 |      -159 |       -94 |       -42 |      -166 |
|              Improvement %               |       -13 |       -13 |       -13 |       -12 |       -12 |        -7 |        -4 |      -166 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       145 |       274 |       396 |       471 |       514 |       519 |      1348 |
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1182 |
|                    Δ                     |         0 |      -119 |      -248 |      -370 |      -445 |      -488 |      -493 |      -166 |
|              Improvement %               |         0 |        82 |        91 |        93 |        94 |        95 |        95 |      -166 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1348 |
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1182 |
|                    Δ                     |     -1103 |     -1103 |     -1103 |     -1103 |     -1103 |     -1103 |     -1104 |      -166 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |      -166 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1348 |
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1182 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         0 |      -166 |
|              Improvement %               |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |         0 |      -166 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       667 |       721 |       730 |       739 |       748 |       775 |       873 |      1307 |
|                  freddy                  |       740 |       806 |       814 |       820 |       826 |       847 |       950 |      1173 |
|                    Δ                     |        73 |        85 |        84 |        81 |        78 |        72 |        77 |      -134 |
|              Improvement %               |       -11 |       -12 |       -12 |       -11 |       -10 |        -9 |        -9 |      -134 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       668 |       722 |       731 |       740 |       750 |       770 |       845 |      1307 |
|                  freddy                  |       742 |       808 |       815 |       821 |       828 |       849 |       951 |      1173 |
|                    Δ                     |        74 |        86 |        84 |        81 |        78 |        79 |       106 |      -134 |
|              Improvement %               |       -11 |       -12 |       -11 |       -11 |       -10 |       -10 |       -13 |      -134 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1499 |      1387 |      1371 |      1354 |      1337 |      1290 |      1146 |      1307 |
|                  freddy                  |      1351 |      1240 |      1230 |      1220 |      1210 |      1180 |      1053 |      1173 |
|                    Δ                     |      -148 |      -147 |      -141 |      -134 |      -127 |      -110 |       -93 |      -134 |
|              Improvement %               |       -10 |       -11 |       -10 |       -10 |        -9 |        -9 |        -8 |      -134 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       145 |       265 |       385 |       458 |       501 |       501 |      1307 |
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1173 |
|                    Δ                     |         0 |      -119 |      -239 |      -359 |      -432 |      -475 |      -475 |      -134 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |      -134 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1307 |
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1173 |
|                    Δ                     |     -1103 |     -1103 |     -1103 |     -1103 |     -1103 |     -1103 |     -1104 |      -134 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |      -134 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1307 |
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        18 |      1173 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         0 |         1 |      -134 |
|              Improvement %               |        -6 |        -6 |        -6 |        -6 |        -6 |         0 |        -6 |      -134 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1301 |      1401 |      1412 |      1424 |      1437 |      1499 |      1570 |       691 |
|                  freddy                  |      1463 |      1611 |      1622 |      1634 |      1654 |      1736 |      1855 |       601 |
|                    Δ                     |       162 |       210 |       210 |       210 |       217 |       237 |       285 |       -90 |
|              Improvement %               |       -12 |       -15 |       -15 |       -15 |       -15 |       -16 |       -18 |       -90 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1305 |      1402 |      1413 |      1426 |      1439 |      1500 |      1571 |       691 |
|                  freddy                  |      1465 |      1612 |      1624 |      1636 |      1656 |      1738 |      1856 |       601 |
|                    Δ                     |       160 |       210 |       211 |       210 |       217 |       238 |       285 |       -90 |
|              Improvement %               |       -12 |       -15 |       -15 |       -15 |       -15 |       -16 |       -18 |       -90 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       769 |       714 |       709 |       703 |       696 |       667 |       637 |       691 |
|                  freddy                  |       683 |       621 |       617 |       612 |       605 |       576 |       539 |       601 |
|                    Δ                     |       -86 |       -93 |       -92 |       -91 |       -91 |       -91 |       -98 |       -90 |
|              Improvement %               |       -11 |       -13 |       -13 |       -13 |       -13 |       -14 |       -15 |       -90 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       147 |       278 |       402 |       478 |       523 |       530 |       691 |
|                  freddy                  |        26 |        27 |        27 |        28 |        28 |        28 |        28 |       601 |
|                    Δ                     |         0 |      -120 |      -251 |      -374 |      -450 |      -495 |      -502 |       -90 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |       -90 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       691 |
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       601 |
|                    Δ                     |     -2159 |     -2160 |     -2160 |     -2160 |     -2160 |     -2160 |     -2160 |       -90 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       -90 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        34 |       691 |
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       601 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         2 |         0 |       -90 |
|              Improvement %               |        -3 |        -3 |        -3 |        -3 |        -3 |        -6 |         0 |       -90 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1328 |      1433 |      1445 |      1456 |      1467 |      1514 |      1785 |       676 |
|                  freddy                  |      1500 |      1629 |      1639 |      1651 |      1662 |      1700 |      1740 |       596 |
|                    Δ                     |       172 |       196 |       194 |       195 |       195 |       186 |       -45 |       -80 |
|              Improvement %               |       -13 |       -14 |       -13 |       -13 |       -13 |       -12 |         3 |       -80 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1329 |      1434 |      1447 |      1458 |      1469 |      1517 |      1746 |       676 |
|                  freddy                  |      1501 |      1631 |      1641 |      1653 |      1664 |      1702 |      1742 |       596 |
|                    Δ                     |       172 |       197 |       194 |       195 |       195 |       185 |        -4 |       -80 |
|              Improvement %               |       -13 |       -14 |       -13 |       -13 |       -13 |       -12 |         0 |       -80 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       753 |       698 |       692 |       687 |       682 |       660 |       560 |       676 |
|                  freddy                  |       667 |       614 |       610 |       606 |       602 |       588 |       575 |       596 |
|                    Δ                     |       -86 |       -84 |       -82 |       -81 |       -80 |       -72 |        15 |       -80 |
|              Improvement %               |       -11 |       -12 |       -12 |       -12 |       -12 |       -11 |         3 |       -80 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       149 |       269 |       396 |       470 |       510 |       516 |       676 |
|                  freddy                  |        26 |        27 |        27 |        27 |        28 |        28 |        28 |       596 |
|                    Δ                     |         0 |      -122 |      -242 |      -369 |      -442 |      -482 |      -488 |       -80 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |       -80 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       676 |
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       596 |
|                    Δ                     |     -2159 |     -2160 |     -2160 |     -2160 |     -2160 |     -2160 |     -2160 |       -80 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       -80 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       676 |
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        34 |       596 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       -80 |
|              Improvement %               |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       -80 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        71 |
|                  freddy                  |        16 |        16 |        16 |        17 |        17 |        19 |        19 |        61 |
|                    Δ                     |         3 |         2 |         2 |         3 |         3 |         5 |         5 |       -10 |
|              Improvement %               |       -23 |       -14 |       -14 |       -21 |       -21 |       -36 |       -36 |       -10 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        71 |
|                  freddy                  |        16 |        16 |        16 |        17 |        17 |        19 |        19 |        61 |
|                    Δ                     |         3 |         2 |         2 |         3 |         3 |         5 |         5 |       -10 |
|              Improvement %               |       -23 |       -14 |       -14 |       -21 |       -21 |       -36 |       -36 |       -10 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        72 |        71 |        70 |        70 |        70 |        70 |        71 |
|                  freddy                  |        63 |        61 |        61 |        60 |        60 |        54 |        54 |        61 |
|                    Δ                     |       -12 |       -11 |       -10 |       -10 |       -10 |       -16 |       -16 |       -10 |
|              Improvement %               |       -16 |       -15 |       -14 |       -14 |       -14 |       -23 |       -23 |       -10 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       156 |       292 |       419 |       490 |       543 |       543 |        71 |
|                  freddy                  |        36 |        41 |        42 |        42 |        42 |        42 |        42 |        61 |
|                    Δ                     |        -3 |      -115 |      -250 |      -377 |      -448 |      -501 |      -501 |       -10 |
|              Improvement %               |         8 |        74 |        86 |        90 |        91 |        92 |        92 |       -10 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        71 |
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        61 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -10 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |       -10 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       319 |       320 |       320 |       320 |       320 |       320 |        71 |
|                  freddy                  |       332 |       333 |       333 |       333 |       334 |       338 |       338 |        61 |
|                    Δ                     |        13 |        14 |        13 |        13 |        14 |        18 |        18 |       -10 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -6 |        -6 |       -10 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        15 |        15 |        15 |        15 |        17 |        17 |        68 |
|                  freddy                  |        16 |        16 |        16 |        16 |        17 |        17 |        17 |        61 |
|                    Δ                     |         2 |         1 |         1 |         1 |         2 |         0 |         0 |        -7 |
|              Improvement %               |       -14 |        -7 |        -7 |        -7 |       -13 |         0 |         0 |        -7 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        15 |        15 |        15 |        15 |        17 |        17 |        68 |
|                  freddy                  |        16 |        16 |        16 |        16 |        17 |        17 |        17 |        61 |
|                    Δ                     |         2 |         1 |         1 |         1 |         2 |         0 |         0 |        -7 |
|              Improvement %               |       -14 |        -7 |        -7 |        -7 |       -13 |         0 |         0 |        -7 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        71 |        69 |        68 |        68 |        67 |        57 |        57 |        68 |
|                  freddy                  |        63 |        61 |        61 |        61 |        60 |        58 |        58 |        61 |
|                    Δ                     |        -8 |        -8 |        -7 |        -7 |        -7 |         1 |         1 |        -7 |
|              Improvement %               |       -11 |       -12 |       -10 |       -10 |       -10 |         2 |         2 |        -7 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       150 |       278 |       398 |       480 |       522 |       522 |        68 |
|                  freddy                  |        35 |        39 |        39 |        40 |        40 |        42 |        42 |        61 |
|                    Δ                     |        -4 |      -111 |      -239 |      -358 |      -440 |      -480 |      -480 |        -7 |
|              Improvement %               |        10 |        74 |        86 |        90 |        92 |        92 |        92 |        -7 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        68 |
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        61 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        -7 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        -7 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       325 |       325 |       325 |       325 |       325 |       325 |        68 |
|                  freddy                  |       339 |       339 |       339 |       340 |       340 |       345 |       345 |        61 |
|                    Δ                     |        15 |        14 |        14 |        15 |        15 |        20 |        20 |        -7 |
|              Improvement %               |        -5 |        -4 |        -4 |        -5 |        -5 |        -6 |        -6 |        -7 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       164 |       178 |       185 |       189 |       193 |       208 |       301 |      4533 |
|                  freddy                  |       183 |       199 |       205 |       208 |       210 |       222 |       246 |      4148 |
|                    Δ                     |        19 |        21 |        20 |        19 |        17 |        14 |       -55 |      -385 |
|              Improvement %               |       -12 |       -12 |       -11 |       -10 |        -9 |        -7 |        18 |      -385 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       166 |       180 |       186 |       190 |       195 |       211 |       292 |      4533 |
|                  freddy                  |       184 |       200 |       206 |       210 |       212 |       224 |       248 |      4148 |
|                    Δ                     |        18 |        20 |        20 |        20 |        17 |        13 |       -44 |      -385 |
|              Improvement %               |       -11 |       -11 |       -11 |       -11 |        -9 |        -6 |        15 |      -385 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6090 |      5607 |      5415 |      5295 |      5187 |      4819 |      3327 |      4533 |
|                  freddy                  |      5464 |      5043 |      4887 |      4811 |      4755 |      4499 |      4066 |      4148 |
|                    Δ                     |      -626 |      -564 |      -528 |      -484 |      -432 |      -320 |       739 |      -385 |
|              Improvement %               |       -10 |       -10 |       -10 |        -9 |        -8 |        -7 |        22 |      -385 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       131 |       244 |       354 |       419 |       457 |       463 |      4533 |
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4148 |
|                    Δ                     |         0 |      -106 |      -219 |      -329 |      -394 |      -432 |      -438 |      -385 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        95 |        95 |      -385 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4533 |
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4148 |
|                    Δ                     |      -312 |      -312 |      -312 |      -312 |      -312 |      -312 |      -313 |      -385 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      -385 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4079 |      4106 |      4114 |      4125 |      4133 |      4159 |      4358 |      4533 |
|                  freddy                  |      4158 |      4159 |      4159 |      4159 |      4159 |      4223 |      4432 |      4148 |
|                    Δ                     |        79 |        53 |        45 |        34 |        26 |        64 |        74 |      -385 |
|              Improvement %               |        -2 |        -1 |        -1 |        -1 |        -1 |        -2 |        -2 |      -385 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       170 |       185 |       192 |       197 |       201 |       213 |       247 |      4392 |
|                  freddy                  |       184 |       201 |       207 |       210 |       213 |       226 |       255 |      4098 |
|                    Δ                     |        14 |        16 |        15 |        13 |        12 |        13 |         8 |      -294 |
|              Improvement %               |        -8 |        -9 |        -8 |        -7 |        -6 |        -6 |        -3 |      -294 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       172 |       187 |       193 |       199 |       203 |       214 |       254 |      4392 |
|                  freddy                  |       185 |       203 |       209 |       212 |       215 |       228 |       255 |      4098 |
|                    Δ                     |        13 |        16 |        16 |        13 |        12 |        14 |         1 |      -294 |
|              Improvement %               |        -8 |        -9 |        -8 |        -7 |        -6 |        -7 |         0 |      -294 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5875 |      5407 |      5215 |      5083 |      4967 |      4703 |      4047 |      4392 |
|                  freddy                  |      5443 |      4975 |      4831 |      4755 |      4691 |      4431 |      3917 |      4098 |
|                    Δ                     |      -432 |      -432 |      -384 |      -328 |      -276 |      -272 |      -130 |      -294 |
|              Improvement %               |        -7 |        -8 |        -7 |        -6 |        -6 |        -6 |        -3 |      -294 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       130 |       237 |       345 |       411 |       446 |       451 |      4392 |
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4098 |
|                    Δ                     |         0 |      -105 |      -212 |      -320 |      -386 |      -421 |      -426 |      -294 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |      -294 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4392 |
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4098 |
|                    Δ                     |      -312 |      -312 |      -312 |      -312 |      -312 |      -312 |      -313 |      -294 |
|              Improvement %               |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      -294 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4145 |      4170 |      4178 |      4188 |      4198 |      4223 |      4352 |      4392 |
|                  freddy                  |      4231 |      4235 |      4235 |      4235 |      4235 |      4297 |      4505 |      4098 |
|                    Δ                     |        86 |        65 |        57 |        47 |        37 |        74 |       153 |      -294 |
|              Improvement %               |        -2 |        -2 |        -1 |        -1 |        -1 |        -2 |        -4 |      -294 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        76 |        78 |        84 |        86 |        96 |       129 |      9077 |
|                  freddy                  |        55 |        60 |        64 |        64 |        65 |        72 |        91 |     10311 |
|                    Δ                     |       -20 |       -16 |       -14 |       -20 |       -21 |       -24 |       -38 |      1234 |
|              Improvement %               |        27 |        21 |        18 |        24 |        24 |        25 |        29 |      1234 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        78 |        79 |        85 |        88 |        97 |       130 |      9077 |
|                  freddy                  |        56 |        62 |        65 |        66 |        67 |        75 |        91 |     10311 |
|                    Δ                     |       -20 |       -16 |       -14 |       -19 |       -21 |       -22 |       -39 |      1234 |
|              Improvement %               |        26 |        21 |        18 |        22 |        24 |        23 |        30 |      1234 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        12 |        10 |         8 |      9077 |
|                  freddy                  |        18 |        17 |        16 |        16 |        15 |        14 |        11 |     10311 |
|                    Δ                     |         5 |         4 |         3 |         4 |         3 |         4 |         3 |      1234 |
|              Improvement %               |        38 |        31 |        23 |        33 |        25 |        40 |        38 |      1234 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        36 |        47 |        59 |        66 |        70 |        70 |      9077 |
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10311 |
|                    Δ                     |         0 |       -11 |       -22 |       -34 |       -41 |       -45 |       -45 |      1234 |
|              Improvement %               |         0 |        31 |        47 |        58 |        62 |        64 |        64 |      1234 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      9077 |
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     10311 |
|                    Δ                     |       154 |       154 |       154 |       154 |       154 |       154 |       153 |      1234 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |       -99 |      1234 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1148 |      1149 |      1150 |      1156 |      1160 |      1168 |      1285 |      9077 |
|                  freddy                  |      1626 |      1626 |      1626 |      1627 |      1627 |      1659 |      1677 |     10311 |
|                    Δ                     |       478 |       477 |       476 |       471 |       467 |       491 |       392 |      1234 |
|              Improvement %               |       -42 |       -42 |       -41 |       -41 |       -40 |       -42 |       -31 |      1234 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       241 |       266 |       271 |       275 |       280 |       294 |       326 |      3291 |
|                  freddy                  |        90 |        99 |       101 |       104 |       105 |       113 |       136 |      7358 |
|                    Δ                     |      -151 |      -167 |      -170 |      -171 |      -175 |      -181 |      -190 |      4067 |
|              Improvement %               |        63 |        63 |        63 |        62 |        62 |        62 |        58 |      4067 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       242 |       268 |       272 |       277 |       282 |       295 |       327 |      3291 |
|                  freddy                  |        91 |       100 |       103 |       105 |       106 |       116 |       132 |      7358 |
|                    Δ                     |      -151 |      -168 |      -169 |      -172 |      -176 |      -179 |      -195 |      4067 |
|              Improvement %               |        62 |        63 |        62 |        62 |        62 |        61 |        60 |      4067 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4150 |      3761 |      3697 |      3637 |      3571 |      3401 |      3071 |      3291 |
|                  freddy                  |     11121 |     10151 |      9895 |      9655 |      9567 |      8863 |      7376 |      7358 |
|                    Δ                     |      6971 |      6390 |      6198 |      6018 |      5996 |      5462 |      4305 |      4067 |
|              Improvement %               |       168 |       170 |       168 |       165 |       168 |       161 |       140 |      4067 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        87 |       150 |       210 |       248 |       270 |       273 |      3291 |
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7358 |
|                    Δ                     |         0 |       -61 |      -124 |      -184 |      -222 |      -244 |      -247 |      4067 |
|              Improvement %               |         0 |        70 |        83 |        88 |        90 |        90 |        90 |      4067 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3291 |
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      7358 |
|                    Δ                     |      -596 |      -596 |      -596 |      -596 |      -596 |      -596 |      -597 |      4067 |
|              Improvement %               |        73 |        73 |        73 |        73 |        73 |        73 |        73 |      4067 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6960 |      6967 |      6971 |      6984 |      7000 |      7016 |      7339 |      3291 |
|                  freddy                  |      2660 |      2662 |      2662 |      2662 |      2664 |      2683 |      2826 |      7358 |
|                    Δ                     |     -4300 |     -4305 |     -4309 |     -4322 |     -4336 |     -4333 |     -4513 |      4067 |
|              Improvement %               |        62 |        62 |        62 |        62 |        62 |        62 |        61 |      4067 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       380 |       417 |       422 |       428 |       434 |       452 |       492 |      2191 |
|                  freddy                  |        84 |        88 |        94 |        95 |        98 |       109 |       133 |      7908 |
|                    Δ                     |      -296 |      -329 |      -328 |      -333 |      -336 |      -343 |      -359 |      5717 |
|              Improvement %               |        78 |        79 |        78 |        78 |        77 |        76 |        73 |      5717 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       381 |       419 |       424 |       430 |       435 |       453 |       490 |      2191 |
|                  freddy                  |        85 |        90 |        96 |        96 |        99 |       111 |       137 |      7908 |
|                    Δ                     |      -296 |      -329 |      -328 |      -334 |      -336 |      -342 |      -353 |      5717 |
|              Improvement %               |        78 |        79 |        77 |        78 |        77 |        75 |        72 |      5717 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2633 |      2399 |      2369 |      2337 |      2305 |      2213 |      2033 |      2191 |
|                  freddy                  |     11875 |     11327 |     10615 |     10551 |     10263 |      9167 |      7505 |      7908 |
|                    Δ                     |      9242 |      8928 |      8246 |      8214 |      7958 |      6954 |      5472 |      5717 |
|              Improvement %               |       351 |       372 |       348 |       351 |       345 |       314 |       269 |      5717 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        76 |       127 |       176 |       209 |       227 |       229 |      2191 |
|                  freddy                  |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      7908 |
|                    Δ                     |         0 |       -51 |      -101 |      -150 |      -183 |      -201 |      -203 |      5717 |
|              Improvement %               |         0 |        67 |        80 |        85 |        88 |        89 |        89 |      5717 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2191 |
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      7908 |
|                    Δ                     |     -2954 |     -2954 |     -2954 |     -2954 |     -2954 |     -2954 |     -2955 |      5717 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      5717 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9072 |      9093 |      9101 |      9101 |      9110 |      9241 |      9650 |      2191 |
|                  freddy                  |      1801 |      1801 |      1801 |      1801 |      1801 |      1816 |      1937 |      7908 |
|                    Δ                     |     -7271 |     -7292 |     -7300 |     -7300 |     -7309 |     -7425 |     -7713 |      5717 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |      5717 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       521 |       574 |       580 |       592 |       603 |       653 |       691 |      1606 |
|                  freddy                  |       326 |       361 |       367 |       375 |       386 |       415 |       460 |      2453 |
|                    Δ                     |      -195 |      -213 |      -213 |      -217 |      -217 |      -238 |      -231 |       847 |
|              Improvement %               |        37 |        37 |        37 |        37 |        36 |        36 |        33 |       847 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       522 |       575 |       581 |       594 |       605 |       654 |       693 |      1606 |
|                  freddy                  |       328 |       363 |       369 |       376 |       388 |       417 |       459 |      2453 |
|                    Δ                     |      -194 |      -212 |      -212 |      -218 |      -217 |      -237 |      -234 |       847 |
|              Improvement %               |        37 |        37 |        36 |        37 |        36 |        36 |        34 |       847 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1920 |      1743 |      1726 |      1689 |      1658 |      1532 |      1446 |      1606 |
|                  freddy                  |      3064 |      2767 |      2725 |      2671 |      2595 |      2413 |      2176 |      2453 |
|                    Δ                     |      1144 |      1024 |       999 |       982 |       937 |       881 |       730 |       847 |
|              Improvement %               |        60 |        59 |        58 |        58 |        57 |        58 |        50 |       847 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        41 |        57 |        73 |        83 |        89 |        89 |      1606 |
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      2453 |
|                    Δ                     |         0 |       -16 |       -32 |       -48 |       -58 |       -64 |       -64 |       847 |
|              Improvement %               |         0 |        39 |        56 |        66 |        70 |        72 |        72 |       847 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5756 |      5757 |      5757 |      5757 |      5757 |      5757 |      5757 |      1606 |
|                  freddy                  |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      2453 |
|                    Δ                     |       -55 |       -56 |       -56 |       -56 |       -56 |       -56 |       -56 |       847 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       847 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      1606 |
|                  freddy                  |         8 |         8 |         8 |         8 |         8 |         9 |         9 |      2453 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -5 |        -5 |       847 |
|              Improvement %               |        43 |        43 |        43 |        43 |        43 |        36 |        36 |       847 |

<p>
</details>

