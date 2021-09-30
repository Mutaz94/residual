Wed Sep 29 20:42:27 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	One-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/28/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/spa/All/dat83.csv ignore=@
$SUBR ADVAN2 TRANS2
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK

ET1 = EXP(ETA(1)*THETA(4))
ET2 = EXP(ETA(2)*THETA(5))
ET3 = EXP(ETA(3)*THETA(6))


CL = 5.0 * THETA(1) * ET1
V = 85  * THETA(2) * ET2
KA = 0.7 * THETA(3) * ET3

SC = V
$ERROR
CVERR 	= 0.05
W  	= THETA(7)*F*CVERR
Y  	= F + W * ERR(1)
$THETA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvKA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvK
(0,1) ; RUV
$OMEGA (0.09 FIX)x3
$SIGMA  1  FIX;        [P]
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      400
 TOT. NO. OF INDIVIDUALS:      100
0LENGTH OF THETA:   7
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   3
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
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
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

 ONE COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN2)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   3
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   ELIMINATION RATE (K) IS BASIC PK PARAMETER NO.:  1
   ABSORPTION RATE (KA) IS BASIC PK PARAMETER NO.:  3

 TRANSLATOR WILL CONVERT PARAMETERS
 CLEARANCE (CL) AND VOLUME (V) TO K (TRANS2)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            4           *           *           *           *
    3            *           -           -           -           -
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
 RAW OUTPUT FILE (FILE): m83.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   18478.0138698249        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   7.8460E+02  4.9610E+02 -5.0172E+02 -1.5229E+03 -2.2613E+03 -7.2052E+02 -3.4633E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -521.939000781430        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:       59
 NPARAMETR:  1.2544E+00  1.3898E+00  2.6850E+00  1.4996E+00  6.6995E-01  1.0330E+00  1.5866E+01
 PARAMETER:  3.2669E-01  4.2914E-01  1.0877E+00  5.0517E-01 -3.0055E-01  1.3247E-01  2.8642E+00
 GRADIENT:  -4.0734E+01  1.0015E+02 -6.8558E+00  3.6241E+01 -2.9824E+00  2.1352E-01  9.0071E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -537.252481254193        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:      114
 NPARAMETR:  1.2274E+00  1.1888E+00  3.7872E+00  1.2219E+00  6.2056E-01  6.0272E+00  1.4806E+01
 PARAMETER:  3.0487E-01  2.7298E-01  1.4316E+00  3.0043E-01 -3.7714E-01  1.8963E+00  2.7951E+00
 GRADIENT:   1.9664E+01 -4.4582E+00 -9.1145E+00  5.8549E+00  9.5251E+00  3.3617E+00  7.3982E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -540.119308836398        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      166
 NPARAMETR:  1.1554E+00  1.1249E+00  5.5552E+00  1.2218E+00  6.0892E-01  1.0046E+01  1.3837E+01
 PARAMETER:  2.4444E-01  2.1767E-01  1.8147E+00  3.0035E-01 -3.9607E-01  2.4071E+00  2.7274E+00
 GRADIENT:   4.3111E+00 -1.8585E+01 -8.6150E+00  5.4053E+00  1.0340E+01  8.2657E+00  4.3374E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -542.071196744870        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:      217
 NPARAMETR:  1.1116E+00  1.0730E+00  7.5478E+00  1.1359E+00  3.4420E-01  1.2184E+01  1.3278E+01
 PARAMETER:  2.0580E-01  1.7045E-01  2.1213E+00  2.2743E-01 -9.6654E-01  2.6001E+00  2.6861E+00
 GRADIENT:   2.3574E+00 -1.7939E+00 -3.6389E+00 -3.7266E+00  9.7785E-01  5.4077E+00 -3.0119E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -542.290867300522        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:      267
 NPARAMETR:  1.1002E+00  1.0531E+00  7.8933E+00  1.1217E+00  1.9340E-01  1.1239E+01  1.3349E+01
 PARAMETER:  1.9551E-01  1.5172E-01  2.1660E+00  2.1483E-01 -1.5430E+00  2.5194E+00  2.6915E+00
 GRADIENT:   5.0804E-01 -7.3122E-01 -2.3104E+00 -4.9013E-01 -2.3795E-01  1.9193E+00 -2.7566E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -542.359147785513        NO. OF FUNC. EVALS.:  54
 CUMULATIVE NO. OF FUNC. EVALS.:      321
 NPARAMETR:  1.0922E+00  1.0403E+00  1.0308E+01  1.1092E+00  7.2988E-02  1.0878E+01  1.3369E+01
 PARAMETER:  1.8821E-01  1.3953E-01  2.4330E+00  2.0368E-01 -2.5175E+00  2.4867E+00  2.6929E+00
 GRADIENT:  -3.3730E-01 -1.5376E+00 -5.7458E-01 -3.2934E-01 -6.3276E-02 -7.0051E-01 -2.7891E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -542.692613335806        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:      379
 NPARAMETR:  1.0859E+00  1.0380E+00  8.1761E+01  1.1181E+00  1.0000E-02  1.4385E+01  1.3400E+01
 PARAMETER:  1.8238E-01  1.3729E-01  4.5038E+00  2.1162E-01 -8.2193E+00  2.7662E+00  2.6953E+00
 GRADIENT:  -1.6490E+00  5.3598E+00 -9.9881E-02  1.2113E+00  0.0000E+00 -2.6195E-02 -4.1535E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -543.491278996880        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      471
 NPARAMETR:  1.1188E+00  1.0626E+00  6.5074E+03  1.1120E+00  1.0000E-02  2.6943E+01  1.3958E+01
 PARAMETER:  2.1228E-01  1.6070E-01  8.8807E+00  2.0616E-01 -2.0182E+01  3.3937E+00  2.7361E+00
 GRADIENT:   7.2455E-01  2.5140E-01 -1.4208E-03 -7.9815E-01  0.0000E+00 -9.8022E-06 -1.5071E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -543.494083485603        NO. OF FUNC. EVALS.: 124
 CUMULATIVE NO. OF FUNC. EVALS.:      595
 NPARAMETR:  1.1188E+00  1.0632E+00  7.3432E+04  1.1157E+00  1.0000E-02  2.7244E+01  1.3978E+01
 PARAMETER:  2.1229E-01  1.6129E-01  1.1304E+01  2.0951E-01 -2.0423E+01  3.4048E+00  2.7375E+00
 GRADIENT:  -4.6607E-02  1.0481E-02 -1.2740E-04  1.2179E-01  0.0000E+00 -7.6478E-08  8.1870E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -543.494333408365        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      712
 NPARAMETR:  1.1189E+00  1.0631E+00  1.4552E+07  1.1152E+00  1.0000E-02  2.7245E+01  1.3974E+01
 PARAMETER:  2.1231E-01  1.6121E-01  1.6593E+01  2.0899E-01 -2.0423E+01  3.4049E+00  2.7372E+00
 GRADIENT:   1.2045E-01  1.0240E-01 -6.4389E-07 -2.9772E-02  0.0000E+00 -1.6695E-12 -2.8683E-01

