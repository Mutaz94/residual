Sat Oct  2 00:13:25 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat79.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m79.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1484.16344562270        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9937E+02 -1.4004E+01  6.4003E+00  9.5802E-01 -1.5425E+01  6.0509E+01 -5.9435E+00 -1.3663E+00  1.8005E+01  1.8229E+01
            -4.2698E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1587.51422648469        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  9.9666E-01  1.1675E+00  1.2130E+00  9.3591E-01  1.1698E+00  8.5798E-01  1.0657E+00  9.4598E-01  7.8532E-01  7.3022E-01
             1.6161E+00
 PARAMETER:  9.6657E-02  2.5483E-01  2.9310E-01  3.3763E-02  2.5684E-01 -5.3174E-02  1.6359E-01  4.4468E-02 -1.4167E-01 -2.1442E-01
             5.8001E-01
 GRADIENT:   1.0776E+02  2.5861E+01  1.7953E+01 -7.6294E+00 -2.1627E-01 -1.4229E+01 -7.0720E+00 -7.0515E+00 -3.9982E+00 -5.0917E+00
            -5.7061E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1589.15519718819        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  9.9165E-01  1.0480E+00  1.0139E+00  1.0221E+00  1.0153E+00  8.5609E-01  1.2920E+00  1.2305E+00  7.0985E-01  4.4998E-01
             1.6095E+00
 PARAMETER:  9.1619E-02  1.4692E-01  1.1383E-01  1.2186E-01  1.1521E-01 -5.5385E-02  3.5616E-01  3.0740E-01 -2.4270E-01 -6.9854E-01
             5.7590E-01
 GRADIENT:   8.6284E+01  2.5869E+01 -1.2123E+00  4.8342E+01  3.6815E+00 -1.7299E+01  6.7312E+00  8.3987E-01  2.5658E+00 -1.5731E+00
            -4.7916E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1589.98755625802        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  9.7206E-01  1.0540E+00  9.5988E-01  9.9531E-01  1.0003E+00  8.9353E-01  1.2545E+00  1.1176E+00  6.7708E-01  4.4113E-01
             1.7066E+00
 PARAMETER:  7.1663E-02  1.5255E-01  5.9054E-02  9.5296E-02  1.0032E-01 -1.2574E-02  3.2675E-01  2.1115E-01 -2.8996E-01 -7.1841E-01
             6.3453E-01
 GRADIENT:   1.8799E+01  3.3290E+00  1.9037E-01  7.6111E+00 -8.5207E-01 -2.6238E+00  8.2360E-01  2.8838E-01  6.6391E-01 -2.8036E-02
            -1.5384E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1594.08091399580        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:      367
 NPARAMETR:  1.0174E+00  1.0872E+00  1.1309E+00  9.9749E-01  1.0981E+00  9.2782E-01  1.2372E+00  1.2288E+00  6.8856E-01  5.4980E-01
             1.7844E+00
 PARAMETER:  1.1721E-01  1.8361E-01  2.2302E-01  9.7488E-02  1.9359E-01  2.5083E-02  3.1281E-01  3.0604E-01 -2.7315E-01 -4.9821E-01
             6.7906E-01
 GRADIENT:  -3.4294E+00 -4.1746E+00  2.9588E-01 -4.5653E+00 -1.9046E+00  5.0691E+00 -8.9160E-01 -6.7850E-01 -6.1257E-01  5.8856E-01
            -2.8242E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1594.26652796455        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      542
 NPARAMETR:  1.0187E+00  1.1158E+00  1.2618E+00  9.8816E-01  1.1585E+00  9.1547E-01  1.2154E+00  1.4659E+00  6.9291E-01  5.2472E-01
             1.8019E+00
 PARAMETER:  1.1854E-01  2.0957E-01  3.3251E-01  8.8088E-02  2.4712E-01  1.1684E-02  2.9509E-01  4.8244E-01 -2.6685E-01 -5.4489E-01
             6.8883E-01
 GRADIENT:   2.1618E-01 -2.1416E-01  5.0774E-01 -8.2281E-02 -8.6776E-01  2.7894E-01  2.0806E-02 -1.0391E-01 -5.2572E-02 -3.9205E-02
            -7.3420E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1594.34068614159        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      719
 NPARAMETR:  1.0216E+00  1.2806E+00  1.0156E+00  8.7839E-01  1.1388E+00  9.1363E-01  1.0937E+00  1.4074E+00  7.3838E-01  4.2463E-01
             1.8072E+00
 PARAMETER:  1.2136E-01  3.4731E-01  1.1547E-01 -2.9664E-02  2.3002E-01  9.6749E-03  1.8958E-01  4.4176E-01 -2.0330E-01 -7.5653E-01
             6.9179E-01
 GRADIENT:   2.8066E+00 -6.8776E-02 -1.2868E+00  2.3672E+00  2.7168E+00 -1.2275E+00  4.8301E-01  1.7294E-01  1.4807E-01 -1.5727E-01
            -6.6026E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1594.41319467284        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      895
 NPARAMETR:  1.0210E+00  1.4706E+00  8.4026E-01  7.5440E-01  1.1573E+00  9.1943E-01  9.6661E-01  1.4017E+00  8.1976E-01  4.5116E-01
             1.8054E+00
 PARAMETER:  1.2083E-01  4.8566E-01 -7.4047E-02 -1.8183E-01  2.4613E-01  1.5994E-02  6.6042E-02  4.3767E-01 -9.8747E-02 -6.9593E-01
             6.9081E-01
 GRADIENT:  -1.9233E+00  2.1110E+00  8.8678E-01  9.6561E-01 -2.1006E+00  6.4421E-01 -5.1871E-01 -1.4974E-01 -2.7108E-01  6.2433E-02
             1.0357E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1594.42132893955        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1070
 NPARAMETR:  1.0222E+00  1.5401E+00  7.7870E-01  7.0974E-01  1.1677E+00  9.1861E-01  9.2993E-01  1.4079E+00  8.6209E-01  4.7316E-01
             1.8014E+00
 PARAMETER:  1.2199E-01  5.3184E-01 -1.5013E-01 -2.4285E-01  2.5503E-01  1.5111E-02  2.7357E-02  4.4213E-01 -4.8391E-02 -6.4832E-01
             6.8857E-01
 GRADIENT:   5.2554E-02  3.4714E+00  8.3248E-01  1.6431E+00 -2.5773E+00  1.0139E-01 -1.2096E-01 -2.3519E-02 -8.4709E-02  2.1100E-01
             1.1900E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1594.43756026394        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1245
 NPARAMETR:  1.0242E+00  1.6833E+00  6.3771E-01  6.1557E-01  1.1827E+00  9.1734E-01  8.6484E-01  1.4226E+00  9.5656E-01  4.7512E-01
             1.7988E+00
 PARAMETER:  1.2388E-01  6.2073E-01 -3.4988E-01 -3.8520E-01  2.6784E-01  1.3722E-02 -4.5207E-02  4.5246E-01  5.5585E-02 -6.4419E-01
             6.8713E-01
 GRADIENT:   3.0084E+00  5.2569E+00  6.6828E-01  2.4478E+00 -2.6492E+00 -7.9086E-01  4.5748E-01  1.1518E-01  2.2597E-01  2.6482E-01
            -8.1391E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1594.44795854880        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1423
 NPARAMETR:  1.0253E+00  1.7892E+00  5.3282E-01  5.4574E-01  1.1930E+00  9.1652E-01  8.2379E-01  1.4310E+00  1.0366E+00  4.6932E-01
             1.7982E+00
 PARAMETER:  1.2495E-01  6.8178E-01 -5.2957E-01 -5.0562E-01  2.7643E-01  1.2834E-02 -9.3841E-02  4.5838E-01  1.3594E-01 -6.5648E-01
             6.8679E-01
 GRADIENT:   4.6556E+00  8.0828E+00  7.2820E-01  3.3662E+00 -3.0744E+00 -1.3333E+00  6.6757E-01  1.2522E-01  3.8100E-01  2.3968E-01
            -3.1474E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1594.44845488257        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1598
 NPARAMETR:  1.0255E+00  1.8395E+00  4.8462E-01  5.1329E-01  1.1973E+00  9.1644E-01  8.0587E-01  1.4356E+00  1.0757E+00  4.6181E-01
             1.7989E+00
 PARAMETER:  1.2519E-01  7.0949E-01 -6.2438E-01 -5.6691E-01  2.8005E-01  1.2745E-02 -1.1583E-01  4.6156E-01  1.7298E-01 -6.7259E-01
             6.8718E-01
 GRADIENT:   4.8312E+00  1.1634E+01  1.0169E+00  4.1649E+00 -3.9869E+00 -1.4362E+00  4.8884E-01  5.7579E-02  3.5613E-01  1.8417E-01
            -5.0769E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1594.51457392182        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1777             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0243E+00  1.8679E+00  4.4437E-01  4.8570E-01  1.2031E+00  9.1986E-01  7.9256E-01  1.4393E+00  1.0977E+00  4.4235E-01
             1.8012E+00
 PARAMETER:  1.2405E-01  7.2479E-01 -7.1110E-01 -6.2216E-01  2.8489E-01  1.6461E-02 -1.3248E-01  4.6417E-01  1.9318E-01 -7.1564E-01
             6.8846E-01
 GRADIENT:   1.6795E+02  2.3525E+02  7.1478E-01  3.4476E+01  8.2081E+00  1.0531E+01  2.4380E+00  1.1697E-01  1.1166E+00  2.2886E-01
             4.4512E+00

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1594.52290757690        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1954
 NPARAMETR:  1.0235E+00  1.8702E+00  4.4269E-01  4.8567E-01  1.2001E+00  9.1961E-01  7.9253E-01  1.4488E+00  1.0925E+00  4.3401E-01
             1.8040E+00
 PARAMETER:  1.2319E-01  7.2606E-01 -7.1489E-01 -6.2223E-01  2.8241E-01  1.6200E-02 -1.3253E-01  4.7075E-01  1.8850E-01 -7.3469E-01
             6.8999E-01
 GRADIENT:  -1.7924E-01 -1.4772E+00  1.4020E-01  5.8121E-01  9.4815E-01 -1.8874E-02 -9.6680E-02 -4.4027E-02 -2.1501E-02  4.1100E-02
            -4.8520E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1594.65342033194        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     2135
 NPARAMETR:  1.0218E+00  1.9230E+00  2.6266E-01  4.2575E-01  1.0855E+00  9.1606E-01  7.7966E-01  1.4749E+00  1.0295E+00  8.1760E-02
             1.8372E+00
 PARAMETER:  1.2161E-01  7.5387E-01 -1.2369E+00 -7.5390E-01  1.8204E-01  1.2324E-02 -1.4889E-01  4.8861E-01  1.2911E-01 -2.4040E+00
             7.0825E-01
 GRADIENT:  -1.4724E+00 -6.4237E+00  2.8687E+00 -5.3308E+00 -1.0543E+01 -4.5204E-01  2.1493E+00  5.6659E-01  6.9425E-02  4.7195E-02
             8.5980E+00

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1595.27798066294        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     2311
 NPARAMETR:  1.0219E+00  1.9869E+00  1.3718E-01  3.6211E-01  1.0038E+00  9.1888E-01  7.4589E-01  9.7427E-01  1.1127E+00  1.4173E-02
             1.7853E+00
 PARAMETER:  1.2169E-01  7.8657E-01 -1.8865E+00 -9.1580E-01  1.0383E-01  1.5401E-02 -1.9318E-01  7.3929E-02  2.0680E-01 -4.1564E+00
             6.7956E-01
 GRADIENT:   1.1068E+01  7.6905E+00 -4.3366E-01  6.9980E+00 -4.2550E+00  1.2174E+00  3.9086E-01 -4.8657E-01 -4.8435E-01  2.1626E-03
            -1.8578E+00

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1597.40732514760        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     2502             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8371E-01  2.1815E+00  6.5790E-02  2.4720E-01  1.0611E+00  9.2094E-01  7.1557E-01  1.2327E+00  1.3123E+00  1.0000E-02
             1.7360E+00
 PARAMETER:  8.3580E-02  8.8000E-01 -2.6213E+00 -1.2976E+00  1.5926E-01  1.7635E-02 -2.3467E-01  3.0917E-01  3.7175E-01 -6.7010E+00
             6.5161E-01
 GRADIENT:   6.3144E+01  4.8703E+02  6.3404E+00  4.1931E+01 -1.9520E+01  1.1982E+01  5.1116E+00 -1.1271E+01 -3.9710E+00  0.0000E+00
             3.8724E+00

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1597.40999725801        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:     2573
 NPARAMETR:  9.8372E-01  2.1804E+00  6.5799E-02  2.4719E-01  1.0610E+00  9.0969E-01  7.1076E-01  1.2326E+00  1.3123E+00  1.0000E-02
             1.7361E+00
 PARAMETER:  8.3586E-02  8.7952E-01 -2.6212E+00 -1.2976E+00  1.5925E-01  5.3497E-03 -2.4142E-01  3.0915E-01  3.7178E-01 -6.7010E+00
             6.5166E-01
 GRADIENT:   6.1242E+01  4.8617E+02  6.3624E+00  4.1993E+01 -1.9128E+01  7.2975E+00  3.2420E+00 -1.1277E+01 -4.0318E+00  0.0000E+00
             3.6013E+00

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1597.41446263130        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:     2644
 NPARAMETR:  9.8374E-01  2.1767E+00  6.5825E-02  2.4718E-01  1.0610E+00  8.9740E-01  7.0501E-01  1.2325E+00  1.3124E+00  1.0000E-02
             1.7364E+00
 PARAMETER:  8.3604E-02  8.7781E-01 -2.6208E+00 -1.2976E+00  1.5922E-01 -8.2481E-03 -2.4954E-01  3.0908E-01  3.7188E-01 -6.7010E+00
             6.5180E-01
 GRADIENT:   5.9223E+01  4.8013E+02  6.3275E+00  4.1698E+01 -1.7389E+01  2.0232E+00  1.0938E+00 -1.1274E+01 -4.0680E+00  0.0000E+00
             3.4153E+00

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1597.42402870299        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:     2719
 NPARAMETR:  9.8377E-01  2.1706E+00  6.5866E-02  2.4715E-01  1.0609E+00  8.8693E-01  6.9982E-01  1.2324E+00  1.3126E+00  1.0000E-02
             1.7368E+00
 PARAMETER:  8.3633E-02  8.7499E-01 -2.6201E+00 -1.2977E+00  1.5916E-01 -1.9992E-02 -2.5693E-01  3.0897E-01  3.7203E-01 -6.7010E+00
             6.5202E-01
 GRADIENT:   5.7614E+01  4.6886E+02  6.2233E+00  4.1013E+01 -1.4316E+01 -2.5960E+00 -7.7746E-01 -1.1259E+01 -4.0580E+00  0.0000E+00
             3.3979E+00

