Fri Oct  1 17:28:54 CDT 2021
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
$DATA ../../../../data/SD3/A1/dat71.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m71.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2076.10191385860        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0421E+02  5.2576E+01  9.4752E+01 -5.4069E+01 -1.8683E+01  4.2041E+01 -3.2234E+01 -1.8849E+01 -1.9954E+01 -3.1505E+01
            -5.7805E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2153.23660982956        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  9.7962E-01  8.9712E-01  7.5131E-01  1.1411E+00  7.7754E-01  1.0296E+00  1.3217E+00  8.8448E-01  1.0058E+00  1.0682E+00
             1.7960E+00
 PARAMETER:  7.9407E-02 -8.5712E-03 -1.8594E-01  2.3203E-01 -1.5162E-01  1.2916E-01  3.7894E-01 -2.2755E-02  1.0579E-01  1.6596E-01
             6.8556E-01
 GRADIENT:   1.7767E+02  6.7023E+01  9.8407E+00  6.7649E+01 -7.4285E+01  3.9562E+01  1.2106E+01  1.5412E+01  1.1026E+01  2.0292E+01
             2.1676E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2158.96919130612        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:      179
 NPARAMETR:  9.7571E-01  7.0928E-01  6.2666E-01  1.2554E+00  6.4310E-01  1.0428E+00  1.5664E+00  5.5558E-01  8.9696E-01  8.5490E-01
             1.7520E+00
 PARAMETER:  7.5413E-02 -2.4350E-01 -3.6736E-01  3.2742E-01 -3.4146E-01  1.4196E-01  5.4876E-01 -4.8774E-01 -8.7447E-03 -5.6766E-02
             6.6073E-01
 GRADIENT:   5.4678E+01  4.5046E+01 -1.6677E+01  8.2602E+01 -4.6197E+01  2.9832E+01  8.4076E+00  6.9125E+00 -1.6276E+01  6.5507E+00
             1.8788E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2188.56962457107        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      360
 NPARAMETR:  9.3040E-01  7.4751E-01  7.4946E-01  1.1596E+00  7.6864E-01  9.4991E-01  1.4686E+00  5.8763E-01  9.5167E-01  9.7435E-01
             1.4449E+00
 PARAMETER:  2.7863E-02 -1.9101E-01 -1.8840E-01  2.4806E-01 -1.6313E-01  4.8617E-02  4.8429E-01 -4.3165E-01  5.0460E-02  7.4015E-02
             4.6805E-01
 GRADIENT:  -3.9399E+01 -1.9949E+01  2.3445E+00 -3.9519E+01 -4.3729E+00 -3.3494E+00  4.1907E+00  3.0741E+00 -4.0640E+00  5.1800E+00
             1.7757E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2190.66596365745        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      536
 NPARAMETR:  9.4584E-01  7.9861E-01  7.2187E-01  1.1579E+00  7.7798E-01  9.5701E-01  1.3372E+00  2.6010E-01  9.8861E-01  1.0176E+00
             1.4308E+00
 PARAMETER:  4.4316E-02 -1.2488E-01 -2.2591E-01  2.4662E-01 -1.5106E-01  5.6056E-02  3.9061E-01 -1.2467E+00  8.8540E-02  1.1740E-01
             4.5820E-01
 GRADIENT:   4.6547E-02 -3.5655E-01 -8.6771E-02 -1.4405E-01  4.2799E-01 -3.1354E-01  3.4281E-02  5.5515E-02  1.9537E-01 -1.3792E-01
             1.6849E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2190.67033167444        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      713
 NPARAMETR:  9.4568E-01  7.9967E-01  7.2060E-01  1.1578E+00  7.7772E-01  9.5773E-01  1.3351E+00  2.2726E-01  9.8819E-01  1.0219E+00
             1.4311E+00
 PARAMETER:  4.4146E-02 -1.2356E-01 -2.2767E-01  2.4653E-01 -1.5139E-01  5.6808E-02  3.8899E-01 -1.3816E+00  8.8124E-02  1.2170E-01
             4.5847E-01
 GRADIENT:  -3.7291E-01  3.0995E-01  3.2821E-01  4.6372E-01  7.8650E-02 -3.4926E-02  5.1805E-02  9.8038E-03 -6.0723E-02 -2.9175E-02
            -3.1447E-05

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2190.67199843424        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      888
 NPARAMETR:  9.4584E-01  7.9756E-01  7.1655E-01  1.1581E+00  7.7448E-01  9.5786E-01  1.3322E+00  1.8441E-01  9.8927E-01  1.0236E+00
             1.4314E+00
 PARAMETER:  4.4321E-02 -1.2620E-01 -2.3331E-01  2.4675E-01 -1.5556E-01  5.6945E-02  3.8681E-01 -1.5906E+00  8.9211E-02  1.2337E-01
             4.5868E-01
 GRADIENT:   5.0223E-02  1.4383E-01 -5.1260E-02 -2.8774E-01  1.7572E-01  5.8704E-03 -4.2675E-02 -4.3242E-03  3.4375E-02 -4.9414E-02
            -3.6533E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2190.67240066489        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1063            RESET HESSIAN, TYPE II
 NPARAMETR:  9.4606E-01  7.9570E-01  7.1565E-01  1.1588E+00  7.7293E-01  9.5796E-01  1.3341E+00  1.8714E-01  9.8894E-01  1.0229E+00
             1.4314E+00
 PARAMETER:  4.4554E-02 -1.2854E-01 -2.3457E-01  2.4736E-01 -1.5757E-01  5.7056E-02  3.8825E-01 -1.5759E+00  8.8876E-02  1.2269E-01
             4.5863E-01
 GRADIENT:   1.7771E+02  1.9847E+01  9.5796E+00  1.0214E+02  2.3610E+01  1.8325E+01  8.8208E+00  2.0803E-01  3.9864E+00  1.7394E+00
             5.5746E+00

