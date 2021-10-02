Fri Oct  1 21:52:16 CDT 2021
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
$DATA ../../../../data/SD3/D/dat28.csv ignore=@
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
 (E4.0,E3.0,E22.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m28.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   13990.3820259156        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.7722E+02  2.3994E+01 -2.3726E+01 -1.4551E+02  1.5708E+02 -9.5949E+02 -5.5457E+02 -8.1661E+01 -9.2010E+02 -2.7575E+02
            -2.9893E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -746.960647373772        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.5047E+00  1.4555E+00  8.4411E-01  2.0637E+00  1.1234E+00  3.6867E+00  2.5931E+00  1.0231E+00  2.0149E+00  1.2123E+00
             1.2769E+01
 PARAMETER:  5.0861E-01  4.7533E-01 -6.9478E-02  8.2451E-01  2.1639E-01  1.4047E+00  1.0529E+00  1.2288E-01  8.0055E-01  2.9250E-01
             2.6470E+00
 GRADIENT:   2.0357E+01 -3.8986E+01 -5.1647E+01  1.0404E+02  6.1603E+01  1.3966E+02 -2.9866E+01  3.0617E+00  1.4094E+01  1.3116E+01
             3.7600E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -840.700997685982        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.5258E+00  1.6169E+00  1.1776E+01  2.5921E+00  4.8444E+00  2.0735E+00  4.7861E+00  1.1999E+00  2.9641E+00  2.9750E+00
             1.1669E+01
 PARAMETER:  5.2251E-01  5.8054E-01  2.5661E+00  1.0525E+00  1.6778E+00  8.2925E-01  1.6657E+00  2.8227E-01  1.1866E+00  1.1902E+00
             2.5569E+00
 GRADIENT:   6.0456E+01  2.8694E+01 -6.7439E-01  6.6620E+01 -8.9798E+00 -1.1399E+00  2.9819E+01  1.0947E-01  5.0616E+01  7.7817E+00
             3.2797E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -942.637730759884        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.0828E+00  1.0511E+00  6.8248E+00  1.3233E+00  1.9041E+00  2.0743E+00  3.4545E+00  5.8006E+00  1.3211E+00  1.3434E+00
             8.8037E+00
 PARAMETER:  1.7960E-01  1.4984E-01  2.0206E+00  3.8012E-01  7.4403E-01  8.2962E-01  1.3397E+00  1.8580E+00  3.7848E-01  3.9522E-01
             2.2752E+00
 GRADIENT:  -5.8759E+01 -3.4760E+01 -8.0506E+00 -1.5495E+01 -1.2723E+01  5.2643E+00 -1.3169E+01  1.7363E+01  9.6479E+00  1.7227E+01
             2.4769E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -982.489407234841        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      302
 NPARAMETR:  1.1469E+00  1.9114E+00  3.2393E+00  8.6602E-01  2.0426E+00  1.9904E+00  2.7922E+00  3.3315E+00  1.1471E+00  5.7302E-01
             6.9378E+00
 PARAMETER:  2.3709E-01  7.4782E-01  1.2754E+00 -4.3844E-02  8.1424E-01  7.8833E-01  1.1268E+00  1.3034E+00  2.3726E-01 -4.5684E-01
             2.0370E+00
 GRADIENT:  -1.9396E+00  1.3258E+01 -3.0525E+00  1.2734E+01  1.0234E+01 -1.0051E+01 -5.8281E-01  2.4668E+00  5.8175E+00  3.0429E+00
            -4.1089E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -991.321069109931        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      373
 NPARAMETR:  1.1734E+00  1.9984E+00  9.1096E-01  6.6424E-01  1.6398E+00  2.0341E+00  2.5527E+00  9.1254E-01  3.4077E-01  2.9980E-02
             6.9699E+00
 PARAMETER:  2.5992E-01  7.9236E-01  6.7425E-03 -3.0911E-01  5.9458E-01  8.1006E-01  1.0371E+00  8.4737E-03 -9.7655E-01 -3.4072E+00
             2.0416E+00
 GRADIENT:   1.2984E+01 -6.3314E+00 -5.4275E+00 -2.7403E+00  2.6230E+01  1.7808E+00 -2.0499E+00  7.9100E-01  1.3616E+00  1.3398E-02
            -2.1788E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -993.828271953301        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      446
 NPARAMETR:  1.1433E+00  1.6675E+00  7.8720E-01  8.3937E-01  1.2138E+00  2.0091E+00  2.8506E+00  4.9542E-01  2.9738E-01  2.3621E-02
             7.1177E+00
 PARAMETER:  2.3388E-01  6.1134E-01 -1.3928E-01 -7.5108E-02  2.9373E-01  7.9770E-01  1.1475E+00 -6.0235E-01 -1.1128E+00 -3.6456E+00
             2.0626E+00
 GRADIENT:  -3.5028E+00 -2.6568E+00 -1.1744E+00  1.4541E+00 -1.5874E+00 -8.2439E-01 -6.8505E-01  4.8800E-01  1.3870E+00  1.1703E-02
             4.7427E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -997.691452107408        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      604
 NPARAMETR:  1.2121E+00  1.8575E+00  9.9127E-01  8.2390E-01  1.3743E+00  2.2240E+00  3.0676E+00  4.9103E-01  2.7124E-01  3.0122E-02
             7.2395E+00
 PARAMETER:  2.9239E-01  7.1924E-01  9.1233E-02 -9.3710E-02  4.1793E-01  8.9933E-01  1.2209E+00 -6.1126E-01 -1.2047E+00 -3.4025E+00
             2.0796E+00
 GRADIENT:   2.0405E+00  6.5656E-01  1.8969E+00 -4.7399E+00 -4.7337E+00  4.4672E+00  2.0714E+00  3.0330E-01  1.1490E+00  1.4306E-02
             1.1939E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -998.456116205120        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      780
 NPARAMETR:  1.2033E+00  1.8583E+00  9.4890E-01  8.1758E-01  1.3743E+00  2.2010E+00  3.0378E+00  1.1165E-01  5.4214E-02  1.0000E-02
             7.2479E+00
 PARAMETER:  2.8505E-01  7.1968E-01  4.7551E-02 -1.0141E-01  4.1792E-01  8.8891E-01  1.2111E+00 -2.0924E+00 -2.8148E+00 -5.6781E+00
             2.0807E+00
 GRADIENT:  -1.2223E+00 -6.6747E-01  9.4454E-02 -2.1547E+00 -1.8249E-01  1.1362E+00  4.0005E-01  1.7416E-02  4.7362E-02  0.0000E+00
             2.9742E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -998.498785170349        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      955
 NPARAMETR:  1.2066E+00  1.8467E+00  9.5430E-01  8.2598E-01  1.3692E+00  2.1941E+00  3.0558E+00  2.0418E-02  1.0000E-02  1.0000E-02
             7.2383E+00
 PARAMETER:  2.8778E-01  7.1342E-01  5.3218E-02 -9.1182E-02  4.1426E-01  8.8578E-01  1.2170E+00 -3.7913E+00 -4.6495E+00 -8.1929E+00
             2.0794E+00
 GRADIENT:   5.1217E-02 -1.3886E-02  1.4290E-02 -2.2099E-02 -4.6152E-02  2.4339E-02 -1.8651E-02  5.8467E-04  0.0000E+00  0.0000E+00
             5.1693E-02

0ITERATION NO.:   48    OBJECTIVE VALUE:  -998.500124235402        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:     1052
 NPARAMETR:  1.2070E+00  1.8463E+00  9.5413E-01  8.2602E-01  1.3694E+00  2.1995E+00  3.0564E+00  1.0000E-02  1.0000E-02  1.0000E-02
             7.2373E+00
 PARAMETER:  2.8818E-01  7.1319E-01  5.3044E-02 -9.1136E-02  4.1436E-01  8.8823E-01  1.2172E+00 -4.8134E+00 -4.6495E+00 -8.1929E+00
             2.0792E+00
 GRADIENT:   2.2803E-01 -7.7611E-02 -2.5036E-02 -1.8502E-03  1.4617E-02  8.5853E-01 -3.5579E-02  0.0000E+00  0.0000E+00  0.0000E+00
            -1.0790E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1052
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.4003E-03  3.0315E-03 -3.6787E-05 -5.8416E-04 -1.9980E-05
 SE:             2.9111E-02  2.7482E-02  4.5299E-05  1.3050E-04  1.0048E-04
 N:                     100         100         100         100         100

 P VAL.:         7.9934E-01  9.1216E-01  4.1673E-01  7.5988E-06  8.4238E-01

 ETASHRINKSD(%)  2.4739E+00  7.9318E+00  9.9848E+01  9.9563E+01  9.9663E+01
 ETASHRINKVR(%)  4.8866E+00  1.5234E+01  1.0000E+02  9.9998E+01  9.9999E+01
 EBVSHRINKSD(%)  2.2653E+00  5.9909E+00  9.9833E+01  9.9610E+01  9.9572E+01
 EBVSHRINKVR(%)  4.4794E+00  1.1623E+01  1.0000E+02  9.9998E+01  9.9998E+01
 RELATIVEINF(%)  9.5020E+01  3.6310E+01  6.5588E-05  5.0070E-04  3.9631E-04
 EPSSHRINKSD(%)  1.1093E+01
 EPSSHRINKVR(%)  2.0955E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -998.50012423540238     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       104.22611561020472     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.86
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -998.500       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.21E+00  1.85E+00  9.54E-01  8.26E-01  1.37E+00  2.20E+00  3.06E+00  1.00E-02  1.00E-02  1.00E-02  7.24E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.905
Stop Time:
Fri Oct  1 21:52:36 CDT 2021
