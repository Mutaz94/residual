Fri Oct  1 21:58:53 CDT 2021
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
$DATA ../../../../data/SD3/D/dat39.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m39.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   19956.9274508468        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   6.0772E+02  3.6305E+02  4.4426E+01  2.0111E+02  1.7622E+01 -1.5499E+03 -7.6915E+02 -5.5657E+01 -1.2422E+03 -4.4380E+02
            -4.0328E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -635.418525751991        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.3404E+00  1.2907E+00  9.7432E-01  1.6338E+00  1.0051E+00  1.9866E+00  1.3126E+00  9.8436E-01  1.2963E+00  1.0540E+00
             1.4462E+01
 PARAMETER:  3.9299E-01  3.5515E-01  7.3981E-02  5.9090E-01  1.0505E-01  7.8645E-01  3.7200E-01  8.4235E-02  3.5948E-01  1.5258E-01
             2.7716E+00
 GRADIENT:  -1.1262E+01  3.0389E+01 -4.2861E+00  6.4149E+01 -5.8164E+00  3.9296E+01 -1.5484E+01  4.0467E+00 -9.1886E+00  1.1951E+01
             2.6014E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -702.892536602956        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.2564E+00  9.9633E-01  7.9915E+00  1.8746E+00  1.9067E+00  2.3850E+00  6.1747E+00  3.0241E-01  2.6356E+00  2.0690E+00
             1.2225E+01
 PARAMETER:  3.2824E-01  9.6320E-02  2.1784E+00  7.2842E-01  7.4538E-01  9.6920E-01  1.9205E+00 -1.0960E+00  1.0691E+00  8.2708E-01
             2.6035E+00
 GRADIENT:  -6.9717E-01  1.0545E+01  1.7340E+00  6.5439E+00 -3.5014E+01  6.2308E+01  5.3953E+01  1.8697E-02  6.2812E+01  3.3258E+01
             2.8362E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -777.394315474769        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  1.1218E+00  6.9304E-01  1.3100E+01  1.5769E+00  2.7706E+00  1.8789E+00  4.5925E+00  5.2992E-02  1.2672E+00  1.0093E+00
             1.0304E+01
 PARAMETER:  2.1491E-01 -2.6666E-01  2.6726E+00  5.5544E-01  1.1191E+00  7.3069E-01  1.6244E+00 -2.8376E+00  3.3680E-01  1.0922E-01
             2.4325E+00
 GRADIENT:  -3.0646E+01 -1.7125E+01 -1.1008E-01 -1.3144E+01  7.5003E+00 -6.5125E+00 -1.0403E+01  1.3678E-04  1.1953E+01  5.1288E+00
             1.9411E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -791.231045341466        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      302
 NPARAMETR:  1.1354E+00  1.4310E+00  2.2278E+00  9.8750E-01  2.0290E+00  2.0005E+00  3.5728E+00  4.1188E-02  8.6031E-01  5.9265E-01
             8.5247E+00
 PARAMETER:  2.2695E-01  4.5836E-01  9.0103E-01  8.7424E-02  8.0755E-01  7.9341E-01  1.3734E+00 -3.0896E+00 -5.0461E-02 -4.2315E-01
             2.2430E+00
 GRADIENT:   4.3741E+00 -5.6156E+00 -6.6028E+00 -8.3836E+00  1.3787E+01  6.4078E-01  4.9084E+00  1.8513E-03  5.7611E+00  3.5513E+00
            -7.4332E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -796.064036320742        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      396
 NPARAMETR:  1.1236E+00  1.3067E+00  2.6436E+00  1.0844E+00  1.8384E+00  1.9556E+00  4.0204E+00  1.1086E-01  6.2831E-01  2.0923E-01
             8.6035E+00
 PARAMETER:  2.1651E-01  3.6748E-01  1.0722E+00  1.8099E-01  7.0888E-01  7.7069E-01  1.4914E+00 -2.0995E+00 -3.6472E-01 -1.4643E+00
             2.2522E+00
 GRADIENT:  -1.7193E+01  1.0107E+00  1.3183E+00  1.6148E+00 -5.7173E+00 -2.5458E+01 -1.1683E+01  1.1775E-02 -9.5466E-01  4.4430E-01
            -3.4659E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -800.314161172221        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      572
 NPARAMETR:  1.1751E+00  7.6669E-01  7.4213E+00  1.4763E+00  2.2168E+00  2.0935E+00  5.4111E+00  3.4712E-01  1.0094E+00  1.7856E-01
             8.8578E+00
 PARAMETER:  2.6138E-01 -1.6567E-01  2.1044E+00  4.8953E-01  8.9605E-01  8.3882E-01  1.7884E+00 -9.5808E-01  1.0937E-01 -1.6229E+00
             2.2813E+00
 GRADIENT:   1.5732E+00  1.0203E+00  3.9678E-01  4.0331E+00 -1.9733E+00  9.4333E-01 -6.2566E-01  2.2848E-02 -1.1332E+00  2.3521E-01
            -3.8632E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -800.407567035726        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      749
 NPARAMETR:  1.1682E+00  7.3767E-01  7.4403E+00  1.4860E+00  2.2367E+00  2.0797E+00  5.4922E+00  3.0517E-01  1.0210E+00  1.4566E-01
             8.8878E+00
 PARAMETER:  2.5542E-01 -2.0426E-01  2.1069E+00  4.9607E-01  9.0501E-01  8.3225E-01  1.8033E+00 -1.0869E+00  1.2079E-01 -1.8265E+00
             2.2847E+00
 GRADIENT:  -1.2377E+00 -5.4580E-03  1.1872E-01 -1.0022E-01 -6.8967E-02 -6.0461E-01  3.5390E-01  1.7897E-02 -2.6457E-01  1.5457E-01
             1.9985E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -800.500201157202        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      930             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1712E+00  7.3179E-01  6.8129E+00  1.4864E+00  2.1688E+00  2.0893E+00  5.5641E+00  6.3067E-02  1.0245E+00  2.2230E-02
             8.8731E+00
 PARAMETER:  2.5801E-01 -2.1227E-01  2.0188E+00  4.9637E-01  8.7415E-01  8.3681E-01  1.8163E+00 -2.6636E+00  1.2424E-01 -3.7063E+00
             2.2830E+00
 GRADIENT:   1.8123E+01  1.9120E+00  3.8235E-01  1.3821E+01 -9.4222E-01  1.9692E+01  4.5352E+01  9.9765E-04  1.9110E-01  3.9759E-03
             2.7375E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -800.514573470190        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:     1070             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1710E+00  7.2795E-01  6.6176E+00  1.4857E+00  2.1884E+00  2.0895E+00  5.5493E+00  3.3787E-02  1.0232E+00  1.0000E-02
             8.8700E+00
 PARAMETER:  2.5783E-01 -2.1752E-01  1.9897E+00  4.9586E-01  8.8318E-01  8.3691E-01  1.8137E+00 -3.2877E+00  1.2297E-01 -4.7689E+00
             2.2827E+00
 GRADIENT:   1.8009E+01  1.3461E+00 -2.8268E-02  1.3029E+01  1.0614E+00  1.9681E+01  4.4916E+01  3.0881E-04  3.5164E-01  0.0000E+00
             2.7285E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -800.515476044364        NO. OF FUNC. EVALS.: 173
 CUMULATIVE NO. OF FUNC. EVALS.:     1243
 NPARAMETR:  1.1719E+00  7.2630E-01  6.7467E+00  1.4895E+00  2.1915E+00  2.0895E+00  5.5398E+00  2.5224E-02  1.0252E+00  1.0000E-02
             8.8773E+00
 PARAMETER:  2.5862E-01 -2.1979E-01  2.0090E+00  4.9842E-01  8.8460E-01  8.3690E-01  1.8120E+00 -3.5799E+00  1.2492E-01 -4.7739E+00
             2.2835E+00
 GRADIENT:   3.9793E-01  6.3159E-02 -2.4323E-02  4.5591E-02 -2.0503E-01  5.5332E-01  1.1005E+00  1.5787E-04 -1.0828E-01  0.0000E+00
             4.5282E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -800.515740257245        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1418
 NPARAMETR:  1.1719E+00  7.2505E-01  6.8857E+00  1.4921E+00  2.2012E+00  2.0882E+00  5.5360E+00  1.8197E-02  1.0298E+00  1.0000E-02
             8.8783E+00
 PARAMETER:  2.5863E-01 -2.2152E-01  2.0294E+00  5.0018E-01  8.8898E-01  8.3629E-01  1.8113E+00 -3.9065E+00  1.2932E-01 -4.7925E+00
             2.2836E+00
 GRADIENT:   3.5621E-01  3.2615E-02 -1.4338E-02  2.0426E-01 -1.1383E-01  4.0324E-01  8.1595E-01  7.8456E-05 -4.4286E-02  0.0000E+00
             5.3183E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -800.521063700563        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1601
 NPARAMETR:  1.1712E+00  7.1779E-01  6.9228E+00  1.4927E+00  2.2047E+00  2.0887E+00  5.5769E+00  1.0000E-02  1.0315E+00  1.0000E-02
             8.8734E+00
 PARAMETER:  2.5807E-01 -2.3157E-01  2.0348E+00  5.0061E-01  8.9057E-01  8.3654E-01  1.8186E+00 -5.1826E+00  1.3098E-01 -4.7925E+00
             2.2831E+00
 GRADIENT:   2.6993E-01 -9.4711E-02 -4.8123E-02 -1.4533E+00  2.1530E-01  4.5255E-01  1.8212E+00  0.0000E+00  2.2386E-01  0.0000E+00
             5.0788E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -800.524020841116        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1788             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1711E+00  7.1457E-01  6.9721E+00  1.4965E+00  2.2056E+00  2.0885E+00  5.5936E+00  1.0000E-02  1.0331E+00  1.0000E-02
             8.8728E+00
 PARAMETER:  2.5798E-01 -2.3608E-01  2.0419E+00  5.0310E-01  8.9099E-01  8.3646E-01  1.8216E+00 -5.1826E+00  1.3260E-01 -4.7925E+00
             2.2830E+00
 GRADIENT:   1.8053E+01  1.4114E+00  4.6425E-02  1.3339E+01  9.8757E-01  1.9643E+01  4.5640E+01  0.0000E+00  4.2721E-01  0.0000E+00
             2.7547E+01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -800.526112258784        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1973             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1708E+00  7.1005E-01  7.0351E+00  1.5006E+00  2.2057E+00  2.0886E+00  5.6077E+00  1.0000E-02  1.0321E+00  1.0000E-02
             8.8706E+00
 PARAMETER:  2.5771E-01 -2.4242E-01  2.0509E+00  5.0589E-01  8.9105E-01  8.3651E-01  1.8241E+00 -5.1826E+00  1.3164E-01 -4.7925E+00
             2.2827E+00
 GRADIENT:   1.7935E+01  1.5251E+00  8.7445E-02  1.4409E+01  7.3740E-01  1.9698E+01  4.5653E+01  0.0000E+00  1.2266E-01  0.0000E+00
             2.6841E+01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -800.526781023032        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     2151
 NPARAMETR:  1.1714E+00  7.0846E-01  7.0488E+00  1.5022E+00  2.2077E+00  2.0890E+00  5.6109E+00  1.0000E-02  1.0351E+00  1.0000E-02
             8.8750E+00
 PARAMETER:  2.5823E-01 -2.4466E-01  2.0529E+00  5.0693E-01  8.9194E-01  8.3667E-01  1.8247E+00 -5.1826E+00  1.3454E-01 -4.7925E+00
             2.2832E+00
 GRADIENT:   2.8937E-01  8.2638E-02 -1.1175E-02 -1.8973E-01 -5.6465E-02  5.7827E-01  1.7897E+00  0.0000E+00 -5.4577E-02  0.0000E+00
             6.1551E-02