0ITERATION NO.:   37    OBJECTIVE VALUE:  -2190.67240066489        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1120
 NPARAMETR:  9.4606E-01  7.9570E-01  7.1565E-01  1.1588E+00  7.7293E-01  9.5796E-01  1.3341E+00  1.8714E-01  9.8894E-01  1.0229E+00
             1.4314E+00
 PARAMETER:  4.4554E-02 -1.2854E-01 -2.3457E-01  2.4736E-01 -1.5757E-01  5.7056E-02  3.8825E-01 -1.5759E+00  8.8876E-02  1.2269E-01
             4.5863E-01
 GRADIENT:   2.1122E-03 -6.4199E-02 -2.6580E-01 -9.5859E-02  1.2820E-01  2.1226E-03  1.2607E-02  1.2656E-03  1.8909E-02  1.0068E-01
             8.0940E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1120
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.6709E-04 -8.2881E-03 -5.7124E-03  1.3745E-03 -1.0524E-02
 SE:             2.9730E-02  2.0577E-02  3.9686E-03  2.7121E-02  2.4480E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8746E-01  6.8711E-01  1.5003E-01  9.5958E-01  6.6725E-01

 ETASHRINKSD(%)  4.0039E-01  3.1063E+01  8.6705E+01  9.1411E+00  1.7990E+01
 ETASHRINKVR(%)  7.9918E-01  5.2477E+01  9.8232E+01  1.7447E+01  3.2743E+01
 EBVSHRINKSD(%)  7.1051E-01  3.0095E+01  8.7597E+01  9.7435E+00  1.8704E+01
 EBVSHRINKVR(%)  1.4160E+00  5.1133E+01  9.8462E+01  1.8538E+01  3.3910E+01
 RELATIVEINF(%)  9.8569E+01  1.2316E+01  5.3115E-01  3.7411E+01  1.0079E+01
 EPSSHRINKSD(%)  2.8385E+01
 EPSSHRINKVR(%)  4.8714E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2190.6724006648878     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1087.9461608192807     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.28
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2190.672       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.46E-01  7.96E-01  7.16E-01  1.16E+00  7.73E-01  9.58E-01  1.33E+00  1.87E-01  9.89E-01  1.02E+00  1.43E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.328
Stop Time:
Fri Oct  1 17:29:15 CDT 2021
