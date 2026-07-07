
## Comparing results between 'swiftyjson' and 'jbird'

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
|                swiftyjson                |      9352 |      9708 |      9757 |      9822 |      9912 |     10379 |     10594 |       102 |
|                  jbird                   |      1797 |      1951 |      1966 |      1977 |      1986 |      2025 |      2052 |       500 |
|                    Δ                     |     -7555 |     -7757 |     -7791 |     -7845 |     -7926 |     -8354 |     -8542 |       398 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        80 |        81 |       398 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9359 |      9708 |      9765 |      9822 |      9921 |     10387 |     10598 |       102 |
|                  jbird                   |      1798 |      1953 |      1968 |      1979 |      1990 |      2026 |      2053 |       500 |
|                    Δ                     |     -7561 |     -7755 |     -7797 |     -7843 |     -7931 |     -8361 |     -8545 |       398 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        80 |        81 |       398 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       107 |       103 |       103 |       102 |       101 |        96 |        94 |       102 |
|                  jbird                   |       557 |       513 |       509 |       506 |       504 |       493 |       487 |       500 |
|                    Δ                     |       450 |       410 |       406 |       404 |       403 |       397 |       393 |       398 |
|              Improvement %               |       421 |       398 |       394 |       396 |       399 |       414 |       418 |       398 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        34 |        71 |       108 |       147 |       168 |       181 |       182 |       102 |
|                  jbird                   |        35 |        38 |        38 |        38 |        38 |        38 |        38 |       500 |
|                    Δ                     |         1 |       -33 |       -70 |      -109 |      -130 |      -143 |      -144 |       398 |
|              Improvement %               |        -3 |        46 |        65 |        74 |        77 |        79 |        79 |       398 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       102 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       500 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       398 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       398 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       243 |       244 |       244 |       244 |       244 |       253 |       257 |       102 |
|                  jbird                   |        46 |        46 |        46 |        46 |        46 |        46 |        47 |       500 |
|                    Δ                     |      -197 |      -198 |      -198 |      -198 |      -198 |      -207 |      -210 |       398 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        82 |        82 |       398 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         9 |        10 |        10 |        10 |        10 |        11 |        11 |        99 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       498 |
|                    Δ                     |        -7 |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |       399 |
|              Improvement %               |        78 |        80 |        80 |        80 |        80 |        82 |        82 |       399 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         9 |        10 |        10 |        10 |        10 |        11 |        11 |        99 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       498 |
|                    Δ                     |        -7 |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |       399 |
|              Improvement %               |        78 |        80 |        80 |        80 |        80 |        82 |        82 |       399 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       106 |       100 |        99 |        98 |        96 |        91 |        91 |        99 |
|                  jbird                   |       556 |       511 |       507 |       503 |       499 |       490 |       483 |       498 |
|                    Δ                     |       450 |       411 |       408 |       405 |       403 |       399 |       392 |       399 |
|              Improvement %               |       425 |       411 |       412 |       413 |       420 |       438 |       431 |       399 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        34 |        70 |       107 |       143 |       165 |       178 |       178 |        99 |
|                  jbird                   |        36 |        38 |        38 |        38 |        38 |        38 |        38 |       498 |
|                    Δ                     |         2 |       -32 |       -69 |      -105 |      -127 |      -140 |      -140 |       399 |
|              Improvement %               |        -6 |        46 |        64 |        73 |        77 |        79 |        79 |       399 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        99 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       498 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       399 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       399 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       243 |       243 |       243 |       244 |       244 |       256 |       256 |        99 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        47 |        48 |       498 |
|                    Δ                     |      -196 |      -196 |      -196 |      -197 |      -197 |      -209 |      -208 |       399 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        82 |        81 |       399 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2327 |      2488 |      2517 |      2548 |      2570 |      2720 |      2753 |       391 |
|                  jbird                   |       440 |       481 |       486 |       492 |       509 |       527 |       542 |      1898 |
|                    Δ                     |     -1887 |     -2007 |     -2031 |     -2056 |     -2061 |     -2193 |     -2211 |      1507 |
|              Improvement %               |        81 |        81 |        81 |        81 |        80 |        81 |        80 |      1507 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2329 |      2490 |      2519 |      2550 |      2572 |      2722 |      2762 |       391 |
|                  jbird                   |       441 |       483 |       488 |       494 |       511 |       529 |       544 |      1898 |
|                    Δ                     |     -1888 |     -2007 |     -2031 |     -2056 |     -2061 |     -2193 |     -2218 |      1507 |
|              Improvement %               |        81 |        81 |        81 |        81 |        80 |        81 |        80 |      1507 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       430 |       402 |       397 |       393 |       389 |       368 |       363 |       391 |
|                  jbird                   |      2273 |      2079 |      2059 |      2033 |      1966 |      1898 |      1845 |      1898 |
|                    Δ                     |      1843 |      1677 |      1662 |      1640 |      1577 |      1530 |      1482 |      1507 |
|              Improvement %               |       429 |       417 |       419 |       417 |       405 |       416 |       408 |      1507 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        69 |       104 |       141 |       163 |       176 |       176 |       391 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1898 |
|                    Δ                     |         0 |       -36 |       -71 |      -108 |      -130 |      -143 |      -143 |      1507 |
|              Improvement %               |         0 |        52 |        68 |        77 |        80 |        81 |        81 |      1507 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       391 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1898 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1507 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1507 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        62 |        62 |        62 |        62 |        62 |        65 |        65 |       391 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |      1898 |
|                    Δ                     |       -51 |       -51 |       -51 |       -51 |       -51 |       -53 |       -53 |      1507 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        82 |        82 |      1507 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2221 |      2415 |      2443 |      2505 |      2574 |      2658 |      2756 |       400 |
|                  jbird                   |       444 |       488 |       493 |       498 |       505 |       520 |       588 |      1882 |
|                    Δ                     |     -1777 |     -1927 |     -1950 |     -2007 |     -2069 |     -2138 |     -2168 |      1482 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        79 |      1482 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2227 |      2417 |      2445 |      2507 |      2576 |      2666 |      2758 |       400 |
|                  jbird                   |       446 |       490 |       495 |       500 |       507 |       522 |       575 |      1882 |
|                    Δ                     |     -1781 |     -1927 |     -1950 |     -2007 |     -2069 |     -2144 |     -2183 |      1482 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        79 |      1482 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       450 |       414 |       409 |       399 |       388 |       374 |       363 |       400 |
|                  jbird                   |      2250 |      2051 |      2030 |      2008 |      1981 |      1925 |      1702 |      1882 |
|                    Δ                     |      1800 |      1637 |      1621 |      1609 |      1593 |      1551 |      1339 |      1482 |
|              Improvement %               |       400 |       395 |       396 |       403 |       411 |       415 |       369 |      1482 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        70 |       105 |       143 |       166 |       179 |       180 |       400 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1882 |
|                    Δ                     |         0 |       -37 |       -72 |      -110 |      -133 |      -146 |      -147 |      1482 |
|              Improvement %               |         0 |        53 |        69 |        77 |        80 |        82 |        82 |      1482 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       400 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1882 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1482 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1482 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        61 |        61 |        61 |        61 |        61 |        64 |        64 |       400 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1882 |
|                    Δ                     |       -49 |       -49 |       -49 |       -49 |       -49 |       -52 |       -52 |      1482 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      1482 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4423 |      4760 |      4805 |      4870 |      5059 |      5337 |      5382 |       206 |
|                  jbird                   |       864 |       954 |       961 |       970 |       980 |      1007 |      1102 |       999 |
|                    Δ                     |     -3559 |     -3806 |     -3844 |     -3900 |     -4079 |     -4330 |     -4280 |       793 |
|              Improvement %               |        80 |        80 |        80 |        80 |        81 |        81 |        80 |       793 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4429 |      4764 |      4809 |      4874 |      5063 |      5341 |      5384 |       206 |
|                  jbird                   |       866 |       955 |       963 |       972 |       983 |      1008 |      1117 |       999 |
|                    Δ                     |     -3563 |     -3809 |     -3846 |     -3902 |     -4080 |     -4333 |     -4267 |       793 |
|              Improvement %               |        80 |        80 |        80 |        80 |        81 |        81 |        79 |       793 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       226 |       210 |       208 |       205 |       198 |       187 |       186 |       206 |
|                  jbird                   |      1157 |      1049 |      1041 |      1032 |      1021 |       994 |       907 |       999 |
|                    Δ                     |       931 |       839 |       833 |       827 |       823 |       807 |       721 |       793 |
|              Improvement %               |       412 |       400 |       400 |       403 |       416 |       432 |       388 |       793 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        71 |       107 |       146 |       169 |       181 |       183 |       206 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       999 |
|                    Δ                     |         1 |       -36 |       -72 |      -111 |      -134 |      -146 |      -148 |       793 |
|              Improvement %               |        -3 |        51 |        67 |        76 |        79 |        81 |        81 |       793 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       206 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       999 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       793 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       793 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       121 |       121 |       121 |       121 |       121 |       127 |       127 |       206 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       999 |
|                    Δ                     |       -98 |       -98 |       -98 |       -98 |       -98 |      -104 |      -103 |       793 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        82 |        81 |       793 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4624 |      4927 |      4981 |      5022 |      5177 |      5382 |      5480 |       199 |
|                  jbird                   |       888 |       974 |       982 |       990 |      1001 |      1040 |      1122 |       979 |
|                    Δ                     |     -3736 |     -3953 |     -3999 |     -4032 |     -4176 |     -4342 |     -4358 |       780 |
|              Improvement %               |        81 |        80 |        80 |        80 |        81 |        81 |        80 |       780 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4616 |      4932 |      4985 |      5030 |      5173 |      5382 |      5487 |       199 |
|                  jbird                   |       890 |       976 |       984 |       993 |      1004 |      1042 |      1124 |       979 |
|                    Δ                     |     -3726 |     -3956 |     -4001 |     -4037 |     -4169 |     -4340 |     -4363 |       780 |
|              Improvement %               |        81 |        80 |        80 |        80 |        81 |        81 |        80 |       780 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       216 |       203 |       201 |       199 |       193 |       186 |       182 |       199 |
|                  jbird                   |      1126 |      1027 |      1019 |      1010 |       999 |       961 |       891 |       979 |
|                    Δ                     |       910 |       824 |       818 |       811 |       806 |       775 |       709 |       780 |
|              Improvement %               |       421 |       406 |       407 |       408 |       418 |       417 |       390 |       780 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        70 |       106 |       143 |       164 |       178 |       178 |       199 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       979 |
|                    Δ                     |         1 |       -35 |       -71 |      -108 |      -129 |      -143 |      -143 |       780 |
|              Improvement %               |        -3 |        50 |        67 |        76 |        79 |        80 |        80 |       780 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       199 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       979 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       780 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       780 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       122 |       122 |       122 |       122 |       122 |       129 |       129 |       199 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       979 |
|                    Δ                     |       -99 |       -99 |       -99 |       -99 |       -99 |      -106 |      -105 |       780 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        82 |        81 |       780 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        48 |        48 |        49 |        50 |        51 |        51 |        21 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        98 |
|                    Δ                     |       -37 |       -38 |       -38 |       -39 |       -40 |       -40 |       -40 |        77 |
|              Improvement %               |        79 |        79 |        79 |        80 |        80 |        78 |        78 |        77 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        48 |        48 |        49 |        50 |        51 |        51 |        21 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        98 |
|                    Δ                     |       -37 |       -38 |       -38 |       -39 |       -40 |       -40 |       -40 |        77 |
|              Improvement %               |        79 |        79 |        79 |        80 |        80 |        78 |        78 |        77 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        20 |        20 |        20 |        20 |        21 |
|                  jbird                   |       103 |        99 |        98 |        98 |        97 |        94 |        94 |        98 |
|                    Δ                     |        82 |        78 |        77 |        78 |        77 |        74 |        74 |        77 |
|              Improvement %               |       390 |       371 |       367 |       390 |       385 |       370 |       370 |        77 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        52 |        92 |       125 |       163 |       185 |       204 |       204 |        21 |
|                  jbird                   |        35 |        58 |        58 |        58 |        58 |        58 |        58 |        98 |
|                    Δ                     |       -17 |       -34 |       -67 |      -105 |      -127 |      -146 |      -146 |        77 |
|              Improvement %               |        33 |        37 |        54 |        64 |        69 |        72 |        72 |        77 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        21 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        98 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        77 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        77 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1207 |      1209 |      1210 |      1212 |      1212 |      1216 |      1216 |        21 |
|                  jbird                   |       234 |       235 |       235 |       235 |       235 |       243 |       243 |        98 |
|                    Δ                     |      -973 |      -974 |      -975 |      -977 |      -977 |      -973 |      -973 |        77 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        80 |        80 |        77 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        48 |        49 |        50 |        50 |        50 |        50 |        21 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        11 |        11 |       100 |
|                    Δ                     |       -38 |       -38 |       -39 |       -40 |       -40 |       -39 |       -39 |        79 |
|              Improvement %               |        81 |        79 |        80 |        80 |        80 |        78 |        78 |        79 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        48 |        49 |        50 |        50 |        50 |        50 |        21 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        11 |        11 |       100 |
|                    Δ                     |       -38 |       -38 |       -39 |       -40 |       -40 |       -39 |       -39 |        79 |
|              Improvement %               |        81 |        79 |        80 |        80 |        80 |        78 |        78 |        79 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        20 |        20 |        20 |        20 |        21 |
|                  jbird                   |       106 |       101 |       100 |        99 |        95 |        93 |        93 |       100 |
|                    Δ                     |        85 |        80 |        79 |        79 |        75 |        73 |        73 |        79 |
|              Improvement %               |       405 |       381 |       376 |       395 |       375 |       365 |       365 |        79 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        52 |        93 |       125 |       162 |       185 |       205 |       205 |        21 |
|                  jbird                   |        35 |        60 |        61 |        64 |        64 |        64 |        64 |       100 |
|                    Δ                     |       -17 |       -33 |       -64 |       -98 |      -121 |      -141 |      -141 |        79 |
|              Improvement %               |        33 |        35 |        51 |        60 |        65 |        69 |        69 |        79 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        21 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       100 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        79 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        79 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1213 |      1214 |      1215 |      1218 |      1221 |      1222 |      1222 |        21 |
|                  jbird                   |       234 |       234 |       234 |       235 |       238 |       243 |       247 |       100 |
|                    Δ                     |      -979 |      -980 |      -981 |      -983 |      -983 |      -979 |      -975 |        79 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        80 |        80 |        79 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       540 |       601 |       609 |       622 |       634 |       676 |       708 |      1541 |
|                  jbird                   |       110 |       118 |       124 |       125 |       127 |       137 |       158 |      6307 |
|                    Δ                     |      -430 |      -483 |      -485 |      -497 |      -507 |      -539 |      -550 |      4766 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        78 |      4766 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       541 |       602 |       611 |       624 |       636 |       677 |       709 |      1541 |
|                  jbird                   |       112 |       120 |       126 |       127 |       129 |       140 |       166 |      6307 |
|                    Δ                     |      -429 |      -482 |      -485 |      -497 |      -507 |      -537 |      -543 |      4766 |
|              Improvement %               |        79 |        80 |        79 |        80 |        80 |        79 |        77 |      4766 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1853 |      1666 |      1643 |      1608 |      1578 |      1480 |      1413 |      1541 |
|                  jbird                   |      9050 |      8463 |      8075 |      8003 |      7895 |      7291 |      6316 |      6307 |
|                    Δ                     |      7197 |      6797 |      6432 |      6395 |      6317 |      5811 |      4903 |      4766 |
|              Improvement %               |       388 |       408 |       391 |       398 |       400 |       393 |       347 |      4766 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        69 |       106 |       144 |       167 |       180 |       182 |      1541 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6307 |
|                    Δ                     |        -1 |       -37 |       -74 |      -112 |      -135 |      -148 |      -150 |      4766 |
|              Improvement %               |         3 |        54 |        70 |        78 |        81 |        82 |        82 |      4766 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1541 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6307 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4766 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4766 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1541 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6307 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4766 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4766 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       552 |       606 |       612 |       620 |       628 |       665 |       688 |      1535 |
|                  jbird                   |       112 |       120 |       126 |       128 |       130 |       141 |       171 |      6211 |
|                    Δ                     |      -440 |      -486 |      -486 |      -492 |      -498 |      -524 |      -517 |      4676 |
|              Improvement %               |        80 |        80 |        79 |        79 |        79 |        79 |        75 |      4676 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       553 |       608 |       614 |       622 |       630 |       667 |       690 |      1535 |
|                  jbird                   |       113 |       122 |       127 |       130 |       131 |       143 |       180 |      6211 |
|                    Δ                     |      -440 |      -486 |      -487 |      -492 |      -499 |      -524 |      -510 |      4676 |
|              Improvement %               |        80 |        80 |        79 |        79 |        79 |        79 |        74 |      4676 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1812 |      1650 |      1634 |      1615 |      1594 |      1504 |      1454 |      1535 |
|                  jbird                   |      8925 |      8311 |      7963 |      7815 |      7723 |      7083 |      5857 |      6211 |
|                    Δ                     |      7113 |      6661 |      6329 |      6200 |      6129 |      5579 |      4403 |      4676 |
|              Improvement %               |       393 |       404 |       387 |       384 |       385 |       371 |       303 |      4676 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        69 |       107 |       144 |       167 |       180 |       182 |      1535 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6211 |
|                    Δ                     |        -1 |       -37 |       -75 |      -112 |      -135 |      -148 |      -150 |      4676 |
|              Improvement %               |         3 |        54 |        70 |        78 |        81 |        82 |        82 |      4676 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1535 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6211 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4676 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4676 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1535 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6211 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4676 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4676 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2589 |      2869 |      2900 |      2945 |      2984 |      3228 |      3278 |       340 |
|                  jbird                   |       114 |       125 |       128 |       131 |       133 |       143 |       189 |      6239 |
|                    Δ                     |     -2475 |     -2744 |     -2772 |     -2814 |     -2851 |     -3085 |     -3089 |      5899 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |        94 |      5899 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2591 |      2871 |      2902 |      2947 |      2988 |      3236 |      3279 |       340 |
|                  jbird                   |       116 |       127 |       130 |       132 |       135 |       146 |       194 |      6239 |
|                    Δ                     |     -2475 |     -2744 |     -2772 |     -2815 |     -2853 |     -3090 |     -3085 |      5899 |
|              Improvement %               |        96 |        96 |        96 |        96 |        95 |        95 |        94 |      5899 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       386 |       349 |       345 |       340 |       335 |       310 |       305 |       340 |
|                  jbird                   |      8762 |      7983 |      7807 |      7655 |      7503 |      6995 |      5289 |      6239 |
|                    Δ                     |      8376 |      7634 |      7462 |      7315 |      7168 |      6685 |      4984 |      5899 |
|              Improvement %               |      2170 |      2187 |      2163 |      2151 |      2140 |      2156 |      1634 |      5899 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        41 |        49 |        57 |        63 |        66 |        66 |       340 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      6239 |
|                    Δ                     |        -1 |        -8 |       -16 |       -24 |       -30 |       -33 |       -33 |      5899 |
|              Improvement %               |         3 |        20 |        33 |        42 |        48 |        50 |        50 |      5899 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        17 |        17 |        17 |        17 |        17 |        17 |        19 |       340 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      6239 |
|                    Δ                     |        11 |        11 |        11 |        11 |        11 |        11 |         9 |      5899 |
|              Improvement %               |       -65 |       -65 |       -65 |       -65 |       -65 |       -65 |       -47 |      5899 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        77 |        77 |        77 |        77 |        77 |        82 |        82 |       340 |
|                  jbird                   |         4 |         4 |         4 |         4 |         4 |         4 |         4 |      6239 |
|                    Δ                     |       -73 |       -73 |       -73 |       -73 |       -73 |       -78 |       -78 |      5899 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        95 |      5899 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        62 |        63 |        63 |        64 |        64 |        64 |        64 |        16 |
|                  jbird                   |         5 |         5 |         6 |         6 |         6 |         6 |         6 |       178 |
|                    Δ                     |       -57 |       -58 |       -57 |       -58 |       -58 |       -58 |       -58 |       162 |
|              Improvement %               |        92 |        92 |        90 |        91 |        91 |        91 |        91 |       162 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        62 |        63 |        63 |        64 |        64 |        64 |        64 |        16 |
|                  jbird                   |         5 |         5 |         6 |         6 |         6 |         6 |         6 |       178 |
|                    Δ                     |       -57 |       -58 |       -57 |       -58 |       -58 |       -58 |       -58 |       162 |
|              Improvement %               |        92 |        92 |        90 |        91 |        91 |        91 |        91 |       162 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        16 |        16 |        16 |        16 |        16 |        16 |        16 |        16 |
|                  jbird                   |       194 |       183 |       180 |       179 |       178 |       174 |       173 |       178 |
|                    Δ                     |       178 |       167 |       164 |       163 |       162 |       158 |       157 |       162 |
|              Improvement %               |      1112 |      1044 |      1025 |      1019 |      1012 |       988 |       981 |       162 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        51 |        70 |        94 |       116 |       136 |       141 |       141 |        16 |
|                  jbird                   |        33 |        51 |        52 |        52 |        52 |        52 |        52 |       178 |
|                    Δ                     |       -18 |       -19 |       -42 |       -64 |       -84 |       -89 |       -89 |       162 |
|              Improvement %               |        35 |        27 |        45 |        55 |        62 |        63 |        63 |       162 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       279 |       279 |       279 |       279 |       279 |       279 |       279 |        16 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       178 |
|                    Δ                     |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |       162 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       162 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1677 |      1679 |      1680 |      1680 |      1680 |      1680 |      1680 |        16 |
|                  jbird                   |       146 |       146 |       146 |       147 |       147 |       147 |       151 |       178 |
|                    Δ                     |     -1531 |     -1533 |     -1534 |     -1533 |     -1533 |     -1533 |     -1529 |       162 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        91 |       162 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       138 |       144 |       150 |       158 |       161 |       172 |       192 |      5459 |
|                  jbird                   |        47 |        48 |        53 |        53 |        53 |        61 |        76 |     12033 |
|                    Δ                     |       -91 |       -96 |       -97 |      -105 |      -108 |      -111 |      -116 |      6574 |
|              Improvement %               |        66 |        67 |        65 |        66 |        67 |        65 |        60 |      6574 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       140 |       145 |       152 |       160 |       163 |       174 |       191 |      5459 |
|                  jbird                   |        48 |        49 |        54 |        55 |        55 |        63 |        81 |     12033 |
|                    Δ                     |       -92 |       -96 |       -98 |      -105 |      -108 |      -111 |      -110 |      6574 |
|              Improvement %               |        66 |        66 |        64 |        66 |        66 |        64 |        58 |      6574 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7222 |      6963 |      6675 |      6335 |      6219 |      5823 |      5195 |      5459 |
|                  jbird                   |     21296 |     20863 |     19007 |     18863 |     18735 |     16319 |     13158 |     12033 |
|                    Δ                     |     14074 |     13900 |     12332 |     12528 |     12516 |     10496 |      7963 |      6574 |
|              Improvement %               |       195 |       200 |       185 |       198 |       201 |       180 |       153 |      6574 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        38 |        45 |        52 |        56 |        58 |        59 |      5459 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     12033 |
|                    Δ                     |         0 |        -6 |       -13 |       -20 |       -24 |       -26 |       -27 |      6574 |
|              Improvement %               |         0 |        16 |        29 |        38 |        43 |        45 |        46 |      6574 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5459 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     12033 |
|                    Δ                     |      -303 |      -303 |      -303 |      -303 |      -303 |      -303 |      -306 |      6574 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        67 |      6574 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2916 |      2918 |      2918 |      2927 |      2931 |      3025 |      3104 |      5459 |
|                  jbird                   |      1303 |      1304 |      1304 |      1304 |      1304 |      1321 |      1373 |     12033 |
|                    Δ                     |     -1613 |     -1614 |     -1614 |     -1623 |     -1627 |     -1704 |     -1731 |      6574 |
|              Improvement %               |        55 |        55 |        55 |        55 |        56 |        56 |        56 |      6574 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1609 |      1711 |      1737 |      1772 |      1791 |      2055 |      2080 |       562 |
|                  jbird                   |        87 |        95 |        98 |        99 |       101 |       110 |       138 |      7755 |
|                    Δ                     |     -1522 |     -1616 |     -1639 |     -1673 |     -1690 |     -1945 |     -1942 |      7193 |
|              Improvement %               |        95 |        94 |        94 |        94 |        94 |        95 |        93 |      7193 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1610 |      1714 |      1739 |      1774 |      1793 |      2057 |      2082 |       562 |
|                  jbird                   |        88 |        96 |        99 |       101 |       103 |       112 |       140 |      7755 |
|                    Δ                     |     -1522 |     -1618 |     -1640 |     -1673 |     -1690 |     -1945 |     -1942 |      7193 |
|              Improvement %               |        95 |        94 |        94 |        94 |        94 |        95 |        93 |      7193 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       622 |       585 |       576 |       565 |       558 |       487 |       481 |       562 |
|                  jbird                   |     11555 |     10575 |     10247 |     10071 |      9903 |      9135 |      7251 |      7755 |
|                    Δ                     |     10933 |      9990 |      9671 |      9506 |      9345 |      8648 |      6770 |      7193 |
|              Improvement %               |      1758 |      1708 |      1679 |      1682 |      1675 |      1776 |      1407 |      7193 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        43 |        54 |        65 |        71 |        75 |        75 |       562 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      7755 |
|                    Δ                     |        -1 |       -11 |       -22 |       -33 |       -39 |       -43 |       -43 |      7193 |
|              Improvement %               |         3 |        26 |        41 |        51 |        55 |        57 |        57 |      7193 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       562 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7755 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      7193 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      7193 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        47 |        47 |        47 |        47 |        49 |        50 |       562 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      7755 |
|                    Δ                     |       -44 |       -44 |       -44 |       -44 |       -44 |       -46 |       -47 |      7193 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        94 |      7193 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1107 |      1198 |      1223 |      1237 |      1248 |      1363 |      1414 |       796 |
|                  jbird                   |        55 |        61 |        64 |        65 |        66 |        74 |       118 |     10554 |
|                    Δ                     |     -1052 |     -1137 |     -1159 |     -1172 |     -1182 |     -1289 |     -1296 |      9758 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        92 |      9758 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1108 |      1200 |      1225 |      1239 |      1250 |      1366 |      1415 |       796 |
|                  jbird                   |        57 |        63 |        65 |        66 |        67 |        76 |       120 |     10554 |
|                    Δ                     |     -1051 |     -1137 |     -1160 |     -1173 |     -1183 |     -1290 |     -1295 |      9758 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        92 |      9758 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       903 |       835 |       818 |       809 |       802 |       734 |       707 |       796 |
|                  jbird                   |     18086 |     16327 |     15751 |     15511 |     15263 |     13583 |      8469 |     10554 |
|                    Δ                     |     17183 |     15492 |     14933 |     14702 |     14461 |     12849 |      7762 |      9758 |
|              Improvement %               |      1903 |      1855 |      1826 |      1817 |      1803 |      1751 |      1098 |      9758 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        51 |        70 |        88 |        99 |       106 |       107 |       796 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     10554 |
|                    Δ                     |        -1 |       -19 |       -38 |       -56 |       -67 |       -74 |       -75 |      9758 |
|              Improvement %               |         3 |        37 |        54 |        64 |        68 |        70 |        70 |      9758 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       796 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10554 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |      9758 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      9758 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        30 |        30 |        30 |        30 |        32 |        32 |       796 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10554 |
|                    Δ                     |       -28 |       -28 |       -28 |       -28 |       -28 |       -30 |       -30 |      9758 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      9758 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        98 |       105 |       112 |       114 |       117 |       126 |       156 |      6888 |
|                  jbird                   |        26 |        27 |        30 |        30 |        30 |        36 |        58 |     15822 |
|                    Δ                     |       -72 |       -78 |       -82 |       -84 |       -87 |       -90 |       -98 |      8934 |
|              Improvement %               |        73 |        74 |        73 |        74 |        74 |        71 |        63 |      8934 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       100 |       106 |       113 |       116 |       119 |       129 |       148 |      6888 |
|                  jbird                   |        28 |        29 |        31 |        31 |        32 |        38 |        58 |     15822 |
|                    Δ                     |       -72 |       -77 |       -82 |       -85 |       -87 |       -91 |       -90 |      8934 |
|              Improvement %               |        72 |        73 |        73 |        73 |        73 |        71 |        61 |      8934 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10178 |      9551 |      8967 |      8743 |      8543 |      7923 |      6431 |      6888 |
|                  jbird                   |     38095 |     36671 |     33919 |     33759 |     33567 |     28047 |     17241 |     15822 |
|                    Δ                     |     27917 |     27120 |     24952 |     25016 |     25024 |     20124 |     10810 |      8934 |
|              Improvement %               |       274 |       284 |       278 |       286 |       293 |       254 |       168 |      8934 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |       138 |       247 |       352 |       418 |       456 |       461 |      6888 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     15822 |
|                    Δ                     |         0 |      -106 |      -215 |      -320 |      -386 |      -424 |      -429 |      8934 |
|              Improvement %               |         0 |        77 |        87 |        91 |        92 |        93 |        93 |      8934 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      6888 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15822 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |      8934 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |      8934 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2551 |      2566 |      2574 |      2580 |      2589 |      2628 |      2717 |      6888 |
|                  jbird                   |       850 |       851 |       851 |       851 |       851 |       856 |       909 |     15822 |
|                    Δ                     |     -1701 |     -1715 |     -1723 |     -1729 |     -1738 |     -1772 |     -1808 |      8934 |
|              Improvement %               |        67 |        67 |        67 |        67 |        67 |        67 |        67 |      8934 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      8088 |      8376 |      8495 |      8585 |      8651 |      8823 |      8899 |       118 |
|                  jbird                   |      1468 |      1594 |      1610 |      1625 |      1642 |      1682 |      1771 |       606 |
|                    Δ                     |     -6620 |     -6782 |     -6885 |     -6960 |     -7009 |     -7141 |     -7128 |       488 |
|              Improvement %               |        82 |        81 |        81 |        81 |        81 |        81 |        80 |       488 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      8086 |      8380 |      8495 |      8585 |      8659 |      8831 |      8903 |       118 |
|                  jbird                   |      1469 |      1596 |      1612 |      1627 |      1646 |      1687 |      1773 |       606 |
|                    Δ                     |     -6617 |     -6784 |     -6883 |     -6958 |     -7013 |     -7144 |     -7130 |       488 |
|              Improvement %               |        82 |        81 |        81 |        81 |        81 |        81 |        80 |       488 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       124 |       119 |       118 |       117 |       116 |       113 |       112 |       118 |
|                  jbird                   |       681 |       627 |       621 |       616 |       609 |       594 |       565 |       606 |
|                    Δ                     |       557 |       508 |       503 |       499 |       493 |       481 |       453 |       488 |
|              Improvement %               |       449 |       427 |       426 |       426 |       425 |       426 |       404 |       488 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        33 |        55 |        76 |        97 |       110 |       118 |       118 |       118 |
|                  jbird                   |        34 |        37 |        37 |        37 |        37 |        37 |        37 |       606 |
|                    Δ                     |         1 |       -18 |       -39 |       -60 |       -73 |       -81 |       -81 |       488 |
|              Improvement %               |        -3 |        33 |        51 |        62 |        66 |        69 |        69 |       488 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9774 |      9775 |      9775 |      9775 |      9775 |      9775 |      9775 |       118 |
|                  jbird                   |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |       606 |
|                    Δ                     |     -1779 |     -1780 |     -1780 |     -1780 |     -1780 |     -1780 |     -1780 |       488 |
|              Improvement %               |        18 |        18 |        18 |        18 |        18 |        18 |        18 |       488 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       187 |       188 |       189 |       189 |       190 |       192 |       195 |       118 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       606 |
|                    Δ                     |      -154 |      -155 |      -156 |      -156 |      -157 |      -159 |      -161 |       488 |
|              Improvement %               |        82 |        82 |        83 |        83 |        83 |        83 |        83 |       488 |

<p>
</details>

