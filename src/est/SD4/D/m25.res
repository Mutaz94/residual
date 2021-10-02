Sat Oct  2 05:35:24 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	Two-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/7/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/SD4/D/dat25.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK
ET1 = EXP(ETA(1)*THETA(6))
ET2 = EXP(ETA(2)*THETA(7))
ET3 = EXP(ETA(3)*THETA(8))
ET4 = EXP(ETA(4)*THETA(9))
ET5 = EXP(ETA(5)*THETA(10))

CL = 5.0 * THETA(1) * ET1
V2 = 35  * THETA(2) * ET2
Q  = 50  * THETA(3) * ET3
V3 = 50  * THETA(4) * ET4
KA = 0.7 * THETA(5) * ET5
SC = V2
$ERROR
CVERR = 0.05
W = THETA(11)*F*CVERR

Y 	= F + W*ERR(1)

$THETA
(0,1) ; CL
(0,1) ; V2
(0,1) ; Q
(0,1) ; V3
(0,1) ; KA
(0,1) ; IIVCL
(0,1) ; IIVV2
(0,1) ; IIVQ
(0,1) ; IIVV3
(0,1) ; IIVKA
(0,1) ; CVPropErr

$OMEGA  (0.09 FIX)x5
$SIGMA  1 FIX ;        [P]

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:        2 OCT 2021
Days until program expires : 197
1NONLINEAR MIXED EFFECTS MODEL PROGRAM (NONMEM) VERSION 7.5.0
 ORIGINALLY DEVELOPED BY STUART BEAL, LEWIS SHEINER, AND ALISON BOECKMANN
 CURRENT DEVELOPERS ARE ROBERT BAUER, ICON DEVELOPMENT SOLUTIONS,
 AND ALISON BOECKMANN. IMPLEMENTATION, EFFICIENCY, AND STANDARDIZATION
 PERFORMED BY NOUS INFOSYSTEMS.

 PROBLEM NO.:         1
 template control stream
0DATA CHECKOUT RUN:              NO
 DATA SET LOCATED ON UNIT NO.:    2
 THIS UNIT TO BE REWOUND:        NO
 NO. OF DATA RECS IN DATA SET:      500
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      400
 TOT. NO. OF INDIVIDUALS:      100
0LENGTH OF THETA:  11
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   5
0DEFAULT OMEGA BOUNDARY TEST OMITTED:    NO
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   1
0DEFAULT SIGMA BOUNDARY TEST OMITTED:    NO
0INITIAL ESTIMATE OF THETA:
 LOWER BOUND    INITIAL EST    UPPER BOUND
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
0OMEGA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0INITIAL ESTIMATE OF SIGMA:
 0.1000E+01
0SIGMA CONSTRAINED TO BE THIS INITIAL ESTIMATE
1DOUBLE PRECISION PREDPP VERSION 7.5.0

 TWO COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN4)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   5
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   BASIC PK PARAMETER NO.  1: ELIMINATION RATE (K)
   BASIC PK PARAMETER NO.  2: CENTRAL-TO-PERIPH. RATE (K23)
   BASIC PK PARAMETER NO.  3: PERIPH.-TO-CENTRAL RATE (K32)
   BASIC PK PARAMETER NO.  5: ABSORPTION RATE (KA)
 TRANSLATOR WILL CONVERT PARAMETERS
 CL, V2, Q, V3 TO K, K23, K32 (TRANS4)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         PERIPH.      ON         NO         YES        NO         NO
    4         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            6           *           *           *           *
    3            *           *           *           *           *
    4            *           -           -           -           -
             - PARAMETER IS NOT ALLOWED FOR THIS MODEL
             * PARAMETER IS NOT SUPPLIED BY PK SUBROUTINE;
               WILL DEFAULT TO ONE IF APPLICABLE
0DATA ITEM INDICES USED BY PRED ARE:
   EVENT ID DATA ITEM IS DATA ITEM NO.:      6
   TIME DATA ITEM IS DATA ITEM NO.:          2
   DOSE AMOUNT DATA ITEM IS DATA ITEM NO.:   4

0PK SUBROUTINE CALLED WITH EVERY EVENT RECORD.
 PK SUBROUTINE NOT CALLED AT NONEVENT (ADDITIONAL OR LAGGED) DOSE TIMES.
