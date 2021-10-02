Sat Oct  2 05:42:33 CDT 2021
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
$DATA ../../../../data/SD4/D/dat46.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m46.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   12555.3033479364        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.9268E+02  2.0164E+02 -4.1465E+01  1.6888E+02  1.8585E+02 -1.6012E+03 -6.9302E+02 -2.6904E+01 -1.0181E+03 -4.6709E+02
            -2.4239E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -578.102641836464        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1918E+00  1.3128E+00  9.5659E-01  1.7755E+00  1.2204E+00  1.6216E+00  1.2442E+00  9.8419E-01  1.2351E+00  9.4321E-01
             1.4758E+01
 PARAMETER:  2.7550E-01  3.7214E-01  5.5622E-02  6.7411E-01  2.9915E-01  5.8342E-01  3.1847E-01  8.4059E-02  3.1118E-01  4.1536E-02
             2.7918E+00
 GRADIENT:  -7.6974E+01  4.7361E+01 -4.8797E+00  9.2889E+01 -1.1453E+01  1.5415E+00 -4.0959E-02  4.1123E+00  7.3315E+00  2.2634E+00
             1.5330E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -602.122495917965        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  1.1815E+00  7.5288E-01  1.2619E+00  1.6605E+00  9.4711E-01  1.5498E+00  2.9766E+00  4.8205E-01  8.5169E-01  3.6016E-01
             1.3960E+01
 PARAMETER:  2.6676E-01 -1.8385E-01  3.3265E-01  6.0710E-01  4.5661E-02  5.3811E-01  1.1908E+00 -6.2971E-01 -6.0532E-02 -9.2120E-01
             2.7362E+00
 GRADIENT:  -3.3220E+01  2.1177E+01  1.3158E+01  4.6647E+00 -1.7113E+01  2.0383E+01  1.9165E+01  7.3833E-01  7.7889E+00  6.7451E-01
             1.6397E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -631.475666618107        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      232
 NPARAMETR:  1.1046E+00  2.7856E-01  5.8999E-01  1.7752E+00  5.5530E-01  1.6918E+00  4.7055E+00  8.9160E-02  9.3710E-01  3.3459E-01
             1.0560E+01
 PARAMETER:  1.9947E-01 -1.1781E+00 -4.2765E-01  6.7392E-01 -4.8825E-01  6.2582E-01  1.6487E+00 -2.3173E+00  3.5037E-02 -9.9484E-01
             2.4571E+00
 GRADIENT:  -1.9106E+01  1.1827E+01  8.2467E+00  6.7899E+01 -6.8484E+00  8.6959E+00  4.1943E-01  1.3085E-01  5.3227E+00  1.6495E+00
            -3.1150E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -641.796512367025        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      306
 NPARAMETR:  1.0270E+00  1.4849E-01  1.4880E-01  1.3873E+00  1.9165E-01  1.6760E+00  3.8800E+00  1.2543E-02  7.5303E-01  2.3977E-02
             8.9155E+00
 PARAMETER:  1.2665E-01 -1.8073E+00 -1.8052E+00  4.2738E-01 -1.5521E+00  6.1642E-01  1.4558E+00 -4.2786E+00 -1.8364E-01 -3.6306E+00
             2.2878E+00
 GRADIENT:  -5.1290E+01  1.9603E+01  4.7512E+01  1.1112E+02 -5.9677E+01 -7.5346E+01  9.7565E+00  3.3292E-04  8.7467E+00  1.8545E-03
            -1.9354E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -669.009078693185        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      379
 NPARAMETR:  1.0312E+00  8.6598E-02  5.2333E-02  8.2954E-01  1.1591E-01  1.6507E+00  2.3290E+00  1.0000E-02  3.1207E-01  1.0000E-02
             8.3061E+00
 PARAMETER:  1.3068E-01 -2.3465E+00 -2.8501E+00 -8.6881E-02 -2.0550E+00  6.0119E-01  9.4544E-01 -6.1346E+00 -1.0645E+00 -8.3059E+00
             2.2170E+00
 GRADIENT:  -3.7036E+01  8.0531E+00  3.1136E+01  2.5794E+01 -5.4856E+01 -1.2109E+02  2.8403E+00  0.0000E+00  6.0539E-01  0.0000E+00
            -2.1278E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -706.654463186949        NO. OF FUNC. EVALS.:  95
 CUMULATIVE NO. OF FUNC. EVALS.:      474
 NPARAMETR:  1.1564E+00  5.8621E-02  2.5941E-02  3.3040E-01  8.9100E-02  2.1620E+00  8.8216E-01  1.0000E-02  3.1690E-02  1.0000E-02
             9.7211E+00
 PARAMETER:  2.4532E-01 -2.7367E+00 -3.5519E+00 -1.0075E+00 -2.3180E+00  8.7101E-01 -2.5383E-02 -9.5508E+00 -3.3518E+00 -1.9254E+01
             2.3743E+00
 GRADIENT:  -7.0506E+00 -4.9263E-01  1.3579E+01 -1.2610E+01 -3.5648E+01 -1.5585E+01  5.7397E-02  0.0000E+00  1.6932E-03  0.0000E+00
            -3.3465E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -712.693688009898        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      654
 NPARAMETR:  1.1761E+00  8.5431E-02  3.5067E-02  6.1567E-01  1.0184E-01  2.2773E+00  1.5823E+00  1.0000E-02  8.8504E-02  1.0000E-02
             1.0081E+01
 PARAMETER:  2.6218E-01 -2.3600E+00 -3.2505E+00 -3.8504E-01 -2.1843E+00  9.2299E-01  5.5885E-01 -9.2922E+00 -2.3247E+00 -1.4419E+01
             2.4107E+00
 GRADIENT:   8.0367E-01  7.1604E-01  4.0236E+00 -4.6424E+00  2.5777E+00  5.2213E+00  1.2055E+00  0.0000E+00  2.2724E-02  0.0000E+00
             6.8479E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -713.369890775491        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      830
 NPARAMETR:  1.1365E+00  9.8910E-02  2.3535E-02  7.8732E-01  9.2343E-02  2.3468E+00  1.5877E+00  1.0000E-02  1.2594E-01  1.0000E-02
             1.0109E+01
 PARAMETER:  2.2797E-01 -2.2135E+00 -3.6493E+00 -1.3912E-01 -2.2822E+00  9.5304E-01  5.6228E-01 -1.0302E+01 -1.9719E+00 -1.2583E+01
             2.4135E+00
 GRADIENT:  -2.4220E+00  1.5998E+00 -1.2503E-01 -2.6064E+00 -8.2907E+00 -9.1574E-02  4.5123E+00  0.0000E+00  7.1760E-03  0.0000E+00
             4.3818E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -715.449711124131        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1007
 NPARAMETR:  1.1160E+00  1.3460E-01  2.4320E-02  8.5654E-01  9.6911E-02  2.3615E+00  6.4376E-01  1.0000E-02  9.7515E-02  1.0000E-02
             1.0068E+01
 PARAMETER:  2.0972E-01 -1.9055E+00 -3.6165E+00 -5.4853E-02 -2.2340E+00  9.5929E-01 -3.4043E-01 -1.0828E+01 -2.2277E+00 -1.0820E+01
             2.4094E+00
 GRADIENT:  -3.1860E+00  3.9148E+00 -3.6407E+00 -3.6034E+00  1.1093E+01  1.4353E-01  1.2101E+00  0.0000E+00  4.7050E-03  0.0000E+00
             3.9763E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -719.277360974573        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1184
 NPARAMETR:  1.0428E+00  1.3061E-01  2.9785E-02  2.1924E+00  9.4499E-02  2.5414E+00  1.0320E-01  1.0000E-02  5.9962E-02  1.9867E-01
             9.9955E+00
 PARAMETER:  1.4192E-01 -1.9355E+00 -3.4138E+00  8.8502E-01 -2.2592E+00  1.0327E+00 -2.1711E+00 -1.4049E+01 -2.7140E+00 -1.5161E+00
             2.4021E+00
 GRADIENT:   8.6610E+00 -9.2419E-01 -5.7765E+00 -6.0781E-01  1.6670E+01 -8.4492E+00  3.3224E-02  0.0000E+00  2.5626E-03  1.1672E+00
             8.9537E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -721.599872306945        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1360
 NPARAMETR:  8.7250E-01  1.2893E-01  4.0150E-02  3.8064E+00  9.6459E-02  2.9193E+00  7.6649E-01  1.0000E-02  3.4219E-01  1.1334E-01
             1.0185E+01
 PARAMETER: -3.6389E-02 -1.9485E+00 -3.1151E+00  1.4367E+00 -2.2386E+00  1.1714E+00 -1.6593E-01 -1.2195E+01 -9.7239E-01 -2.0774E+00
             2.4209E+00
 GRADIENT:  -9.5501E+00 -2.3115E+00 -1.7035E+00 -9.5713E+00  1.5691E+01  7.7786E+00  1.9303E+00  0.0000E+00  2.1782E-01  5.9812E-01
             2.4050E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -727.209964210838        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1538
 NPARAMETR:  7.4710E-01  1.2310E-01  4.8962E-02  9.5176E+00  8.9487E-02  3.4511E+00  4.4309E-01  1.0000E-02  5.8135E-01  1.3007E-01
             9.9315E+00
 PARAMETER: -1.9156E-01 -1.9948E+00 -2.9167E+00  2.3531E+00 -2.3137E+00  1.3387E+00 -7.1397E-01 -1.2823E+01 -4.4240E-01 -1.9397E+00
             2.3957E+00
 GRADIENT:   9.5926E+00  1.4707E+00 -7.4052E-01  2.9294E+00 -2.3075E-01 -3.8592E+00  5.3961E-01  0.0000E+00  1.4251E-01  3.9151E-01
            -7.8692E+00

