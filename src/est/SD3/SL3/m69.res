Fri Oct  1 20:08:29 CDT 2021
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
$DATA ../../../../data/SD3/SL3/dat69.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m69.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1557.20384762495        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3007E+02 -9.3172E+00 -9.4291E+01  3.0413E+02  1.9311E+02  4.6908E+01 -7.2847E+01 -2.5623E+01 -6.8249E+01 -3.9869E+01
            -1.6746E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2059.23635437088        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0060E+00  1.1852E+00  1.0824E+00  8.2916E-01  1.0123E+00  1.0004E+00  1.1785E+00  9.7897E-01  1.0430E+00  1.1673E+00
             1.9466E+00
 PARAMETER:  1.0599E-01  2.6988E-01  1.7916E-01 -8.7346E-02  1.1224E-01  1.0041E-01  2.6422E-01  7.8744E-02  1.4210E-01  2.5468E-01
             7.6609E-01
 GRADIENT:   6.8286E+01  4.1527E+01 -2.9652E+00  1.0771E+01 -1.4511E+01  1.0340E+01  1.6620E+01  9.7311E-01 -3.4273E+00 -1.4369E+00
            -2.7617E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2060.49220372987        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      201
 NPARAMETR:  1.0187E+00  1.4508E+00  1.4778E+00  7.2868E-01  1.2887E+00  9.4522E-01  7.5647E-01  1.0817E+00  1.0490E+00  1.4886E+00
             1.9538E+00
 PARAMETER:  1.1856E-01  4.7212E-01  4.9053E-01 -2.1651E-01  3.5362E-01  4.3660E-02 -1.7910E-01  1.7851E-01  1.4782E-01  4.9781E-01
             7.6978E-01
 GRADIENT:  -5.7356E+01  5.4919E+01 -4.1343E+00  5.5978E+01  6.9677E+00 -2.5381E+01 -3.2720E+01 -5.1281E+00 -3.1909E+01 -1.7040E+00
            -3.9049E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2071.25693400690        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      376
 NPARAMETR:  1.0452E+00  1.4247E+00  1.9263E+00  7.1887E-01  1.3474E+00  1.0128E+00  9.2950E-01  2.1909E+00  1.1500E+00  1.4994E+00
             1.9712E+00
 PARAMETER:  1.4421E-01  4.5393E-01  7.5560E-01 -2.3007E-01  3.9820E-01  1.1274E-01  2.6887E-02  8.8431E-01  2.3975E-01  5.0504E-01
             7.7862E-01
 GRADIENT:   7.1981E+00 -7.5441E+00 -2.7789E+00  5.7777E+00  6.6836E+00  3.2543E+00 -6.1670E-01 -7.2842E-01  2.2908E-01  1.1139E+00
            -4.2825E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2072.50985788277        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      552
 NPARAMETR:  1.0435E+00  1.7315E+00  1.5377E+00  5.1902E-01  1.4173E+00  1.0167E+00  8.1499E-01  2.5709E+00  1.4440E+00  1.5684E+00
             1.9732E+00
 PARAMETER:  1.4255E-01  6.4900E-01  5.3030E-01 -5.5581E-01  4.4875E-01  1.1659E-01 -1.0457E-01  1.0443E+00  4.6743E-01  5.5007E-01
             7.7968E-01
 GRADIENT:   2.0361E+00  8.2844E+00  1.9414E+00  5.1584E+00 -5.1237E+00  4.5269E+00 -1.5094E+00  9.4596E-01  8.2821E-01 -3.8498E-01
             6.1925E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2074.23637865005        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      730
 NPARAMETR:  1.0421E+00  2.1201E+00  4.5917E-01  2.4981E-01  1.5083E+00  9.9756E-01  7.5054E-01  1.0164E+00  2.1829E+00  1.6669E+00
             1.9707E+00
 PARAMETER:  1.4125E-01  8.5146E-01 -6.7834E-01 -1.2870E+00  5.1096E-01  9.7555E-02 -1.8696E-01  1.1628E-01  8.8065E-01  6.1095E-01
             7.7839E-01
 GRADIENT:  -3.0355E+00 -4.7794E+00 -4.8726E+00  7.3338E+00  1.0825E+01 -3.2753E+00 -9.4709E-01  1.1201E+00  1.0988E-01  2.0169E+00
             1.4276E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2074.76174171079        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      906
 NPARAMETR:  1.0430E+00  2.2240E+00  3.8775E-01  1.7931E-01  1.5500E+00  1.0082E+00  7.3877E-01  5.4410E-01  2.5676E+00  1.7071E+00
             1.9670E+00
 PARAMETER:  1.4214E-01  8.9931E-01 -8.4739E-01 -1.6186E+00  5.3824E-01  1.0820E-01 -2.0277E-01 -5.0861E-01  1.0430E+00  6.3480E-01
             7.7653E-01
 GRADIENT:  -4.7613E-01  1.5638E-01 -4.7666E-01  5.1495E-01  1.1934E+00  8.5183E-01 -3.9850E-01  3.1177E-01  9.7209E-02 -2.5586E-01
            -6.1483E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2074.97599011222        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1091
 NPARAMETR:  1.0438E+00  2.2128E+00  4.0414E-01  1.8119E-01  1.5469E+00  1.0060E+00  7.3899E-01  6.0873E-02  2.5702E+00  1.7091E+00
             1.9678E+00
 PARAMETER:  1.4284E-01  8.9425E-01 -8.0600E-01 -1.6082E+00  5.3625E-01  1.0603E-01 -2.0247E-01 -2.6990E+00  1.0440E+00  6.3597E-01
             7.7691E-01
 GRADIENT:   1.3469E+00 -1.0495E+01  4.7221E-02 -1.2740E+00  6.2339E-02  8.1661E-02  1.1515E-01  3.2105E-03  1.5618E-01  2.0281E-01
             1.4160E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2075.02663699174        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1275             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0438E+00  2.2035E+00  4.1424E-01  1.8691E-01  1.5414E+00  1.0061E+00  7.3907E-01  1.0000E-02  2.5426E+00  1.7030E+00
             1.9674E+00
 PARAMETER:  1.4283E-01  8.9004E-01 -7.8132E-01 -1.5771E+00  5.3270E-01  1.0604E-01 -2.0236E-01 -4.9836E+00  1.0332E+00  6.3240E-01
             7.7673E-01
 GRADIENT:   1.9391E+02  5.7226E+02  5.2070E-01  1.9391E+01  2.3350E+01  1.4549E+01  8.0235E+00  0.0000E+00  8.3840E+00  9.3972E+00
             9.3318E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2075.04145058903        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     1441
 NPARAMETR:  1.0436E+00  2.2038E+00  4.1760E-01  1.9070E-01  1.5401E+00  1.0060E+00  7.3911E-01  1.0000E-02  2.5350E+00  1.7013E+00
             1.9673E+00
 PARAMETER:  1.4272E-01  8.9018E-01 -7.7323E-01 -1.5570E+00  5.3185E-01  1.0597E-01 -2.0231E-01 -4.9836E+00  1.0302E+00  6.3142E-01
             7.7665E-01
 GRADIENT:   9.3719E-01 -2.7023E+00 -1.8399E-02  1.1989E-01  2.7738E-01  1.9977E-02 -4.1031E-02  0.0000E+00  3.7486E-01  2.5323E-01
            -1.9204E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1441
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1670E-04 -3.3889E-02 -5.8741E-05  3.5723E-02 -2.8658E-02
 SE:             2.9592E-02  2.5190E-02  2.7453E-05  1.7848E-02  2.5368E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9685E-01  1.7852E-01  3.2378E-02  4.5336E-02  2.5860E-01

 ETASHRINKSD(%)  8.6310E-01  1.5610E+01  9.9908E+01  4.0207E+01  1.5014E+01
 ETASHRINKVR(%)  1.7188E+00  2.8783E+01  1.0000E+02  6.4248E+01  2.7774E+01
 EBVSHRINKSD(%)  1.1029E+00  1.3327E+01  9.9905E+01  5.1243E+01  1.0386E+01
 EBVSHRINKVR(%)  2.1936E+00  2.4878E+01  1.0000E+02  7.6227E+01  1.9693E+01
 RELATIVEINF(%)  9.7708E+01  1.4713E+01  4.6662E-05  4.2559E+00  4.9815E+01
 EPSSHRINKSD(%)  2.6107E+01
 EPSSHRINKVR(%)  4.5399E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2075.0414505890340     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -972.31521074342686     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.77
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2075.041       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  2.20E+00  4.18E-01  1.91E-01  1.54E+00  1.01E+00  7.39E-01  1.00E-02  2.54E+00  1.70E+00  1.97E+00
 


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
 #CPUT: Total CPU Time in Seconds,       26.821
Stop Time:
Fri Oct  1 20:08:57 CDT 2021
