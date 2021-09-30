Wed Sep 29 18:05:35 CDT 2021
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
$DATA ../../../../data/spa/TD1/dat32.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m32.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1244.24334375049        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.3613E+02 -2.5623E+01  7.6026E+01 -2.6288E+01  6.0375E+01  7.6785E+01  9.4891E+00 -2.1221E+02  1.5366E+01  2.9978E+00
            -6.9745E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1714.49556606024        NO. OF FUNC. EVALS.: 114
 CUMULATIVE NO. OF FUNC. EVALS.:      127
 NPARAMETR:  1.1125E+00  1.0644E+00  9.5974E-01  1.0536E+00  9.5814E-01  9.6359E-01  9.5334E-01  1.1049E+00  9.0222E-01  9.0158E-01
             8.0500E-01
 PARAMETER:  2.0659E-01  1.6238E-01  5.8904E-02  1.5223E-01  5.7236E-02  6.2911E-02  5.2217E-02  1.9978E-01 -2.9000E-03 -3.6120E-03
            -1.1691E-01
 GRADIENT:   1.7717E+02  6.2069E+01  1.7153E+01  7.5030E+01  8.0671E+00  1.4307E+01 -3.9977E+00 -1.1123E+01 -9.7829E+00  6.0979E-01
            -7.2935E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1717.63961307246        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      305
 NPARAMETR:  1.1191E+00  1.0705E+00  7.9711E-01  1.0310E+00  8.7504E-01  9.2404E-01  9.4067E-01  1.0107E+00  9.5556E-01  7.2277E-01
             8.1397E-01
 PARAMETER:  2.1255E-01  1.6813E-01 -1.2676E-01  1.3056E-01 -3.3482E-02  2.1001E-02  3.8834E-02  1.1063E-01  5.4546E-02 -2.2467E-01
            -1.0584E-01
 GRADIENT:   2.0376E+02  4.2456E+01  6.4572E+00  6.8796E+01  2.2614E+01 -4.0218E+00 -5.1475E+00 -7.7514E+00  2.8480E+00 -8.3563E+00
            -6.6580E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1727.67204393663        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      483
 NPARAMETR:  1.1092E+00  1.0324E+00  5.2968E-01  9.8170E-01  6.8274E-01  9.4900E-01  1.0511E+00  7.1466E-01  8.3732E-01  5.1915E-01
             8.9628E-01
 PARAMETER:  2.0363E-01  1.3190E-01 -5.3549E-01  8.1529E-02 -2.8165E-01  4.7657E-02  1.4988E-01 -2.3595E-01 -7.7546E-02 -5.5556E-01
            -9.5063E-03
 GRADIENT:   1.6366E+02  3.8318E+01  2.8641E+01 -4.8846E+00 -4.8136E+01  9.9114E+00 -2.0530E+00 -2.1653E+00 -8.7009E+00  4.0889E-01
            -1.8037E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1735.07253482333        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      661
 NPARAMETR:  1.0385E+00  8.1149E-01  5.5860E-01  1.0997E+00  6.2447E-01  8.9904E-01  1.2907E+00  7.4409E-01  7.8504E-01  4.2982E-01
             9.3504E-01
 PARAMETER:  1.3779E-01 -1.0888E-01 -4.8231E-01  1.9508E-01 -3.7086E-01 -6.4314E-03  3.5516E-01 -1.9560E-01 -1.4202E-01 -7.4440E-01
             3.2832E-02
 GRADIENT:  -2.2783E+00  3.8742E+00  8.7129E-01  3.1743E+00 -1.0710E+00  1.3554E-01 -3.4876E-01 -3.3030E-01  8.6076E-02 -6.9480E-01
             1.1487E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1735.25307396719        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      838
 NPARAMETR:  1.0372E+00  6.6792E-01  6.3719E-01  1.1978E+00  6.2201E-01  8.9620E-01  1.5308E+00  7.8349E-01  7.3548E-01  4.8693E-01
             9.3082E-01
 PARAMETER:  1.3650E-01 -3.0359E-01 -3.5069E-01  2.8051E-01 -3.7480E-01 -9.5930E-03  5.2579E-01 -1.4400E-01 -2.0724E-01 -6.1963E-01
             2.8310E-02
 GRADIENT:  -1.4880E+00  6.4847E+00  3.1262E+00  8.5295E+00 -7.9217E+00 -1.8038E-01 -7.1047E-02 -1.9413E-01 -9.6044E-01  8.0175E-01
            -3.0398E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1735.30779315540        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1015
 NPARAMETR:  1.0363E+00  5.9638E-01  6.6629E-01  1.2380E+00  6.1879E-01  8.9570E-01  1.6771E+00  8.0397E-01  7.2220E-01  4.9678E-01
             9.3183E-01
 PARAMETER:  1.3567E-01 -4.1688E-01 -3.0604E-01  3.1347E-01 -3.7999E-01 -1.0145E-02  6.1706E-01 -1.1819E-01 -2.2546E-01 -5.9960E-01
             2.9390E-02
 GRADIENT:  -5.4900E-01  1.8219E+00  1.2938E+00  1.4992E+00 -4.2992E+00  1.8433E-01 -1.7994E-02 -1.4589E-01  8.7850E-01  8.3110E-01
             3.0580E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1735.32793796328        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1194
 NPARAMETR:  1.0374E+00  5.8599E-01  6.7138E-01  1.2421E+00  6.1992E-01  8.9536E-01  1.7020E+00  8.1596E-01  7.1651E-01  4.8601E-01
             9.3154E-01
 PARAMETER:  1.3667E-01 -4.3445E-01 -2.9842E-01  3.1683E-01 -3.7817E-01 -1.0534E-02  6.3181E-01 -1.0339E-01 -2.3336E-01 -6.2154E-01
             2.9084E-02
 GRADIENT:   2.8983E+00 -5.8687E-01 -1.1460E+00 -1.9493E+00  1.7552E+00  1.2694E-01 -1.8768E-01 -3.3321E-01 -8.9037E-02 -1.2536E-02
            -1.0285E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1735.33011659037        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     1360
 NPARAMETR:  1.0374E+00  5.8610E-01  6.7227E-01  1.2416E+00  6.1957E-01  8.9535E-01  1.7065E+00  8.2233E-01  7.1685E-01  4.8449E-01
             9.3170E-01
 PARAMETER:  1.3671E-01 -4.3427E-01 -2.9710E-01  3.1643E-01 -3.7872E-01 -1.0545E-02  6.3442E-01 -9.5618E-02 -2.3289E-01 -6.2466E-01
             2.9252E-02
 GRADIENT:   3.0552E+00  1.0273E-01  1.0025E+00 -4.3806E+00 -1.9989E+00  1.3010E-01  2.5329E-01  3.7821E-02  1.3065E-01  2.0384E-01
             8.1182E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1360
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.9344E-04  2.2766E-02 -3.0183E-02 -1.8746E-02 -8.2561E-03
 SE:             2.9864E-02  2.0817E-02  1.8237E-02  2.5027E-02  1.5638E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7880E-01  2.7412E-01  9.7925E-02  4.5383E-01  5.9753E-01

 ETASHRINKSD(%)  1.0000E-10  3.0260E+01  3.8903E+01  1.6157E+01  4.7611E+01
 ETASHRINKVR(%)  1.0000E-10  5.1363E+01  6.2671E+01  2.9704E+01  7.2554E+01
 EBVSHRINKSD(%)  4.6322E-01  3.1618E+01  3.8776E+01  1.5700E+01  4.6605E+01
 EBVSHRINKVR(%)  9.2429E-01  5.3240E+01  6.2516E+01  2.8935E+01  7.1490E+01
 RELATIVEINF(%)  9.8365E+01  5.9113E+00  2.8069E+00  1.1907E+01  2.0635E+00
 EPSSHRINKSD(%)  4.5637E+01
 EPSSHRINKVR(%)  7.0446E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1735.3301165903654     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1000.1792900266272     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.88
 Elapsed covariance  time in seconds:     5.94
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1735.330       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  5.86E-01  6.72E-01  1.24E+00  6.20E-01  8.95E-01  1.71E+00  8.22E-01  7.17E-01  4.84E-01  9.32E-01
 


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
 
         2.80E-02  1.80E-01  1.38E-01  1.11E-01  8.61E-02  7.23E-02  4.30E-01  2.30E-01  7.66E-02  1.63E-01  8.02E-02
 


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
+        7.82E-04
 
 TH 2
