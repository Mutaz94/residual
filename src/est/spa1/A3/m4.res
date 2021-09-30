Wed Sep 29 23:55:04 CDT 2021
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
$DATA ../../../../data/spa1/A3/dat4.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 RAW OUTPUT FILE (FILE): m4.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   301.794408808956        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.9659E+02  4.8477E+01  3.0560E+02 -7.8685E+01  2.9514E+02  1.7446E+01 -5.3896E+01 -3.9521E+02 -1.8245E+02 -1.7628E+02
            -3.8535E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1281.19797258443        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0351E+00  9.5656E-01  6.6873E-01  1.2054E+00  7.1770E-01  7.5484E-01  9.6134E-01  1.4158E+00  1.1050E+00  1.0891E+00
             6.5861E+00
 PARAMETER:  1.3450E-01  5.5584E-02 -3.0237E-01  2.8685E-01 -2.3170E-01 -1.8124E-01  6.0570E-02  4.4772E-01  1.9987E-01  1.8535E-01
             1.9850E+00
 GRADIENT:   1.5551E+01 -1.5814E+01 -1.7319E+01  1.2791E+01 -4.2208E+00 -3.8511E+01  1.0302E+01  1.7473E+01  3.0997E+01  2.8828E+01
             3.9670E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1298.02156048203        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  9.8523E-01  5.3258E-01  1.7136E-01  1.3280E+00  1.9719E-01  9.4903E-01  6.1000E-01  2.9142E+00  1.5216E+00  1.0085E+00
             4.8501E+00
 PARAMETER:  8.5120E-02 -5.3002E-01 -1.6640E+00  3.8366E-01 -1.5236E+00  4.7683E-02 -3.9430E-01  1.1696E+00  5.1979E-01  1.0842E-01
             1.6790E+00
 GRADIENT:  -3.8599E+01  1.6503E+02  5.9931E+01  1.3041E+02 -1.9954E+02 -6.9014E+00  2.4031E+00  7.8945E+01 -1.6345E+01  1.6661E+01
             2.8570E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1401.49691013605        NO. OF FUNC. EVALS.: 145
 CUMULATIVE NO. OF FUNC. EVALS.:      299
 NPARAMETR:  9.3273E-01  5.8809E-01  1.8616E-01  1.3237E+00  2.8830E-01  1.1637E+00  4.6213E-02  1.9839E+00  2.1495E+00  3.2201E-01
             4.3838E+00
 PARAMETER:  3.0358E-02 -4.3087E-01 -1.5811E+00  3.8046E-01 -1.1438E+00  2.5164E-01 -2.9745E+00  7.8505E-01  8.6524E-01 -1.0332E+00
             1.5779E+00
 GRADIENT:  -8.2967E+01 -2.3420E+00 -8.2246E+00  4.8070E+01  2.8355E+01  4.7938E+01  4.5783E-02  4.6714E+01  5.6662E+01  6.3053E+00
             3.0958E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1515.04906588132        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      474
 NPARAMETR:  9.6154E-01  4.4858E-01  1.8940E-01  1.2266E+00  2.4797E-01  1.0137E+00  9.2530E-01  1.6152E+00  1.5966E+00  2.0208E-01
             2.5303E+00
 PARAMETER:  6.0782E-02 -7.0168E-01 -1.5639E+00  3.0428E-01 -1.2945E+00  1.1360E-01  2.2363E-02  5.7948E-01  5.6789E-01 -1.4991E+00
             1.0284E+00
 GRADIENT:   7.5956E+00  5.3381E+01  4.1437E+01  4.2159E+01 -1.0911E+02  9.9711E+00  6.6394E+00  1.2757E+01 -1.4584E+01 -1.2826E+00
            -1.9798E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1521.89453111163        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      651
 NPARAMETR:  9.5496E-01  4.1159E-01  1.7048E-01  1.1512E+00  2.3959E-01  9.6300E-01  3.3744E-01  1.5076E+00  1.6996E+00  2.9801E-01
             2.6177E+00
 PARAMETER:  5.3917E-02 -7.8773E-01 -1.6691E+00  2.4084E-01 -1.3288E+00  6.2296E-02 -9.8636E-01  5.1055E-01  6.3040E-01 -1.1106E+00
             1.0623E+00
 GRADIENT:  -5.0813E+00  1.0752E-01 -3.8263E+00 -5.8614E+00  9.1760E+00 -7.1586E+00 -4.1719E-01  2.1031E+00 -2.4040E-01 -3.2537E+00
             5.1782E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1523.42204133371        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      826
 NPARAMETR:  9.5481E-01  3.7571E-01  1.4770E-01  1.1327E+00  2.1508E-01  9.7961E-01  2.6738E-01  1.3756E+00  1.7869E+00  4.7579E-01
             2.5766E+00
 PARAMETER:  5.3755E-02 -8.7894E-01 -1.8125E+00  2.2462E-01 -1.4367E+00  7.9400E-02 -1.2191E+00  4.1889E-01  6.8048E-01 -6.4277E-01
             1.0465E+00
 GRADIENT:   5.0515E-02 -3.0043E-01 -8.2380E-02 -3.3844E-01  2.4174E-01 -2.3509E-01  4.7722E-02  1.1701E-01  1.5782E-01 -9.5222E-02
             4.7830E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1523.42781682099        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1004
 NPARAMETR:  9.5477E-01  3.7589E-01  1.4763E-01  1.1332E+00  2.1504E-01  9.8027E-01  2.0817E-01  1.3739E+00  1.7875E+00  4.7954E-01
             2.5785E+00
 PARAMETER:  5.3720E-02 -8.7846E-01 -1.8131E+00  2.2501E-01 -1.4369E+00  8.0071E-02 -1.4694E+00  4.1763E-01  6.8083E-01 -6.3493E-01
             1.0472E+00
 GRADIENT:  -2.9610E-02  3.4391E-01  1.7815E-01  6.6332E-02 -3.9155E-01  8.9843E-03  1.2862E-03  3.8663E-02  1.7878E-01 -6.1502E-02
            -1.5751E-01