0ITERATION NO.:   65    OBJECTIVE VALUE:  -728.413518226856        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1713
 NPARAMETR:  6.6591E-01  1.2355E-01  5.2593E-02  9.8475E+00  9.1125E-02  3.6662E+00  1.1120E-01  1.0000E-02  2.3533E-01  2.9983E-02
             9.9762E+00
 PARAMETER: -3.0661E-01 -1.9911E+00 -2.8452E+00  2.3872E+00 -2.2955E+00  1.3992E+00 -2.0964E+00 -1.3846E+01 -1.3468E+00 -3.4071E+00
             2.4002E+00
 GRADIENT:   5.9369E-02 -1.2536E-01 -5.4798E-01 -1.8332E-01  8.0279E-01  1.5004E+00  3.1683E-02  0.0000E+00  3.6949E-02  2.7764E-02
             8.4075E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -728.458193901624        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1888
 NPARAMETR:  6.6882E-01  1.2368E-01  5.2415E-02  9.7466E+00  9.1138E-02  3.6377E+00  1.0000E-02  1.0000E-02  3.8014E-02  1.0000E-02
             9.9729E+00
 PARAMETER: -3.0224E-01 -1.9901E+00 -2.8486E+00  2.3769E+00 -2.2954E+00  1.3914E+00 -4.8301E+00 -1.6000E+01 -3.1698E+00 -4.9975E+00
             2.3999E+00
 GRADIENT:   5.7586E-02  1.4950E-02 -2.1106E-02  1.8197E-02  9.2400E-02  1.7226E-02  0.0000E+00  0.0000E+00  9.0302E-04  0.0000E+00
            -1.6616E-02

