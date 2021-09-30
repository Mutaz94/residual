Wed Sep 29 20:37:04 CDT 2021
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
$DATA ../../../../data/spa/All/dat53.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m53.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   13396.6205079708        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   6.2552E+02  1.7755E+02 -4.6857E+02 -9.4196E+02 -1.9573E+03 -6.0364E+02 -2.5575E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -548.745096870474        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:       59
 NPARAMETR:  1.2362E+00  1.7048E+00  1.9899E+00  1.8822E+00  1.1321E+00  1.1186E+00  1.5003E+01
 PARAMETER:  3.1207E-01  6.3342E-01  7.8810E-01  7.3244E-01  2.2404E-01  2.1211E-01  2.8083E+00
 GRADIENT:  -5.4184E+01  1.3686E+02 -1.9197E+01  4.0276E+01 -5.1065E+00  1.0249E+00  1.4702E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -578.714299039096        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      111
 NPARAMETR:  1.2272E+00  1.3647E+00  2.9544E+00  1.4888E+00  1.1005E+00  4.1438E+00  1.3892E+01
 PARAMETER:  3.0472E-01  4.1091E-01  1.1833E+00  4.9799E-01  1.9573E-01  1.5216E+00  2.7313E+00
 GRADIENT:  -1.1977E+01  1.4621E+01 -1.8074E+01  5.7647E+00  2.9686E+01  7.1582E+00  1.4818E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -601.535720715449        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:      162
 NPARAMETR:  1.0711E+00  1.1123E+00  1.2300E+01  1.2859E+00  5.2524E-01  1.1392E+01  1.1404E+01
 PARAMETER:  1.6865E-01  2.0644E-01  2.6096E+00  3.5145E-01 -5.4390E-01  2.5329E+00  2.5340E+00
 GRADIENT:  -2.0005E+00 -5.4042E-01 -3.7074E-01 -1.8054E+00  7.1702E-01 -6.8633E-01  5.3207E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -601.563760596796        NO. OF FUNC. EVALS.:  64
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  1.0678E+00  1.1042E+00  1.4147E+01  1.2813E+00  4.6932E-01  1.2959E+01  1.1425E+01
 PARAMETER:  1.6559E-01  1.9909E-01  2.7495E+00  3.4789E-01 -6.5646E-01  2.6618E+00  2.5358E+00
 GRADIENT:  -1.0162E+01 -5.7057E+00 -4.4975E-01 -4.7654E+00 -1.2413E+00 -5.1909E-01 -2.3446E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -602.297943650029        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      345
 NPARAMETR:  1.0981E+00  1.1346E+00  1.3981E+01  1.3225E+00  5.0859E-01  1.3213E+01  1.1727E+01
 PARAMETER:  1.9356E-01  2.2631E-01  2.7377E+00  3.7953E-01 -5.7611E-01  2.6812E+00  2.5619E+00
 GRADIENT:   2.6831E+00 -3.0338E+00 -2.1461E+00 -1.4923E+00 -1.0878E+00  4.0871E+00 -5.7284E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -602.410995580968        NO. OF FUNC. EVALS.: 120
 CUMULATIVE NO. OF FUNC. EVALS.:      465             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1074E+00  1.1519E+00  1.5263E+01  1.3415E+00  5.6401E-01  1.3453E+01  1.1765E+01
 PARAMETER:  2.0201E-01  2.4137E-01  2.8254E+00  3.9380E-01 -4.7269E-01  2.6992E+00  2.5651E+00
 GRADIENT:   1.2725E+01  8.2472E+00 -1.2086E-01  6.5141E+00  2.8246E-01 -3.0336E-01  2.1162E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -602.426126689431        NO. OF FUNC. EVALS.: 121
 CUMULATIVE NO. OF FUNC. EVALS.:      586
 NPARAMETR:  1.1072E+00  1.1518E+00  1.6935E+01  1.3371E+00  5.6630E-01  1.3374E+01  1.1754E+01
 PARAMETER:  2.0179E-01  2.4133E-01  2.9294E+00  3.9047E-01 -4.6862E-01  2.6933E+00  2.5642E+00
 GRADIENT:   8.0444E-01  1.7839E+00 -6.4676E-02  2.7686E-01 -6.3687E-02 -7.4739E-01 -3.6358E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -602.498272622023        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      703
 NPARAMETR:  1.1110E+00  1.1529E+00  2.3641E+01  1.3336E+00  5.5451E-01  1.5655E+01  1.1863E+01
 PARAMETER:  2.0529E-01  2.4228E-01  3.2630E+00  3.8791E-01 -4.8967E-01  2.8508E+00  2.5735E+00
 GRADIENT:   3.0524E+00  1.8384E+00  1.5579E-01  3.3884E-01 -1.1685E-01 -7.7171E-01  5.3113E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -602.566761690810        NO. OF FUNC. EVALS.: 106
 CUMULATIVE NO. OF FUNC. EVALS.:      809
 NPARAMETR:  1.1041E+00  1.1514E+00  2.6612E+01  1.3318E+00  5.7078E-01  1.6811E+01  1.1765E+01
 PARAMETER:  1.9906E-01  2.4098E-01  3.3814E+00  3.8656E-01 -4.6075E-01  2.9220E+00  2.5651E+00
 GRADIENT:   1.0527E+01  1.0587E+01  3.0846E-01  3.9558E+00  7.9036E-01 -1.0318E-02  2.1347E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -602.589153162270        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      924
 NPARAMETR:  1.1006E+00  1.1430E+00  2.7306E+01  1.3281E+00  5.4847E-01  1.7159E+01  1.1760E+01
 PARAMETER:  1.9586E-01  2.3364E-01  3.4071E+00  3.8373E-01 -5.0062E-01  2.9425E+00  2.5647E+00
 GRADIENT:  -5.3066E-02  7.1073E-02 -3.5014E-01 -1.9837E-01 -8.1950E-02  4.3101E-01 -3.9152E-01

