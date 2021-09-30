Wed Sep 29 10:46:03 CDT 2021
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
$DATA ../../../../data/int/All/dat79.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m79.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   44799.1580486345        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   9.3108E+02  5.5221E+02 -1.6961E+03 -8.0385E+02 -1.7203E+03 -1.8815E+03 -8.9881E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -859.161129605643        NO. OF FUNC. EVALS.:  53
 CUMULATIVE NO. OF FUNC. EVALS.:       62
 NPARAMETR:  1.4303E+00  3.1349E+00  4.3670E+00  2.7711E+00  4.7086E+00  1.5657E+00  1.2415E+01
 PARAMETER:  4.5790E-01  1.2426E+00  1.5741E+00  1.1193E+00  1.6494E+00  5.4835E-01  2.6189E+00
 GRADIENT:   4.4845E+01  1.0225E+02  4.3646E+01  8.8126E+01  1.8746E+02  2.0117E+01  2.4619E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -888.476925493886        NO. OF FUNC. EVALS.:  54
 CUMULATIVE NO. OF FUNC. EVALS.:      116
 NPARAMETR:  1.3906E+00  1.4928E+00  1.7644E+01  1.9441E+00  2.7676E+00  4.8382E+00  1.1391E+01
 PARAMETER:  4.2971E-01  5.0067E-01  2.9704E+00  7.6481E-01  1.1180E+00  1.6766E+00  2.5328E+00
 GRADIENT:   1.2300E+02 -2.5106E+01  1.4673E+00  7.0811E+01 -1.1329E+01  6.9582E-01  8.4194E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -894.191048251925        NO. OF FUNC. EVALS.:  53
 CUMULATIVE NO. OF FUNC. EVALS.:      169
 NPARAMETR:  1.1324E+00  1.5240E+00  1.9224E+01  1.7943E+00  2.7370E+00  6.2764E+00  1.0741E+01
 PARAMETER:  2.2436E-01  5.2133E-01  3.0562E+00  6.8463E-01  1.1069E+00  1.9368E+00  2.4741E+00
 GRADIENT:  -2.5506E+00 -4.3218E+00  4.9916E-01  6.3866E+00  1.9609E-01  4.9583E-01  3.9251E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -899.607062688477        NO. OF FUNC. EVALS.:  79
 CUMULATIVE NO. OF FUNC. EVALS.:      248
 NPARAMETR:  1.1602E+00  1.6752E+00  2.0433E+01  1.7937E+00  3.0366E+00  5.7744E+00  1.0798E+01
 PARAMETER:  2.4860E-01  6.1593E-01  3.1172E+00  6.8426E-01  1.2107E+00  1.8534E+00  2.4794E+00
 GRADIENT:   1.0111E+01  2.4697E+01  9.9289E-01  6.8438E-02  5.2911E+01  1.3517E-01  3.3831E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -899.745013496067        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      366            RESET HESSIAN, TYPE II
 NPARAMETR:  1.1614E+00  1.6833E+00  1.9208E+01  1.8156E+00  3.0122E+00  5.6760E+00  1.0877E+01
 PARAMETER:  2.4964E-01  6.2076E-01  3.0553E+00  6.9644E-01  1.2027E+00  1.8363E+00  2.4867E+00
 GRADIENT:   9.9830E+00  2.4794E+01  6.8496E-01  6.8028E+00  4.8634E+01  4.5945E-01  4.5383E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -971.089701102312        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      423
 NPARAMETR:  1.1773E+00  1.5984E+00  2.8303E+00  1.9649E+00  3.1516E+00  3.4131E-01  1.0465E+01
 PARAMETER:  2.6319E-01  5.6902E-01  1.1404E+00  7.7546E-01  1.2479E+00 -9.7497E-01  2.4480E+00
 GRADIENT:   1.2869E+01  3.3428E+01  4.9695E+00  1.3489E+01  7.6762E+01  7.8508E-01  6.4583E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -971.256143501866        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:      473
 NPARAMETR:  1.1820E+00  1.6002E+00  2.6793E+00  1.9809E+00  3.0349E+00  2.5637E-01  1.0446E+01
 PARAMETER:  2.6722E-01  5.7013E-01  1.0856E+00  7.8354E-01  1.2102E+00 -1.2611E+00  2.4462E+00
 GRADIENT:   1.6800E+01  3.6705E+01 -1.3248E+01  1.8795E+01  6.1606E+01  3.5690E-01  5.7688E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -971.295281756405        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:      524
 NPARAMETR:  1.1744E+00  1.5564E+00  2.6401E+00  1.9668E+00  2.9266E+00  1.8318E-01  1.0373E+01
 PARAMETER:  2.6074E-01  5.4238E-01  1.0708E+00  7.7639E-01  1.1738E+00 -1.5973E+00  2.4392E+00
 GRADIENT:   1.5079E+01  3.0989E+01 -1.7784E+01  1.7747E+01  4.5906E+01  1.6535E-01  4.6604E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -972.076973871686        NO. OF FUNC. EVALS.: 104
 CUMULATIVE NO. OF FUNC. EVALS.:      628
 NPARAMETR:  1.1703E+00  1.5338E+00  2.8107E+00  1.9414E+00  2.9736E+00  1.6677E-01  1.0328E+01
 PARAMETER:  2.5730E-01  5.2778E-01  1.1334E+00  7.6343E-01  1.1898E+00 -1.6911E+00  2.4349E+00
 GRADIENT:  -1.1629E+00 -7.5647E-01  9.2272E-01 -3.0536E-01  4.6535E-01  1.5947E-01 -1.1101E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -972.162600117267        NO. OF FUNC. EVALS.: 107
 CUMULATIVE NO. OF FUNC. EVALS.:      735
 NPARAMETR:  1.1732E+00  1.5366E+00  2.8057E+00  1.9456E+00  2.9958E+00  4.4872E-02  1.0337E+01
 PARAMETER:  2.5970E-01  5.2954E-01  1.1317E+00  7.6555E-01  1.1972E+00 -3.0039E+00  2.4358E+00
 GRADIENT:  -3.8358E-03 -3.3758E-01 -1.3508E-02  2.2961E-01  3.2745E+00  1.0922E-02 -6.2571E-02