0ERROR SUBROUTINE CALLED WITH EVERY EVENT RECORD.
1


 #TBLN:      1
 #METH: First Order Conditional Estimation with Interaction

 ESTIMATION STEP OMITTED:                 NO
 ANALYSIS TYPE:                           POPULATION
 NUMBER OF SADDLE POINT RESET ITERATIONS:      0
 GRADIENT METHOD USED:               NOSLOW
 CONDITIONAL ESTIMATES USED:              YES
 CENTERED ETA:                            NO
 EPS-ETA INTERACTION:                     YES
 LAPLACIAN OBJ. FUNC.:                    NO
 NO. OF FUNCT. EVALS. ALLOWED:            10000
 NO. OF SIG. FIGURES REQUIRED:            2
 INTERMEDIATE PRINTOUT:                   YES
 ESTIMATE OUTPUT TO MSF:                  NO
 ABORT WITH PRED EXIT CODE 1:             NO
 IND. OBJ. FUNC. VALUES SORTED:           NO
 NUMERICAL DERIVATIVE
       FILE REQUEST (NUMDER):               NONE
 MAP (ETAHAT) ESTIMATION METHOD (OPTMAP):   0
 ETA HESSIAN EVALUATION METHOD (ETADER):    0
 INITIAL ETA FOR MAP ESTIMATION (MCETA):    0
 SIGDIGITS FOR MAP ESTIMATION (SIGLO):      100
 GRADIENT SIGDIGITS OF
       FIXED EFFECTS PARAMETERS (SIGL):     100
 NOPRIOR SETTING (NOPRIOR):                 0
 NOCOV SETTING (NOCOV):                     OFF
 DERCONT SETTING (DERCONT):                 OFF
 FINAL ETA RE-EVALUATION (FNLETA):          1
 EXCLUDE NON-INFLUENTIAL (NON-INFL.) ETAS
       IN SHRINKAGE (ETASTYPE):             NO
 NON-INFL. ETA CORRECTION (NONINFETA):      0
 RAW OUTPUT FILE (FILE): m25.ext
 EXCLUDE TITLE (NOTITLE):                   NO
 EXCLUDE COLUMN LABELS (NOLABEL):           NO
 FORMAT FOR ADDITIONAL FILES (FORMAT):      S1PE12.5
 PARAMETER ORDER FOR OUTPUTS (ORDER):       TSOL
 KNUTHSUMOFF:                               0
 INCLUDE LNTWOPI:                           NO
 INCLUDE CONSTANT TERM TO PRIOR (PRIORC):   NO
 INCLUDE CONSTANT TERM TO OMEGA (ETA) (OLNTWOPI):NO
 ADDITIONAL CONVERGENCE TEST (CTYPE=4)?:    NO
 EM OR BAYESIAN METHOD USED:                 NONE


 THE FOLLOWING LABELS ARE EQUIVALENT
 PRED=PREDI
 RES=RESI
 WRES=WRESI
 IWRS=IWRESI
 IPRD=IPREDI
 IRS=IRESI

 MONITORING OF SEARCH:


