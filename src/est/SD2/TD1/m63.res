Fri Oct  1 14:19:30 CDT 2021
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
$DATA ../../../../data/SD2/TD1/dat63.csv ignore=@
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
Current Date:        1 OCT 2021
Days until program expires : 198
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
 NO. OF DATA RECS IN DATA SET:      600
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m63.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2157.76670065813        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.3619E+02 -5.4303E+01 -2.4370E+01 -4.1504E+01  4.3799E+01  2.8453E+01 -4.0316E+00  5.9371E+00 -9.0175E-01  1.0868E+01
             3.2621E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2167.52085544140        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      195
 NPARAMETR:  1.0454E+00  1.0385E+00  1.0534E+00  1.0630E+00  1.0006E+00  1.0486E+00  1.0257E+00  9.8245E-01  1.0027E+00  9.4189E-01
             9.6401E-01
 PARAMETER:  1.4439E-01  1.3779E-01  1.5202E-01  1.6114E-01  1.0060E-01  1.4749E-01  1.2541E-01  8.2292E-02  1.0270E-01  4.0135E-02
             6.3342E-02
 GRADIENT:   1.2563E+00 -2.6357E-02 -1.9767E+00 -8.7497E-01  7.1668E+00  4.8992E+00 -3.4738E+00 -9.8399E-01  1.0365E+00  1.0399E-01
            -1.6994E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2168.22289978909        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  1.0441E+00  8.7963E-01  1.1041E+00  1.1767E+00  9.4310E-01  1.0229E+00  1.2813E+00  9.7458E-01  9.1777E-01  8.7156E-01
             9.6020E-01
 PARAMETER:  1.4318E-01 -2.8256E-02  1.9900E-01  2.6267E-01  4.1416E-02  1.2268E-01  3.4790E-01  7.4251E-02  1.4191E-02 -3.7470E-02
             5.9385E-02
 GRADIENT:   1.8501E+00  1.5243E+01  5.7436E+00  1.8915E+01 -4.6210E+00 -4.5140E+00  1.0235E+00 -1.7295E+00  2.2745E+00 -3.6785E+00
            -5.6575E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2169.17012807199        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      552
 NPARAMETR:  1.0392E+00  6.2607E-01  1.2667E+00  1.3305E+00  9.2026E-01  1.0328E+00  1.3640E+00  1.0684E+00  8.7216E-01  9.4811E-01
             9.6424E-01
 PARAMETER:  1.3843E-01 -3.6830E-01  3.3641E-01  3.8554E-01  1.6906E-02  1.3224E-01  4.1039E-01  1.6612E-01 -3.6781E-02  4.6717E-02
             6.3583E-02
 GRADIENT:  -8.7958E-01  7.4639E+00  5.7086E+00  5.7817E+00 -1.4353E+01  1.3383E+00  2.9333E-01  3.3579E-02  1.6443E+00  2.1048E+00
             1.7538E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2170.08657693432        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      731
 NPARAMETR:  1.0344E+00  3.0886E-01  1.5295E+00  1.5391E+00  9.3181E-01  1.0207E+00  1.2949E+00  1.2864E+00  8.0544E-01  9.7680E-01
             9.6017E-01
 PARAMETER:  1.3378E-01 -1.0749E+00  5.2492E-01  5.3117E-01  2.9373E-02  1.2050E-01  3.5841E-01  3.5183E-01 -1.1637E-01  7.6529E-02
             5.9353E-02
 GRADIENT:   2.2484E-01  4.3209E+00  5.0467E-01  1.3713E+01 -9.3946E-03 -9.7167E-01  1.0624E-01 -3.5217E-01 -2.0116E+00 -1.2507E+00
            -1.2639E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2170.19706132646        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      907
 NPARAMETR:  1.0321E+00  1.9707E-01  1.6158E+00  1.6125E+00  9.2761E-01  1.0203E+00  1.1377E+00  1.3635E+00  7.8494E-01  9.9076E-01
             9.6075E-01
 PARAMETER:  1.3160E-01 -1.5242E+00  5.7983E-01  5.7777E-01  2.4854E-02  1.2006E-01  2.2903E-01  4.1003E-01 -1.4215E-01  9.0717E-02
             5.9961E-02
 GRADIENT:  -3.8195E-01  3.1410E+00  1.8435E+00  1.5935E+01 -3.8072E+00 -3.6030E-01  9.1099E-02 -7.7786E-02  4.3450E-01  5.1458E-01
            -5.8168E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2170.41179191048        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1089
 NPARAMETR:  1.0322E+00  1.5173E-01  1.6329E+00  1.6256E+00  9.2542E-01  1.0204E+00  7.7727E-01  1.3804E+00  7.7496E-01  9.8851E-01
             9.6121E-01
 PARAMETER:  1.3169E-01 -1.7856E+00  5.9036E-01  5.8586E-01  2.2492E-02  1.2024E-01 -1.5196E-01  4.2240E-01 -1.5494E-01  8.8440E-02
             6.0434E-02
 GRADIENT:   1.7201E+00  2.4518E-01 -2.0961E-02 -1.7540E+01  3.0741E+00  9.1743E-02  3.8342E-02 -2.5133E-02  8.9027E-01 -1.1360E-01
            -7.2240E-03

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2170.42897653415        NO. OF FUNC. EVALS.: 143
 CUMULATIVE NO. OF FUNC. EVALS.:     1232
 NPARAMETR:  1.0300E+00  1.4261E-01  1.6337E+00  1.6309E+00  9.2235E-01  1.0196E+00  1.1407E-01  1.3803E+00  7.7234E-01  9.8847E-01
             9.6123E-01
 PARAMETER:  1.2952E-01 -1.8477E+00  5.9083E-01  5.8914E-01  1.9171E-02  1.1943E-01 -2.0710E+00  4.2233E-01 -1.5833E-01  8.8399E-02
             6.0458E-02
 GRADIENT:   6.0089E+02  1.6932E+01  1.3027E+01  1.2161E+03  8.6093E+00  5.0599E+01  2.2953E-02  2.1490E+00  2.1860E+01  8.3123E-01
             1.0566E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2170.43989572000        NO. OF FUNC. EVALS.: 165
 CUMULATIVE NO. OF FUNC. EVALS.:     1397             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0324E+00  1.2965E-01  1.6331E+00  1.6362E+00  9.1839E-01  1.0208E+00  3.4192E-02  1.3834E+00  7.6897E-01  9.8604E-01
             9.6123E-01
 PARAMETER:  1.3191E-01 -1.9429E+00  5.9049E-01  5.9236E-01  1.4864E-02  1.2057E-01 -3.2758E+00  4.2458E-01 -1.6270E-01  8.5945E-02
             6.0462E-02
 GRADIENT:   6.1753E+02  1.4427E+01  1.3174E+01  1.2307E+03  8.3138E+00  5.1198E+01  2.7064E-03  2.4092E+00  2.2662E+01  9.5018E-01
             1.1174E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2170.44659651659        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     1585             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0323E+00  1.2974E-01  1.6267E+00  1.6381E+00  9.1491E-01  1.0201E+00  1.0000E-02  1.3797E+00  7.6798E-01  9.8468E-01
             9.6120E-01
 PARAMETER:  1.3181E-01 -1.9423E+00  5.8657E-01  5.9351E-01  1.1065E-02  1.1991E-01 -6.4921E+00  4.2187E-01 -1.6399E-01  8.4557E-02
             6.0426E-02
 GRADIENT:   6.1671E+02  1.4804E+01  1.3705E+01  1.2380E+03  6.0070E+00  5.0662E+01  0.0000E+00  2.5108E+00  2.2385E+01  1.1676E+00
             1.1008E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2170.44985896172        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1770             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0323E+00  1.2839E-01  1.6234E+00  1.6382E+00  9.1401E-01  1.0201E+00  1.0000E-02  1.3765E+00  7.6780E-01  9.8280E-01
             9.6113E-01
 PARAMETER:  1.3179E-01 -1.9527E+00  5.8454E-01  5.9362E-01  1.0085E-02  1.1989E-01 -6.4921E+00  4.1951E-01 -1.6422E-01  8.2651E-02
             6.0357E-02
 GRADIENT:   6.1664E+02  1.4499E+01  1.3410E+01  1.2386E+03  6.7944E+00  5.0647E+01  0.0000E+00  2.3827E+00  2.2490E+01  9.3965E-01
             1.0225E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2170.45160492497        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1957
 NPARAMETR:  1.0323E+00  1.2815E-01  1.6204E+00  1.6381E+00  9.1319E-01  1.0201E+00  1.0000E-02  1.3741E+00  7.6780E-01  9.8208E-01
             9.6112E-01
 PARAMETER:  1.3178E-01 -1.9545E+00  5.8270E-01  5.9355E-01  9.1841E-03  1.1988E-01 -6.4921E+00  4.1782E-01 -1.6423E-01  8.1920E-02
             6.0343E-02
 GRADIENT:   2.9356E+00  2.4904E-01  6.4953E-01 -1.9354E+01 -5.2251E-02  1.4125E-01  0.0000E+00  1.3630E-01  5.1489E-02  1.0221E-01
             1.9710E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2170.45363784902        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     2147             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0323E+00  1.2770E-01  1.6159E+00  1.6379E+00  9.1227E-01  1.0201E+00  1.0000E-02  1.3707E+00  7.6783E-01  9.8061E-01
             9.6109E-01
 PARAMETER:  1.3177E-01 -1.9581E+00  5.7991E-01  5.9341E-01  8.1825E-03  1.1986E-01 -6.4921E+00  4.1531E-01 -1.6419E-01  8.0416E-02
             6.0312E-02
 GRADIENT:   6.1647E+02  1.4300E+01  1.2749E+01  1.2377E+03  7.8619E+00  5.0616E+01  0.0000E+00  2.3171E+00  2.2532E+01  7.2804E-01
             9.9415E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2170.45449968239        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2334
 NPARAMETR:  1.0323E+00  1.2736E-01  1.6126E+00  1.6376E+00  9.1157E-01  1.0201E+00  1.0000E-02  1.3682E+00  7.6788E-01  9.7996E-01
             9.6107E-01
 PARAMETER:  1.3177E-01 -1.9607E+00  5.7785E-01  5.9325E-01  7.4098E-03  1.1985E-01 -6.4921E+00  4.1347E-01 -1.6412E-01  7.9759E-02
             6.0291E-02
 GRADIENT:   2.9864E+00  1.3299E-01 -1.6004E-01 -2.0542E+01  1.3296E+00  1.4544E-01  0.0000E+00  1.1108E-01  1.4206E-01 -1.2675E-01
            -9.7225E-03

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2170.45581746875        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     2524             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0323E+00  1.2786E-01  1.6109E+00  1.6378E+00  9.0997E-01  1.0200E+00  1.0000E-02  1.3657E+00  7.6779E-01  9.8060E-01
             9.6107E-01
 PARAMETER:  1.3174E-01 -1.9568E+00  5.7676E-01  5.9333E-01  5.6547E-03  1.1984E-01 -6.4921E+00  4.1167E-01 -1.6424E-01  8.0407E-02
             6.0287E-02
 GRADIENT:   6.1622E+02  1.4403E+01  1.3178E+01  1.2379E+03  6.6503E+00  5.0593E+01  0.0000E+00  2.2654E+00  2.2482E+01  9.1328E-01
             1.0173E+00

