class PesoTalla {
  Map<double, List<double>> pesoLongitudFem = {
    45: [1.9, 2.1, 2.3, 2.5, 2.7, 3, 3.3],
    45.5: [2, 2.1, 2.3, 2.5, 2.8, 3.1, 3.4],
    46: [2, 2.2, 2.4, 2.6, 2.9, 3.2, 3.5],
    46.5: [2.1, 2.3, 2.5, 2.7, 3, 3.3, 3.6],
    47: [2.2, 2.4, 2.6, 2.8, 3.1, 3.4, 3.7],
    47.5: [2.2, 2.4, 2.6, 2.9, 3.2, 3.5, 3.8],
    48: [2.3, 2.5, 2.7, 3, 3.3, 3.6, 4],
    48.5: [2.4, 2.6, 2.8, 3.1, 3.4, 3.7, 4.1],
    49: [2.4, 2.6, 2.9, 3.2, 3.5, 3.8, 4.2],
    49.5: [2.5, 2.7, 3, 3.3, 3.6, 3.9, 4.3],
    50: [2.6, 2.8, 3.1, 3.4, 3.7, 4, 4.5],
    50.5: [2.7, 2.9, 3.2, 3.5, 3.8, 4.2, 4.6],
    51: [2.8, 3, 3.3, 3.6, 3.9, 4.3, 4.8],
    51.5: [2.8, 3.1, 3.4, 3.7, 4, 4.4, 4.9],
    52: [2.9, 3.2, 3.5, 3.8, 4.2, 4.6, 5.1],
    52.5: [3, 3.3, 3.6, 3.9, 4.3, 4.7, 5.2],
    53: [3.1, 3.4, 3.7, 4, 4.4, 4.9, 5.4],
    53.5: [3.2, 3.5, 3.8, 4.2, 4.6, 5, 5.5],
    54: [3.3, 3.6, 3.9, 4.3, 4.7, 5.2, 5.7],
    54.5: [3.4, 3.7, 4, 4.4, 4.8, 5.3, 5.9],
    55: [3.5, 3.8, 4.2, 4.5, 5, 5.5, 6.1],
    55.5: [3.6, 3.9, 4.3, 4.7, 5.1, 5.7, 6.3],
    56: [3.7, 4, 4.4, 4.8, 5.3, 5.8, 6.4],
    56.5: [3.8, 4.1, 4.5, 5, 5.4, 6, 6.6],
    57: [3.9, 4.3, 4.6, 5.1, 5.6, 6.1, 6.8],
    57.5: [4, 4.4, 4.8, 5.2, 5.7, 6.3, 7],
    58: [4.1, 4.5, 4.9, 5.4, 5.9, 6.5, 7.1],
    58.5: [4.2, 4.6, 5, 5.5, 6, 6.6, 7.3],
    59: [4.3, 4.7, 5.1, 5.6, 6.2, 6.8, 7.5],
    59.5: [4.4, 4.8, 5.3, 5.7, 6.3, 6.9, 7.7],
    60: [4.5, 4.9, 5.4, 5.9, 6.4, 7.1, 7.8],
    60.5: [4.6, 5, 5.5, 6, 6.6, 7.3, 8],
    61: [4.7, 5.1, 5.6, 6.1, 6.7, 7.4, 8.2],
    61.5: [4.8, 5.2, 5.7, 6.3, 6.9, 7.6, 8.4],
    62: [4.9, 5.3, 5.8, 6.4, 7, 7.7, 8.5],
    62.5: [5, 5.4, 5.9, 6.5, 7.1, 7.8, 8.7],
    63: [5.1, 5.5, 6, 6.6, 7.3, 8, 8.8],
    63.5: [5.2, 5.6, 6.2, 6.7, 7.4, 8.1, 9],
    64: [5.3, 5.7, 6.3, 6.9, 7.5, 8.3, 9.1],
    64.5: [5.4, 5.8, 6.4, 7, 7.6, 8.4, 9.3],
    65: [5.5, 5.9, 6.5, 7.1, 7.8, 8.6, 9.5],
    65.5: [5.5, 6, 6.6, 7.2, 7.9, 8.7, 9.6],
    66: [5.6, 6.1, 6.7, 7.3, 8, 8.8, 9.8],
    66.5: [5.7, 6.2, 6.8, 7.4, 8.1, 9, 9.9],
    67: [5.8, 6.3, 6.9, 7.5, 8.3, 9.1, 10],
    67.5: [5.9, 6.4, 7, 7.6, 8.4, 9.2, 10.2],
    68: [6, 6.5, 7.1, 7.7, 8.5, 9.4, 10.3],
    68.5: [6.1, 6.6, 7.2, 7.9, 8.6, 9.5, 10.5],
    69: [6.1, 6.7, 7.3, 8, 8.7, 9.6, 10.6],
    69.5: [6.2, 6.8, 7.4, 8.1, 8.8, 9.7, 10.7],
    70: [6.3, 6.9, 7.5, 8.2, 9, 9.9, 10.9],
    70.5: [6.4, 6.9, 7.6, 8.3, 9.1, 10, 11],
    71: [6.5, 7, 7.7, 8.4, 9.2, 10.1, 11.1],
    71.5: [6.5, 7.1, 7.7, 8.5, 9.3, 10.2, 11.3],
    72: [6.6, 7.2, 7.8, 8.6, 9.4, 10.3, 11.4],
    72.5: [6.7, 7.3, 7.9, 8.7, 9.5, 10.5, 11.5],
    73: [6.8, 7.4, 8, 8.8, 9.6, 10.6, 11.7],
    73.5: [6.9, 7.4, 8.1, 8.9, 9.7, 10.7, 11.8],
    74: [6.9, 7.5, 8.2, 9, 9.8, 10.8, 11.9],
    74.5: [7, 7.6, 8.3, 9.1, 9.9, 10.9, 12],
    75: [7.1, 7.7, 8.4, 9.1, 10, 11, 12.2],
    75.5: [7.1, 7.8, 8.5, 9.2, 10.1, 11.1, 12.3],
    76: [7.2, 7.8, 8.5, 9.3, 10.2, 11.2, 12.4],
    76.5: [7.3, 7.9, 8.6, 9.4, 10.3, 11.4, 12.5],
    77: [7.4, 8, 8.7, 9.5, 10.4, 11.5, 12.6],
    77.5: [7.4, 8.1, 8.8, 9.6, 10.5, 11.6, 12.8],
    78: [7.5, 8.2, 8.9, 9.7, 10.6, 11.7, 12.9],
    78.5: [7.6, 8.2, 9, 9.8, 10.7, 11.8, 13],
    79: [7.7, 8.3, 9.1, 9.9, 10.8, 11.9, 13.1],
    79.5: [7.7, 8.4, 9.1, 10, 10.9, 12, 13.3],
    80: [7.8, 8.5, 9.2, 10.1, 11, 12.1, 13.4],
    80.5: [7.9, 8.6, 9.3, 10.2, 11.2, 12.3, 13.5],
    81: [8, 8.7, 9.4, 10.3, 11.3, 12.4, 13.7],
    81.5: [8.1, 8.8, 9.5, 10.4, 11.4, 12.5, 13.8],
    82: [8.1, 8.8, 9.6, 10.5, 11.5, 12.6, 13.9],
    82.5: [8.2, 8.9, 9.7, 10.6, 11.6, 12.8, 14.1],
    83: [8.3, 9, 9.8, 10.7, 11.8, 12.9, 14.2],
    83.5: [8.4, 9.1, 9.9, 10.9, 11.9, 13.1, 14.4],
    84: [8.5, 9.2, 10.1, 11, 12, 13.2, 14.5],
    84.5: [8.6, 9.3, 10.2, 11.1, 12.1, 13.3, 14.7],
    85: [8.7, 9.4, 10.3, 11.2, 12.3, 13.5, 14.9],
    85.5: [8.8, 9.5, 10.4, 11.3, 12.4, 13.6, 15],
    86: [8.9, 9.7, 10.5, 11.5, 12.6, 13.8, 15.2],
    86.5: [9, 9.8, 10.6, 11.6, 12.7, 13.9, 15.4],
    87: [9.1, 9.9, 10.7, 11.7, 12.8, 14.1, 15.5],
    87.5: [9.2, 10, 10.9, 11.8, 13, 14.2, 15.7],
    88: [9.3, 10.1, 11, 12, 13.1, 14.4, 15.9],
    88.5: [9.4, 10.2, 11.1, 12.1, 13.2, 14.5, 16],
    89: [9.5, 10.3, 11.2, 12.2, 13.4, 14.7, 16.2],
    89.5: [9.6, 10.4, 11.3, 12.3, 13.5, 14.8, 16.4],
    90: [9.7, 10.5, 11.4, 12.5, 13.7, 15, 16.5],
    90.5: [9.8, 10.6, 11.5, 12.6, 13.8, 15.1, 16.7],
    91: [9.9, 10.7, 11.7, 12.7, 13.9, 15.3, 16.9],
    91.5: [10, 10.8, 11.8, 12.8, 14.1, 15.5, 17],
    92: [10.1, 10.9, 11.9, 13, 14.2, 15.6, 17.2],
    92.5: [10.1, 11, 12, 13.1, 14.3, 15.8, 17.4],
    93: [10.2, 11.1, 12.1, 13.2, 14.5, 15.9, 17.5],
    93.5: [10.3, 11.2, 12.2, 13.3, 14.6, 16.1, 17.7],
    94: [10.4, 11.3, 12.3, 13.5, 14.7, 16.2, 17.9],
    94.5: [10.5, 11.4, 12.4, 13.6, 14.9, 16.4, 18],
    95: [10.6, 11.5, 12.6, 13.7, 15, 16.5, 18.2],
    95.5: [10.7, 11.6, 12.7, 13.8, 15.2, 16.7, 18.4],
    96: [10.8, 11.7, 12.8, 14, 15.3, 16.8, 18.6],
    96.5: [10.9, 11.8, 12.9, 14.1, 15.4, 17, 18.7],
    97: [11, 12, 13, 14.2, 15.6, 17.1, 18.9],
    97.5: [11.1, 12.1, 13.1, 14.4, 15.7, 17.3, 19.1],
    98: [11.2, 12.2, 13.3, 14.5, 15.9, 17.5, 19.3],
    98.5: [11.3, 12.3, 13.4, 14.6, 16, 17.6, 19.5],
    99: [11.4, 12.4, 13.5, 14.8, 16.2, 17.8, 19.6],
    99.5: [11.5, 12.5, 13.6, 14.9, 16.3, 18, 19.8],
    100: [11.6, 12.6, 13.7, 15, 16.5, 18.1, 20],
    100.5: [11.7, 12.7, 13.9, 15.2, 16.6, 18.3, 20.2],
    101: [11.8, 12.8, 14, 15.3, 16.8, 18.5, 20.4],
    101.5: [11.9, 13, 14.1, 15.5, 17, 18.7, 20.6],
    102: [12, 13.1, 14.3, 15.6, 17.1, 18.9, 20.8],
    102.5: [12.1, 13.2, 14.4, 15.8, 17.3, 19, 21],
    103: [12.3, 13.3, 14.5, 15.9, 17.5, 19.2, 21.3],
    103.5: [12.4, 13.5, 14.7, 16.1, 17.6, 19.4, 21.5],
    104: [12.5, 13.6, 14.8, 16.2, 17.8, 19.6, 21.7],
    104.5: [12.6, 13.7, 15, 16.4, 18, 19.8, 21.9],
    105: [12.7, 13.8, 15.1, 16.5, 18.2, 20, 22.2],
    105.5: [12.8, 14, 15.3, 16.7, 18.4, 20.2, 22.4],
    106: [13, 14.1, 15.4, 16.9, 18.5, 20.5, 22.6],
    106.5: [13.1, 14.3, 15.6, 17.1, 18.7, 20.7, 22.9],
    107: [13.2, 14.4, 15.7, 17.2, 18.9, 20.9, 23.1],
    107.5: [13.3, 14.5, 15.9, 17.4, 19.1, 21.1, 23.4],
    108: [13.5, 14.7, 16, 17.6, 19.3, 21.3, 23.6],
    108.5: [13.6, 14.8, 16.2, 17.8, 19.5, 21.6, 23.9],
    109: [13.7, 15, 16.4, 18, 19.7, 21.8, 24.2],
    109.5: [13.9, 15.1, 16.5, 18.1, 20, 22, 24.4],
    110: [14, 15.3, 16.7, 18.3, 20.2, 22.3, 24.7],
  };

