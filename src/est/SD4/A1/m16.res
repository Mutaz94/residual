Fri Oct  1 23:54:03 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat16.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m16.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1400.71775188121        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8091E+02 -2.9509E+01 -5.0980E+01  5.3354E+01  1.8859E+02  7.1089E+01 -2.2228E+01  6.3969E+00 -4.2371E+00 -6.4775E+01
            -4.9991E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1526.28321068838        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.1563E+00  1.0338E+00  1.0403E+00  1.0283E+00  8.9601E-01  1.0188E+00  1.0451E+00  9.4495E-01  1.0019E+00  1.0265E+00
             1.9091E+00
 PARAMETER:  2.4522E-01  1.3327E-01  1.3951E-01  1.2787E-01 -9.7994E-03  1.1865E-01  1.4409E-01  4.3382E-02  1.0188E-01  1.2619E-01
             7.4662E-01
 GRADIENT:   5.2707E+02  2.0170E+01  1.3930E+00  2.9044E+01 -8.2956E+00  2.5924E+01 -8.5958E-01  6.4561E+00  4.1513E+00  4.5712E+00
             2.2799E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1536.42443245028        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.1187E+00  8.4886E-01  7.9196E-01  1.1242E+00  7.4790E-01  9.8932E-01  1.3356E+00  2.6003E-01  9.3056E-01  1.0155E+00
             1.7285E+00
 PARAMETER:  2.1216E-01 -6.3866E-02 -1.3325E-01  2.1707E-01 -1.9049E-01  8.9263E-02  3.8936E-01 -1.2470E+00  2.8026E-02  1.1533E-01
             6.4724E-01
 GRADIENT:   4.7141E+02  7.3692E+00 -2.7234E+01  8.7670E+01  3.9078E+01  2.7066E+01  5.5467E+00  1.1839E+00  9.7517E+00  1.5521E+01
            -5.5133E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1539.72591481563        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      294
 NPARAMETR:  1.0523E+00  8.4398E-01  5.8614E-01  1.0749E+00  6.2022E-01  9.2545E-01  1.3894E+00  1.8609E-01  9.9757E-01  8.1377E-01
             1.5935E+00
 PARAMETER:  1.5099E-01 -6.9627E-02 -4.3420E-01  1.7227E-01 -3.7769E-01  2.2522E-02  4.2889E-01 -1.5815E+00  9.7572E-02 -1.0608E-01
             5.6592E-01
 GRADIENT:   2.4157E+01 -1.7906E+00 -1.9763E+01 -2.4219E+00  1.5445E+01  2.6580E+00  6.4596E+00  7.4646E-01  2.4588E+01  9.6675E+00
            -4.7409E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1547.83462104052        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      469
 NPARAMETR:  1.0434E+00  4.9418E-01  6.7019E-01  1.2894E+00  5.4839E-01  9.1083E-01  2.0005E+00  6.2860E-02  8.0134E-01  7.7234E-01
             1.7832E+00
 PARAMETER:  1.4247E-01 -6.0486E-01 -3.0019E-01  3.5420E-01 -5.0077E-01  6.5996E-03  7.9338E-01 -2.6669E+00 -1.2148E-01 -1.5833E-01
             6.7842E-01
 GRADIENT:   4.6047E+00  9.5503E+00  1.0986E+01  8.6146E+00 -2.3087E+01 -1.4953E+00  1.9731E-01  6.3342E-02 -2.1909E+00 -2.5975E-01
             8.3912E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1548.68454042305        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      644
 NPARAMETR:  1.0409E+00  3.1765E-01  6.9135E-01  1.3734E+00  5.2652E-01  9.1334E-01  2.5968E+00  1.2140E-02  7.8230E-01  8.1642E-01
             1.7440E+00
 PARAMETER:  1.4005E-01 -1.0468E+00 -2.6911E-01  4.1725E-01 -5.4147E-01  9.3500E-03  1.0543E+00 -4.3112E+00 -1.4552E-01 -1.0282E-01
             6.5621E-01
 GRADIENT:   8.6814E+00 -8.6173E-01  1.2557E+00 -6.3452E+00 -4.9864E+00  5.4927E-01 -1.6211E+00  2.5851E-03 -1.4231E+00  3.7433E-01
             1.8258E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1548.71668136810        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      820
 NPARAMETR:  1.0382E+00  2.7424E-01  7.0970E-01  1.3982E+00  5.2847E-01  9.1137E-01  2.8956E+00  1.0000E-02  7.8222E-01  8.3193E-01
             1.7378E+00
 PARAMETER:  1.3752E-01 -1.1938E+00 -2.4292E-01  4.3519E-01 -5.3776E-01  7.1988E-03  1.1632E+00 -4.8780E+00 -1.4562E-01 -8.4009E-02
             6.5264E-01
 GRADIENT:   5.9173E+00 -9.3037E-01  8.1203E-01 -7.7809E+00 -3.0992E+00  1.1216E-01  3.5931E-02  0.0000E+00  8.2998E-01  5.8972E-01
             9.3308E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1548.82113988064        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      999
 NPARAMETR:  1.0359E+00  3.0548E-01  7.6257E-01  1.3990E+00  5.6152E-01  9.1061E-01  2.7273E+00  1.1498E-02  7.8208E-01  8.5740E-01
             1.7417E+00
 PARAMETER:  1.3525E-01 -1.0859E+00 -1.7106E-01  4.3576E-01 -4.7711E-01  6.3556E-03  1.1033E+00 -4.3655E+00 -1.4579E-01 -5.3845E-02
             6.5485E-01
 GRADIENT:   1.7475E-02  2.5657E-01  7.2030E-01  1.0543E+00 -1.4363E+00 -5.6927E-02 -7.8290E-02  2.0222E-03 -1.0774E-01  1.4694E-01
             7.9431E-02