0ITERATION NO.:  100    OBJECTIVE VALUE:  -1597.43180438584        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:     2794
 NPARAMETR:  9.8380E-01  2.1634E+00  6.5914E-02  2.4712E-01  1.0609E+00  8.7921E-01  6.9582E-01  1.2323E+00  1.3129E+00  1.0000E-02
             1.7372E+00
 PARAMETER:  8.3666E-02  8.7167E-01 -2.6194E+00 -1.2979E+00  1.5909E-01 -2.8730E-02 -2.6267E-01  3.0884E-01  3.7221E-01 -6.7010E+00
             6.5228E-01
 GRADIENT:   5.6565E+01  4.5486E+02  6.0753E+00  4.0101E+01 -1.0561E+01 -6.0578E+00 -2.1958E+00 -1.1237E+01 -4.0116E+00  0.0000E+00
             3.5176E+00

0ITERATION NO.:  105    OBJECTIVE VALUE:  -1597.43731084350        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:     2869
 NPARAMETR:  9.8383E-01  2.1562E+00  6.5961E-02  2.4709E-01  1.0608E+00  8.7413E-01  6.9315E-01  1.2321E+00  1.3131E+00  1.0000E-02
             1.7377E+00
 PARAMETER:  8.3698E-02  8.6836E-01 -2.6187E+00 -1.2980E+00  1.5902E-01 -3.4526E-02 -2.6651E-01  3.0872E-01  3.7238E-01 -6.7010E+00
             6.5254E-01
 GRADIENT:   5.6019E+01  4.4051E+02  5.9125E+00  3.9133E+01 -6.7413E+00 -8.3491E+00 -3.1378E+00 -1.1213E+01 -3.9438E+00  0.0000E+00
             3.7221E+00