  Map<double, List<double>> pesoTallaFem = {
    65: [5.6, 6.1, 6.6, 7.2, 7.9, 8.7, 9.7],
    65.5: [5.7, 6.2, 6.7, 7.4, 8.1, 8.9, 9.8],
    66: [5.8, 6.3, 6.8, 7.5, 8.2, 9, 10],
    66.5: [5.8, 6.4, 6.9, 7.6, 8.3, 9.1, 10.1],
    67: [5.9, 6.4, 7, 7.7, 8.4, 9.3, 10.2],
    67.5: [6, 6.5, 7.1, 7.8, 8.5, 9.4, 10.4],
    68: [6.1, 6.6, 7.2, 7.9, 8.7, 9.5, 10.5],
    68.5: [6.2, 6.7, 7.3, 8, 8.8, 9.7, 10.7],
    69: [6.3, 6.8, 7.4, 8.1, 8.9, 9.8, 10.8],
    69.5: [6.3, 6.9, 7.5, 8.2, 9, 9.9, 10.9],
    70: [6.4, 7, 7.6, 8.3, 9.1, 10, 11.1],
    70.5: [6.5, 7.1, 7.7, 8.4, 9.2, 10.1, 11.2],
    71: [6.6, 7.1, 7.8, 8.5, 9.3, 10.3, 11.3],
    71.5: [6.7, 7.2, 7.9, 8.6, 9.4, 10.4, 11.5],
    72: [6.7, 7.3, 8, 8.7, 9.5, 10.5, 11.6],
    72.5: [6.8, 7.4, 8.1, 8.8, 9.7, 10.6, 11.7],
    73: [6.9, 7.5, 8.1, 8.9, 9.8, 10.7, 11.8],
    73.5: [7, 7.6, 8.2, 9, 9.9, 10.8, 12],
    74: [7, 7.6, 8.3, 9.1, 10, 11, 12.1],
    74.5: [7.1, 7.7, 8.4, 9.2, 10.1, 11.1, 12.2],
    75: [7.2, 7.8, 8.5, 9.3, 10.2, 11.2, 12.3],
    75.5: [7.2, 7.9, 8.6, 9.4, 10.3, 11.3, 12.5],
    76: [7.3, 8, 8.7, 9.5, 10.4, 11.4, 12.6],
    76.5: [7.4, 8, 8.7, 9.6, 10.5, 11.5, 12.7],
    77: [7.5, 8.1, 8.8, 9.6, 10.6, 11.6, 12.8],
    77.5: [7.5, 8.2, 8.9, 9.7, 10.7, 11.7, 12.9],
    78: [7.6, 8.3, 9, 9.8, 10.8, 11.8, 13.1],
    78.5: [7.7, 8.4, 9.1, 9.9, 10.9, 12, 13.2],
    79: [7.8, 8.4, 9.2, 10, 11, 12.1, 13.3],
    79.5: [7.8, 8.5, 9.3, 10.1, 11.1, 12.2, 13.4],
    80: [7.9, 8.6, 9.4, 10.2, 11.2, 12.3, 13.6],
    80.5: [8, 8.7, 9.5, 10.3, 11.3, 12.4, 13.7],
    81: [8.1, 8.8, 9.6, 10.4, 11.4, 12.6, 13.9],
    81.5: [8.2, 8.9, 9.7, 10.6, 11.6, 12.7, 14],
    82: [8.3, 9, 9.8, 10.7, 11.7, 12.8, 14.1],
    82.5: [8.4, 9.1, 9.9, 10.8, 11.8, 13, 14.3],
    83: [8.5, 9.2, 10, 10.9, 11.9, 13.1, 14.5],
    83.5: [8.5, 9.3, 10.1, 11, 12.1, 13.3, 14.6],
    84: [8.6, 9.4, 10.2, 11.1, 12.2, 13.4, 14.8],
    84.5: [8.7, 9.5, 10.3, 11.3, 12.3, 13.5, 14.9],
    85: [8.8, 9.6, 10.4, 11.4, 12.5, 13.7, 15.1],
    85.5: [8.9, 9.7, 10.6, 11.5, 12.6, 13.8, 15.3],
    86: [9, 9.8, 10.7, 11.6, 12.7, 14, 15.4],
    86.5: [9.1, 9.9, 10.8, 11.8, 12.9, 14.2, 15.6],
    87: [9.2, 10, 10.9, 11.9, 13, 14.3, 15.8],
    87.5: [9.3, 10.1, 11, 12, 13.2, 14.5, 15.9],
    88: [9.4, 10.2, 11.1, 12.1, 13.3, 14.6, 16.1],
    88.5: [9.5, 10.3, 11.2, 12.3, 13.4, 14.8, 16.3],
    89: [9.6, 10.4, 11.4, 12.4, 13.6, 14.9, 16.4],
    89.5: [9.7, 10.5, 11.5, 12.5, 13.7, 15.1, 16.6],
    90: [9.8, 10.6, 11.6, 12.6, 13.8, 15.2, 16.8],
    90.5: [9.9, 10.7, 11.7, 12.8, 14, 15.4, 16.9],
    91: [10, 10.9, 11.8, 12.9, 14.1, 15.5, 17.1],
    91.5: [10.1, 11, 11.9, 13, 14.3, 15.7, 17.3],
    92: [10.2, 11.1, 12, 13.1, 14.4, 15.8, 17.4],
    92.5: [10.3, 11.2, 12.1, 13.3, 14.5, 16, 17.6],
    93: [10.4, 11.3, 12.3, 13.4, 14.7, 16.1, 17.8],
    93.5: [10.5, 11.4, 12.4, 13.5, 14.8, 16.3, 17.9],
    94: [10.6, 11.5, 12.5, 13.6, 14.9, 16.4, 18.1],
    94.5: [10.7, 11.6, 12.6, 13.8, 15.1, 16.6, 18.3],
    95: [10.8, 11.7, 12.7, 13.9, 15.2, 16.7, 18.5],
    95.5: [10.8, 11.8, 12.8, 14, 15.4, 16.9, 18.6],
    96: [10.9, 11.9, 12.9, 14.1, 15.5, 17, 18.8],
    96.5: [11, 12, 13.1, 14.3, 15.6, 17.2, 19],
    97: [11.1, 12.1, 13.2, 14.4, 15.8, 17.4, 19.2],
    97.5: [11.2, 12.2, 13.3, 14.5, 15.9, 17.5, 19.3],
    98: [11.3, 12.3, 13.4, 14.7, 16.1, 17.7, 19.5],
    98.5: [11.4, 12.4, 13.5, 14.8, 16.2, 17.9, 19.7],
    99: [11.5, 12.5, 13.7, 14.9, 16.4, 18, 19.9],
    99.5: [11.6, 12.7, 13.8, 15.1, 16.5, 18.2, 20.1],
    100: [11.7, 12.8, 13.9, 15.2, 16.7, 18.4, 20.3],
    100.5: [11.9, 12.9, 14.1, 15.4, 16.9, 18.6, 20.5],
    101: [12, 13, 14.2, 15.5, 17, 18.7, 20.7],
    101.5: [12.1, 13.1, 14.3, 15.7, 17.2, 18.9, 20.9],
    102: [12.2, 13.3, 14.5, 15.8, 17.4, 19.1, 21.1],
    102.5: [12.3, 13.4, 14.6, 16, 17.5, 19.3, 21.4],
    103: [12.4, 13.5, 14.7, 16.1, 17.7, 19.5, 21.6],
    103.5: [12.5, 13.6, 14.9, 16.3, 17.9, 19.7, 21.8],
    104: [12.6, 13.8, 15, 16.4, 18.1, 19.9, 22],
    104.5: [12.8, 13.9, 15.2, 16.6, 18.2, 20.1, 22.3],
    105: [12.9, 14, 15.3, 16.8, 18.4, 20.3, 22.5],
    105.5: [13, 14.2, 15.5, 16.9, 18.6, 20.5, 22.7],
    106: [13.1, 14.3, 15.6, 17.1, 18.8, 20.8, 23],
    106.5: [13.3, 14.5, 15.8, 17.3, 19, 21, 23.2],
    107: [13.4, 14.6, 15.9, 17.5, 19.2, 21.2, 23.5],
    107.5: [13.5, 14.7, 16.1, 17.7, 19.4, 21.4, 23.7],
    108: [13.7, 14.9, 16.3, 17.8, 19.6, 21.7, 24],
    108.5: [13.8, 15, 16.4, 18, 19.8, 21.9, 24.3],
    109: [13.9, 15.2, 16.6, 18.2, 20, 22.1, 24.5],
    109.5: [14.1, 15.4, 16.8, 18.4, 20.3, 22.4, 24.8],
    110: [14.2, 15.5, 17, 18.6, 20.5, 22.6, 25.1],
    110.5: [14.4, 15.7, 17.1, 18.8, 20.7, 22.9, 25.4],
    111: [14.5, 15.8, 17.3, 19, 20.9, 23.1, 25.7],
    111.5: [14.7, 16, 17.5, 19.2, 21.2, 23.4, 26],
    112: [14.8, 16.2, 17.7, 19.4, 21.4, 23.6, 26.2],
    112.5: [15, 16.3, 17.9, 19.6, 21.6, 23.9, 26.5],
    113: [15.1, 16.5, 18, 19.8, 21.8, 24.2, 26.8],
    113.5: [15.3, 16.7, 18.2, 20, 22.1, 24.4, 27.1],
    114: [15.4, 16.8, 18.4, 20.2, 22.3, 24.7, 27.4],
    114.5: [15.6, 17, 18.6, 20.5, 22.6, 25, 27.8],
    115: [15.7, 17.2, 18.8, 20.7, 22.8, 25.2, 28.1],
    115.5: [15.9, 17.3, 19, 20.9, 23, 25.5, 28.4],
    116: [16, 17.5, 19.2, 21.1, 23.3, 25.8, 28.7],
    116.5: [16.2, 17.7, 19.4, 21.3, 23.5, 26.1, 29],
    117: [16.3, 17.8, 19.6, 21.5, 23.8, 26.3, 29.3],
    117.5: [16.5, 18, 19.8, 21.7, 24, 26.6, 29.6],
    118: [16.6, 18.2, 19.9, 22, 24.2, 26.9, 29.9],
    118.5: [16.8, 18.4, 20.1, 22.2, 24.5, 27.2, 30.3],
    119: [16.9, 18.5, 20.3, 22.4, 24.7, 27.4, 30.6],
    119.5: [17.1, 18.7, 20.5, 22.6, 25, 27.7, 30.9],
    120: [17.3, 18.9, 20.7, 22.8, 25.2, 28, 31.2],
  };