0ITERATION NO.:   51    OBJECTIVE VALUE:  -543.494333408365        NO. OF FUNC. EVALS.:  23
 CUMULATIVE NO. OF FUNC. EVALS.:      735
 NPARAMETR:  1.1188E+00  1.0631E+00  1.7178E+07  1.1152E+00  1.0000E-02  2.7057E+01  1.3974E+01
 PARAMETER:  2.1231E-01  1.6121E-01  1.6593E+01  2.0899E-01 -2.0423E+01  3.4049E+00  2.7372E+00
 GRADIENT:   3.0258E-02  1.2393E-01 -7.3972E-07 -3.5329E-02  0.0000E+00  2.0050E-06 -1.4080E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      735
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2329E-02 -3.9112E-04  8.6952E-09
 SE:             2.7203E-02  2.8936E-04  5.4803E-09
 N:                     100         100         100

 P VAL.:         6.5040E-01  1.7648E-01  1.1260E-01

 ETASHRINKSD(%)  8.8654E+00  9.9031E+01  1.0000E+02
 ETASHRINKVR(%)  1.6945E+01  9.9991E+01  1.0000E+02
 EBVSHRINKSD(%)  9.0012E+00  9.9118E+01  1.0000E+02
 EBVSHRINKVR(%)  1.7192E+01  9.9992E+01  1.0000E+02
 RELATIVEINF(%)  7.2440E+00  5.7833E-04  0.0000E+00
 EPSSHRINKSD(%)  3.3777E+00
 EPSSHRINKVR(%)  6.6413E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -543.49433340836492     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       191.65649315537325     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:     5.84
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     1.67
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -543.494       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.12E+00  1.06E+00  1.46E+07  1.12E+00  1.00E-02  2.72E+01  1.40E+01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        5.95E+02
 
 TH 2
+       -3.33E+02  7.43E+02
 
 TH 3
+       -2.66E-12 -1.55E-12  3.33E-22
 
 TH 4
+        1.85E+01 -7.08E+01 -6.78E-13  1.08E+02
 
 TH 5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 6
+        1.46E-06 -5.19E-06 -1.38E-15  5.56E-06  0.00E+00  1.41E-11
 
 TH 7
+       -1.09E+01 -1.56E+01 -1.17E-14  2.63E+00  0.00E+00  3.91E-08  2.86E+00
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,        7.575
Stop Time:
Wed Sep 29 20:42:36 CDT 2021