+        3.56E-04  3.25E-02
 
 TH 3
+        1.27E-04 -6.18E-03  1.92E-02
 
 TH 4
+       -1.10E-04 -1.84E-02  7.30E-03  1.22E-02
 
 TH 5
+        2.25E-04  5.58E-03  9.46E-03 -1.01E-03  7.41E-03
 
 TH 6
+        1.11E-04  8.68E-04  2.32E-04 -5.69E-04  4.57E-04  5.23E-03
 
 TH 7
+       -1.06E-03 -7.03E-02  1.77E-02  4.12E-02 -9.76E-03 -8.10E-04  1.85E-01
 
 TH 8
+       -1.68E-04 -7.95E-03  1.84E-02  8.03E-03  7.65E-03 -7.25E-04  2.13E-02  5.27E-02
 
 TH 9
+        2.02E-04  8.95E-03 -2.14E-03 -5.39E-03  1.33E-03  3.48E-04 -2.07E-02 -3.36E-03  5.87E-03
 
 TH10
+        9.20E-04  1.53E-03  1.33E-02  2.39E-03  8.87E-03  1.15E-03 -1.72E-03 -2.27E-03  9.80E-05  2.67E-02
 
 TH11
+        4.12E-04  3.15E-03 -5.45E-04 -1.66E-03  7.39E-04  2.28E-04 -6.59E-03 -2.56E-03  9.62E-04 -4.74E-04  6.43E-03
 
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
+        2.80E-02
 
 TH 2
