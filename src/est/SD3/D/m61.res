Fri Oct  1 22:20:46 CDT 2021
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
$DATA ../../../../data/SD3/D/dat61.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m61.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   18332.8759950453        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   2.8264E+02  3.2296E+02  5.5719E+01  7.1105E+01  2.6973E+02 -2.3985E+03 -9.2307E+02 -5.5366E+01 -1.5243E+03 -6.8299E+02
            -3.5640E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -680.417025547503        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.3089E+00  1.0778E+00  8.2499E-01  1.8432E+00  1.1546E+00  3.0175E+00  2.1258E+00  9.3864E-01  2.1324E+00  1.2791E+00
             1.2463E+01
 PARAMETER:  3.6922E-01  1.7494E-01 -9.2382E-02  7.1149E-01  2.4374E-01  1.2044E+00  8.5413E-01  3.6676E-02  8.5723E-01  3.4618E-01
             2.6228E+00
 GRADIENT:  -1.3078E+01 -3.1447E+01 -6.2624E+01  4.7961E+01  6.3266E+01  8.4049E+01 -5.2081E+00  5.0608E+00 -1.0873E+01  1.7684E+01
             2.4660E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -717.499809329022        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      222
 NPARAMETR:  1.2758E+00  2.1396E+00  9.3668E+00  1.7119E+00  6.8401E+00  4.2472E+00  5.3665E+00  6.0245E-01  9.1952E+00  1.5172E+00
             1.0582E+01
 PARAMETER:  3.4354E-01  8.6061E-01  2.3372E+00  6.3760E-01  2.0228E+00  1.5463E+00  1.7802E+00 -4.0676E-01  2.3187E+00  5.1689E-01
             2.4592E+00
 GRADIENT:  -1.5330E+01 -2.3842E+01 -6.9017E+00  1.8564E+01 -1.9646E+00  9.4461E+01  5.4101E+01  9.1410E-02  9.3179E+01  6.3899E-01
             2.3269E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -783.942575410804        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:      362
 NPARAMETR:  1.0343E+00  3.2483E+00  1.1256E+01  7.0897E-01  9.8865E+00  2.6204E+00  4.6969E+00  1.1128E-01  6.2135E+00  1.3715E+00
             8.9393E+00
 PARAMETER:  1.3370E-01  1.2781E+00  2.5209E+00 -2.4394E-01  2.3912E+00  1.0633E+00  1.6469E+00 -2.0957E+00  1.9267E+00  4.1590E-01
             2.2905E+00
 GRADIENT:  -5.0056E+01  4.9814E+01  1.2053E-01  5.8637E-01  2.3992E-01  3.7239E+01  1.1547E+02 -4.7107E-07  3.0840E+01  3.7400E-03
             6.9111E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -820.734003985425        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:      500
 NPARAMETR:  1.3682E+00  2.9525E+00  1.1264E+01  4.9713E-01  9.7986E+00  3.1387E+00  3.2539E+00  7.9195E-02  4.2814E+00  9.5279E-01
             8.3503E+00
 PARAMETER:  4.1350E-01  1.1827E+00  2.5216E+00 -5.9890E-01  2.3822E+00  1.2438E+00  1.2799E+00 -2.4358E+00  1.5543E+00  5.1641E-02
             2.2223E+00
 GRADIENT:   3.0912E+00 -1.6711E+00  1.8922E-02 -4.6942E-01  8.7346E-01  4.3811E+00 -9.6755E+00 -9.8059E-09  1.0439E+01 -3.0722E-05
            -1.3946E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -823.789538400810        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      682
 NPARAMETR:  1.3055E+00  2.9009E+00  1.1267E+01  6.0666E-01  9.5109E+00  2.8733E+00  3.3707E+00  6.2680E-02  2.4450E+00  7.5196E-01
             8.3082E+00
 PARAMETER:  3.6658E-01  1.1650E+00  2.5219E+00 -3.9979E-01  2.3524E+00  1.1555E+00  1.3151E+00 -2.6697E+00  9.9404E-01 -1.8507E-01
             2.2172E+00
 GRADIENT:  -8.6543E+00  1.2771E+01  1.7052E-02  1.1372E-01  1.0148E+00 -3.5375E+01 -1.8118E+01  7.7494E-08  8.6372E+00  8.5236E-05
            -1.4004E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -838.297944788128        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      860
 NPARAMETR:  1.3758E+00  2.0458E+00  1.1300E+01  9.0424E-01  6.8825E+00  3.1506E+00  4.7566E+00  1.0000E-02  1.1482E-02  7.5453E-02
             8.7016E+00
 PARAMETER:  4.1905E-01  8.1579E-01  2.5248E+00 -6.6182E-04  2.0290E+00  1.2476E+00  1.6595E+00 -4.8735E+00 -4.3670E+00 -2.4842E+00
             2.2635E+00
 GRADIENT:   9.4432E+00  4.5368E+00 -7.7505E-02 -1.3339E+01  5.2752E+00  2.2348E+01  9.1410E+00  0.0000E+00 -7.6532E-04  4.5896E-04
             1.6439E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -841.166353169264        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     1051             RESET HESSIAN, TYPE I
 NPARAMETR:  1.3455E+00  1.7714E+00  4.1110E+01  1.0132E+00  5.3997E+00  3.0717E+00  5.0293E+00  1.0000E-02  1.0000E-02  1.2617E-02
             8.4709E+00
 PARAMETER:  3.9680E-01  6.7177E-01  3.8162E+00  1.1309E-01  1.7864E+00  1.2222E+00  1.7153E+00 -6.3586E+00 -7.6186E+00 -4.2727E+00
             2.2366E+00
 GRADIENT:   3.3769E+01  1.4770E+01 -1.5545E-01  1.9849E+01  1.2658E+01  9.6359E+01  7.1468E+01  0.0000E+00  0.0000E+00  9.1104E-05
            -2.8707E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -841.569159079464        NO. OF FUNC. EVALS.: 134
 CUMULATIVE NO. OF FUNC. EVALS.:     1185
 NPARAMETR:  1.3021E+00  1.6430E+00  1.1043E+02  1.0130E+00  5.3955E+00  2.9611E+00  5.0197E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.5221E+00
 PARAMETER:  3.6401E-01  5.9654E-01  4.8044E+00  1.1295E-01  1.7856E+00  1.1856E+00  1.7134E+00 -6.3586E+00 -7.6186E+00 -4.7684E+00
             2.2427E+00
 GRADIENT:  -1.9186E+00 -1.5158E+00 -4.7760E-02  8.8200E+00  1.3135E+01  9.6093E-01 -3.0371E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -1.5793E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -853.546062562605        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:     1344
 NPARAMETR:  1.3199E+00  1.6972E+00  5.3986E+02  1.0121E+00  2.5465E+00  2.9499E+00  5.0205E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.6740E+00
 PARAMETER:  3.7752E-01  6.2895E-01  6.3913E+00  1.1203E-01  1.0347E+00  1.1818E+00  1.7135E+00 -6.3586E+00 -7.6186E+00 -5.4997E+00
             2.2603E+00
 GRADIENT:   2.7371E+01  1.5559E+01  9.0087E-03  3.8234E+01 -1.3945E+00  8.2818E+01  6.6993E+01  0.0000E+00  0.0000E+00  0.0000E+00
             3.8849E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -855.423521039217        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:     1460
 NPARAMETR:  1.2855E+00  1.6423E+00  6.8387E+00  9.2878E-01  2.3322E+00  2.9124E+00  4.5961E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.4778E+00
 PARAMETER:  3.5118E-01  5.9609E-01  2.0226E+00  2.6119E-02  9.4681E-01  1.1690E+00  1.6252E+00 -6.3586E+00 -7.6186E+00 -5.4997E+00
             2.2374E+00
 GRADIENT:  -3.7391E+00 -4.0762E+00  3.5029E-01  1.2918E+01  2.0445E+00 -2.0909E+00 -1.9140E+01  0.0000E+00  0.0000E+00  0.0000E+00
             2.8174E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -856.488964237806        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1636
 NPARAMETR:  1.3015E+00  1.7417E+00  2.6734E+00  8.9043E-01  2.0036E+00  2.9486E+00  4.8027E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.4095E+00
 PARAMETER:  3.6352E-01  6.5487E-01  1.0834E+00 -1.6054E-02  7.9492E-01  1.1813E+00  1.6692E+00 -6.3586E+00 -7.6186E+00 -5.4997E+00
             2.2294E+00
 GRADIENT:   5.6588E-01  5.7342E-01 -2.9596E-01 -2.6599E+00  7.7023E-01  2.3758E+00  2.6129E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -5.9981E-03

