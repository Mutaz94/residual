Fri Oct  1 09:58:24 CDT 2021
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
$DATA ../../../../data/SD2/A2/dat43.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m43.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1029.67226575496        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4718E+02  8.9409E+01  7.8978E+01  6.7624E+01  1.6648E+02  3.9479E+01 -4.5419E+01 -2.3995E+01 -1.1680E+01 -1.3311E+02
            -1.8691E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1640.59487885285        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.8627E-01  8.6159E-01  8.7162E-01  1.0928E+00  8.1149E-01  1.0052E+00  8.8342E-01  7.4172E-01  8.1080E-01  1.0479E+00
             1.9226E+00
 PARAMETER:  8.6173E-02 -4.8979E-02 -3.7402E-02  1.8876E-01 -1.0888E-01  1.0516E-01 -2.3949E-02 -1.9878E-01 -1.0973E-01  1.4683E-01
             7.5368E-01
 GRADIENT:   1.0663E+02  3.7531E+01  3.4327E+01  2.2720E+01  9.3571E-01  1.8697E+01 -1.2586E+01  5.8968E+00 -2.6891E+01 -8.1818E+00
            -2.7827E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1652.03049495180        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:      183
 NPARAMETR:  9.8157E-01  4.9004E-01  4.8246E-01  1.4034E+00  4.6602E-01  1.0353E+00  6.4769E-01  1.9358E-01  8.6388E-01  7.8296E-01
             1.8860E+00
 PARAMETER:  8.1397E-02 -6.1327E-01 -6.2885E-01  4.3890E-01 -6.6353E-01  1.3472E-01 -3.3435E-01 -1.5421E+00 -4.6318E-02 -1.4467E-01
             7.3446E-01
 GRADIENT:  -1.8453E+01  9.2053E+01 -3.0534E+01  3.8916E+02  3.2235E+01  1.3187E+01 -8.8923E+00  8.3196E-01 -7.4458E+01 -7.4102E+00
            -2.3334E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1701.75926623852        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      359
 NPARAMETR:  1.0047E+00  5.9354E-01  2.9159E-01  1.1776E+00  3.5311E-01  9.1788E-01  1.2913E+00  1.0000E-02  7.8473E-01  4.7619E-01
             2.4077E+00
 PARAMETER:  1.0470E-01 -4.2165E-01 -1.1324E+00  2.6352E-01 -9.4097E-01  1.4306E-02  3.5564E-01 -8.2322E+00 -1.4241E-01 -6.4194E-01
             9.7868E-01
 GRADIENT:   8.5337E+00  9.7882E+01 -2.9743E+01  1.8844E+02 -4.2654E+01 -3.4282E+01  3.2877E+00  0.0000E+00 -3.8322E+01  6.7802E+00
             1.7089E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1725.03964192351        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      537
 NPARAMETR:  9.9238E-01  3.4418E-01  3.2511E-01  1.2136E+00  3.2239E-01  9.8261E-01  1.7934E+00  1.0000E-02  8.3764E-01  5.1166E-01
             2.3482E+00
 PARAMETER:  9.2349E-02 -9.6658E-01 -1.0236E+00  2.9362E-01 -1.0320E+00  8.2455E-02  6.8410E-01 -9.9997E+00 -7.7173E-02 -5.7009E-01
             9.5366E-01
 GRADIENT:  -2.6962E+00  2.7169E+01  4.6483E+01  4.0783E+01 -6.9879E+01 -3.2509E+00 -9.1740E-01  0.0000E+00 -6.8075E+00  4.5496E+00
             2.4338E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1729.83653637189        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      712
 NPARAMETR:  9.8969E-01  2.5630E-01  2.8195E-01  1.1761E+00  2.8746E-01  9.9489E-01  2.0828E+00  1.0000E-02  8.9576E-01  4.6649E-01
             2.2668E+00
 PARAMETER:  8.9637E-02 -1.2614E+00 -1.1660E+00  2.6220E-01 -1.1467E+00  9.4875E-02  8.3370E-01 -1.2086E+01 -1.0087E-02 -6.6252E-01
             9.1835E-01
 GRADIENT:   3.5461E-03  2.1693E+00  4.6173E+00 -5.0882E+00 -6.6319E+00  1.8163E+00  3.1867E-02  0.0000E+00  1.9338E+00  2.7868E-01
            -5.0966E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1731.72281746948        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      893
 NPARAMETR:  9.8350E-01  1.4903E-01  3.0813E-01  1.2415E+00  2.9363E-01  9.7066E-01  3.1486E+00  1.0000E-02  8.1902E-01  4.8982E-01
             2.2967E+00
 PARAMETER:  8.3358E-02 -1.8036E+00 -1.0772E+00  3.1628E-01 -1.1254E+00  7.0216E-02  1.2470E+00 -1.4563E+01 -9.9641E-02 -6.1371E-01
             9.3147E-01
 GRADIENT:   8.5360E-01  4.8665E-01 -1.1192E+00  7.4399E+00 -5.4886E+00 -5.7351E+00 -2.5650E+00  0.0000E+00 -8.7764E+00  2.8200E+00
             2.4194E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1732.04523713358        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:     1057
 NPARAMETR:  9.8209E-01  1.3818E-01  3.1085E-01  1.2441E+00  2.9441E-01  9.8488E-01  3.3674E+00  1.0000E-02  8.4184E-01  4.7659E-01
             2.2963E+00
 PARAMETER:  8.1929E-02 -1.8792E+00 -1.0685E+00  3.1839E-01 -1.1228E+00  8.4760E-02  1.3141E+00 -1.4996E+01 -7.2168E-02 -6.4110E-01
             9.3131E-01
 GRADIENT:   1.4637E-01  5.4615E-01  3.8907E+00 -1.1260E+00 -4.3122E+00  4.1041E-02  1.1914E-01  0.0000E+00 -7.2755E-02 -3.5442E-01
            -4.1246E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1057
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.9133E-03  3.9792E-02 -1.5519E-04 -1.9603E-02  1.3909E-02
 SE:             2.9338E-02  1.4969E-02  2.7889E-04  2.6929E-02  1.8115E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4800E-01  7.8535E-03  5.7790E-01  4.6664E-01  4.4259E-01

 ETASHRINKSD(%)  1.7138E+00  4.9852E+01  9.9066E+01  9.7855E+00  3.9313E+01
 ETASHRINKVR(%)  3.3983E+00  7.4852E+01  9.9991E+01  1.8613E+01  6.3171E+01
 EBVSHRINKSD(%)  1.6382E+00  6.2015E+01  9.9023E+01  8.9896E+00  3.5590E+01
 EBVSHRINKVR(%)  3.2495E+00  8.5571E+01  9.9990E+01  1.7171E+01  5.8513E+01
 RELATIVEINF(%)  9.5378E+01  6.8259E+00  4.5179E-04  2.8228E+01  1.9400E+00
 EPSSHRINKSD(%)  2.6872E+01
 EPSSHRINKVR(%)  4.6522E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1732.0452371335771     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -813.10670392890438     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.95
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1732.045       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.82E-01  1.38E-01  3.11E-01  1.24E+00  2.94E-01  9.85E-01  3.37E+00  1.00E-02  8.42E-01  4.77E-01  2.30E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.999
Stop Time:
Fri Oct  1 09:58:43 CDT 2021