0ITERATION NO.:   80    OBJECTIVE VALUE:  -800.528595293902        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2338
 NPARAMETR:  1.1707E+00  7.0202E-01  7.1114E+00  1.5051E+00  2.2109E+00  2.0880E+00  5.6342E+00  1.0000E-02  1.0386E+00  1.0000E-02
             8.8717E+00
 PARAMETER:  2.5760E-01 -2.5380E-01  2.0617E+00  5.0889E-01  8.9339E-01  8.3620E-01  1.8289E+00 -5.1826E+00  1.3788E-01 -4.7925E+00
             2.2829E+00
 GRADIENT:   9.1398E-02 -2.8350E-03 -2.2008E-02 -6.9454E-01  6.0382E-02  4.4574E-01  2.0599E+00  0.0000E+00  5.7853E-02  0.0000E+00
            -1.6975E-01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -800.528975438104        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     2523
 NPARAMETR:  1.1710E+00  7.0039E-01  7.1330E+00  1.5068E+00  2.2122E+00  2.0880E+00  5.6394E+00  1.0000E-02  1.0410E+00  1.0000E-02
             8.8738E+00
 PARAMETER:  2.5789E-01 -2.5612E-01  2.0647E+00  5.0998E-01  8.9401E-01  8.3621E-01  1.8298E+00 -5.1826E+00  1.4015E-01 -4.7925E+00
             2.2831E+00
 GRADIENT:   1.8909E-01 -5.0467E-03 -2.9850E-02 -7.2370E-01  9.5196E-02  4.6530E-01  2.0797E+00  0.0000E+00  1.2190E-01  0.0000E+00
             8.1981E-02