0ITERATION NO.:   54    OBJECTIVE VALUE:  -972.167839568084        NO. OF FUNC. EVALS.:  87
 CUMULATIVE NO. OF FUNC. EVALS.:      822
 NPARAMETR:  1.1706E+00  1.5305E+00  2.8123E+00  1.9477E+00  3.0046E+00  1.0000E-02  1.0364E+01
 PARAMETER:  2.6013E-01  5.3057E-01  1.1316E+00  7.6529E-01  1.1969E+00 -4.7621E+00  2.4355E+00
 GRADIENT:   1.2471E-01  1.0971E-01 -7.2397E-02 -4.4532E-02 -1.0922E-01  0.0000E+00 -4.9964E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      822
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2083E-02 -8.3401E-03 -8.7992E-05
 SE:             2.8448E-02  2.9405E-02  1.1074E-04
 N:                     100         100         100

 P VAL.:         6.7102E-01  7.7670E-01  4.2686E-01

 ETASHRINKSD(%)  4.6969E+00  1.4887E+00  9.9629E+01
 ETASHRINKVR(%)  9.1731E+00  2.9552E+00  9.9999E+01
 EBVSHRINKSD(%)  6.5596E+00  1.8115E+00  9.9592E+01
 EBVSHRINKVR(%)  1.2689E+01  3.5903E+00  9.9998E+01
 RELATIVEINF(%)  8.7165E+01  9.4965E+01  1.6397E-03
 EPSSHRINKSD(%)  7.1529E+00
 EPSSHRINKVR(%)  1.3794E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -972.16783956808388     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       681.92152020032688     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:    16.99
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     4.56
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -972.168       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.17E+00  1.54E+00  2.81E+00  1.95E+00  2.99E+00  1.00E-02  1.03E+01
 


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
+        2.13E+02
 
 TH 2
+       -1.91E+01  2.32E+01
 
 TH 3
+        5.62E+00 -9.61E+00  2.15E+01
 
 TH 4
+       -2.00E+01 -6.23E+00 -2.99E-01  4.99E+01
 
 TH 5
+       -1.11E+01  8.94E+00 -9.22E-01 -4.53E+00  4.22E+00
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -8.64E+00 -6.12E-01  9.79E-02  8.71E-01  1.90E-01  0.00E+00  8.38E-01
 
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
+        1.85E+02
 
 TH 2
+       -2.09E+00  4.99E+01
 
 TH 3
+       -1.29E+00 -4.17E+00  2.04E+01
 
 TH 4
+        5.05E+00 -1.13E+00 -2.60E-01  4.61E+01
 
 TH 5
+        5.05E-01  1.84E-03 -3.55E-01 -2.50E+00  2.01E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -8.51E+00 -3.21E+00  1.11E-01  3.57E-02  6.13E-01  0.00E+00  8.89E+00
 
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
+        1.89E+02
 
 TH 2
+        5.83E+01  5.06E+01
 
 TH 3
+       -1.83E+00  6.19E-01  1.99E+01
 
 TH 4
+        3.54E+01  1.25E+01  3.60E-01  4.95E+01
 
 TH 5
+        3.88E+00  2.56E+01  2.39E+00  4.79E+00  3.41E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -4.09E+00 -1.84E+01 -4.50E-01  1.11E+01  1.57E+01  0.00E+00  1.74E+02
 
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
 #CPUT: Total CPU Time in Seconds,       21.668
Stop Time:
Wed Sep 29 10:46:26 CDT 2021
