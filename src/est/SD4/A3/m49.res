Sat Oct  2 01:07:46 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat49.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m49.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -11.8677974403618        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0722E+02  7.9449E+01  1.0791E+02  4.3980E+01  1.8222E+02  5.1224E+00 -8.9595E+01 -8.2519E+01 -1.1788E+02 -1.5344E+02
            -2.7248E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1140.90321272932        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  9.9758E-01  9.6917E-01  8.5218E-01  1.1153E+00  8.6813E-01  9.4533E-01  1.1449E+00  1.1118E+00  1.1785E+00  1.1511E+00
             5.6523E+00
 PARAMETER:  9.7582E-02  6.8690E-02 -5.9952E-02  2.0914E-01 -4.1410E-02  4.3782E-02  2.3529E-01  2.0600E-01  2.6424E-01  2.4072E-01
             1.8321E+00
 GRADIENT:  -2.2299E+01 -1.3604E+01 -1.6328E+01 -3.9387E+00 -1.4371E+01  3.5587E+00  1.0793E+01  7.5174E+00  2.7170E+01  2.7639E+01
             2.3285E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1164.80706524507        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  9.7482E-01  5.7178E-01  2.5281E-01  1.2715E+00  3.0708E-01  1.0294E+00  1.3319E+00  8.8128E-01  1.2087E+00  3.2364E-01
             4.2999E+00
 PARAMETER:  7.4499E-02 -4.5900E-01 -1.2751E+00  3.4019E-01 -1.0806E+00  1.2896E-01  3.8661E-01 -2.6378E-02  2.8951E-01 -1.0281E+00
             1.5586E+00
 GRADIENT:  -4.3830E+01  8.4065E+01  2.8670E+01  1.6278E+02 -8.9680E+01  6.6785E+00 -1.0664E+00  6.1607E+00  2.1704E+00  6.2229E-02
             1.0874E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1191.05141133589        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      293
 NPARAMETR:  9.7145E-01  6.9370E-01  3.3750E-01  1.1075E+00  4.2121E-01  1.0030E+00  1.2099E+00  6.2795E-01  9.0406E-01  3.9487E-01
             3.6957E+00
 PARAMETER:  7.1030E-02 -2.6571E-01 -9.8620E-01  2.0211E-01 -7.6461E-01  1.0298E-01  2.9058E-01 -3.6530E-01 -8.6214E-04 -8.2919E-01
             1.4072E+00
 GRADIENT:  -2.9319E+01  1.4722E+01  8.6010E+00  1.8054E+01 -2.3558E+01 -8.4212E-01 -1.1799E+01  1.4651E+00 -1.5342E+01 -1.8441E-01
            -5.2654E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1194.19689214044        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      472
 NPARAMETR:  9.8260E-01  5.2848E-01  4.5478E-01  1.2366E+00  4.4727E-01  9.8037E-01  1.7511E+00  4.9769E-01  9.5823E-01  3.0715E-01
             3.7663E+00
 PARAMETER:  8.2442E-02 -5.3774E-01 -6.8794E-01  3.1239E-01 -7.0460E-01  8.0177E-02  6.6023E-01 -5.9777E-01  5.7334E-02 -1.0804E+00
             1.4261E+00
 GRADIENT:  -8.2111E-01  1.2185E+01  1.8810E+01  7.4230E+00 -3.5150E+01 -1.3158E-01 -2.0403E+00 -2.4443E-01 -2.6742E-01 -1.6317E+00
            -4.8689E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1203.03908546729        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      651
 NPARAMETR:  9.7024E-01  3.6723E-01  1.3032E+00  1.4724E+00  8.9359E-01  9.5390E-01  2.4468E+00  1.7594E-01  8.0777E-01  4.5480E-01
             4.0532E+00
 PARAMETER:  6.9792E-02 -9.0176E-01  3.6479E-01  4.8686E-01 -1.2506E-02  5.2799E-02  9.9478E-01 -1.6376E+00 -1.1348E-01 -6.8789E-01
             1.4995E+00
 GRADIENT:  -4.3513E+00  2.6280E+00 -1.8565E+00 -3.4248E+00 -1.5803E-01 -2.0704E+00  5.8055E+00  1.3749E-01  2.6923E+00  2.3567E+00
             8.9177E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1204.92658850231        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      826
 NPARAMETR:  9.6899E-01  2.4893E-01  1.6880E+00  1.5657E+00  9.9580E-01  9.5730E-01  2.0808E+00  1.2142E-01  7.7569E-01  1.4304E-01
             4.0543E+00
 PARAMETER:  6.8495E-02 -1.2906E+00  6.2357E-01  5.4833E-01  9.5792E-02  5.6359E-02  8.3274E-01 -2.0085E+00 -1.5400E-01 -1.8447E+00
             1.4998E+00
 GRADIENT:  -1.9473E+00  2.5763E-01 -3.3208E-03  2.2965E+00 -3.3818E-01 -2.8654E-01 -1.3867E-01  3.9954E-02  6.1599E-02  1.2517E-01
            -1.0744E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1204.95030182168        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1003
 NPARAMETR:  9.6952E-01  2.0825E-01  1.8415E+00  1.5950E+00  1.0251E+00  9.5752E-01  2.0315E+00  1.0232E-01  7.6528E-01  6.6671E-02
             4.0583E+00
 PARAMETER:  6.9041E-02 -1.4690E+00  7.1058E-01  5.6690E-01  1.2476E-01  5.6589E-02  8.0876E-01 -2.1797E+00 -1.6752E-01 -2.6080E+00
             1.5008E+00
 GRADIENT:   2.7703E-01 -2.5632E-02  5.7092E-01 -7.6194E-01 -5.8630E-01  3.6837E-02 -1.9866E-01  2.3354E-02 -1.4802E-02  2.5085E-02
            -1.0588E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1204.99890926821        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1182
 NPARAMETR:  9.6787E-01  1.1726E-01  1.7143E+00  1.6468E+00  9.6844E-01  9.5681E-01  3.0458E+00  4.9507E-02  7.5221E-01  1.0000E-02
             4.0561E+00
 PARAMETER:  6.7341E-02 -2.0434E+00  6.3899E-01  5.9883E-01  6.7932E-02  5.5850E-02  1.2138E+00 -2.9057E+00 -1.8474E-01 -6.2460E+00
             1.5002E+00
 GRADIENT:  -2.3097E-01  9.5677E-02 -2.7800E-01  2.1976E+00  3.9057E-02 -5.4860E-02 -9.1369E-02  6.7265E-03 -1.8563E-01  0.0000E+00
            -2.3254E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1205.00076249919        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1358
 NPARAMETR:  9.6736E-01  9.3496E-02  1.6941E+00  1.6598E+00  9.5666E-01  9.5653E-01  3.6340E+00  3.6615E-02  7.4952E-01  1.0000E-02
             4.0562E+00
 PARAMETER:  6.6811E-02 -2.2698E+00  6.2713E-01  6.0668E-01  5.5692E-02  5.5555E-02  1.3903E+00 -3.2073E+00 -1.8832E-01 -7.7825E+00
             1.5003E+00
 GRADIENT:  -3.9890E-01  6.6077E-02 -4.3886E-01  1.6697E+00  3.2028E-01 -5.5674E-02 -2.9853E-02  3.8192E-03  4.4595E-02  0.0000E+00
             8.0155E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1205.00387824852        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1539
 NPARAMETR:  9.6737E-01  7.6675E-02  1.7261E+00  1.6687E+00  9.5967E-01  9.5651E-01  4.0998E+00  1.0000E-02  7.4513E-01  1.0000E-02
             4.0555E+00
 PARAMETER:  6.6824E-02 -2.4682E+00  6.4589E-01  6.1203E-01  5.8835E-02  5.5534E-02  1.5109E+00 -4.5457E+00 -1.9420E-01 -8.9758E+00
             1.5001E+00
 GRADIENT:   5.6263E-01 -3.9753E-02 -5.0124E-02 -2.2968E+00  1.6152E-01  1.0930E-01 -4.5749E-03  1.5127E-05  4.1827E-02  0.0000E+00
             5.9897E-02

