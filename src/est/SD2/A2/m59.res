Fri Oct  1 10:03:26 CDT 2021
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
$DATA ../../../../data/SD2/A2/dat59.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m59.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -573.233275438326        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.3485E+02  5.7855E+01  1.6121E+02  2.9253E+01  2.0850E+02  2.8867E+01 -6.1132E+01 -2.1246E+02 -9.2930E+01 -1.3055E+02
            -2.6010E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1644.31471836113        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0622E+00  1.0613E+00  1.0444E+00  1.0708E+00  1.1032E+00  1.0081E+00  8.9325E-01  9.2449E-01  7.9745E-01  7.7493E-01
             3.4752E+00
 PARAMETER:  1.6033E-01  1.5950E-01  1.4347E-01  1.6845E-01  1.9824E-01  1.0811E-01 -1.2893E-02  2.1490E-02 -1.2633E-01 -1.5498E-01
             1.3456E+00
 GRADIENT:   1.5367E+01 -9.6410E+00 -3.2686E+01  2.0556E+01  3.0363E+01  3.2148E+00  2.3725E+00  6.2080E+00 -2.6316E+00  1.4012E+01
             1.0677E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1653.39261141971        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.0711E+00  9.1503E-01  8.4651E-01  1.1356E+00  8.1867E-01  1.0306E+00  7.6575E-01  2.7685E-01  9.5674E-01  4.7045E-01
             3.3515E+00
 PARAMETER:  1.6873E-01  1.1205E-02 -6.6634E-02  2.2714E-01 -1.0007E-01  1.3010E-01 -1.6690E-01 -1.1843E+00  5.5777E-02 -6.5407E-01
             1.3094E+00
 GRADIENT:   4.1265E+01  2.3142E+01  1.5523E+01  2.9797E+01 -3.9807E+01  1.0251E+01  1.4298E+00  8.6769E-01  1.5815E+01  4.7889E+00
             8.2693E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1657.18615871119        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  1.0465E+00  9.2332E-01  9.9633E-01  1.1202E+00  9.3943E-01  1.0053E+00  7.8880E-01  1.8281E-01  8.8652E-01  4.5832E-01
             3.1333E+00
 PARAMETER:  1.4544E-01  2.0216E-02  9.6321E-02  2.1352E-01  3.7520E-02  1.0528E-01 -1.3725E-01 -1.5993E+00 -2.0455E-02 -6.8019E-01
             1.2421E+00
 GRADIENT:   3.6580E+00 -2.6579E+00 -1.1425E+00  1.3739E+00 -1.2435E+00  3.0450E-01  3.1507E-01  2.8476E-01  1.4243E+00  3.4098E+00
             5.0264E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1658.43215369514        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      301
 NPARAMETR:  1.0467E+00  9.9873E-01  1.0174E+00  1.0795E+00  9.9173E-01  1.0071E+00  7.8900E-01  6.4587E-02  9.0050E-01  7.1482E-02
             3.1468E+00
 PARAMETER:  1.4565E-01  9.8726E-02  1.1723E-01  1.7645E-01  9.1698E-02  1.0711E-01 -1.3699E-01 -2.6397E+00 -4.8078E-03 -2.5383E+00
             1.2464E+00
 GRADIENT:   4.3771E+00 -5.1414E-01  4.4405E-01  1.5708E+00 -2.3689E+00  1.6700E+00 -4.1854E-02  2.6276E-02  9.5942E-01  4.0693E-02
            -3.2600E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1659.95124461983        NO. OF FUNC. EVALS.: 156
 CUMULATIVE NO. OF FUNC. EVALS.:      457
 NPARAMETR:  1.0836E+00  8.9496E-01  1.1325E+00  1.1679E+00  1.0030E+00  1.0133E+00  8.3428E-01  3.2157E-02  8.4487E-01  2.7674E-02
             3.2151E+00
 PARAMETER:  1.8027E-01 -1.0973E-02  2.2441E-01  2.5519E-01  1.0304E-01  1.1323E-01 -8.1191E-02 -3.3371E+00 -6.8576E-02 -3.4872E+00
             1.2679E+00
 GRADIENT:   9.6008E+00  7.5701E+00  1.2931E+00  8.8771E+00 -3.7604E+00  7.4359E-01 -3.0659E-01  6.2809E-03 -5.4747E-01  5.3323E-03
             2.1638E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1660.76751806534        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      633
 NPARAMETR:  1.0742E+00  5.3290E-01  1.1427E+00  1.3825E+00  8.7432E-01  1.0031E+00  1.1819E+00  1.4730E-02  7.3965E-01  4.1122E-02
             3.2025E+00
 PARAMETER:  1.7162E-01 -5.2943E-01  2.3336E-01  4.2388E-01 -3.4311E-02  1.0309E-01  2.6716E-01 -4.1178E+00 -2.0157E-01 -3.0912E+00
             1.2639E+00
 GRADIENT:   1.7313E+00  5.3767E+00  1.3773E+00  1.5406E+01 -4.2657E+00 -2.0062E+00 -2.8546E-01  1.6663E-03 -9.7654E-01  4.3999E-03
            -2.1128E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1661.09339873417        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      810
 NPARAMETR:  1.0667E+00  3.4747E-01  1.1234E+00  1.4819E+00  8.0888E-01  1.0069E+00  1.5859E+00  1.2593E-02  7.0235E-01  1.0358E-01
             3.2008E+00
 PARAMETER:  1.6453E-01 -9.5709E-01  2.1633E-01  4.9330E-01 -1.1210E-01  1.0687E-01  5.6115E-01 -4.2746E+00 -2.5332E-01 -2.1674E+00
             1.2634E+00
 GRADIENT:  -5.6008E+00  2.6375E+00  2.6008E+00  1.0230E+01 -5.3944E+00  3.5780E-02 -3.9837E-02  1.2523E-03 -5.4649E-01  6.0233E-04
            -6.8720E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1661.29554446807        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      986
 NPARAMETR:  1.0663E+00  1.7209E-01  1.0942E+00  1.5745E+00  7.4848E-01  1.0074E+00  2.3521E+00  1.0000E-02  6.7701E-01  2.6039E-01
             3.1850E+00
 PARAMETER:  1.6424E-01 -1.6597E+00  1.8999E-01  5.5396E-01 -1.8971E-01  1.0739E-01  9.5530E-01 -5.0315E+00 -2.9006E-01 -1.2456E+00
             1.2585E+00
 GRADIENT:   1.9572E+00  1.1993E+00  1.8246E+00  1.0494E+01 -3.8729E+00  6.5758E-01  7.4139E-02  0.0000E+00 -5.6559E-01  2.1979E-02
            -1.0789E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1661.39198873566        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1161
 NPARAMETR:  1.0615E+00  1.0001E-01  1.0469E+00  1.6050E+00  7.0999E-01  1.0035E+00  2.9174E+00  1.0000E-02  6.7286E-01  3.0312E-01
             3.1793E+00
 PARAMETER:  1.5965E-01 -2.2025E+00  1.4582E-01  5.7309E-01 -2.4251E-01  1.0352E-01  1.1707E+00 -6.0740E+00 -2.9621E-01 -1.0936E+00
             1.2567E+00
 GRADIENT:  -3.5088E+00  5.2028E-01  4.2652E-01  8.3415E+00 -2.1252E+00 -6.5366E-01 -6.2601E-02  0.0000E+00 -3.2342E-01 -2.7621E-02
             5.4939E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1661.48640357727        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1339
 NPARAMETR:  1.0614E+00  3.3512E-02  9.9259E-01  1.6283E+00  6.6883E-01  1.0059E+00  4.3111E+00  1.0000E-02  6.7199E-01  3.7968E-01
             3.1585E+00
 PARAMETER:  1.5962E-01 -3.2959E+00  9.2561E-02  5.8751E-01 -3.0222E-01  1.0587E-01  1.5612E+00 -8.2307E+00 -2.9751E-01 -8.6844E-01
             1.2501E+00
 GRADIENT:   9.4925E-01  8.9956E-02 -3.1088E-01  3.0525E+00  9.1058E-02  9.9259E-02 -4.5638E-02  0.0000E+00  4.2335E-01  1.0478E-01
             1.0098E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1661.52612299097        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1516
 NPARAMETR:  1.0594E+00  1.0000E-02  9.5540E-01  1.6335E+00  6.4483E-01  1.0055E+00  6.8413E+00  1.0000E-02  6.7161E-01  3.9827E-01
             3.1505E+00
 PARAMETER:  1.5773E-01 -4.6494E+00  5.4375E-02  5.9073E-01 -3.3877E-01  1.0553E-01  2.0230E+00 -1.1075E+01 -2.9808E-01 -8.2063E-01
             1.2475E+00
 GRADIENT:  -1.3675E+00  0.0000E+00  7.0335E-01  4.8845E+00 -1.8740E+00 -1.5701E-01 -1.6787E-02  0.0000E+00  8.3071E-02 -4.8770E-03
             6.3033E-02