0ITERATION NO.:   38    OBJECTIVE VALUE:  -1548.82504501429        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:     1095
 NPARAMETR:  1.0362E+00  3.0502E-01  7.6199E-01  1.3969E+00  5.6192E-01  9.1080E-01  2.7343E+00  1.0000E-02  7.8249E-01  8.5610E-01
             1.7413E+00
 PARAMETER:  1.3558E-01 -1.0874E+00 -1.7182E-01  4.3429E-01 -4.7640E-01  6.5696E-03  1.1059E+00 -5.3053E+00 -1.4527E-01 -5.5374E-02
             6.5465E-01
 GRADIENT:   1.0516E+00 -3.3153E-01 -3.5341E-01 -3.0254E+00  9.0219E-01  4.4259E-02  1.3222E-01  0.0000E+00  1.2644E-01  2.8041E-02
             7.6306E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1095
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.7101E-04  3.2058E-02 -2.3526E-04 -2.6030E-02 -7.1477E-04
 SE:             2.9497E-02  1.7247E-02  1.6864E-04  2.4926E-02  2.2027E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8726E-01  6.3059E-02  1.6300E-01  2.9634E-01  9.7411E-01

 ETASHRINKSD(%)  1.1814E+00  4.2221E+01  9.9435E+01  1.6496E+01  2.6206E+01
 ETASHRINKVR(%)  2.3489E+00  6.6615E+01  9.9997E+01  3.0271E+01  4.5545E+01
 EBVSHRINKSD(%)  1.4352E+00  4.9649E+01  9.9361E+01  1.3941E+01  2.2106E+01
 EBVSHRINKVR(%)  2.8497E+00  7.4648E+01  9.9996E+01  2.5939E+01  3.9326E+01
 RELATIVEINF(%)  9.5787E+01  4.9965E+00  2.5337E-04  1.7694E+01  3.6819E+00
 EPSSHRINKSD(%)  3.8792E+01
 EPSSHRINKVR(%)  6.2536E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1548.8250450142866     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -813.67421845054844     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.30
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1548.825       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  3.05E-01  7.62E-01  1.40E+00  5.62E-01  9.11E-01  2.73E+00  1.00E-02  7.82E-01  8.56E-01  1.74E+00
 


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
 #CPUT: Total CPU Time in Seconds,       13.331
Stop Time:
Fri Oct  1 23:54:18 CDT 2021