0ITERATION NO.:   51    OBJECTIVE VALUE:  -1205.00387824852        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:     1567
 NPARAMETR:  9.6717E-01  7.8591E-02  1.7269E+00  1.6694E+00  9.5934E-01  9.5622E-01  4.1284E+00  1.0000E-02  7.4497E-01  1.0000E-02
             4.0550E+00
 PARAMETER:  6.6824E-02 -2.4682E+00  6.4589E-01  6.1203E-01  5.8835E-02  5.5534E-02  1.5109E+00 -4.5457E+00 -1.9420E-01 -8.9758E+00
             1.5001E+00
 GRADIENT:   4.8299E-01 -3.6068E-02 -4.9802E-02 -1.2675E+00  1.6149E-01  1.0353E-01 -3.5736E-03  5.7845E-06  3.7959E-02  0.0000E+00
             1.2620E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1567
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.0206E-04 -1.8229E-03  7.5781E-05 -1.4343E-02 -1.8455E-05
 SE:             2.8209E-02  4.1776E-03  5.9548E-05  2.3881E-02  1.2588E-04
 N:                     100         100         100         100         100

 P VAL.:         9.9428E-01  6.6258E-01  2.0316E-01  5.4809E-01  8.8345E-01

 ETASHRINKSD(%)  5.4953E+00  8.6005E+01  9.9801E+01  1.9995E+01  9.9578E+01
 ETASHRINKVR(%)  1.0689E+01  9.8041E+01  1.0000E+02  3.5993E+01  9.9998E+01
 EBVSHRINKSD(%)  5.1336E+00  8.5992E+01  9.9768E+01  1.9789E+01  9.9546E+01
 EBVSHRINKVR(%)  1.0004E+01  9.8038E+01  9.9999E+01  3.5663E+01  9.9998E+01
 RELATIVEINF(%)  6.4523E+01  4.9597E-03  1.9100E-05  1.8950E-01  1.0293E-04
 EPSSHRINKSD(%)  1.9584E+01
 EPSSHRINKVR(%)  3.5333E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1205.0038782485162     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -469.85305168477805     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.29
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1205.004       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.67E-01  7.67E-02  1.73E+00  1.67E+00  9.60E-01  9.57E-01  4.10E+00  1.00E-02  7.45E-01  1.00E-02  4.06E+00
 


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
 #CPUT: Total CPU Time in Seconds,       21.321
Stop Time:
Sat Oct  2 01:08:09 CDT 2021