0ITERATION NO.:    0    OBJECTIVE VALUE:   6603.37142942197        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   2.2018E+02 -1.4800E-01 -5.4597E+01 -1.0214E+02  2.1432E+02 -1.1815E+03 -4.5576E+02 -3.1165E+01 -7.7726E+02 -3.8008E+02
            -1.3555E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -707.156536810742        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.4875E+00  1.3367E+00  1.0031E+00  2.1167E+00  1.1494E+00  1.8661E+00  1.5443E+00  1.0489E+00  1.9876E+00  1.2024E+00
             1.3368E+01
 PARAMETER:  4.9711E-01  3.9024E-01  1.0311E-01  8.4985E-01  2.3920E-01  7.2385E-01  5.3458E-01  1.4770E-01  7.8692E-01  2.8431E-01
             2.6928E+00
 GRADIENT:   2.2379E+01  3.6346E+01 -1.2653E+01  8.5664E+01 -1.7142E+01  3.6022E+01 -3.4377E-01  5.6786E+00  1.7237E+01  4.4922E+00
             2.0249E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -733.629171402610        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  1.3745E+00  1.1878E+00  6.5729E+00  2.4238E+00  4.8746E+00  2.0808E+00  4.0337E+00  1.4081E+00  2.5448E+00  8.0290E+00
             1.0786E+01
 PARAMETER:  4.1807E-01  2.7214E-01  1.9830E+00  9.8535E-01  1.6840E+00  8.3276E-01  1.4947E+00  4.4225E-01  1.0340E+00  2.1831E+00
             2.4782E+00
 GRADIENT:   2.3560E+01  2.1291E+01  5.2629E-01  8.2678E+01 -2.0327E+00  4.8802E+01  1.4109E+01 -2.5549E-02  5.1936E+01  7.7205E+00
             1.8559E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -791.609189119909        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      225
 NPARAMETR:  1.1498E+00  6.1669E-01  5.8777E+00  1.7863E+00  3.1609E+00  1.6897E+00  3.0991E+00  6.6636E+00  1.4070E+00  3.5658E+00
             9.7462E+00
 PARAMETER:  2.3960E-01 -3.8338E-01  1.8712E+00  6.8014E-01  1.2509E+00  6.2454E-01  1.2311E+00  1.9967E+00  4.4149E-01  1.3714E+00
             2.3769E+00
 GRADIENT:  -4.8930E+01  5.2384E+00  7.3967E+00 -2.6007E+00 -9.9088E+00  1.2667E+01  1.7634E+00  5.5989E+01  1.0538E+01 -6.5062E-01
             1.9574E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -844.542793205491        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      406
 NPARAMETR:  1.1744E+00  3.0237E-01  3.0434E+00  1.8688E+00  3.3551E+00  1.6820E+00  3.9275E+00  5.1826E+00  1.3061E+00  3.5871E+00
             6.6747E+00
 PARAMETER:  2.6075E-01 -1.0961E+00  1.2130E+00  7.2530E-01  1.3105E+00  6.2001E-01  1.4680E+00  1.7453E+00  3.6707E-01  1.3773E+00
             1.9983E+00
 GRADIENT:   1.8062E+01  1.7726E+01  1.2136E+01  3.3835E+01 -2.0271E+01 -2.0323E+01 -1.7205E+00 -2.4076E+00 -1.3241E+01 -3.8161E+00
            -3.3727E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -888.958120445471        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      582
 NPARAMETR:  8.7879E-01  1.0570E-01  3.3428E-01  1.2562E+00  1.3097E+01  1.5845E+00  1.0819E+00  2.7455E+00  5.4633E-01  1.1109E+01
             6.3058E+00
 PARAMETER: -2.9207E-02 -2.1471E+00 -9.9577E-01  3.2807E-01  2.6724E+00  5.6028E-01  1.7873E-01  1.1100E+00 -5.0454E-01  2.5078E+00
             1.9415E+00
 GRADIENT:  -4.6495E+01  1.2656E+01 -1.1963E+01  8.4913E+00  4.0457E+00  4.2640E+00  5.8774E-01 -1.3117E+01  3.6167E+00  1.5093E+01
            -6.2061E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -908.124977943431        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:      679
 NPARAMETR:  8.7920E-01  1.0085E-01  3.3505E-01  1.2533E+00  1.1633E+01  1.5749E+00  1.0000E-02  2.7446E+00  5.4521E-01  8.0255E+00
             6.9745E+00
 PARAMETER: -2.8743E-02 -2.1941E+00 -9.9347E-01  3.2575E-01  2.5538E+00  5.5417E-01 -1.1675E+01  1.1096E+00 -5.0658E-01  2.1826E+00
             2.0423E+00
 GRADIENT:  -3.7056E+01  9.3520E+00  1.2978E+01  8.0204E+01 -7.8977E-01  2.0018E+01  0.0000E+00  1.0744E+01 -1.8650E+00  7.0508E+00
             2.1605E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -913.400480459763        NO. OF FUNC. EVALS.: 122
 CUMULATIVE NO. OF FUNC. EVALS.:      801
 NPARAMETR:  9.1563E-01  9.3916E-02  3.3316E-01  1.1943E+00  1.1049E+01  1.4947E+00  1.0000E-02  2.7104E+00  6.5292E-01  6.0141E+00
             6.8710E+00
 PARAMETER:  1.1857E-02 -2.2654E+00 -9.9915E-01  2.7760E-01  2.5023E+00  5.0189E-01 -1.9854E+01  1.0971E+00 -3.2630E-01  1.8941E+00
             2.0273E+00
 GRADIENT:   1.2409E+01  1.7952E+01  2.9709E+01 -7.0298E+00 -4.5266E+00  3.3021E+00  0.0000E+00  1.2122E+00  5.0696E-01 -3.3715E-01
             3.0983E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -913.978164141765        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      873
 NPARAMETR:  8.8100E-01  8.3283E-02  3.2691E-01  1.1671E+00  1.1098E+01  1.4120E+00  1.0000E-02  2.7089E+00  5.6779E-01  6.0222E+00
             6.6739E+00
 PARAMETER: -2.6703E-02 -2.3855E+00 -1.0181E+00  2.5454E-01  2.5068E+00  4.4500E-01 -1.9854E+01  1.0965E+00 -4.6601E-01  1.8955E+00
             1.9982E+00
 GRADIENT:  -3.9845E+00  1.2525E+01  4.1054E+01 -2.7717E+00 -3.2423E-01  8.2148E-01  0.0000E+00 -1.1114E+01 -8.7599E-01 -1.8735E+00
             6.4475E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -918.974623506029        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:     1002
 NPARAMETR:  8.8943E-01  7.4423E-02  2.7174E-01  1.1663E+00  1.1547E+01  1.4077E+00  1.0000E-02  2.7054E+00  5.8242E-01  6.7751E+00
             6.6477E+00
 PARAMETER: -1.7175E-02 -2.4980E+00 -1.2029E+00  2.5382E-01  2.5464E+00  4.4195E-01 -1.9854E+01  1.0952E+00 -4.4056E-01  2.0133E+00
             1.9943E+00
 GRADIENT:   3.0853E+01  6.3048E+00  2.0472E+01  4.0756E+01 -5.8615E-01  3.0743E+01  0.0000E+00 -9.7018E+00  3.9471E+00 -1.7913E+00
            -5.0683E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -920.312804317546        NO. OF FUNC. EVALS.: 147
 CUMULATIVE NO. OF FUNC. EVALS.:     1149
 NPARAMETR:  8.8505E-01  7.2397E-02  2.5994E-01  1.1519E+00  1.1092E+01  1.4067E+00  1.0000E-02  2.7092E+00  5.6690E-01  7.2149E+00
             6.6653E+00
 PARAMETER: -2.2117E-02 -2.5256E+00 -1.2473E+00  2.4144E-01  2.5062E+00  4.4125E-01 -1.9854E+01  1.0967E+00 -4.6758E-01  2.0761E+00
             1.9969E+00
 GRADIENT:   1.9710E+01 -2.1083E-01  7.0647E+00  2.9007E+01 -1.3197E+00  1.7142E+01  0.0000E+00 -1.9477E+01  3.5934E+00 -2.8550E+00
            -1.9540E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -921.346167104133        NO. OF FUNC. EVALS.: 101
 CUMULATIVE NO. OF FUNC. EVALS.:     1250
 NPARAMETR:  8.6547E-01  7.0071E-02  2.6000E-01  1.1525E+00  1.1281E+01  1.3252E+00  1.0000E-02  2.7031E+00  4.4651E-01  7.1149E+00
             6.7342E+00
 PARAMETER: -4.4481E-02 -2.5582E+00 -1.2471E+00  2.4193E-01  2.5231E+00  3.8156E-01 -1.9854E+01  1.0944E+00 -7.0630E-01  2.0622E+00
             2.0072E+00
 GRADIENT:   1.3249E+00  7.9044E+00  1.6928E+01  7.0540E+01  1.7937E+00 -4.8094E+00  0.0000E+00 -7.3497E+00  3.3160E-01 -1.1266E-01
             3.6947E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -921.359189899485        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:     1320
 NPARAMETR:  8.6140E-01  6.7399E-02  2.5564E-01  1.1495E+00  1.1244E+01  1.3142E+00  1.0000E-02  2.7213E+00  4.6291E-01  7.0999E+00
             6.6520E+00
 PARAMETER: -4.9194E-02 -2.5971E+00 -1.2640E+00  2.3933E-01  2.5198E+00  3.7323E-01 -1.9854E+01  1.1011E+00 -6.7021E-01  2.0601E+00
             1.9949E+00
 GRADIENT:   1.3966E+00  6.9170E+00  1.5016E+01  7.5937E+01  1.9222E+00 -7.3115E+00  0.0000E+00 -5.7520E+00  8.1219E-01 -7.3589E-02
            -4.4135E+00