0ITERATION NO.:  110    OBJECTIVE VALUE:  -1597.92184682959        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:     3008
 NPARAMETR:  9.8383E-01  2.1627E+00  6.5905E-02  2.4705E-01  1.0609E+00  9.1264E-01  7.0626E-01  1.2323E+00  1.3129E+00  1.0000E-02
             1.7373E+00
 PARAMETER:  8.3701E-02  8.7137E-01 -2.6195E+00 -1.2982E+00  1.5910E-01  8.5908E-03 -2.4777E-01  3.0886E-01  3.7224E-01 -6.7010E+00
             6.5232E-01
 GRADIENT:  -7.6186E+01  4.0191E+01  1.6007E+00  1.1351E+01 -1.4824E+01 -3.0301E+00 -3.1580E+00 -1.1297E+01 -4.8730E+00  0.0000E+00
            -7.3630E-01

0ITERATION NO.:  115    OBJECTIVE VALUE:  -1598.44643106752        NO. OF FUNC. EVALS.: 203
 CUMULATIVE NO. OF FUNC. EVALS.:     3211             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8422E-01  2.1383E+00  6.6475E-02  2.4768E-01  1.0618E+00  9.1946E-01  7.1313E-01  1.2398E+00  1.4067E+00  1.0000E-02
             1.7363E+00
 PARAMETER:  8.4097E-02  8.6003E-01 -2.6109E+00 -1.2956E+00  1.5996E-01  1.6030E-02 -2.3809E-01  3.1493E-01  4.4125E-01 -6.7010E+00
             6.5176E-01
 GRADIENT:   6.6459E+01  4.0259E+02  5.0652E+00  3.8837E+01  2.9355E+00  1.1782E+01  5.9918E+00 -1.1030E+01  1.6265E+00  0.0000E+00
             1.0747E+01