0ITERATION NO.:   90    OBJECTIVE VALUE:  -800.529415950956        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:     2697
 NPARAMETR:  1.1710E+00  6.9916E-01  7.1523E+00  1.5078E+00  2.2127E+00  2.0880E+00  5.6432E+00  1.0000E-02  1.0406E+00  1.0000E-02
             8.8735E+00
 PARAMETER:  2.5783E-01 -2.5787E-01  2.0674E+00  5.1063E-01  8.9419E-01  8.3621E-01  1.8305E+00 -5.1826E+00  1.3984E-01 -4.7925E+00
             2.2831E+00
 GRADIENT:   1.6184E-01  3.9555E-03 -2.0678E-02 -5.4198E-01  4.9613E-02  4.7758E-01  2.0490E+00  0.0000E+00  5.0367E-02  0.0000E+00
            -4.9529E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2697
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3077E-02  4.3604E-02  6.8853E-06 -7.3603E-02  3.8231E-06
 SE:             2.8931E-02  2.2643E-02  7.0534E-06  1.4091E-02  5.1208E-05
 N:                     100         100         100         100         100

 P VAL.:         6.5127E-01  5.4140E-02  3.2898E-01  1.7587E-07  9.4049E-01

 ETASHRINKSD(%)  3.0782E+00  2.4143E+01  9.9976E+01  5.2795E+01  9.9828E+01
 ETASHRINKVR(%)  6.0616E+00  4.2458E+01  1.0000E+02  7.7717E+01  1.0000E+02
 EBVSHRINKSD(%)  4.2127E+00  2.0815E+01  9.9958E+01  5.2721E+01  9.9745E+01
 EBVSHRINKVR(%)  8.2480E+00  3.7297E+01  1.0000E+02  7.7647E+01  9.9999E+01
 RELATIVEINF(%)  9.0805E+01  2.7785E+01  1.7100E-06  9.1652E+00  6.1126E-05
 EPSSHRINKSD(%)  9.5926E+00
 EPSSHRINKVR(%)  1.8265E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -800.52941595095626     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       302.19682389465083     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    61.93
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -800.529       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.17E+00  6.99E-01  7.15E+00  1.51E+00  2.21E+00  2.09E+00  5.64E+00  1.00E-02  1.04E+00  1.00E-02  8.87E+00
 


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
 #CPUT: Total CPU Time in Seconds,       61.966
Stop Time:
Fri Oct  1 21:59:56 CDT 2021