0ITERATION NO.:   65    OBJECTIVE VALUE:  -921.369980389605        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:     1393
 NPARAMETR:  8.5624E-01  6.4019E-02  2.4993E-01  1.1454E+00  1.1189E+01  1.3049E+00  1.0000E-02  2.7458E+00  4.5861E-01  7.0807E+00
             6.5945E+00
 PARAMETER: -5.5199E-02 -2.6486E+00 -1.2866E+00  2.3572E-01  2.5149E+00  3.6613E-01 -1.9854E+01  1.1101E+00 -6.7956E-01  2.0574E+00
             1.9862E+00
 GRADIENT:   1.2620E+00  5.9368E+00  1.2783E+01  8.3731E+01  1.8339E+00 -7.5934E+00  0.0000E+00 -4.9384E+00  9.3398E-01  1.1638E-01
            -1.0998E+01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -922.917661813882        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:     1552
 NPARAMETR:  8.5356E-01  5.5771E-02  2.3126E-01  1.1291E+00  1.0935E+01  1.3503E+00  1.0000E-02  2.8834E+00  3.4609E-01  7.1369E+00
             6.8763E+00
 PARAMETER: -5.8337E-02 -2.7865E+00 -1.3642E+00  2.2139E-01  2.4920E+00  4.0032E-01 -1.9854E+01  1.1590E+00 -9.6105E-01  2.0653E+00
             2.0281E+00
 GRADIENT:  -1.4927E-01 -1.0125E+01 -4.2731E+00  7.6399E+01  1.6166E+00  8.4054E+00  0.0000E+00 -1.6474E+01  6.2136E-01 -3.9766E+00
             4.4338E+00