0ITERATION NO.:   36    OBJECTIVE VALUE:  -1523.42781682099        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1026
 NPARAMETR:  9.5477E-01  3.7589E-01  1.4763E-01  1.1332E+00  2.1504E-01  9.8027E-01  2.0817E-01  1.3739E+00  1.7875E+00  4.7954E-01
             2.5785E+00
 PARAMETER:  5.3720E-02 -8.7846E-01 -1.8131E+00  2.2501E-01 -1.4369E+00  8.0071E-02 -1.4694E+00  4.1763E-01  6.8083E-01 -6.3493E-01
             1.0472E+00
 GRADIENT:  -2.9610E-02  3.4391E-01  1.7815E-01  6.6332E-02 -3.9155E-01  8.9843E-03  1.2862E-03  3.8663E-02  1.7878E-01 -6.1502E-02
            -1.5751E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1026
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.1018E-03 -5.0262E-03  1.8426E-02 -5.6616E-03  2.4111E-02
 SE:             2.9072E-02  3.3879E-03  2.2483E-02  2.7347E-02  1.6661E-02
 N:                     100         100         100         100         100

 P VAL.:         9.1503E-01  1.3792E-01  4.1246E-01  8.3599E-01  1.4785E-01

 ETASHRINKSD(%)  2.6044E+00  8.8650E+01  2.4681E+01  8.3832E+00  4.4183E+01
 ETASHRINKVR(%)  5.1410E+00  9.8712E+01  4.3270E+01  1.6064E+01  6.8845E+01
 EBVSHRINKSD(%)  2.6815E+00  8.8415E+01  2.4654E+01  6.9458E+00  4.4815E+01
 EBVSHRINKVR(%)  5.2911E+00  9.8658E+01  4.3230E+01  1.3409E+01  6.9546E+01
 RELATIVEINF(%)  9.4521E+01  3.3222E-01  1.6818E+01  7.8013E+01  3.7761E+00
 EPSSHRINKSD(%)  3.0341E+01
 EPSSHRINKVR(%)  5.1476E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1523.4278168209880     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -604.48928361631533     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.59
 Elapsed covariance  time in seconds:     8.14
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1523.428       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.55E-01  3.76E-01  1.48E-01  1.13E+00  2.15E-01  9.80E-01  2.08E-01  1.37E+00  1.79E+00  4.80E-01  2.58E+00
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         2.95E-02  6.00E-02  3.12E-02  7.88E-02  3.19E-02  7.13E-02  8.61E-01  2.27E-01  1.90E-01  1.61E-01  2.46E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        8.71E-04
 
 TH 2
+       -1.64E-05  3.60E-03
 
 TH 3