0ITERATION NO.:   75    OBJECTIVE VALUE:  -2170.45655036327        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     2707
 NPARAMETR:  1.0323E+00  1.2772E-01  1.6089E+00  1.6376E+00  9.0950E-01  1.0200E+00  1.0000E-02  1.3643E+00  7.6781E-01  9.8016E-01
             9.6105E-01
 PARAMETER:  1.3174E-01 -1.9579E+00  5.7558E-01  5.9326E-01  5.1367E-03  1.1983E-01 -6.4921E+00  4.1061E-01 -1.6421E-01  7.9958E-02
             6.0276E-02
 GRADIENT:   2.9273E+00  2.4288E-01  4.5345E-01 -1.9317E+01 -2.3108E-01  1.3949E-01  0.0000E+00  8.5490E-02  4.1340E-02  8.7242E-02
             1.3879E-02

0ITERATION NO.:   80    OBJECTIVE VALUE:  -2170.45731768323        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     2897             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0322E+00  1.2741E-01  1.6060E+00  1.6374E+00  9.0907E-01  1.0200E+00  1.0000E-02  1.3622E+00  7.6788E-01  9.7912E-01
             9.6103E-01
 PARAMETER:  1.3174E-01 -1.9603E+00  5.7375E-01  5.9310E-01  4.6618E-03  1.1983E-01 -6.4921E+00  4.0909E-01 -1.6412E-01  7.8904E-02
             6.0255E-02
 GRADIENT:   6.1619E+02  1.4244E+01  1.2588E+01  1.2368E+03  7.6740E+00  5.0580E+01  0.0000E+00  2.2353E+00  2.2525E+01  7.4264E-01
             9.9591E-01