0ITERATION NO.:  120    OBJECTIVE VALUE:  -1599.04210688123        NO. OF FUNC. EVALS.: 165
 CUMULATIVE NO. OF FUNC. EVALS.:     3376
 NPARAMETR:  9.8433E-01  2.1408E+00  6.6467E-02  2.4765E-01  1.0628E+00  9.1964E-01  7.1075E-01  1.2977E+00  1.4208E+00  1.0000E-02
             1.7161E+00
 PARAMETER:  8.4209E-02  8.6120E-01 -2.6110E+00 -1.2958E+00  1.6089E-01  1.6225E-02 -2.4143E-01  3.6061E-01  4.5123E-01 -6.7010E+00
             6.4003E-01
 GRADIENT:   7.0366E+01  4.1641E+02  4.6440E+00  4.0491E+01  3.6128E+00  1.1989E+01  4.9875E+00 -1.2461E+01  1.6840E+00  0.0000E+00
             7.6166E+00

0ITERATION NO.:  123    OBJECTIVE VALUE:  -1599.12873103461        NO. OF FUNC. EVALS.:  91
 CUMULATIVE NO. OF FUNC. EVALS.:     3467
 NPARAMETR:  9.8533E-01  2.1352E+00  6.8213E-02  2.5083E-01  1.0611E+00  9.1995E-01  7.1157E-01  1.3018E+00  1.4272E+00  1.0000E-02
             1.7270E+00
 PARAMETER:  8.4225E-02  8.6120E-01 -2.6111E+00 -1.2958E+00  1.6089E-01  1.6225E-02 -2.4143E-01  3.6738E-01  4.5123E-01 -6.7010E+00
             6.4003E-01
 GRADIENT:  -1.2918E+04  5.0363E+00 -9.6785E+02 -1.9791E+03  1.5969E+04 -6.3564E-02 -1.7381E-01  6.9466E+03 -5.7004E+03  0.0000E+00
            -4.0222E+03

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     3467
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.0322E-02 -1.2544E-02 -1.8548E-03  1.1168E-02 -3.7200E-04
 SE:             2.9384E-02  2.7972E-02  1.0417E-02  1.9081E-02  2.8188E-04
 N:                     100         100         100         100         100

 P VAL.:         3.0211E-01  6.5382E-01  8.5868E-01  5.5835E-01  1.8693E-01

 ETASHRINKSD(%)  1.5595E+00  6.2908E+00  6.5102E+01  3.6076E+01  9.9056E+01
 ETASHRINKVR(%)  3.0947E+00  1.2186E+01  8.7822E+01  5.9137E+01  9.9991E+01
 EBVSHRINKSD(%)  1.3090E+00  7.2993E+00  7.4112E+01  3.6094E+01  9.9055E+01
 EBVSHRINKVR(%)  2.6008E+00  1.4066E+01  9.3298E+01  5.9161E+01  9.9991E+01
 RELATIVEINF(%)  9.5904E+01  1.7892E+01  1.9058E+00  4.2013E+00  1.4069E-03
 EPSSHRINKSD(%)  3.4516E+01
 EPSSHRINKVR(%)  5.7119E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1599.1287310346061     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -863.97790447086788     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    42.53
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1599.129       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.84E-01  2.14E+00  6.65E-02  2.48E-01  1.06E+00  9.20E-01  7.11E-01  1.31E+00  1.42E+00  1.00E-02  1.72E+00
 


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
 #CPUT: Total CPU Time in Seconds,       42.559
Stop Time:
Sat Oct  2 00:14:10 CDT 2021