0ITERATION NO.:   60    OBJECTIVE VALUE:  -856.617216019574        NO. OF FUNC. EVALS.: 193
 CUMULATIVE NO. OF FUNC. EVALS.:     1829             RESET HESSIAN, TYPE I
 NPARAMETR:  1.3008E+00  1.7294E+00  2.8839E+00  8.9399E-01  2.0231E+00  3.0000E+00  4.7003E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.4140E+00
 PARAMETER:  3.6301E-01  6.4777E-01  1.1592E+00 -1.2057E-02  8.0462E-01  1.1986E+00  1.6476E+00 -6.3586E+00 -7.6186E+00 -5.4997E+00
             2.2299E+00
 GRADIENT:   2.8300E+01  1.1585E+01  3.8258E-01  3.3886E+00  2.6388E-01  9.8644E+01  7.2798E+01  0.0000E+00  0.0000E+00  0.0000E+00
             2.5812E+01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -856.629151765099        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     2023             RESET HESSIAN, TYPE I
 NPARAMETR:  1.3006E+00  1.7398E+00  2.8194E+00  8.8964E-01  2.0209E+00  2.9992E+00  4.6943E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.4133E+00
 PARAMETER:  3.6284E-01  6.5377E-01  1.1365E+00 -1.6937E-02  8.0355E-01  1.1983E+00  1.6463E+00 -6.3586E+00 -7.6186E+00 -5.4997E+00
             2.2298E+00
 GRADIENT:   2.8242E+01  1.1780E+01  2.2403E-01  2.1257E+00  8.2195E-01  9.8526E+01  7.3282E+01  0.0000E+00  0.0000E+00  0.0000E+00
             2.6471E+01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -856.633058330457        NO. OF FUNC. EVALS.: 196
 CUMULATIVE NO. OF FUNC. EVALS.:     2219
 NPARAMETR:  1.3005E+00  1.7468E+00  2.7900E+00  8.8713E-01  2.0178E+00  2.9990E+00  4.6805E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.4113E+00
 PARAMETER:  3.6279E-01  6.5780E-01  1.1261E+00 -1.9762E-02  8.0201E-01  1.1983E+00  1.6434E+00 -6.3586E+00 -7.6186E+00 -5.4997E+00
             2.2296E+00
 GRADIENT:   3.8897E-01 -3.9799E-02  1.3089E-01  6.4347E-01 -3.1376E-01  9.0843E+00 -4.2270E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -4.2252E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -856.635447260583        NO. OF FUNC. EVALS.: 204
 CUMULATIVE NO. OF FUNC. EVALS.:     2423             RESET HESSIAN, TYPE I
 NPARAMETR:  1.3004E+00  1.7500E+00  2.7487E+00  8.8465E-01  2.0173E+00  2.9987E+00  4.6716E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.4111E+00
 PARAMETER:  3.6269E-01  6.5960E-01  1.1111E+00 -2.2561E-02  8.0178E-01  1.1982E+00  1.6415E+00 -6.3586E+00 -7.6186E+00 -5.4997E+00
             2.2296E+00
 GRADIENT:   2.8208E+01  1.1859E+01  7.2841E-02  1.3209E+00  1.3164E+00  9.8557E+01  7.2720E+01  0.0000E+00  0.0000E+00  0.0000E+00
             2.6746E+01