+       -7.13E-05  1.51E-03  9.71E-04
 
 TH 4
+        3.94E-05  2.57E-03  1.26E-03  6.20E-03
 
 TH 5
+        8.97E-06  1.76E-03  9.41E-04  1.39E-03  1.01E-03
 
 TH 6
+       -3.88E-04  7.84E-04  2.70E-04  1.29E-03  3.63E-04  5.09E-03
 
 TH 7
+       -6.49E-03  3.40E-03  7.36E-03 -4.22E-03  4.25E-03 -1.43E-03  7.41E-01
 
 TH 8
+        7.88E-04  8.44E-03  3.86E-03  7.38E-03  4.79E-03  5.50E-04  4.77E-03  5.15E-02
 
 TH 9
+        1.75E-03 -2.31E-03 -2.35E-03  9.23E-04 -1.85E-03 -3.99E-04 -6.09E-02 -9.97E-03  3.60E-02
 
 TH10
+        7.27E-05 -6.61E-03 -4.41E-03 -5.20E-03 -4.31E-03 -1.09E-03 -4.88E-02 -1.80E-02  1.26E-02  2.59E-02
 
 TH11
+        3.57E-03  3.64E-03  9.08E-04  2.55E-03  1.82E-03  2.23E-03 -1.20E-01  1.24E-02  9.98E-03 -6.53E-03  6.06E-02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        2.95E-02
 
 TH 2
+       -9.26E-03  6.00E-02
 
 TH 3
+       -7.75E-02  8.07E-01  3.12E-02
 
 TH 4
+        1.70E-02  5.44E-01  5.15E-01  7.88E-02
 
 TH 5
+        9.55E-03  9.20E-01  9.48E-01  5.54E-01  3.19E-02
 
 TH 6
+       -1.85E-01  1.83E-01  1.22E-01  2.29E-01  1.60E-01  7.13E-02
 
 TH 7
+       -2.56E-01  6.58E-02  2.75E-01 -6.23E-02  1.55E-01 -2.33E-02  8.61E-01
 
 TH 8
+        1.18E-01  6.20E-01  5.46E-01  4.13E-01  6.62E-01  3.40E-02  2.44E-02  2.27E-01
 
 TH 9
+        3.13E-01 -2.03E-01 -3.97E-01  6.18E-02 -3.06E-01 -2.95E-02 -3.73E-01 -2.31E-01  1.90E-01
 
 TH10
+        1.53E-02 -6.85E-01 -8.79E-01 -4.10E-01 -8.40E-01 -9.52E-02 -3.52E-01 -4.94E-01  4.11E-01  1.61E-01
 
 TH11
+        4.92E-01  2.46E-01  1.18E-01  1.31E-01  2.32E-01  1.27E-01 -5.67E-01  2.22E-01  2.14E-01 -1.65E-01  2.46E-01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.91E+03
 
 TH 2
+        4.83E+02  2.94E+03
 
 TH 3
+        1.23E+03  3.93E+03  2.33E+04
 
 TH 4
+       -3.49E+01 -1.07E+02 -4.73E+02  2.90E+02
 
 TH 5
+       -1.86E+03 -9.58E+03 -2.74E+04  2.78E+02  4.85E+04
 
 TH 6
+        1.92E+02  4.92E+01  3.68E+02 -5.95E+01 -5.12E+02  2.40E+02
 
 TH 7
+       -1.30E+01 -9.34E+00 -3.20E+01  6.59E+00  6.22E+01 -3.87E+00  3.26E+00
 
 TH 8
+       -1.01E+01  6.84E+01  3.93E+02 -2.09E+01 -6.76E+02  1.64E+01 -7.33E-01  4.45E+01
 
 TH 9
+       -5.94E+01  5.06E-01  1.98E+02 -3.58E+01 -1.62E+02  6.61E+00  2.66E-01  1.07E+01  4.62E+01
 
 TH10
+       -1.57E+01 -1.69E+02  4.65E+02  1.49E+01  7.09E+02 -1.74E+01  1.11E+01 -7.49E+00 -1.54E+01  2.26E+02
 
 TH11
+       -1.25E+02 -2.42E+01  4.61E+01  2.20E+01  1.06E+01 -2.47E+01  7.56E+00 -1.90E+00 -4.28E+00  3.32E+01  4.40E+01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       24.815
Stop Time:
Wed Sep 29 23:55:34 CDT 2021