
# JBird vs. SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2550 |      2761 |      2796 |      2828 |      2855 |      3375 |      4135 |       351 |
|                swiftyjson                |      9402 |      9863 |      9929 |     10002 |     10109 |     10494 |     12275 |       100 |
|                    Δ                     |      6852 |      7102 |      7133 |      7174 |      7254 |      7119 |      8140 |      -251 |
|              Improvement %               |      -269 |      -257 |      -255 |      -254 |      -254 |      -211 |      -197 |      -251 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2552 |      2763 |      2798 |      2830 |      2859 |      3377 |      4141 |       351 |
|                swiftyjson                |      9408 |      9863 |      9929 |     10011 |     10117 |     10502 |     12280 |       100 |
|                    Δ                     |      6856 |      7100 |      7131 |      7181 |      7258 |      7125 |      8139 |      -251 |
|              Improvement %               |      -269 |      -257 |      -255 |      -254 |      -254 |      -211 |      -197 |      -251 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       392 |       362 |       358 |       354 |       350 |       296 |       242 |       351 |
|                swiftyjson                |       106 |       101 |       101 |       100 |        99 |        81 |        81 |       100 |
|                    Δ                     |      -286 |      -261 |      -257 |      -254 |      -251 |      -215 |      -161 |      -251 |
|              Improvement %               |       -73 |       -72 |       -72 |       -72 |       -72 |       -73 |       -67 |      -251 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       152 |       281 |       408 |       483 |       527 |       533 |       351 |
|                swiftyjson                |        27 |        64 |       100 |       137 |       158 |       173 |       173 |       100 |
|                    Δ                     |         1 |       -88 |      -181 |      -271 |      -325 |      -354 |      -360 |      -251 |
|              Improvement %               |        -4 |        58 |        64 |        66 |        67 |        67 |        68 |      -251 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       351 |
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       100 |
|                    Δ                     |         6 |         6 |         6 |         6 |         6 |         6 |         6 |      -251 |
|              Improvement %               |       -40 |       -40 |       -40 |       -40 |       -40 |       -40 |       -40 |      -251 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        64 |        65 |       351 |
|                swiftyjson                |       234 |       234 |       234 |       234 |       235 |       235 |       238 |       100 |
|                    Δ                     |       170 |       170 |       170 |       170 |       171 |       171 |       173 |      -251 |
|              Improvement %               |      -266 |      -266 |      -266 |      -266 |      -267 |      -267 |      -266 |      -251 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2699 |      2869 |      2894 |      2929 |      2966 |      3013 |      3044 |       341 |
|                swiftyjson                |     10063 |     10437 |     10502 |     10674 |     10838 |     11348 |     11348 |        95 |
|                    Δ                     |      7364 |      7568 |      7608 |      7745 |      7872 |      8335 |      8304 |      -246 |
|              Improvement %               |      -273 |      -264 |      -263 |      -264 |      -265 |      -277 |      -273 |      -246 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2700 |      2871 |      2896 |      2933 |      2966 |      3015 |      3046 |       341 |
|                swiftyjson                |     10055 |     10445 |     10502 |     10682 |     10846 |     11355 |     11355 |        95 |
|                    Δ                     |      7355 |      7574 |      7606 |      7749 |      7880 |      8340 |      8309 |      -246 |
|              Improvement %               |      -272 |      -264 |      -263 |      -264 |      -266 |      -277 |      -273 |      -246 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       371 |       349 |       346 |       342 |       337 |       332 |       329 |       341 |
|                swiftyjson                |        99 |        96 |        95 |        94 |        92 |        88 |        88 |        95 |
|                    Δ                     |      -272 |      -253 |      -251 |      -248 |      -245 |      -244 |      -241 |      -246 |
|              Improvement %               |       -73 |       -72 |       -73 |       -73 |       -73 |       -73 |       -73 |      -246 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       146 |       275 |       395 |       469 |       513 |       519 |       341 |
|                swiftyjson                |        27 |        63 |        97 |       133 |       153 |       166 |       166 |        95 |
|                    Δ                     |         1 |       -83 |      -178 |      -262 |      -316 |      -347 |      -353 |      -246 |
|              Improvement %               |        -4 |        57 |        65 |        66 |        67 |        68 |        68 |      -246 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       341 |
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        95 |
|                    Δ                     |         6 |         6 |         6 |         6 |         6 |         6 |         6 |      -246 |
|              Improvement %               |       -40 |       -40 |       -40 |       -40 |       -40 |       -40 |       -40 |      -246 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        65 |        66 |       341 |
|                swiftyjson                |       245 |       246 |       246 |       246 |       246 |       258 |       258 |        95 |
|                    Δ                     |       180 |       181 |       181 |       181 |       181 |       193 |       192 |      -246 |
|              Improvement %               |      -277 |      -278 |      -278 |      -278 |      -278 |      -297 |      -291 |      -246 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       638 |       695 |       705 |       714 |       726 |       779 |       862 |      1348 |
|                swiftyjson                |      2303 |      2503 |      2517 |      2531 |      2550 |      2679 |      2750 |       391 |
|                    Δ                     |      1665 |      1808 |      1812 |      1817 |      1824 |      1900 |      1888 |      -957 |
|              Improvement %               |      -261 |      -260 |      -257 |      -254 |      -251 |      -244 |      -219 |      -957 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       640 |       696 |       707 |       716 |       728 |       780 |       844 |      1348 |
|                swiftyjson                |      2304 |      2505 |      2519 |      2533 |      2552 |      2679 |      2756 |       391 |
|                    Δ                     |      1664 |      1809 |      1812 |      1817 |      1824 |      1899 |      1912 |      -957 |
|              Improvement %               |      -260 |      -260 |      -256 |      -254 |      -251 |      -243 |      -227 |      -957 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1567 |      1440 |      1419 |      1400 |      1379 |      1284 |      1160 |      1348 |
|                swiftyjson                |       434 |       400 |       398 |       395 |       392 |       374 |       364 |       391 |
|                    Δ                     |     -1133 |     -1040 |     -1021 |     -1005 |      -987 |      -910 |      -796 |      -957 |
|              Improvement %               |       -72 |       -72 |       -72 |       -72 |       -72 |       -71 |       -69 |      -957 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       145 |       274 |       396 |       471 |       514 |       519 |      1348 |
|                swiftyjson                |        26 |        61 |        98 |       134 |       156 |       168 |       170 |       391 |
|                    Δ                     |         1 |       -84 |      -176 |      -262 |      -315 |      -346 |      -349 |      -957 |
|              Improvement %               |        -4 |        58 |        64 |        66 |        67 |        67 |        67 |      -957 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1348 |
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       391 |
|                    Δ                     |      1588 |      1590 |      1590 |      1590 |      1590 |      1590 |      1589 |      -957 |
|              Improvement %               |       -42 |       -42 |       -42 |       -42 |       -42 |       -42 |       -42 |      -957 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1348 |
|                swiftyjson                |        59 |        59 |        59 |        59 |        59 |        62 |        62 |       391 |
|                    Δ                     |        43 |        43 |        43 |        43 |        43 |        46 |        45 |      -957 |
|              Improvement %               |      -269 |      -269 |      -269 |      -269 |      -269 |      -288 |      -265 |      -957 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       667 |       721 |       730 |       739 |       748 |       775 |       873 |      1307 |
|                swiftyjson                |      2346 |      2531 |      2546 |      2562 |      2580 |      2781 |      2789 |       387 |
|                    Δ                     |      1679 |      1810 |      1816 |      1823 |      1832 |      2006 |      1916 |      -920 |
|              Improvement %               |      -252 |      -251 |      -249 |      -247 |      -245 |      -259 |      -219 |      -920 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       668 |       722 |       731 |       740 |       750 |       770 |       845 |      1307 |
|                swiftyjson                |      2347 |      2533 |      2548 |      2564 |      2583 |      2783 |      2796 |       387 |
|                    Δ                     |      1679 |      1811 |      1817 |      1824 |      1833 |      2013 |      1951 |      -920 |
|              Improvement %               |      -251 |      -251 |      -249 |      -246 |      -244 |      -261 |      -231 |      -920 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1499 |      1387 |      1371 |      1354 |      1337 |      1290 |      1146 |      1307 |
|                swiftyjson                |       426 |       395 |       393 |       391 |       388 |       360 |       359 |       387 |
|                    Δ                     |     -1073 |      -992 |      -978 |      -963 |      -949 |      -930 |      -787 |      -920 |
|              Improvement %               |       -72 |       -72 |       -71 |       -71 |       -71 |       -72 |       -69 |      -920 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       145 |       265 |       385 |       458 |       501 |       501 |      1307 |
|                swiftyjson                |        26 |        61 |        98 |       134 |       155 |       168 |       169 |       387 |
|                    Δ                     |         1 |       -84 |      -167 |      -251 |      -303 |      -333 |      -332 |      -920 |
|              Improvement %               |        -4 |        58 |        63 |        65 |        66 |        66 |        66 |      -920 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1307 |
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       387 |
|                    Δ                     |      1588 |      1590 |      1590 |      1590 |      1590 |      1590 |      1589 |      -920 |
|              Improvement %               |       -42 |       -42 |       -42 |       -42 |       -42 |       -42 |       -42 |      -920 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1307 |
|                swiftyjson                |        59 |        60 |        60 |        60 |        60 |        63 |        63 |       387 |
|                    Δ                     |        43 |        44 |        44 |        44 |        44 |        46 |        46 |      -920 |
|              Improvement %               |      -269 |      -275 |      -275 |      -275 |      -275 |      -271 |      -271 |      -920 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1301 |      1401 |      1412 |      1424 |      1437 |      1499 |      1570 |       691 |
|                swiftyjson                |      4689 |      4973 |      5046 |      5083 |      5140 |      5263 |      5328 |       198 |
|                    Δ                     |      3388 |      3572 |      3634 |      3659 |      3703 |      3764 |      3758 |      -493 |
|              Improvement %               |      -260 |      -255 |      -257 |      -257 |      -258 |      -251 |      -239 |      -493 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1305 |      1402 |      1413 |      1426 |      1439 |      1500 |      1571 |       691 |
|                swiftyjson                |      4680 |      4973 |      5046 |      5087 |      5145 |      5272 |      5331 |       198 |
|                    Δ                     |      3375 |      3571 |      3633 |      3661 |      3706 |      3772 |      3760 |      -493 |
|              Improvement %               |      -259 |      -255 |      -257 |      -257 |      -258 |      -251 |      -239 |      -493 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       769 |       714 |       709 |       703 |       696 |       667 |       637 |       691 |
|                swiftyjson                |       213 |       201 |       198 |       197 |       195 |       190 |       188 |       198 |
|                    Δ                     |      -556 |      -513 |      -511 |      -506 |      -501 |      -477 |      -449 |      -493 |
|              Improvement %               |       -72 |       -72 |       -72 |       -72 |       -72 |       -72 |       -70 |      -493 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       147 |       278 |       402 |       478 |       523 |       530 |       691 |
|                swiftyjson                |        26 |        64 |       100 |       135 |       157 |       170 |       172 |       198 |
|                    Δ                     |         0 |       -83 |      -178 |      -267 |      -321 |      -353 |      -358 |      -493 |
|              Improvement %               |         0 |        56 |        64 |        66 |        67 |        67 |        68 |      -493 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       691 |
|                swiftyjson                |     10610 |     10612 |     10612 |     10612 |     10612 |     10612 |     10612 |       198 |
|                    Δ                     |      3172 |      3173 |      3173 |      3173 |      3173 |      3173 |      3173 |      -493 |
|              Improvement %               |       -43 |       -43 |       -43 |       -43 |       -43 |       -43 |       -43 |      -493 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        34 |       691 |
|                swiftyjson                |       119 |       119 |       119 |       119 |       119 |       121 |       123 |       198 |
|                    Δ                     |        87 |        87 |        87 |        87 |        87 |        89 |        89 |      -493 |
|              Improvement %               |      -272 |      -272 |      -272 |      -272 |      -272 |      -278 |      -262 |      -493 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1328 |      1433 |      1445 |      1456 |      1467 |      1514 |      1785 |       676 |
|                swiftyjson                |      4429 |      4768 |      4801 |      4850 |      4895 |      5181 |      5288 |       206 |
|                    Δ                     |      3101 |      3335 |      3356 |      3394 |      3428 |      3667 |      3503 |      -470 |
|              Improvement %               |      -234 |      -233 |      -232 |      -233 |      -234 |      -242 |      -196 |      -470 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1329 |      1434 |      1447 |      1458 |      1469 |      1517 |      1746 |       676 |
|                swiftyjson                |      4430 |      4772 |      4809 |      4854 |      4895 |      5186 |      5292 |       206 |
|                    Δ                     |      3101 |      3338 |      3362 |      3396 |      3426 |      3669 |      3546 |      -470 |
|              Improvement %               |      -233 |      -233 |      -232 |      -233 |      -233 |      -242 |      -203 |      -470 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       753 |       698 |       692 |       687 |       682 |       660 |       560 |       676 |
|                swiftyjson                |       226 |       210 |       208 |       206 |       204 |       193 |       189 |       206 |
|                    Δ                     |      -527 |      -488 |      -484 |      -481 |      -478 |      -467 |      -371 |      -470 |
|              Improvement %               |       -70 |       -70 |       -70 |       -70 |       -70 |       -71 |       -66 |      -470 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       149 |       269 |       396 |       470 |       510 |       516 |       676 |
|                swiftyjson                |        26 |        64 |       102 |       139 |       162 |       176 |       178 |       206 |
|                    Δ                     |         0 |       -85 |      -167 |      -257 |      -308 |      -334 |      -338 |      -470 |
|              Improvement %               |         0 |        57 |        62 |        65 |        66 |        65 |        66 |      -470 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       676 |
|                swiftyjson                |     10610 |     10612 |     10612 |     10612 |     10612 |     10612 |     10612 |       206 |
|                    Δ                     |      3172 |      3173 |      3173 |      3173 |      3173 |      3173 |      3173 |      -470 |
|              Improvement %               |       -43 |       -43 |       -43 |       -43 |       -43 |       -43 |       -43 |      -470 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       676 |
|                swiftyjson                |       118 |       118 |       119 |       119 |       119 |       123 |       125 |       206 |
|                    Δ                     |        85 |        85 |        86 |        86 |        86 |        90 |        92 |      -470 |
|              Improvement %               |      -258 |      -258 |      -261 |      -261 |      -261 |      -273 |      -279 |      -470 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        71 |
|                swiftyjson                |        48 |        49 |        49 |        50 |        50 |        53 |        53 |        21 |
|                    Δ                     |        35 |        35 |        35 |        36 |        36 |        39 |        39 |       -50 |
|              Improvement %               |      -269 |      -250 |      -250 |      -257 |      -257 |      -279 |      -279 |       -50 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        71 |
|                swiftyjson                |        48 |        49 |        49 |        50 |        50 |        53 |        53 |        21 |
|                    Δ                     |        35 |        35 |        35 |        36 |        36 |        39 |        39 |       -50 |
|              Improvement %               |      -269 |      -250 |      -250 |      -257 |      -257 |      -279 |      -279 |       -50 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        72 |        71 |        70 |        70 |        70 |        70 |        71 |
|                swiftyjson                |        21 |        20 |        20 |        20 |        20 |        19 |        19 |        21 |
|                    Δ                     |       -54 |       -52 |       -51 |       -50 |       -50 |       -51 |       -51 |       -50 |
|              Improvement %               |       -72 |       -72 |       -72 |       -71 |       -71 |       -73 |       -73 |       -50 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       156 |       292 |       419 |       490 |       543 |       543 |        71 |
|                swiftyjson                |        46 |        86 |       124 |       160 |       180 |       192 |       192 |        21 |
|                    Δ                     |         7 |       -70 |      -168 |      -259 |      -310 |      -351 |      -351 |       -50 |
|              Improvement %               |       -18 |        45 |        58 |        62 |        63 |        65 |        65 |       -50 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        71 |
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        21 |
|                    Δ                     |        31 |        31 |        31 |        31 |        31 |        31 |        31 |       -50 |
|              Improvement %               |       -42 |       -42 |       -42 |       -42 |       -42 |       -42 |       -42 |       -50 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       319 |       320 |       320 |       320 |       320 |       320 |        71 |
|                swiftyjson                |      1175 |      1177 |      1178 |      1179 |      1181 |      1184 |      1184 |        21 |
|                    Δ                     |       856 |       858 |       858 |       859 |       861 |       864 |       864 |       -50 |
|              Improvement %               |      -268 |      -269 |      -268 |      -268 |      -269 |      -270 |      -270 |       -50 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        15 |        15 |        15 |        15 |        17 |        17 |        68 |
|                swiftyjson                |        50 |        50 |        51 |        52 |        53 |        57 |        57 |        20 |
|                    Δ                     |        36 |        35 |        36 |        37 |        38 |        40 |        40 |       -48 |
|              Improvement %               |      -257 |      -233 |      -240 |      -247 |      -253 |      -235 |      -235 |       -48 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        15 |        15 |        15 |        15 |        17 |        17 |        68 |
|                swiftyjson                |        50 |        50 |        51 |        52 |        53 |        57 |        57 |        20 |
|                    Δ                     |        36 |        35 |        36 |        37 |        38 |        40 |        40 |       -48 |
|              Improvement %               |      -257 |      -233 |      -240 |      -247 |      -253 |      -235 |      -235 |       -48 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        71 |        69 |        68 |        68 |        67 |        57 |        57 |        68 |
|                swiftyjson                |        20 |        20 |        19 |        19 |        18 |        18 |        18 |        20 |
|                    Δ                     |       -51 |       -49 |       -49 |       -49 |       -49 |       -39 |       -39 |       -48 |
|              Improvement %               |       -72 |       -71 |       -72 |       -72 |       -73 |       -68 |       -68 |       -48 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       150 |       278 |       398 |       480 |       522 |       522 |        68 |
|                swiftyjson                |        48 |        78 |       115 |       150 |       174 |       186 |       186 |        20 |
|                    Δ                     |         9 |       -72 |      -163 |      -248 |      -306 |      -336 |      -336 |       -48 |
|              Improvement %               |       -23 |        48 |        59 |        62 |        64 |        64 |        64 |       -48 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        68 |
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        20 |
|                    Δ                     |        31 |        31 |        31 |        31 |        31 |        31 |        31 |       -48 |
|              Improvement %               |       -42 |       -42 |       -42 |       -42 |       -42 |       -42 |       -42 |       -48 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       325 |       325 |       325 |       325 |       325 |       325 |        68 |
|                swiftyjson                |      1200 |      1202 |      1202 |      1204 |      1205 |      1207 |      1207 |        20 |
|                    Δ                     |       876 |       877 |       877 |       879 |       880 |       882 |       882 |       -48 |
|              Improvement %               |      -270 |      -270 |      -270 |      -270 |      -271 |      -271 |      -271 |       -48 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       164 |       178 |       185 |       189 |       193 |       208 |       301 |      4533 |
|                swiftyjson                |       585 |       654 |       661 |       668 |       676 |       706 |       757 |      1431 |
|                    Δ                     |       421 |       476 |       476 |       479 |       483 |       498 |       456 |     -3102 |
|              Improvement %               |      -257 |      -267 |      -257 |      -253 |      -250 |      -239 |      -151 |     -3102 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       166 |       180 |       186 |       190 |       195 |       211 |       292 |      4533 |
|                swiftyjson                |       586 |       655 |       663 |       670 |       678 |       707 |       759 |      1431 |
|                    Δ                     |       420 |       475 |       477 |       480 |       483 |       496 |       467 |     -3102 |
|              Improvement %               |      -253 |      -264 |      -256 |      -253 |      -248 |      -235 |      -160 |     -3102 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6090 |      5607 |      5415 |      5295 |      5187 |      4819 |      3327 |      4533 |
|                swiftyjson                |      1710 |      1530 |      1513 |      1497 |      1480 |      1417 |      1322 |      1431 |
|                    Δ                     |     -4380 |     -4077 |     -3902 |     -3798 |     -3707 |     -3402 |     -2005 |     -3102 |
|              Improvement %               |       -72 |       -73 |       -72 |       -72 |       -71 |       -71 |       -60 |     -3102 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       131 |       244 |       354 |       419 |       457 |       463 |      4533 |
|                swiftyjson                |        25 |        60 |        95 |       130 |       150 |       163 |       165 |      1431 |
|                    Δ                     |         0 |       -71 |      -149 |      -224 |      -269 |      -294 |      -298 |     -3102 |
|              Improvement %               |         0 |        54 |        61 |        63 |        64 |        64 |        64 |     -3102 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4533 |
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1431 |
|                    Δ                     |       398 |       398 |       398 |       398 |       398 |       398 |       399 |     -3102 |
|              Improvement %               |       -40 |       -40 |       -40 |       -40 |       -40 |       -40 |       -40 |     -3102 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4079 |      4106 |      4114 |      4125 |      4133 |      4159 |      4358 |      4533 |
|                swiftyjson                |     15320 |     15368 |     15385 |     15393 |     15409 |     16130 |     16182 |      1431 |
|                    Δ                     |     11241 |     11262 |     11271 |     11268 |     11276 |     11971 |     11824 |     -3102 |
|              Improvement %               |      -276 |      -274 |      -274 |      -273 |      -273 |      -288 |      -271 |     -3102 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       170 |       185 |       192 |       197 |       201 |       213 |       247 |      4392 |
|                swiftyjson                |       561 |       622 |       629 |       638 |       662 |       681 |       768 |      1493 |
|                    Δ                     |       391 |       437 |       437 |       441 |       461 |       468 |       521 |     -2899 |
|              Improvement %               |      -230 |      -236 |      -228 |      -224 |      -229 |      -220 |      -211 |     -2899 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       172 |       187 |       193 |       199 |       203 |       214 |       254 |      4392 |
|                swiftyjson                |       563 |       623 |       631 |       640 |       663 |       684 |       774 |      1493 |
|                    Δ                     |       391 |       436 |       438 |       441 |       460 |       470 |       520 |     -2899 |
|              Improvement %               |      -227 |      -233 |      -227 |      -222 |      -227 |      -220 |      -205 |     -2899 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5875 |      5407 |      5215 |      5083 |      4967 |      4703 |      4047 |      4392 |
|                swiftyjson                |      1781 |      1610 |      1591 |      1569 |      1512 |      1468 |      1302 |      1493 |
|                    Δ                     |     -4094 |     -3797 |     -3624 |     -3514 |     -3455 |     -3235 |     -2745 |     -2899 |
|              Improvement %               |       -70 |       -70 |       -69 |       -69 |       -70 |       -69 |       -68 |     -2899 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       130 |       237 |       345 |       411 |       446 |       451 |      4392 |
|                swiftyjson                |        25 |        61 |        99 |       134 |       156 |       169 |       171 |      1493 |
|                    Δ                     |         0 |       -69 |      -138 |      -211 |      -255 |      -277 |      -280 |     -2899 |
|              Improvement %               |         0 |        53 |        58 |        61 |        62 |        62 |        62 |     -2899 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4392 |
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1493 |
|                    Δ                     |       398 |       398 |       398 |       398 |       398 |       398 |       399 |     -2899 |
|              Improvement %               |       -40 |       -40 |       -40 |       -40 |       -40 |       -40 |       -40 |     -2899 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4145 |      4170 |      4178 |      4188 |      4198 |      4223 |      4352 |      4392 |
|                swiftyjson                |     14695 |     14729 |     14746 |     14762 |     14770 |     15499 |     15567 |      1493 |
|                    Δ                     |     10550 |     10559 |     10568 |     10574 |     10572 |     11276 |     11215 |     -2899 |
|              Improvement %               |      -255 |      -253 |      -253 |      -252 |      -252 |      -267 |      -258 |     -2899 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        76 |        78 |        84 |        86 |        96 |       129 |      9077 |
|                swiftyjson                |       139 |       150 |       158 |       162 |       165 |       174 |       230 |      5311 |
|                    Δ                     |        64 |        74 |        80 |        78 |        79 |        78 |       101 |     -3766 |
|              Improvement %               |       -85 |       -97 |      -103 |       -93 |       -92 |       -81 |       -78 |     -3766 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        78 |        79 |        85 |        88 |        97 |       130 |      9077 |
|                swiftyjson                |       141 |       151 |       159 |       164 |       167 |       176 |       223 |      5311 |
|                    Δ                     |        65 |        73 |        80 |        79 |        79 |        79 |        93 |     -3766 |
|              Improvement %               |       -86 |       -94 |      -101 |       -93 |       -90 |       -81 |       -72 |     -3766 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        12 |        10 |         8 |      9077 |
|                swiftyjson                |         7 |         7 |         6 |         6 |         6 |         6 |         4 |      5311 |
|                    Δ                     |        -6 |        -6 |        -7 |        -6 |        -6 |        -4 |        -4 |     -3766 |
|              Improvement %               |       -46 |       -46 |       -54 |       -50 |       -50 |       -40 |       -50 |     -3766 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        36 |        47 |        59 |        66 |        70 |        70 |      9077 |
|                swiftyjson                |        25 |        32 |        38 |        45 |        49 |        51 |        51 |      5311 |
|                    Δ                     |         0 |        -4 |        -9 |       -14 |       -17 |       -19 |       -19 |     -3766 |
|              Improvement %               |         0 |        11 |        19 |        24 |        26 |        27 |        27 |     -3766 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      9077 |
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5311 |
|                    Δ                     |       302 |       302 |       302 |       302 |       302 |       302 |       304 |     -3766 |
|              Improvement %               |      -196 |      -196 |      -196 |      -196 |      -196 |      -196 |      -196 |     -3766 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1148 |      1149 |      1150 |      1156 |      1160 |      1168 |      1285 |      9077 |
|                swiftyjson                |      2916 |      2916 |      2918 |      2925 |      2929 |      3041 |      3154 |      5311 |
|                    Δ                     |      1768 |      1767 |      1768 |      1769 |      1769 |      1873 |      1869 |     -3766 |
|              Improvement %               |      -154 |      -154 |      -154 |      -153 |      -152 |      -160 |      -145 |     -3766 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       241 |       266 |       271 |       275 |       280 |       294 |       326 |      3291 |
|                swiftyjson                |      1673 |      1793 |      1819 |      1840 |      1858 |      1986 |      2058 |       540 |
|                    Δ                     |      1432 |      1527 |      1548 |      1565 |      1578 |      1692 |      1732 |     -2751 |
|              Improvement %               |      -594 |      -574 |      -571 |      -569 |      -564 |      -576 |      -531 |     -2751 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       242 |       268 |       272 |       277 |       282 |       295 |       327 |      3291 |
|                swiftyjson                |      1675 |      1795 |      1820 |      1842 |      1859 |      1988 |      2066 |       540 |
|                    Δ                     |      1433 |      1527 |      1548 |      1565 |      1577 |      1693 |      1739 |     -2751 |
|              Improvement %               |      -592 |      -570 |      -569 |      -565 |      -559 |      -574 |      -532 |     -2751 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4150 |      3761 |      3697 |      3637 |      3571 |      3401 |      3071 |      3291 |
|                swiftyjson                |       598 |       558 |       550 |       544 |       538 |       504 |       486 |       540 |
|                    Δ                     |     -3552 |     -3203 |     -3147 |     -3093 |     -3033 |     -2897 |     -2585 |     -2751 |
|              Improvement %               |       -86 |       -85 |       -85 |       -85 |       -85 |       -85 |       -84 |     -2751 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        87 |       150 |       210 |       248 |       270 |       273 |      3291 |
|                swiftyjson                |        25 |        36 |        47 |        57 |        63 |        67 |        67 |       540 |
|                    Δ                     |         0 |       -51 |      -103 |      -153 |      -185 |      -203 |      -206 |     -2751 |
|              Improvement %               |         0 |        59 |        69 |        73 |        75 |        75 |        75 |     -2751 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3291 |
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       540 |
|                    Δ                     |         4 |         4 |         4 |         4 |         4 |         4 |         5 |     -2751 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |        -1 |     -2751 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6960 |      6967 |      6971 |      6984 |      7000 |      7016 |      7339 |      3291 |
|                swiftyjson                |     46774 |     46793 |     46825 |     46891 |     46891 |     49545 |     49741 |       540 |
|                    Δ                     |     39814 |     39826 |     39854 |     39907 |     39891 |     42529 |     42402 |     -2751 |
|              Improvement %               |      -572 |      -572 |      -572 |      -571 |      -570 |      -606 |      -578 |     -2751 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       380 |       417 |       422 |       428 |       434 |       452 |       492 |      2191 |
|                swiftyjson                |      1088 |      1192 |      1202 |      1224 |      1237 |      1308 |      1363 |       805 |
|                    Δ                     |       708 |       775 |       780 |       796 |       803 |       856 |       871 |     -1386 |
|              Improvement %               |      -186 |      -186 |      -185 |      -186 |      -185 |      -189 |      -177 |     -1386 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       381 |       419 |       424 |       430 |       435 |       453 |       490 |      2191 |
|                swiftyjson                |      1090 |      1193 |      1204 |      1225 |      1239 |      1311 |      1364 |       805 |
|                    Δ                     |       709 |       774 |       780 |       795 |       804 |       858 |       874 |     -1386 |
|              Improvement %               |      -186 |      -185 |      -184 |      -185 |      -185 |      -189 |      -178 |     -1386 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2633 |      2399 |      2369 |      2337 |      2305 |      2213 |      2033 |      2191 |
|                swiftyjson                |       919 |       840 |       832 |       818 |       809 |       765 |       734 |       805 |
|                    Δ                     |     -1714 |     -1559 |     -1537 |     -1519 |     -1496 |     -1448 |     -1299 |     -1386 |
|              Improvement %               |       -65 |       -65 |       -65 |       -65 |       -65 |       -65 |       -64 |     -1386 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        76 |       127 |       176 |       209 |       227 |       229 |      2191 |
|                swiftyjson                |        25 |        45 |        64 |        83 |        94 |       101 |       101 |       805 |
|                    Δ                     |         0 |       -31 |       -63 |       -93 |      -115 |      -126 |      -128 |     -1386 |
|              Improvement %               |         0 |        41 |        50 |        53 |        55 |        56 |        56 |     -1386 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2191 |
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       805 |
|                    Δ                     |         4 |         4 |         4 |         4 |         4 |         4 |         5 |     -1386 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1386 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9072 |      9093 |      9101 |      9101 |      9110 |      9241 |      9650 |      2191 |
|                swiftyjson                |     29077 |     29131 |     29131 |     29147 |     29164 |     30753 |     30838 |       805 |
|                    Δ                     |     20005 |     20038 |     20030 |     20046 |     20054 |     21512 |     21188 |     -1386 |
|              Improvement %               |      -221 |      -220 |      -220 |      -220 |      -220 |      -233 |      -220 |     -1386 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       521 |       574 |       580 |       592 |       603 |       653 |       691 |      1606 |
|                swiftyjson                |       545 |       605 |       613 |       633 |       659 |       811 |       879 |      1500 |
|                    Δ                     |        24 |        31 |        33 |        41 |        56 |       158 |       188 |      -106 |
|              Improvement %               |        -5 |        -5 |        -6 |        -7 |        -9 |       -24 |       -27 |      -106 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       522 |       575 |       581 |       594 |       605 |       654 |       693 |      1606 |
|                swiftyjson                |       546 |       607 |       615 |       634 |       661 |       813 |       880 |      1500 |
|                    Δ                     |        24 |        32 |        34 |        40 |        56 |       159 |       187 |      -106 |
|              Improvement %               |        -5 |        -6 |        -6 |        -7 |        -9 |       -24 |       -27 |      -106 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1920 |      1743 |      1726 |      1689 |      1658 |      1532 |      1446 |      1606 |
|                swiftyjson                |      1834 |      1653 |      1632 |      1581 |      1516 |      1233 |      1138 |      1500 |
|                    Δ                     |       -86 |       -90 |       -94 |      -108 |      -142 |      -299 |      -308 |      -106 |
|              Improvement %               |        -4 |        -5 |        -5 |        -6 |        -9 |       -20 |       -21 |      -106 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        41 |        57 |        73 |        83 |        89 |        89 |      1606 |
|                swiftyjson                |        25 |        40 |        55 |        70 |        79 |        84 |        85 |      1500 |
|                    Δ                     |         0 |        -1 |        -2 |        -3 |        -4 |        -5 |        -4 |      -106 |
|              Improvement %               |         0 |         2 |         4 |         4 |         5 |         6 |         4 |      -106 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5756 |      5757 |      5757 |      5757 |      5757 |      5757 |      5757 |      1606 |
|                swiftyjson                |      5760 |      5763 |      5763 |      5763 |      5763 |      5763 |      5763 |      1500 |
|                    Δ                     |         4 |         6 |         6 |         6 |         6 |         6 |         6 |      -106 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -106 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      1606 |
|                swiftyjson                |        14 |        14 |        14 |        14 |        14 |        14 |        15 |      1500 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         1 |      -106 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |        -7 |      -106 |

<p>
</details>

