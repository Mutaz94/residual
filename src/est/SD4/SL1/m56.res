Sat Oct  2 02:16:03 CDT 2021
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
$DATA ../../../../data/SD4/SL1/dat56.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m56.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1653.53066929372        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0086E+02 -3.0572E+01 -8.5372E+00 -2.5578E+01 -2.1023E+01  4.6960E+01 -1.5834E+01  1.2642E+01 -5.7926E+00  8.7729E+00
            -1.3696E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1659.61120812240        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      192
 NPARAMETR:  1.0134E+00  1.1538E+00  1.2227E+00  9.7371E-01  1.2533E+00  1.0322E+00  1.3046E+00  8.5160E-01  1.0424E+00  9.9442E-01
             1.0784E+00
 PARAMETER:  1.1330E-01  2.4302E-01  3.0109E-01  7.3354E-02  3.2577E-01  1.3170E-01  3.6589E-01 -6.0633E-02  1.4153E-01  9.4408E-02
             1.7552E-01
 GRADIENT:   1.3815E+01 -7.3936E+00  9.7052E-01  2.2890E+00  6.0085E+01  3.5536E+00  8.3360E+00 -5.4536E+00  8.7456E+00 -2.3496E+01
             8.4916E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1663.06641779195        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      372
 NPARAMETR:  1.0038E+00  7.9073E-01  9.8923E-01  1.2153E+00  9.3284E-01  1.0101E+00  1.7277E+00  3.5642E-01  8.6651E-01  8.7668E-01
             1.0299E+00
 PARAMETER:  1.0376E-01 -1.3480E-01  8.9175E-02  2.9503E-01  3.0479E-02  1.1006E-01  6.4679E-01 -9.3164E-01 -4.3282E-02 -3.1616E-02
             1.2944E-01
 GRADIENT:  -4.0749E+00  1.2420E+01 -5.3903E+00  5.9405E+01  3.2232E+01 -4.6985E+00  1.8715E+00 -2.4583E+00  9.6619E+00 -1.0628E+01
            -8.5213E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1665.19974726149        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      552
 NPARAMETR:  1.0074E+00  8.5555E-01  8.8214E-01  1.1374E+00  8.8423E-01  1.0255E+00  1.5970E+00  3.2796E-01  8.3404E-01  8.5807E-01
             1.0366E+00
 PARAMETER:  1.0737E-01 -5.6013E-02 -2.5402E-02  2.2874E-01 -2.3037E-02  1.2515E-01  5.6815E-01 -1.0149E+00 -8.1476E-02 -5.3075E-02
             1.3598E-01
 GRADIENT:   3.9011E-01  3.4587E+00  2.3316E+00  2.2776E+00 -5.7971E+00  8.7331E-01 -7.1641E-01  1.3018E-01  2.6749E-01  4.4201E-01
            -3.5429E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1665.24213252690        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      731
 NPARAMETR:  1.0072E+00  7.9376E-01  8.8848E-01  1.1699E+00  8.6709E-01  1.0228E+00  1.7010E+00  3.2134E-01  8.1128E-01  8.5434E-01
             1.0387E+00
 PARAMETER:  1.0713E-01 -1.3097E-01 -1.8246E-02  2.5688E-01 -4.2608E-02  1.2258E-01  6.3120E-01 -1.0353E+00 -1.0915E-01 -5.7425E-02
             1.3801E-01
 GRADIENT:   9.9866E-01 -3.1629E-01 -1.4319E+00 -8.0312E-01  7.6580E-01  1.1503E-01  1.6299E-01  3.7366E-02  1.1573E-01  5.1018E-01
             3.8581E-01

0ITERATION NO.:   24    OBJECTIVE VALUE:  -1665.24342744621        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:      860
 NPARAMETR:  1.0069E+00  7.9300E-01  8.8988E-01  1.1707E+00  8.6687E-01  1.0227E+00  1.7002E+00  3.2593E-01  8.1129E-01  8.5143E-01
             1.0382E+00
 PARAMETER:  1.0684E-01 -1.3194E-01 -1.6665E-02  2.5761E-01 -4.2862E-02  1.2243E-01  6.3077E-01 -1.0211E+00 -1.0913E-01 -6.0836E-02
             1.3751E-01
 GRADIENT:  -5.6485E-01  5.8497E-02 -4.3543E-01  8.4607E-01 -1.3026E-01 -1.8050E-01 -2.6695E-01  3.7249E-03  3.6858E-02  1.3761E-02
             6.5891E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      860
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.7887E-04  1.3443E-02 -1.5006E-02 -1.6965E-02 -1.0189E-02
 SE:             2.9869E-02  2.1943E-02  6.4625E-03  2.3426E-02  2.1741E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8187E-01  5.4012E-01  2.0232E-02  4.6895E-01  6.3931E-01

 ETASHRINKSD(%)  1.0000E-10  2.6490E+01  7.8350E+01  2.1521E+01  2.7165E+01
 ETASHRINKVR(%)  1.0000E-10  4.5962E+01  9.5313E+01  3.8410E+01  4.6950E+01
 EBVSHRINKSD(%)  4.3746E-01  2.6632E+01  8.0077E+01  2.1401E+01  2.5164E+01
 EBVSHRINKVR(%)  8.7300E-01  4.6172E+01  9.6031E+01  3.8221E+01  4.3995E+01
 RELATIVEINF(%)  9.8652E+01  5.8394E+00  5.4755E-01  7.4782E+00  5.9904E+00
 EPSSHRINKSD(%)  4.2917E+01
 EPSSHRINKVR(%)  6.7415E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1665.2434274462114     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -930.09260088247322     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.31
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1665.243       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  7.93E-01  8.90E-01  1.17E+00  8.67E-01  1.02E+00  1.70E+00  3.26E-01  8.11E-01  8.51E-01  1.04E+00
 


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
 #CPUT: Total CPU Time in Seconds,       11.348
Stop Time:
Sat Oct  2 02:16:16 CDT 2021