0ITERATION NO.:   82    OBJECTIVE VALUE:  -2170.45731768323        NO. OF FUNC. EVALS.:  65
 CUMULATIVE NO. OF FUNC. EVALS.:     2962
 NPARAMETR:  1.0322E+00  1.2814E-01  1.6055E+00  1.6376E+00  9.0816E-01  1.0200E+00  1.0000E-02  1.3605E+00  7.6778E-01  9.7998E-01
             9.6104E-01
 PARAMETER:  1.3174E-01 -1.9603E+00  5.7375E-01  5.9310E-01  4.6618E-03  1.1983E-01 -6.4921E+00  4.0909E-01 -1.6412E-01  7.8904E-02
             6.0255E-02
 GRADIENT:   2.1747E-02 -2.9726E-02  7.5629E-02 -2.1200E-01  5.8604E-01  2.5136E-03  0.0000E+00  6.4659E-02  2.2195E-02 -5.1025E-02
            -3.7533E-03

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2962
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.6219E-04 -4.0259E-05 -3.3693E-02 -5.4967E-03 -3.9200E-02
 SE:             2.9887E-02  2.1962E-05  1.9064E-02  2.9497E-02  2.0794E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9300E-01  6.6781E-02  7.7164E-02  8.5217E-01  5.9414E-02

 ETASHRINKSD(%)  1.0000E-10  9.9926E+01  3.6134E+01  1.1829E+00  3.0337E+01
 ETASHRINKVR(%)  1.0000E-10  1.0000E+02  5.9212E+01  2.3518E+00  5.1470E+01
 EBVSHRINKSD(%)  2.9713E-01  9.9931E+01  3.8780E+01  1.6066E+00  2.7971E+01
 EBVSHRINKVR(%)  5.9337E-01  1.0000E+02  6.2521E+01  3.1874E+00  4.8119E+01
 RELATIVEINF(%)  9.7298E+01  3.3702E-06  1.0163E+01  8.1623E+00  1.0914E+01
 EPSSHRINKSD(%)  3.4557E+01
 EPSSHRINKVR(%)  5.7172E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2170.4573176832296     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1251.5187844785569     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    46.32
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2170.457       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.27E-01  1.61E+00  1.64E+00  9.09E-01  1.02E+00  1.00E-02  1.36E+00  7.68E-01  9.79E-01  9.61E-01
 


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
 #CPUT: Total CPU Time in Seconds,       46.359
Stop Time:
Fri Oct  1 14:20:17 CDT 2021