+        7.06E-02  1.80E-01
 
 TH 3
+        3.29E-02 -2.47E-01  1.38E-01
 
 TH 4
+       -3.57E-02 -9.22E-01  4.77E-01  1.11E-01
 
 TH 5
+        9.34E-02  3.59E-01  7.93E-01 -1.06E-01  8.61E-02
 
 TH 6
+        5.48E-02  6.66E-02  2.32E-02 -7.12E-02  7.35E-02  7.23E-02
 
 TH 7
+       -8.79E-02 -9.06E-01  2.97E-01  8.66E-01 -2.63E-01 -2.61E-02  4.30E-01
 
 TH 8
+       -2.62E-02 -1.92E-01  5.79E-01  3.16E-01  3.87E-01 -4.37E-02  2.16E-01  2.30E-01
 
 TH 9
+        9.41E-02  6.47E-01 -2.02E-01 -6.35E-01  2.02E-01  6.28E-02 -6.29E-01 -1.91E-01  7.66E-02
 
 TH10
+        2.02E-01  5.18E-02  5.90E-01  1.32E-01  6.31E-01  9.77E-02 -2.45E-02 -6.07E-02  7.83E-03  1.63E-01
 
 TH11
+        1.84E-01  2.18E-01 -4.91E-02 -1.87E-01  1.07E-01  3.93E-02 -1.91E-01 -1.39E-01  1.57E-01 -3.62E-02  8.02E-02
 
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
+        1.45E+03
 
 TH 2
+        3.68E+01  5.90E+02
 
 TH 3
+        1.47E+02  3.96E+02  1.53E+03
 
 TH 4
+       -4.60E+01  4.09E+02 -3.65E+02  1.04E+03
 
 TH 5
+       -6.39E+01 -7.94E+02 -2.17E+03  3.43E+02  3.69E+03
 
 TH 6
+       -1.60E+01  6.23E+00  7.54E+00  3.74E+01 -1.66E+01  1.98E+02
 
 TH 7
+        9.41E+00  5.26E+01 -1.78E+01 -1.78E+01  1.25E+01 -7.73E+00  3.28E+01
 
 TH 8
+       -4.18E+01 -1.98E+01 -9.85E+01 -1.24E+01  2.97E+01 -2.67E-01  2.65E+00  5.06E+01
 
 TH 9
+       -5.02E+01 -2.42E+01 -1.85E+01  5.89E+01 -1.66E+01 -6.34E+00  1.15E+01  1.16E+01  3.07E+02
 
 TH10
+       -1.04E+02 -4.64E+00 -4.98E+01 -5.16E+01 -1.26E+02 -1.05E+01  5.61E+00  4.80E+01  1.35E+01  1.18E+02
 
 TH11
+       -1.10E+02 -1.19E+01  2.19E+01 -3.59E+01 -1.08E+02 -4.69E+00 -3.21E-01  2.21E+01  2.32E+00  3.79E+01  1.84E+02
 
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
 #CPUT: Total CPU Time in Seconds,       22.899
Stop Time:
Wed Sep 29 18:06:00 CDT 2021