0ITERATION NO.:   75    OBJECTIVE VALUE:  -923.811757116396        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1733             RESET HESSIAN, TYPE I
 NPARAMETR:  8.5760E-01  5.7733E-02  2.3749E-01  1.1252E+00  1.1224E+01  1.3505E+00  1.0000E-02  2.9602E+00  2.9101E-01  7.0779E+00
             6.9962E+00
 PARAMETER: -5.3616E-02 -2.7519E+00 -1.3376E+00  2.1800E-01  2.5180E+00  4.0044E-01 -1.9854E+01  1.1853E+00 -1.1344E+00  2.0570E+00
             2.0454E+00
 GRADIENT:   1.1083E+01  4.7154E+00  1.0728E+01  6.7607E+01  9.1239E-01  1.3998E+01  0.0000E+00  6.2386E+00  9.2770E-01  1.1837E-01
             3.5144E+01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -927.080902395213        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:     1869
 NPARAMETR:  8.4466E-01  6.2281E-02  2.2264E-01  1.0559E+00  1.2183E+01  1.3330E+00  1.0000E-02  3.0408E+00  2.0877E-01  7.8661E+00
             6.7567E+00
 PARAMETER: -6.8825E-02 -2.6761E+00 -1.4022E+00  1.5436E-01  2.6000E+00  3.8739E-01 -1.9854E+01  1.2121E+00 -1.4665E+00  2.1626E+00
             2.0105E+00
 GRADIENT:   6.3219E+00  7.8854E+00  5.2324E+00  1.1000E+00  6.1952E-02 -1.1654E+01  0.0000E+00  1.2795E+01  5.0317E-01 -4.9657E+00
             1.4495E+00

