Fri Oct  1 05:01:40 CDT 2021
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
$DATA ../../../../data/SD1/TD1/dat37.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m37.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3394.09400274828        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2244E+02  1.1926E+02  1.1809E+02  2.0074E+01  9.7223E+01  5.5772E+01 -6.9130E+01 -5.1490E+02 -1.4870E+02 -3.7283E+01
            -1.5298E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3611.72072696664        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      107
 NPARAMETR:  9.6276E-01  7.9218E-01  8.8870E-01  1.0754E+00  7.9806E-01  1.1101E+00  1.2721E+00  2.4306E+00  1.0099E+00  1.0023E+00
             9.1548E-01
 PARAMETER:  6.2045E-02 -1.3297E-01 -1.7998E-02  1.7273E-01 -1.2557E-01  2.0449E-01  3.4065E-01  9.8814E-01  1.0986E-01  1.0227E-01
             1.1696E-02
 GRADIENT:  -8.0664E+01 -1.9944E+01  1.5794E+01 -6.4046E+01 -9.3855E+01  4.1292E+01 -3.0490E+01 -4.0823E+01 -1.0937E+01 -2.3765E+01
            -2.4629E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3663.48837436027        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:      298
 NPARAMETR:  1.0354E+00  1.0362E+00  8.9135E-01  9.8358E-01  1.1673E+00  9.4413E-01  1.3365E+00  2.6365E+00  1.1584E+00  1.2075E+00
             9.4175E-01
 PARAMETER:  1.3475E-01  1.3559E-01 -1.5018E-02  8.3448E-02  2.5469E-01  4.2510E-02  3.9007E-01  1.0695E+00  2.4708E-01  2.8853E-01
             3.9985E-02
 GRADIENT:   6.8723E+01 -4.7980E+01 -4.4697E+01  1.2410E+01  7.5551E+01 -1.6437E+01  3.3442E+01 -4.3070E+01  1.9574E+01 -9.0186E+00
            -2.0573E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3664.72204435248        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:      488             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0354E+00  1.0363E+00  8.9135E-01  9.8358E-01  1.1673E+00  9.5145E-01  1.3365E+00  2.7188E+00  1.1585E+00  1.2075E+00
             9.4172E-01
 PARAMETER:  1.3475E-01  1.3563E-01 -1.5018E-02  8.3448E-02  2.5469E-01  5.0228E-02  3.9009E-01  1.1002E+00  2.4716E-01  2.8853E-01
             3.9955E-02
 GRADIENT:   7.7285E+02  1.0607E+02 -3.6208E+01  1.1324E+02  2.0965E+02  4.4953E+01  9.2224E+01  3.1840E+01  4.5491E+01  1.5333E+01
            -2.0327E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3664.97331466872        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      666
 NPARAMETR:  1.0354E+00  1.0363E+00  8.9135E-01  9.8358E-01  1.1673E+00  9.8549E-01  1.3365E+00  2.7207E+00  1.1585E+00  1.2075E+00
             9.4176E-01
 PARAMETER:  1.3474E-01  1.3563E-01 -1.5015E-02  8.3447E-02  2.5466E-01  8.5383E-02  3.9006E-01  1.1009E+00  2.4709E-01  2.8853E-01
             4.0000E-02
 GRADIENT:   6.3458E+01 -4.7847E+01 -4.3559E+01  1.2078E+01  7.2639E+01  1.1497E+00  3.3157E+01 -3.3642E+01  2.0633E+01 -8.9040E+00
            -2.0504E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3666.07626129258        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      828
 NPARAMETR:  1.0353E+00  1.0363E+00  8.9135E-01  9.8358E-01  1.1673E+00  9.6875E-01  1.3365E+00  2.8504E+00  1.1586E+00  1.2075E+00
             9.4172E-01
 PARAMETER:  1.3474E-01  1.3563E-01 -1.5015E-02  8.3447E-02  2.5465E-01  6.8247E-02  3.9005E-01  1.1475E+00  2.4722E-01  2.8853E-01
             3.9953E-02
 GRADIENT:   6.5480E+01 -4.7598E+01 -4.1804E+01  1.1598E+01  6.8563E+01 -5.7205E+00  3.2768E+01 -2.0078E+01  2.2022E+01 -8.8000E+00
            -2.0463E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3666.37889283773        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1012
 NPARAMETR:  1.0353E+00  1.0363E+00  8.9135E-01  9.8358E-01  1.1672E+00  9.5930E-01  1.3365E+00  2.9269E+00  1.1586E+00  1.2075E+00
             9.4174E-01
 PARAMETER:  1.3473E-01  1.3563E-01 -1.5014E-02  8.3446E-02  2.5465E-01  5.8446E-02  3.9004E-01  1.1739E+00  2.4722E-01  2.8853E-01
             3.9969E-02
 GRADIENT:   6.6705E+01 -4.7460E+01 -4.0766E+01  1.1327E+01  6.6299E+01 -9.7611E+00  3.2535E+01 -1.2586E+01  2.2696E+01 -8.7444E+00
            -2.0440E+02

0ITERATION NO.:   33    OBJECTIVE VALUE:  -3666.39046994921        NO. OF FUNC. EVALS.: 100
 CUMULATIVE NO. OF FUNC. EVALS.:     1112
 NPARAMETR:  1.0353E+00  1.0363E+00  8.9135E-01  9.8358E-01  1.1672E+00  9.6026E-01  1.3365E+00  2.9262E+00  1.1586E+00  1.2075E+00
             9.4176E-01
 PARAMETER:  1.3473E-01  1.3563E-01 -1.5014E-02  8.3446E-02  2.5465E-01  5.9446E-02  3.9004E-01  1.1737E+00  2.4722E-01  2.8853E-01
             3.9991E-02
 GRADIENT:   6.3599E+01 -5.2492E+01 -2.9568E+01  3.3215E-01  6.2754E+01  1.3683E+04  2.5129E+01  1.1299E+03  2.1581E+01 -7.6459E+00
            -7.0483E+03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1112
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.6836E-02 -1.6545E-02  1.9724E-02  2.2086E-02 -1.0232E-01
 SE:             3.0491E-02  2.0562E-02  2.6225E-02  2.4962E-02  2.4423E-02
 N:                     100         100         100         100         100

 P VAL.:         3.7880E-01  4.2102E-01  4.5199E-01  3.7626E-01  2.7997E-05

 ETASHRINKSD(%)  1.0000E-10  3.1115E+01  1.2144E+01  1.6374E+01  1.8180E+01
 ETASHRINKVR(%)  1.0000E-10  5.2548E+01  2.2813E+01  3.0067E+01  3.3054E+01
 EBVSHRINKSD(%)  2.4282E-01  1.9245E+01  1.2699E+01  1.0648E+01  2.2721E+01
 EBVSHRINKVR(%)  4.8505E-01  3.4786E+01  2.3785E+01  2.0162E+01  4.0279E+01
 RELATIVEINF(%)  9.9514E+01  3.9762E+01  6.9512E+01  5.7762E+01  3.5951E+01
 EPSSHRINKSD(%)  1.7334E+01
 EPSSHRINKVR(%)  3.1663E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3666.3904699492118     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -2012.3011101808011     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    36.82
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3666.390       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  1.04E+00  8.91E-01  9.84E-01  1.17E+00  9.60E-01  1.34E+00  2.93E+00  1.16E+00  1.21E+00  9.42E-01
 


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
 #CPUT: Total CPU Time in Seconds,       36.885
Stop Time:
Fri Oct  1 05:02:18 CDT 2021