  Map<double, List<double>> pesoLongitudMasc = {
    45: [1.877, 2.043, 2.23, 2.441, 2.68, 2.951, 3.261],
    45.5: [1.942, 2.114, 2.307, 2.524, 2.771, 3.05, 3.37],
    46: [2.008, 2.185, 2.384, 2.608, 2.861, 3.149, 3.477],
    46.5: [2.074, 2.256, 2.461, 2.691, 2.952, 3.248, 3.585],
    47: [2.141, 2.328, 2.539, 2.776, 3.043, 3.347, 3.694],
    47.5: [2.208, 2.401, 2.617, 2.861, 3.136, 3.448, 3.804],
    48: [2.277, 2.476, 2.698, 2.948, 3.231, 3.551, 3.916],
    48.5: [2.349, 2.552, 2.781, 3.038, 3.328, 3.657, 4.031],
    49: [2.422, 2.632, 2.867, 3.131, 3.429, 3.766, 4.151],
    49.5: [2.499, 2.715, 2.956, 3.228, 3.534, 3.881, 4.275],
    50: [2.579, 2.801, 3.049, 3.328, 3.642, 3.999, 4.403],
    50.5: [2.661, 2.889, 3.144, 3.431, 3.754, 4.12, 4.536],
    51: [2.746, 2.981, 3.243, 3.538, 3.87, 4.245, 4.672],
    51.5: [2.834, 3.075, 3.345, 3.648, 3.989, 4.375, 4.813],
    52: [2.925, 3.173, 3.451, 3.762, 4.113, 4.509, 4.958],
    52.5: [3.02, 3.276, 3.561, 3.881, 4.242, 4.649, 5.111],
    53: [3.12, 3.383, 3.677, 4.006, 4.377, 4.795, 5.27],
    53.5: [3.223, 3.494, 3.796, 4.135, 4.517, 4.947, 5.434],
    54: [3.33, 3.609, 3.921, 4.269, 4.661, 5.104, 5.605],
    54.5: [3.44, 3.727, 4.048, 4.407, 4.81, 5.264, 5.779],
    55: [3.553, 3.848, 4.178, 4.547, 4.961, 5.428, 5.957],
    55.5: [3.667, 3.971, 4.31, 4.689, 5.115, 5.595, 6.138],
    56: [3.783, 4.095, 4.444, 4.834, 5.271, 5.764, 6.322],
    56.5: [3.9, 4.221, 4.579, 4.98, 5.429, 5.935, 6.506],
    57: [4.017, 4.347, 4.715, 5.126, 5.587, 6.106, 6.692],
    57.5: [4.135, 4.474, 4.851, 5.272, 5.745, 6.276, 6.877],
    58: [4.252, 4.599, 4.986, 5.418, 5.902, 6.447, 7.061],
    58.5: [4.369, 4.725, 5.121, 5.563, 6.059, 6.616, 7.245],
    59: [4.485, 4.849, 5.255, 5.707, 6.214, 6.784, 7.427],
    59.5: [4.6, 4.973, 5.387, 5.85, 6.368, 6.951, 7.607],
    60: [4.713, 5.094, 5.518, 5.991, 6.52, 7.115, 7.785],
    60.5: [4.824, 5.213, 5.646, 6.128, 6.669, 7.275, 7.959],
    61: [4.932, 5.329, 5.771, 6.263, 6.814, 7.433, 8.13],
    61.5: [5.039, 5.443, 5.893, 6.395, 6.957, 7.587, 8.297],
    62: [5.143, 5.555, 6.014, 6.525, 7.097, 7.739, 8.462],
    62.5: [5.245, 5.665, 6.132, 6.653, 7.235, 7.888, 8.624],
    63: [5.346, 5.774, 6.249, 6.779, 7.371, 8.035, 8.784],
    63.5: [5.445, 5.88, 6.364, 6.903, 7.505, 8.181, 8.942],
    64: [5.544, 5.986, 6.478, 7.026, 7.638, 8.325, 9.098],
    64.5: [5.64, 6.09, 6.59, 7.147, 7.769, 8.467, 9.253],
    65: [5.736, 6.193, 6.701, 7.267, 7.899, 8.608, 9.406],
    65.5: [5.83, 6.295, 6.811, 7.385, 8.028, 8.748, 9.558],
    66: [5.924, 6.396, 6.92, 7.503, 8.156, 8.887, 9.71],
    66.5: [6.017, 6.496, 7.028, 7.621, 8.283, 9.026, 9.861],
    67: [6.109, 6.595, 7.135, 7.737, 8.409, 9.163, 10.011],
    67.5: [6.2, 6.694, 7.242, 7.853, 8.535, 9.3, 10.161],
    68: [6.291, 6.791, 7.348, 7.967, 8.66, 9.436, 10.31],
    68.5: [6.38, 6.888, 7.453, 8.082, 8.784, 9.572, 10.459],
    69: [6.47, 6.985, 7.558, 8.196, 8.908, 9.708, 10.607],
    69.5: [6.559, 7.081, 7.662, 8.309, 9.032, 9.843, 10.756],
    70: [6.647, 7.177, 7.766, 8.423, 9.156, 9.979, 10.905],
    70.5: [6.735, 7.273, 7.87, 8.536, 9.28, 10.114, 11.053],
    71: [6.823, 7.368, 7.973, 8.648, 9.402, 10.248, 11.201],
    71.5: [6.909, 7.462, 8.075, 8.759, 9.524, 10.382, 11.348],
    72: [6.995, 7.555, 8.177, 8.87, 9.645, 10.514, 11.493],
    72.5: [7.08, 7.647, 8.277, 8.979, 9.764, 10.645, 11.637],
    73: [7.163, 7.737, 8.375, 9.086, 9.882, 10.774, 11.78],
    73.5: [7.246, 7.827, 8.473, 9.193, 9.998, 10.902, 11.92],
    74: [7.327, 7.915, 8.568, 9.297, 10.113, 11.028, 12.059],
    74.5: [7.407, 8.002, 8.663, 9.401, 10.226, 11.152, 12.195],
    75: [7.486, 8.088, 8.757, 9.503, 10.338, 11.275, 12.33],
    75.5: [7.565, 8.173, 8.85, 9.604, 10.448, 11.396, 12.464],
    76: [7.641, 8.257, 8.94, 9.703, 10.557, 11.515, 12.595],
    76.5: [7.717, 8.339, 9.03, 9.801, 10.663, 11.632, 12.723],
    77: [7.792, 8.42, 9.118, 9.896, 10.768, 11.746, 12.848],
    77.5: [7.865, 8.499, 9.204, 9.99, 10.87, 11.858, 12.972],
    78: [7.938, 8.578, 9.289, 10.083, 10.971, 11.968, 13.092],
    78.5: [8.01, 8.655, 9.373, 10.174, 11.07, 12.077, 13.211],
    79: [8.082, 8.733, 9.457, 10.265, 11.169, 12.184, 13.328],
    79.5: [8.154, 8.811, 9.541, 10.356, 11.267, 12.291, 13.445],
    80: [8.227, 8.89, 9.626, 10.448, 11.367, 12.399, 13.561],
    80.5: [8.302, 8.97, 9.712, 10.54, 11.467, 12.507, 13.679],
    81: [8.379, 9.052, 9.8, 10.635, 11.569, 12.617, 13.798],
    81.5: [8.457, 9.136, 9.891, 10.732, 11.673, 12.73, 13.92],
    82: [8.538, 9.223, 9.984, 10.832, 11.781, 12.845, 14.044],
    82.5: [8.623, 9.313, 10.08, 10.935, 11.891, 12.964, 14.172],
    83: [8.71, 9.406, 10.179, 11.042, 12.005, 13.086, 14.303],
    83.5: [8.8, 9.503, 10.282, 11.152, 12.123, 13.213, 14.439],
    84: [8.894, 9.602, 10.389, 11.265, 12.244, 13.342, 14.578],
    84.5: [8.99, 9.705, 10.498, 11.382, 12.369, 13.476, 14.721],
    85: [9.088, 9.809, 10.61, 11.501, 12.496, 13.612, 14.866],
    85.5: [9.189, 9.916, 10.723, 11.622, 12.625, 13.75, 15.014],
    86: [9.29, 10.024, 10.838, 11.744, 12.756, 13.89, 15.163],
    86.5: [9.392, 10.133, 10.954, 11.868, 12.888, 14.03, 15.314],
    87: [9.495, 10.242, 11.07, 11.992, 13.02, 14.172, 15.465],
    87.5: [9.597, 10.35, 11.186, 12.115, 13.152, 14.313, 15.617],
    88: [9.698, 10.458, 11.301, 12.238, 13.284, 14.454, 15.768],
    88.5: [9.798, 10.565, 11.415, 12.36, 13.415, 14.594, 15.919],
    89: [9.897, 10.671, 11.528, 12.482, 13.545, 14.734, 16.069],
    89.5: [9.995, 10.775, 11.64, 12.602, 13.674, 14.873, 16.219],
    90: [10.092, 10.879, 11.751, 12.721, 13.802, 15.011, 16.368],
    90.5: [10.188, 10.981, 11.861, 12.839, 13.929, 15.149, 16.517],
    91: [10.282, 11.083, 11.97, 12.957, 14.057, 15.286, 16.666],
    91.5: [10.376, 11.184, 12.079, 13.074, 14.183, 15.423, 16.815],
    92: [10.469, 11.284, 12.187, 13.191, 14.31, 15.561, 16.964],
    92.5: [10.562, 11.384, 12.295, 13.308, 14.436, 15.698, 17.114],
    93: [10.654, 11.483, 12.402, 13.424, 14.563, 15.836, 17.264],
    93.5: [10.745, 11.582, 12.51, 13.54, 14.689, 15.974, 17.416],
    94: [10.837, 11.681, 12.617, 13.657, 14.817, 16.114, 17.569],
    94.5: [10.928, 11.78, 12.725, 13.775, 14.945, 16.254, 17.723],
    95: [11.02, 11.88, 12.833, 13.893, 15.074, 16.396, 17.88],
    95.5: [11.111, 11.98, 12.942, 14.012, 15.205, 16.54, 18.038],
    96: [11.204, 12.08, 13.052, 14.132, 15.338, 16.686, 18.2],
    96.5: [11.297, 12.182, 13.163, 14.254, 15.472, 16.834, 18.364],
    97: [11.39, 12.284, 13.276, 14.378, 15.608, 16.985, 18.532],
    97.5: [11.485, 12.388, 13.39, 14.504, 15.747, 17.139, 18.702],
    98: [11.582, 12.494, 13.506, 14.632, 15.888, 17.296, 18.877],
    98.5: [11.679, 12.6, 13.623, 14.761, 16.032, 17.455, 19.055],
    99: [11.777, 12.709, 13.743, 14.893, 16.178, 17.618, 19.237],
    99.5: [11.877, 12.818, 13.864, 15.028, 16.328, 17.784, 19.423],
    100: [11.978, 12.929, 13.986, 15.164, 16.479, 17.954, 19.612],
    100.5: [12.079, 13.042, 14.111, 15.302, 16.633, 18.126, 19.805],
    101: [12.182, 13.155, 14.237, 15.442, 16.789, 18.3, 20.002],
    101.5: [12.286, 13.27, 14.364, 15.584, 16.948, 18.478, 20.201],
    102: [12.391, 13.386, 14.493, 15.728, 17.108, 18.658, 20.404],
    102.5: [12.497, 13.504, 14.624, 15.873, 17.271, 18.841, 20.61],
    103: [12.604, 13.623, 14.756, 16.021, 17.436, 19.027, 20.819],
    103.5: [12.712, 13.742, 14.889, 16.17, 17.603, 19.215, 21.032],
    104: [12.821, 13.863, 15.024, 16.32, 17.772, 19.405, 21.247],
    104.5: [12.93, 13.985, 15.16, 16.473, 17.944, 19.598, 21.465],
    105: [13.041, 14.109, 15.298, 16.627, 18.117, 19.793, 21.686],
    105.5: [13.153, 14.233, 15.437, 16.783, 18.292, 19.99, 21.909],
    106: [13.266, 14.359, 15.578, 16.94, 18.469, 20.19, 22.136],
    106.5: [13.38, 14.486, 15.72, 17.1, 18.648, 20.393, 22.365],
    107: [13.496, 14.615, 15.863, 17.261, 18.83, 20.598, 22.598],
    107.5: [13.611, 14.744, 16.008, 17.424, 19.014, 20.806, 22.835],
    108: [13.729, 14.875, 16.155, 17.588, 19.199, 21.016, 23.073],
    108.5: [13.847, 15.008, 16.303, 17.755, 19.388, 21.229, 23.316],
    109: [13.967, 15.142, 16.454, 17.924, 19.578, 21.446, 23.562],
    109.5: [14.088, 15.277, 16.606, 18.095, 19.772, 21.665, 23.812],
    110: [14.211, 15.414, 16.76, 18.269, 19.968, 21.888, 24.066],
  };

