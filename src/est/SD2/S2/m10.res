Fri Oct  1 13:23:29 CDT 2021
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
$DATA ../../../../data/SD2/S2/dat10.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m10.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2117.74608275951        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7209E+02  2.0918E+01 -1.6544E+01  6.9687E+01  3.4529E+01  2.8428E+01  1.5601E+01  7.5894E+00  2.1360E+01  1.2852E+01
             2.4033E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2121.03876127999        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      175
 NPARAMETR:  9.8479E-01  1.0029E+00  1.0179E+00  1.0204E+00  9.8418E-01  1.0933E+00  9.3662E-01  9.6908E-01  9.3659E-01  9.3960E-01
             9.5860E-01
 PARAMETER:  8.4670E-02  1.0287E-01  1.1776E-01  1.2022E-01  8.4054E-02  1.8923E-01  3.4524E-02  6.8593E-02  3.4495E-02  3.7698E-02
             5.7716E-02
 GRADIENT:   9.4700E+00  1.7984E+01  1.5119E+00  1.9961E+01  7.7524E+00  1.1161E+01  5.4716E+00  2.1985E+00 -1.5133E+00  2.0537E+00
            -1.3255E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2122.44150366919        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      356
 NPARAMETR:  9.8628E-01  9.4013E-01  9.8656E-01  1.0424E+00  9.3095E-01  1.0870E+00  7.4311E-01  7.8191E-01  9.4921E-01  9.5756E-01
             9.8363E-01
 PARAMETER:  8.6186E-02  3.8258E-02  8.6465E-02  1.4157E-01  2.8455E-02  1.8340E-01 -1.9692E-01 -1.4601E-01  4.7872E-02  5.6638E-02
             8.3493E-02
 GRADIENT:   1.2631E+01  1.2864E+01  1.3315E+01 -8.1687E-01 -2.0348E+01  9.2241E+00  4.6975E-01 -1.0158E+00 -5.2206E+00  3.2714E+00
             6.4420E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2123.12699445507        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      533
 NPARAMETR:  9.7588E-01  8.1722E-01  1.0838E+00  1.1254E+00  9.3437E-01  1.0556E+00  5.6215E-01  9.3110E-01  9.4947E-01  9.5385E-01
             9.7252E-01
 PARAMETER:  7.5584E-02 -1.0184E-01  1.8051E-01  2.1814E-01  3.2115E-02  1.5413E-01 -4.7599E-01  2.8609E-02  4.8145E-02  5.2747E-02
             7.2132E-02
 GRADIENT:  -4.5582E+00  6.4032E+00 -8.6689E-02  1.3378E+01 -1.8324E+00 -1.7137E+00  9.3312E-01  2.6837E-01  1.8121E+00  8.1014E-01
            -1.9009E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2123.45212789316        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      708
 NPARAMETR:  9.7704E-01  6.8668E-01  1.1714E+00  1.1990E+00  9.2568E-01  1.0584E+00  2.8295E-01  9.8216E-01  9.0827E-01  9.6463E-01
             9.7558E-01
 PARAMETER:  7.6768E-02 -2.7588E-01  2.5823E-01  2.8150E-01  2.2771E-02  1.5680E-01 -1.1625E+00  8.2002E-02  3.7810E-03  6.3985E-02
             7.5273E-02
 GRADIENT:   1.3990E+00 -2.7970E+00  4.7207E-02 -4.1057E+00  1.0173E-01  7.4664E-02  3.3466E-01  1.7290E-01  1.0505E+00  7.1746E-01
             4.1065E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2123.68526351917        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      888
 NPARAMETR:  9.7586E-01  7.3892E-01  1.1624E+00  1.1715E+00  9.4034E-01  1.0568E+00  3.5552E-02  1.0068E+00  9.3422E-01  9.7089E-01
             9.7393E-01
 PARAMETER:  7.5569E-02 -2.0257E-01  2.5047E-01  2.5826E-01  3.8486E-02  1.5526E-01 -3.2368E+00  1.0673E-01  3.1956E-02  7.0455E-02
             7.3580E-02
 GRADIENT:  -2.3700E+00  4.1234E+00 -3.4609E-01  9.8384E+00 -1.3999E+00 -7.6599E-01  8.3445E-03  4.6001E-01 -1.8287E+00  5.4067E-02
            -7.8593E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2123.82593194786        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1063
 NPARAMETR:  9.7795E-01  8.2836E-01  1.1315E+00  1.1086E+00  9.6358E-01  1.0596E+00  1.5279E-02  9.9880E-01  9.8915E-01  9.9131E-01
             9.7445E-01
 PARAMETER:  7.7707E-02 -8.8304E-02  2.2354E-01  2.0314E-01  6.2905E-02  1.5793E-01 -4.0813E+00  9.8801E-02  8.9088E-02  9.1272E-02
             7.4121E-02
 GRADIENT:  -8.0517E-02 -2.0222E-01 -5.5388E-02 -2.0545E-01  7.2894E-02 -1.3816E-02  2.5636E-03  3.8900E-02  1.3024E-01  1.7135E-02
            -4.0814E-03

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2123.82949858658        NO. OF FUNC. EVALS.: 165
 CUMULATIVE NO. OF FUNC. EVALS.:     1228
 NPARAMETR:  9.7902E-01  8.3440E-01  1.1285E+00  1.1048E+00  9.6463E-01  1.0610E+00  1.0000E-02  9.9712E-01  9.9234E-01  9.9249E-01
             9.7449E-01
 PARAMETER:  7.8796E-02 -8.1047E-02  2.2085E-01  1.9964E-01  6.3989E-02  1.5920E-01 -5.1129E+00  9.7116E-02  9.2314E-02  9.2466E-02
             7.4154E-02
 GRADIENT:   1.9257E+00  1.0648E-01  3.2993E-02  9.9537E-03 -1.4978E-01  4.7395E-01  0.0000E+00 -1.4033E-02 -2.5255E-02  2.0251E-02
             3.9273E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1228
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.2081E-04 -5.7670E-04 -2.8799E-02 -2.5661E-03 -2.6332E-02
 SE:             2.9907E-02  1.9304E-04  1.5247E-02  2.9491E-02  2.3260E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8344E-01  2.8139E-03  5.8914E-02  9.3066E-01  2.5760E-01

 ETASHRINKSD(%)  1.0000E-10  9.9353E+01  4.8921E+01  1.2019E+00  2.2077E+01
 ETASHRINKVR(%)  1.0000E-10  9.9996E+01  7.3909E+01  2.3893E+00  3.9280E+01
 EBVSHRINKSD(%)  2.7859E-01  9.9414E+01  5.2037E+01  1.6549E+00  1.9845E+01
 EBVSHRINKVR(%)  5.5641E-01  9.9997E+01  7.6995E+01  3.2825E+00  3.5752E+01
 RELATIVEINF(%)  9.9090E+01  2.8438E-04  5.4852E+00  1.0302E+01  1.5070E+01
 EPSSHRINKSD(%)  3.3946E+01
 EPSSHRINKVR(%)  5.6368E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2123.8294985865787     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1204.8909653819060     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.67
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2123.829       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.79E-01  8.34E-01  1.13E+00  1.10E+00  9.65E-01  1.06E+00  1.00E-02  9.97E-01  9.92E-01  9.92E-01  9.74E-01
 


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
 #CPUT: Total CPU Time in Seconds,       17.709
Stop Time:
Fri Oct  1 13:23:48 CDT 2021