0ITERATION NO.:   85    OBJECTIVE VALUE:  -927.090511349487        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:     1967
 NPARAMETR:  8.3495E-01  6.1688E-02  2.2254E-01  1.0563E+00  1.2180E+01  1.3317E+00  1.0000E-02  3.0390E+00  2.0955E-01  7.8226E+00
             6.7831E+00
 PARAMETER: -8.0388E-02 -2.6857E+00 -1.4026E+00  1.5475E-01  2.5998E+00  3.8643E-01 -1.9854E+01  1.2115E+00 -1.4628E+00  2.1570E+00
             2.0144E+00
 GRADIENT:   3.6044E+00  1.3585E+01  1.8052E+01  1.2870E+01  2.4268E+00 -3.9666E+00  0.0000E+00  2.6822E+01  8.2440E-01  2.0875E+00
             2.2765E+01

0ITERATION NO.:   90    OBJECTIVE VALUE:  -927.113748676365        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:     2037
 NPARAMETR:  8.2410E-01  6.0598E-02  2.2185E-01  1.0563E+00  1.2163E+01  1.3316E+00  1.0000E-02  3.0286E+00  2.0959E-01  7.8102E+00
             6.7366E+00
 PARAMETER: -9.3465E-02 -2.7035E+00 -1.4058E+00  1.5473E-01  2.5984E+00  3.8641E-01 -1.9854E+01  1.2081E+00 -1.4626E+00  2.1554E+00
             2.0076E+00
 GRADIENT:  -9.3398E+00  1.3056E+01  1.8084E+01  2.2268E+01  2.4674E+00 -4.0758E+00  0.0000E+00  2.5692E+01  8.0321E-01  2.1424E+00
             1.8871E+01

0ITERATION NO.:   95    OBJECTIVE VALUE:  -927.472030521975        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:     2174
 NPARAMETR:  8.3537E-01  5.7964E-02  2.2023E-01  1.0562E+00  1.2126E+01  1.3321E+00  1.0000E-02  3.0028E+00  2.0959E-01  7.8055E+00
             6.6435E+00
 PARAMETER: -7.9875E-02 -2.7479E+00 -1.4131E+00  1.5465E-01  2.5953E+00  3.8676E-01 -1.9854E+01  1.1995E+00 -1.4626E+00  2.1548E+00
             1.9936E+00
 GRADIENT:   1.9965E+00  1.5039E+00  4.7240E+00  1.7524E+01 -4.2370E-03 -7.1224E+00  0.0000E+00  5.5070E+00  4.8004E-01 -4.5870E+00
            -1.1481E+01

0ITERATION NO.:  100    OBJECTIVE VALUE:  -927.703588107026        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:     2310
 NPARAMETR:  8.3241E-01  5.8148E-02  2.1974E-01  1.0492E+00  1.2082E+01  1.3360E+00  1.0000E-02  3.0069E+00  1.7065E-01  7.8289E+00
             6.6554E+00
 PARAMETER: -8.3432E-02 -2.7448E+00 -1.4153E+00  1.4802E-01  2.5917E+00  3.8969E-01 -1.9854E+01  1.2009E+00 -1.6682E+00  2.1578E+00
             1.9954E+00
 GRADIENT:   5.1567E-01  2.4814E+00  6.7010E+00  1.0111E+01 -1.6686E-01 -5.9837E+00  0.0000E+00  6.4217E+00  3.2013E-01 -4.5832E+00
            -9.2051E+00

0ITERATION NO.:  105    OBJECTIVE VALUE:  -927.992226168577        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     2492
 NPARAMETR:  8.3159E-01  5.6980E-02  2.1266E-01  1.0491E+00  1.2236E+01  1.3361E+00  1.0000E-02  2.9196E+00  1.2192E-01  7.7522E+00
             6.7263E+00
 PARAMETER: -8.4418E-02 -2.7651E+00 -1.4481E+00  1.4798E-01  2.6044E+00  3.8978E-01 -1.9854E+01  1.1714E+00 -2.0044E+00  2.1480E+00
             2.0060E+00
 GRADIENT:   4.0745E+00 -3.0773E+00  4.1359E+00  2.4459E+01 -1.6871E-01  2.2918E+00  0.0000E+00 -4.0164E+00  1.4335E-01 -4.4963E+00
            -4.7971E+00