  Map<double, List<double>> pesoTallaMasc = {
    65: [5.868, 6.335, 6.854, 7.433, 8.079, 8.804, 9.619],
    65.5: [5.961, 6.436, 6.963, 7.55, 8.207, 8.943, 9.771],
    66: [6.054, 6.536, 7.071, 7.667, 8.334, 9.081, 9.921],
    66.5: [6.146, 6.635, 7.178, 7.783, 8.46, 9.218, 10.071],
    67: [6.236, 6.733, 7.284, 7.899, 8.585, 9.355, 10.221],
    67.5: [6.327, 6.83, 7.39, 8.013, 8.71, 9.491, 10.369],
    68: [6.416, 6.927, 7.495, 8.127, 8.834, 9.626, 10.518],
    68.5: [6.505, 7.024, 7.599, 8.241, 8.958, 9.762, 10.667],
    69: [6.594, 7.12, 7.704, 8.355, 9.082, 9.898, 10.816],
    69.5: [6.683, 7.216, 7.808, 8.468, 9.206, 10.033, 10.964],
    70: [6.771, 7.311, 7.912, 8.581, 9.329, 10.168, 11.112],
    70.5: [6.858, 7.406, 8.014, 8.693, 9.451, 10.302, 11.259],
    71: [6.944, 7.499, 8.116, 8.804, 9.572, 10.435, 11.406],
    71.5: [7.029, 7.592, 8.217, 8.914, 9.693, 10.567, 11.551],
    72: [7.113, 7.683, 8.316, 9.022, 9.811, 10.697, 11.694],
    72.5: [7.196, 7.773, 8.414, 9.129, 9.929, 10.826, 11.836],
    73: [7.278, 7.862, 8.511, 9.235, 10.044, 10.952, 11.975],
    73.5: [7.359, 7.95, 8.607, 9.339, 10.158, 11.078, 12.113],
    74: [7.439, 8.036, 8.701, 9.442, 10.271, 11.201, 12.25],
    74.5: [7.518, 8.122, 8.794, 9.544, 10.382, 11.324, 12.384],
    75: [7.596, 8.207, 8.886, 9.644, 10.492, 11.444, 12.516],
    75.5: [7.672, 8.29, 8.976, 9.742, 10.6, 11.562, 12.646],
    76: [7.747, 8.371, 9.065, 9.839, 10.705, 11.678, 12.773],
    76.5: [7.821, 8.452, 9.152, 9.934, 10.809, 11.791, 12.898],
    77: [7.895, 8.531, 9.238, 10.027, 10.911, 11.902, 13.02],
    77.5: [7.967, 8.609, 9.323, 10.119, 11.011, 12.012, 13.14],
    78: [8.039, 8.686, 9.407, 10.21, 11.11, 12.12, 13.258],
    78.5: [8.111, 8.764, 9.491, 10.301, 11.208, 12.227, 13.375],
    79: [8.183, 8.842, 9.575, 10.392, 11.307, 12.334, 13.491],
    79.5: [8.257, 8.922, 9.66, 10.484, 11.407, 12.442, 13.608],
    80: [8.332, 9.002, 9.747, 10.578, 11.508, 12.551, 13.726],
    80.5: [8.41, 9.085, 9.836, 10.674, 11.611, 12.662, 13.847],
    81: [8.489, 9.171, 9.928, 10.772, 11.716, 12.776, 13.969],
    81.5: [8.572, 9.258, 10.022, 10.873, 11.824, 12.892, 14.095],
    82: [8.657, 9.35, 10.119, 10.977, 11.936, 13.013, 14.224],
    82.5: [8.746, 9.444, 10.22, 11.085, 12.052, 13.137, 14.357],
    83: [8.837, 9.542, 10.325, 11.197, 12.171, 13.264, 14.494],
    83.5: [8.932, 9.643, 10.432, 11.311, 12.294, 13.396, 14.635],
    84: [9.029, 9.746, 10.542, 11.429, 12.42, 13.53, 14.778],
    84.5: [9.128, 9.852, 10.655, 11.549, 12.548, 13.667, 14.925],
    85: [9.229, 9.959, 10.769, 11.671, 12.678, 13.806, 15.074],
    85.5: [9.331, 10.067, 10.884, 11.794, 12.809, 13.946, 15.224],
    86: [9.433, 10.176, 11, 11.917, 12.941, 14.087, 15.374],
    86.5: [9.536, 10.285, 11.116, 12.041, 13.073, 14.228, 15.526],
    87: [9.637, 10.393, 11.232, 12.164, 13.205, 14.37, 15.677],
    87.5: [9.738, 10.501, 11.347, 12.287, 13.336, 14.51, 15.828],
    88: [9.838, 10.607, 11.46, 12.409, 13.467, 14.65, 15.979],
    88.5: [9.937, 10.713, 11.573, 12.53, 13.597, 14.79, 16.129],
    89: [10.034, 10.817, 11.685, 12.65, 13.725, 14.928, 16.278],
    89.5: [10.13, 10.92, 11.795, 12.768, 13.853, 15.066, 16.428],
    90: [10.226, 11.022, 11.905, 12.886, 13.98, 15.204, 16.576],
    90.5: [10.32, 11.123, 12.014, 13.004, 14.107, 15.341, 16.725],
    91: [10.414, 11.224, 12.123, 13.121, 14.234, 15.478, 16.874],
    91.5: [10.507, 11.324, 12.231, 13.238, 14.36, 15.615, 17.024],
    92: [10.599, 11.424, 12.338, 13.354, 14.487, 15.753, 17.174],
    92.5: [10.691, 11.523, 12.445, 13.47, 14.613, 15.891, 17.325],
    93: [10.782, 11.622, 12.552, 13.587, 14.74, 16.03, 17.477],
    93.5: [10.873, 11.721, 12.66, 13.704, 14.868, 16.17, 17.63],
    94: [10.964, 11.82, 12.768, 13.822, 14.997, 16.311, 17.786],
    94.5: [11.056, 11.919, 12.876, 13.94, 15.127, 16.454, 17.943],
    95: [11.148, 12.02, 12.986, 14.06, 15.258, 16.598, 18.103],
    95.5: [11.241, 12.121, 13.096, 14.181, 15.391, 16.745, 18.265],
    96: [11.334, 12.223, 13.208, 14.304, 15.526, 16.894, 18.43],
    96.5: [11.428, 12.326, 13.321, 14.428, 15.663, 17.046, 18.599],
    97: [11.524, 12.43, 13.436, 14.555, 15.803, 17.201, 18.771],
    97.5: [11.62, 12.536, 13.552, 14.683, 15.946, 17.359, 18.948],
    98: [11.718, 12.644, 13.671, 14.814, 16.09, 17.52, 19.127],
    98.5: [11.817, 12.752, 13.791, 14.947, 16.238, 17.684, 19.311],
    99: [11.917, 12.863, 13.913, 15.082, 16.388, 17.852, 19.498],
    99.5: [12.018, 12.974, 14.036, 15.219, 16.54, 18.022, 19.688],
    100: [12.12, 13.087, 14.161, 15.358, 16.695, 18.195, 19.883],
    100.5: [12.224, 13.201, 14.288, 15.498, 16.852, 18.371, 20.081],
    101: [12.328, 13.317, 14.416, 15.641, 17.012, 18.55, 20.282],
    101.5: [12.433, 13.433, 14.545, 15.786, 17.173, 18.731, 20.487],
    102: [12.539, 13.551, 14.676, 15.932, 17.337, 18.915, 20.694],
    102.5: [12.647, 13.67, 14.809, 16.08, 17.503, 19.102, 20.904],
    103: [12.755, 13.791, 14.943, 16.23, 17.671, 19.291, 21.118],
    103.5: [12.865, 13.912, 15.079, 16.381, 17.841, 19.482, 21.334],
    104: [12.975, 14.035, 15.215, 16.534, 18.013, 19.675, 21.553],
    104.5: [13.086, 14.159, 15.353, 16.689, 18.186, 19.871, 21.775],
    105: [13.198, 14.283, 15.493, 16.845, 18.362, 20.07, 22],
    105.5: [13.312, 14.41, 15.634, 17.004, 18.54, 20.271, 22.227],
    106: [13.426, 14.537, 15.777, 17.164, 18.721, 20.475, 22.458],
    106.5: [13.542, 14.667, 15.921, 17.326, 18.903, 20.68, 22.692],
    107: [13.658, 14.797, 16.067, 17.489, 19.088, 20.89, 22.93],
    107.5: [13.776, 14.928, 16.214, 17.655, 19.274, 21.101, 23.17],
    108: [13.895, 15.061, 16.363, 17.823, 19.464, 21.316, 23.415],
    108.5: [14.015, 15.195, 16.514, 17.992, 19.655, 21.533, 23.662],
    109: [14.137, 15.332, 16.667, 18.164, 19.85, 21.754, 23.913],
    109.5: [14.26, 15.47, 16.822, 18.339, 20.047, 21.978, 24.169],
    110: [14.385, 15.609, 16.979, 18.516, 20.247, 22.205, 24.428],
    110.5: [14.511, 15.751, 17.138, 18.695, 20.45, 22.435, 24.69],
    111: [14.639, 15.894, 17.298, 18.876, 20.655, 22.668, 24.955],
    111.5: [14.768, 16.038, 17.461, 19.059, 20.862, 22.903, 25.224],
    112: [14.898, 16.184, 17.624, 19.244, 21.071, 23.141, 25.496],
    112.5: [15.029, 16.331, 17.79, 19.43, 21.282, 23.381, 25.77],
    113: [15.162, 16.479, 17.957, 19.618, 21.495, 23.623, 26.047],
    113.5: [15.296, 16.629, 18.125, 19.808, 21.71, 23.868, 26.325],
    114: [15.429, 16.779, 18.294, 19.999, 21.927, 24.114, 26.607],
    114.5: [15.565, 16.931, 18.464, 20.191, 22.144, 24.362, 26.891],
    115: [15.7, 17.083, 18.635, 20.385, 22.364, 24.612, 27.176],
    115.5: [15.836, 17.236, 18.807, 20.579, 22.584, 24.863, 27.463],
    116: [15.974, 17.389, 18.98, 20.774, 22.805, 25.115, 27.752],
    116.5: [16.111, 17.543, 19.153, 20.97, 23.028, 25.368, 28.042],
    117: [16.248, 17.697, 19.327, 21.167, 23.251, 25.623, 28.334],
    117.5: [16.385, 17.852, 19.501, 21.364, 23.475, 25.879, 28.627],
    118: [16.523, 18.006, 19.676, 21.561, 23.699, 26.135, 28.921],
    118.5: [16.66, 18.161, 19.85, 21.759, 23.924, 26.392, 29.216],
    119: [16.798, 18.316, 20.025, 21.957, 24.15, 26.65, 29.512],
    119.5: [16.935, 18.47, 20.199, 22.155, 24.375, 26.908, 29.81],
    120: [17.072, 18.624, 20.374, 22.353, 24.601, 27.167, 30.107],
  };