0ITERATION NO.:   77    OBJECTIVE VALUE:  -856.635447260583        NO. OF FUNC. EVALS.:  68
 CUMULATIVE NO. OF FUNC. EVALS.:     2491
 NPARAMETR:  1.3005E+00  1.7616E+00  2.7539E+00  8.8425E-01  2.0057E+00  2.9988E+00  4.6493E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.4054E+00
 PARAMETER:  3.6269E-01  6.5960E-01  1.1111E+00 -2.2561E-02  8.0178E-01  1.1982E+00  1.6415E+00 -6.3586E+00 -7.6186E+00 -5.4997E+00
             2.2296E+00
 GRADIENT:  -9.0850E-04 -1.0924E-01 -3.9786E-03  3.5410E-02  1.8118E-01 -1.7698E-03  2.5389E-01  0.0000E+00  0.0000E+00  0.0000E+00
             1.6897E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2491
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.1367E-03  7.9099E-03  4.2248E-06 -7.5282E-04 -1.2852E-06
 SE:             2.8962E-02  2.7249E-02  1.2061E-05  1.8414E-04  5.7117E-05
 N:                     100         100         100         100         100

 P VAL.:         7.7876E-01  7.7160E-01  7.2611E-01  4.3484E-05  9.8205E-01

 ETASHRINKSD(%)  2.9723E+00  8.7123E+00  9.9960E+01  9.9383E+01  9.9809E+01
 ETASHRINKVR(%)  5.8563E+00  1.6666E+01  1.0000E+02  9.9996E+01  1.0000E+02
 EBVSHRINKSD(%)  2.0974E+00  5.7037E+00  9.9934E+01  9.9651E+01  9.9712E+01
 EBVSHRINKVR(%)  4.1508E+00  1.1082E+01  1.0000E+02  9.9999E+01  9.9999E+01
 RELATIVEINF(%)  9.5603E+01  5.0858E+01  9.0103E-06  7.0175E-04  1.7275E-04
 EPSSHRINKSD(%)  9.2955E+00
 EPSSHRINKVR(%)  1.7727E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -856.63544726058342     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       246.09079258502368     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    57.35
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -856.635       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.30E+00  1.75E+00  2.75E+00  8.85E-01  2.02E+00  3.00E+00  4.67E+00  1.00E-02  1.00E-02  1.00E-02  8.41E+00
 


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
 #CPUT: Total CPU Time in Seconds,       57.391
Stop Time:
Fri Oct  1 22:21:45 CDT 2021