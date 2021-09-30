Wed Sep 29 10:45:24 CDT 2021
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
$DATA ../../../../data/int/All/dat77.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m77.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   36416.8662158514        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   7.1330E+02  3.5760E+02 -1.6456E+03 -1.4124E+03 -2.5309E+03 -1.7456E+03 -7.2849E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -885.476537134932        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:       61
 NPARAMETR:  1.3532E+00  4.2655E+00  7.6704E+00  4.9833E+00  6.1897E+00  2.0085E+00  1.0435E+01
 PARAMETER:  4.0247E-01  1.5506E+00  2.1374E+00  1.7061E+00  1.9229E+00  7.9739E-01  2.4451E+00
 GRADIENT:   2.3981E+01  1.1966E+02  3.0529E+01  1.9304E+02  2.6031E+02  1.9661E+01  1.6366E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -945.285632652845        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.4036E+00  4.2427E+00  1.4339E+01  2.5815E+00  4.6164E+00  4.0380E+00  1.0299E+01
 PARAMETER:  4.3902E-01  1.5452E+00  2.7630E+00  1.0484E+00  1.6296E+00  1.4958E+00  2.4321E+00
 GRADIENT:   4.2973E+01  9.2698E+01 -5.2219E+00  3.3925E+01  1.4445E+01  3.7150E-01  4.2113E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -995.141949887886        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:      284
 NPARAMETR:  1.3982E+00  1.4724E+00  3.1127E+01  2.2013E+00  2.6442E+00  3.2660E+00  1.0079E+01
 PARAMETER:  4.3520E-01  4.8687E-01  3.5381E+00  8.8904E-01  1.0724E+00  1.2836E+00  2.4105E+00
 GRADIENT:   4.8675E+01 -4.0119E+01  1.9995E-01 -3.9589E+01 -1.0427E+02 -4.6746E-03  3.7298E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1014.43133649028        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      402            RESET HESSIAN, TYPE II
 NPARAMETR:  1.2283E+00  1.6649E+00  1.8215E+01  2.4774E+00  3.3200E+00  3.3961E+00  9.8461E+00
 PARAMETER:  3.0560E-01  6.0975E-01  3.0023E+00  1.0072E+00  1.3000E+00  1.3226E+00  2.3871E+00
 GRADIENT:   1.5659E+01  2.7556E+01  2.6143E+00  3.3862E+01  5.3677E+01  1.1212E-01  5.7203E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1048.61441717817        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      454
 NPARAMETR:  8.7837E-01  1.6501E+00  2.9138E+00  2.4251E+00  2.9730E+00  2.6033E+00  9.5800E+00
 PARAMETER: -2.9685E-02  6.0081E-01  1.1695E+00  9.8585E-01  1.1896E+00  1.0568E+00  2.3597E+00
 GRADIENT:  -1.0016E+02  4.2744E+01  1.3022E+01  2.3191E+01  9.2811E-01  7.7027E+01  1.3803E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1051.37478256178        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:      504
 NPARAMETR:  8.9952E-01  1.4177E+00  2.8417E+00  2.2589E+00  2.8424E+00  2.5347E+00  9.1723E+00
 PARAMETER: -5.8943E-03  4.4904E-01  1.1444E+00  9.1487E-01  1.1446E+00  1.0301E+00  2.3162E+00
 GRADIENT:  -9.9728E+01  3.1119E+00  1.4226E+01  1.1641E+00 -2.5179E+01  7.5397E+01  7.3021E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1060.47022962866        NO. OF FUNC. EVALS.:  54
 CUMULATIVE NO. OF FUNC. EVALS.:      558
 NPARAMETR:  1.1049E+00  1.3293E+00  2.4458E+00  1.9264E+00  2.6030E+00  2.1134E+00  8.9876E+00
 PARAMETER:  1.9974E-01  3.8469E-01  9.9439E-01  7.5566E-01  1.0567E+00  8.4830E-01  2.2958E+00
 GRADIENT:  -1.8079E+01 -1.7710E+01 -8.1231E+00 -4.4710E+01 -7.8051E+01  5.9164E+01  9.8953E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1070.71900320573        NO. OF FUNC. EVALS.:  66
 CUMULATIVE NO. OF FUNC. EVALS.:      624
 NPARAMETR:  1.1373E+00  1.3413E+00  2.4167E+00  1.9415E+00  2.6346E+00  1.8289E+00  8.9964E+00
 PARAMETER:  2.2864E-01  3.9363E-01  9.8239E-01  7.6345E-01  1.0687E+00  7.0374E-01  2.2968E+00
 GRADIENT:  -1.5303E+01 -3.5742E+01 -1.4168E+01 -6.1061E+01 -1.1819E+02  4.4464E+01 -3.4378E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1110.07287343982        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      741
 NPARAMETR:  1.1970E+00  1.5308E+00  2.6275E+00  2.4671E+00  3.3949E+00  6.2404E-01  9.1524E+00
 PARAMETER:  2.7984E-01  5.2579E-01  1.0660E+00  1.0030E+00  1.3223E+00 -3.7154E-01  2.3140E+00
 GRADIENT:  -1.1618E+00  2.3708E+00  4.4882E+00  6.4685E-01  5.3523E+00  2.9584E+00  6.2417E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1111.15893115573        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      856
 NPARAMETR:  1.1996E+00  1.5114E+00  2.6370E+00  2.4690E+00  3.3618E+00  1.6384E-01  9.1498E+00
 PARAMETER:  2.8195E-01  5.1301E-01  1.0696E+00  1.0038E+00  1.3125E+00 -1.7089E+00  2.3137E+00
 GRADIENT:   1.9152E-01  4.2305E-01  5.1638E-01  7.5601E-01  1.2089E+00  1.0038E-01  1.1159E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1111.19708916773        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      972
 NPARAMETR:  1.1992E+00  1.5072E+00  2.6371E+00  2.4631E+00  3.3507E+00  3.0053E-02  9.1465E+00
 PARAMETER:  2.8169E-01  5.1025E-01  1.0697E+00  1.0014E+00  1.3092E+00 -3.4048E+00  2.3134E+00
 GRADIENT:   1.9458E-01 -3.5426E-02  5.6988E-02 -9.0548E-02 -9.4610E-02  3.0349E-03 -5.7707E-02