  List<double>? encontrarPuntajeZFem(double talla, int meses) {
    List<double>? puntajeZPesoTallaFem;
    double tallaBuscar = _redondearTallaACinco(talla);
    if (meses < 24) {
      puntajeZPesoTallaFem = pesoLongitudFem[tallaBuscar];
    } else {
      puntajeZPesoTallaFem = pesoTallaFem[tallaBuscar];
    }
    return puntajeZPesoTallaFem;
  }

  List<double>? encontrarPuntajeZMasc(double talla, int meses) {
    List<double>? puntajeZPesoTallaMasc;
    double tallaBuscar = _redondearTallaACinco(talla);
    if (meses < 24) {
      puntajeZPesoTallaMasc = pesoLongitudMasc[tallaBuscar];
    } else {
      puntajeZPesoTallaMasc = pesoTallaMasc[tallaBuscar];
    }
    return puntajeZPesoTallaMasc;
  }

//metodo para redondear la talla a 0.5 o multiplos de 0.5
  double _redondearTallaACinco(double talla) {
    double tallaZ = talla;
    double tallaRes;
    double residuoFinalTalla;
    double tallaFinalSinRes;
    int tallaInt;

    double talla5;

    tallaRes = tallaZ % 1;
    tallaRes = tallaRes * 10;
    tallaRes = tallaRes.roundToDouble();

    if (tallaRes > 2 && tallaRes < 8) {
      residuoFinalTalla = 0.5;
    } else {
      if (tallaRes <= 2) {
        residuoFinalTalla = 0.0;
      } else {
        residuoFinalTalla = 1.0;
      }
    }

    tallaInt = tallaZ.toInt();
    tallaFinalSinRes = tallaInt.toDouble();
    talla5 = tallaFinalSinRes + residuoFinalTalla;
    return talla5;
  }
}