0ITERATION NO.:   74    OBJECTIVE VALUE:  -728.458781245563        NO. OF FUNC. EVALS.: 128
 CUMULATIVE NO. OF FUNC. EVALS.:     2016
 NPARAMETR:  6.6796E-01  1.2358E-01  5.2439E-02  9.7600E+00  9.1119E-02  3.6395E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0000E-02
             9.9722E+00
 PARAMETER: -3.0353E-01 -1.9908E+00 -2.8481E+00  2.3783E+00 -2.2956E+00  1.3918E+00 -7.7639E+00 -1.8340E+01 -5.1208E+00 -6.7301E+00
             2.3998E+00
 GRADIENT:  -3.7558E-02 -4.4806E-03  1.6746E-02  1.1687E-03 -2.9092E-02 -7.0745E-03  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -3.7736E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     2016
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3585E-02 -1.8394E-05 -3.4699E-04 -1.5341E-04  5.0978E-05
 SE:             2.7330E-02  3.9346E-05  1.2650E-04  6.3932E-05  3.4081E-04
 N:                     100         100         100         100         100

 P VAL.:         6.1914E-01  6.4015E-01  6.0892E-03  1.6415E-02  8.8110E-01

 ETASHRINKSD(%)  8.4400E+00  9.9868E+01  9.9576E+01  9.9786E+01  9.8858E+01
 ETASHRINKVR(%)  1.6168E+01  1.0000E+02  9.9998E+01  1.0000E+02  9.9987E+01
 EBVSHRINKSD(%)  5.9046E+00  9.9829E+01  9.9600E+01  9.9811E+01  9.8859E+01
 EBVSHRINKVR(%)  1.1461E+01  1.0000E+02  9.9998E+01  1.0000E+02  9.9987E+01
 RELATIVEINF(%)  4.2028E+01  2.0393E-04  4.8955E-04  9.6115E-05  3.3219E-03
 EPSSHRINKSD(%)  4.5826E+00
 EPSSHRINKVR(%)  8.9551E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -728.45878124556293     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       6.6920453181752464     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.66
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -728.459       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         6.68E-01  1.24E-01  5.24E-02  9.76E+00  9.11E-02  3.64E+00  1.00E-02  1.00E-02  1.00E-02  1.00E-02  9.97E+00
 


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
 #CPUT: Total CPU Time in Seconds,       23.697
Stop Time:
Sat Oct  2 05:42:58 CDT 2021