0ITERATION NO.:   59    OBJECTIVE VALUE:  -1111.20941145769        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:     1068
 NPARAMETR:  1.1971E+00  1.5061E+00  2.6357E+00  2.4721E+00  3.3637E+00  1.0000E-02  9.1407E+00
 PARAMETER:  2.8277E-01  5.0900E-01  1.0695E+00  1.0092E+00  1.3178E+00 -4.7073E+00  2.3130E+00
 GRADIENT:   4.3682E-01 -5.0197E-02  6.9150E-02  6.7374E-01  8.3373E-01  0.0000E+00  2.7990E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1068
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.2925E-03 -5.3759E-03 -8.9932E-05
 SE:             2.8786E-02  2.9640E-02  1.3045E-04
 N:                     100         100         100

 P VAL.:         8.5413E-01  8.5608E-01  4.9058E-01

 ETASHRINKSD(%)  3.5619E+00  7.0225E-01  9.9563E+01
 ETASHRINKVR(%)  6.9970E+00  1.3996E+00  9.9998E+01
 EBVSHRINKSD(%)  4.0887E+00  1.2240E+00  9.9539E+01
 EBVSHRINKVR(%)  8.0103E+00  2.4330E+00  9.9998E+01
 RELATIVEINF(%)  9.1890E+01  9.6538E+01  2.0978E-03
 EPSSHRINKSD(%)  7.8853E+00
 EPSSHRINKVR(%)  1.5149E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1111.2094114576867     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       542.87994831072410     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:    20.44
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     3.98
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1111.209       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.20E+00  1.51E+00  2.64E+00  2.48E+00  3.38E+00  1.00E-02  9.14E+00
 


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
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        1.32E+02
 
 TH 2
+       -3.87E+00  1.58E+01
 
 TH 3
+        6.88E+00 -4.40E+00  2.87E+01
 
 TH 4
+       -1.64E+01 -8.56E+00  1.70E+00  2.45E+01
 
 TH 5
+       -9.82E+00  6.32E+00  1.04E+00 -1.65E-01  3.73E+00
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -4.79E+00 -8.70E-01 -2.47E-01  1.62E+00  1.37E-01  0.00E+00  7.11E-01
 
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
+        1.13E+02
 
 TH 2
+       -8.72E-01  4.16E+01
 
 TH 3
+       -1.36E+00 -3.79E+00  2.95E+01
 
 TH 4
+       -4.97E-01  7.53E-02  1.95E-01  2.77E+01
 
 TH 5
+        7.90E-01  2.70E-01  1.63E-01 -4.53E-01  1.63E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -4.96E+00 -2.66E+00 -1.27E-01  8.93E-01  7.37E-01  0.00E+00  1.15E+01
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        1.15E+02
 
 TH 2
+        4.68E+01  4.17E+01
 
 TH 3
+       -1.12E+01 -7.83E+00  3.14E+01
 
 TH 4
+        2.95E+01  1.22E+01 -4.41E+00  3.83E+01
 
 TH 5
+        6.03E+00  2.35E+01 -2.87E+00  9.09E+00  3.30E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -3.41E+01 -2.67E+01 -1.52E+00  8.54E-01  1.63E+01  0.00E+00  2.75E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.02
 #CPUT: Total CPU Time in Seconds,       24.533
Stop Time:
Wed Sep 29 10:45:50 CDT 2021