0ITERATION NO.:   51    OBJECTIVE VALUE:  -602.589153162270        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      938
 NPARAMETR:  1.1006E+00  1.1430E+00  2.7306E+01  1.3281E+00  5.4847E-01  1.7159E+01  1.1760E+01
 PARAMETER:  1.9586E-01  2.3364E-01  3.4071E+00  3.8373E-01 -5.0062E-01  2.9425E+00  2.5647E+00
 GRADIENT:  -5.3066E-02  7.1073E-02 -3.5014E-01 -1.9837E-01 -8.1950E-02  4.3101E-01 -3.9152E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      938
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.2265E-03 -1.9167E-02 -6.9465E-03
 SE:             2.7132E-02  1.3568E-02  3.2801E-03
 N:                     100         100         100

 P VAL.:         7.3381E-01  1.5775E-01  3.4192E-02

 ETASHRINKSD(%)  9.1037E+00  5.4545E+01  8.9011E+01
 ETASHRINKVR(%)  1.7379E+01  7.9339E+01  9.8793E+01
 EBVSHRINKSD(%)  8.3647E+00  5.5498E+01  9.3263E+01
 EBVSHRINKVR(%)  1.6030E+01  8.0195E+01  9.9546E+01
 RELATIVEINF(%)  3.8724E+01  8.5595E+00  1.8610E-01
 EPSSHRINKSD(%)  6.3357E+00
 EPSSHRINKVR(%)  1.2270E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -602.58915316227046     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       132.56167340146771     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:     8.28
 Elapsed covariance  time in seconds:     2.03
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -602.589       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.10E+00  1.14E+00  2.73E+01  1.33E+00  5.48E-01  1.72E+01  1.18E+01
 


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
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         5.08E-02  3.02E-02  2.89E+00  8.44E-02  6.64E-02  5.92E-02  9.98E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 


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
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        2.58E-03
 
 TH 2
+       -9.57E-04  9.13E-04
 
 TH 3
+        4.55E-02 -5.73E-03  8.32E+00
 
 TH 4
+        9.55E-04 -4.56E-04 -4.03E-02  7.13E-03
 
 TH 5
+        2.46E-03 -1.03E-03  6.45E-02 -2.60E-03  4.41E-03
 
 TH 6
+       -9.86E-04  3.08E-04 -1.61E-01  1.12E-03 -1.47E-03  3.51E-03
 
 TH 7
+        9.24E-03  4.82E-04  9.29E-01  1.19E-02 -4.20E-03 -3.12E-02  9.97E-01
 
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
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        5.08E-02
 
 TH 2
+       -6.24E-01  3.02E-02
 
 TH 3
+        3.11E-01 -6.57E-02  2.89E+00
 
 TH 4
+        2.23E-01 -1.79E-01 -1.65E-01  8.44E-02
 
 TH 5
+        7.31E-01 -5.13E-01  3.37E-01 -4.65E-01  6.64E-02
 
 TH 6
+       -3.28E-01  1.72E-01 -9.44E-01  2.24E-01 -3.73E-01  5.92E-02
 
 TH 7
+        1.82E-01  1.60E-02  3.23E-01  1.41E-01 -6.35E-02 -5.27E-01  9.98E-01
 
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
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        1.05E+04
 
 TH 2
+       -1.66E+03  5.79E+03
 
 TH 3
+        5.56E+00 -1.46E+02  6.26E+00
 
 TH 4
+       -4.73E+03  2.36E+03 -5.38E+01  2.83E+03
 
 TH 5
+       -9.01E+03  2.90E+03 -3.68E+01  4.57E+03  8.51E+03
 
 TH 6
+        4.85E+02 -8.40E+03  3.56E+02 -3.20E+03 -2.10E+03  2.07E+04
 
 TH 7
+       -6.78E+01 -1.30E+02  5.79E+00 -2.16E+01  3.24E+01  3.46E+02  7.50E+00
 
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
 #CPUT: Total CPU Time in Seconds,       10.377
Stop Time:
Wed Sep 29 20:37:15 CDT 2021