0ITERATION NO.:  110    OBJECTIVE VALUE:  -928.221194118200        NO. OF FUNC. EVALS.: 143
 CUMULATIVE NO. OF FUNC. EVALS.:     2635
 NPARAMETR:  8.3151E-01  5.7288E-02  2.0730E-01  1.0490E+00  1.2318E+01  1.3356E+00  1.0000E-02  2.9167E+00  6.5784E-02  7.9405E+00
             6.7279E+00
 PARAMETER: -8.4515E-02 -2.7597E+00 -1.4736E+00  1.4781E-01  2.6111E+00  3.8939E-01 -1.9854E+01  1.1704E+00 -2.6214E+00  2.1720E+00
             2.0063E+00
 GRADIENT:   1.4691E+01  9.6833E+00  1.2475E+01  4.2687E+01  8.9741E-01  7.7365E+00  0.0000E+00  1.4520E+01  7.6521E-02  4.8911E+00
             8.6280E+00

0ITERATION NO.:  115    OBJECTIVE VALUE:  -929.261107814364        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     2813
 NPARAMETR:  8.3197E-01  5.8157E-02  2.0921E-01  1.0497E+00  1.8213E+01  1.3385E+00  1.0000E-02  2.9090E+00  3.7738E-02  1.0384E+01
             6.7851E+00
 PARAMETER: -8.3960E-02 -2.7446E+00 -1.4644E+00  1.4853E-01  3.0021E+00  3.9159E-01 -1.9854E+01  1.1678E+00 -3.1771E+00  2.4403E+00
             2.0147E+00
 GRADIENT:   1.3344E+00 -4.5590E-01  2.3345E-01  3.6962E+01 -2.8637E-01 -5.9588E+00  0.0000E+00  6.9693E-01  1.3711E-02  2.6013E-01
            -5.1328E-02

0ITERATION NO.:  117    OBJECTIVE VALUE:  -929.272082869123        NO. OF FUNC. EVALS.:  69
 CUMULATIVE NO. OF FUNC. EVALS.:     2882
 NPARAMETR:  8.3199E-01  5.8264E-02  2.0917E-01  1.0497E+00  1.8368E+01  1.3385E+00  1.0000E-02  2.9055E+00  3.3148E-02  1.0431E+01
             6.7836E+00
 PARAMETER: -8.3953E-02 -2.7432E+00 -1.4648E+00  1.4853E-01  3.0111E+00  3.9162E-01 -1.9854E+01  1.1666E+00 -3.2740E+00  2.4444E+00
             2.0148E+00
 GRADIENT:  -2.4980E+03 -9.2221E+01 -1.7021E+02 -1.6426E+03  8.3155E+01  6.3272E+02  0.0000E+00 -8.5953E-01  1.0487E-02 -5.2931E+01
             1.2351E+02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2882
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1884E-02 -1.0097E-04 -1.0070E-02 -2.7578E-03 -8.5366E-03
 SE:             2.9892E-02  2.1509E-05  2.3266E-02  8.8387E-04  4.9074E-03
 N:                     100         100         100         100         100

 P VAL.:         6.9095E-01  2.6774E-06  6.6513E-01  1.8077E-03  8.1942E-02

 ETASHRINKSD(%)  1.0000E-10  9.9928E+01  2.2057E+01  9.7039E+01  8.3560E+01
 ETASHRINKVR(%)  1.0000E-10  1.0000E+02  3.9249E+01  9.9912E+01  9.7297E+01
 EBVSHRINKSD(%)  4.1859E+00  9.9879E+01  1.6171E+01  9.7166E+01  8.8361E+01
 EBVSHRINKVR(%)  8.1965E+00  1.0000E+02  2.9727E+01  9.9920E+01  9.8645E+01
 RELATIVEINF(%)  4.1794E+01  9.1215E-05  1.5624E+01  1.4267E-02  7.1358E-01
 EPSSHRINKSD(%)  1.5414E+01
 EPSSHRINKVR(%)  2.8452E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -929.27208286912344     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -194.12125630538526     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    47.11
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -929.272       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         8.32E-01  5.82E-02  2.09E-01  1.05E+00  1.84E+01  1.34E+00  1.00E-02  2.91E+00  3.43E-02  1.04E+01  6.79E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  9.00E-02
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  3.00E-01
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       47.139
Stop Time:
Sat Oct  2 05:36:13 CDT 2021