0ITERATION NO.:   58    OBJECTIVE VALUE:  -1661.53251716135        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:     1608
 NPARAMETR:  1.0601E+00  1.0000E-02  9.6005E-01  1.6321E+00  6.4791E-01  1.0058E+00  6.8423E+00  1.0000E-02  6.7025E-01  3.9338E-01
             3.1513E+00
 PARAMETER:  1.5836E-01 -4.6458E+00  5.9227E-02  5.8989E-01 -3.3401E-01  1.0581E-01  2.0231E+00 -1.1075E+01 -3.0011E-01 -8.3298E-01
             1.2478E+00
 GRADIENT:   2.7521E-01  0.0000E+00 -1.4168E-02 -1.0453E+00  5.8440E-02  4.4346E-02 -1.6769E-02  0.0000E+00 -1.5137E-01 -5.7913E-03
            -1.4803E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1608
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.4912E-04 -1.1426E-03  9.4335E-05 -9.6939E-03 -3.0493E-03
 SE:             2.9112E-02  1.1020E-03  1.5238E-04  2.6496E-02  9.3286E-03
 N:                     100         100         100         100         100

 P VAL.:         9.8495E-01  2.9982E-01  5.3588E-01  7.1447E-01  7.4376E-01

 ETASHRINKSD(%)  2.4697E+00  9.6308E+01  9.9489E+01  1.1234E+01  6.8748E+01
 ETASHRINKVR(%)  4.8783E+00  9.9864E+01  9.9997E+01  2.1207E+01  9.0233E+01
 EBVSHRINKSD(%)  2.4987E+00  9.6448E+01  9.9444E+01  1.1366E+01  6.8990E+01
 EBVSHRINKVR(%)  4.9349E+00  9.9874E+01  9.9997E+01  2.1440E+01  9.0384E+01
 RELATIVEINF(%)  7.9419E+01  2.3342E-03  1.3509E-04  2.0422E+00  2.9249E-01
 EPSSHRINKSD(%)  1.9136E+01
 EPSSHRINKVR(%)  3.4610E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1661.5325171613508     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -742.59398395667813     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.64
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1661.533       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.06E+00  1.00E-02  9.60E-01  1.63E+00  6.48E-01  1.01E+00  6.84E+00  1.00E-02  6.70E-01  3.93E-01  3.15E+00
 


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
 #CPUT: Total CPU Time in Seconds,       22.687
Stop Time:
Fri Oct  1 10:03:50 CDT 2021