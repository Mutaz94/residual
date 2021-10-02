Sat Oct  2 00:05:05 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat51.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m51.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1386.77463074405        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.1165E+02  3.6812E+01  3.2797E+01  6.9351E+01  8.6477E+01  5.3294E+01 -3.2691E+00 -3.4256E+01  1.1110E-01 -3.4365E+01
            -4.1265E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1487.82838879728        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  9.6192E-01  9.7714E-01  8.5368E-01  1.0083E+00  8.8972E-01  9.7710E-01  9.8358E-01  1.1347E+00  9.6582E-01  9.8134E-01
             1.8923E+00
 PARAMETER:  6.1173E-02  7.6876E-02 -5.8205E-02  1.0825E-01 -1.6852E-02  7.6830E-02  8.3446E-02  2.2638E-01  6.5221E-02  8.1160E-02
             7.3779E-01
 GRADIENT:   1.0805E+02 -1.0104E+01 -1.0979E+01  1.0436E+01  2.0684E+01  2.1787E+01  2.2991E+00 -1.4421E+00  5.7062E+00  1.4808E+01
             5.0997E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1490.78379453141        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  9.6311E-01  1.0384E+00  5.4286E-01  9.6086E-01  6.9234E-01  9.3759E-01  1.1259E+00  8.0431E-01  9.3765E-01  5.9213E-01
             1.8562E+00
 PARAMETER:  6.2417E-02  1.3773E-01 -5.1090E-01  6.0073E-02 -2.6768E-01  3.5562E-02  2.1857E-01 -1.1778E-01  3.5622E-02 -4.2403E-01
             7.1852E-01
 GRADIENT:   1.0385E+02  5.4045E+01  2.5336E+01  3.7997E+01 -2.9133E+01  4.4013E+00  1.0745E+01 -3.6885E+00  7.1973E+00  2.6022E+00
             4.1153E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1493.98280379473        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      335
 NPARAMETR:  9.5879E-01  1.0576E+00  5.4114E-01  9.3233E-01  7.1799E-01  9.5790E-01  1.0195E+00  9.5992E-01  9.4926E-01  6.1074E-01
             1.7160E+00
 PARAMETER:  5.7922E-02  1.5601E-01 -5.1409E-01  2.9926E-02 -2.3130E-01  5.6989E-02  1.1928E-01  5.9090E-02  4.7930E-02 -3.9308E-01
             6.4002E-01
 GRADIENT:  -1.6299E+01  2.8475E+00  1.5086E+00  8.2154E+00  1.4608E+00 -1.8325E+00 -4.4672E-01 -2.0122E+00  1.3220E+00  1.5202E+00
             3.5808E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1512.02434084550        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      514
 NPARAMETR:  9.7555E-01  1.2407E+00  3.1300E-01  7.5837E-01  6.3385E-01  9.7119E-01  8.7941E-01  1.8732E+00  9.4970E-01  2.5093E-01
             1.6248E+00
 PARAMETER:  7.5251E-02  3.1572E-01 -1.0616E+00 -1.7658E-01 -3.5594E-01  7.0763E-02 -2.8503E-02  7.2765E-01  4.8387E-02 -1.2826E+00
             5.8538E-01
 GRADIENT:   4.3814E+01  1.6607E+01  1.6561E+01  6.9716E-01 -6.4130E+01  6.0437E+00 -2.0925E+00 -2.2455E+00 -8.1576E+00  1.3565E+00
             5.4045E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1517.73704331374        NO. OF FUNC. EVALS.: 172
 CUMULATIVE NO. OF FUNC. EVALS.:      686
 NPARAMETR:  9.5764E-01  1.2601E+00  3.1291E-01  7.4334E-01  6.4476E-01  9.5453E-01  8.8656E-01  1.8927E+00  1.0145E+00  2.3251E-01
             1.4530E+00
 PARAMETER:  5.6720E-02  3.3122E-01 -1.0618E+00 -1.9660E-01 -3.3888E-01  5.3459E-02 -2.0408E-02  7.3798E-01  1.1444E-01 -1.3588E+00
             4.7365E-01
 GRADIENT:   6.4113E+00  1.6014E+01  1.5992E+01 -2.7766E+00 -5.6700E+01  2.2272E-01  7.7502E-01 -5.4712E+00 -3.6227E+00  2.5250E-01
             1.4950E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1520.19330556340        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      865
 NPARAMETR:  9.5534E-01  1.3232E+00  2.9442E-01  7.0585E-01  6.7239E-01  9.5511E-01  8.6370E-01  1.8934E+00  1.0776E+00  3.2817E-01
             1.3897E+00
 PARAMETER:  5.4310E-02  3.8006E-01 -1.1228E+00 -2.4835E-01 -2.9691E-01  5.4070E-02 -4.6532E-02  7.3839E-01  1.7472E-01 -1.0142E+00
             4.2908E-01
 GRADIENT:   2.9934E+00  4.6378E+00  6.2049E+00  4.2085E+00 -3.2811E+01  5.2354E-01  3.0182E+00 -7.2945E+00  1.1948E-02  1.3985E-01
            -1.6407E+00

0ITERATION NO.:   31    OBJECTIVE VALUE:  -1520.19330556340        NO. OF FUNC. EVALS.:  31
 CUMULATIVE NO. OF FUNC. EVALS.:      896
 NPARAMETR:  9.5549E-01  1.3224E+00  2.9493E-01  7.0612E-01  6.7209E-01  9.5458E-01  8.6383E-01  1.8913E+00  1.0779E+00  3.2485E-01
             1.3906E+00
 PARAMETER:  5.4310E-02  3.8006E-01 -1.1228E+00 -2.4835E-01 -2.9691E-01  5.4070E-02 -4.6532E-02  7.3839E-01  1.7472E-01 -1.0142E+00
             4.2908E-01
 GRADIENT:  -3.4615E+04  4.5536E+03 -3.0643E+03 -1.3944E+04  1.1621E+04  3.4458E-01 -3.4615E+04  4.6259E+03 -1.9818E+04  1.1435E-01
            -4.0410E+03
 NUMSIGDIG:         2.3         2.3         2.3         2.3         2.3         1.7         2.3         2.3         2.3         1.5
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      896
 NO. OF SIG. DIGITS IN FINAL EST.:  1.5

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -4.8571E-04 -1.1938E-02 -1.5991E-02  4.9209E-03 -1.4143E-02
 SE:             2.9653E-02  2.4513E-02  1.9341E-02  2.3271E-02  9.6073E-03
 N:                     100         100         100         100         100

 P VAL.:         9.8693E-01  6.2626E-01  4.0834E-01  8.3253E-01  1.4098E-01

 ETASHRINKSD(%)  6.5735E-01  1.7878E+01  3.5205E+01  2.2039E+01  6.7814E+01
 ETASHRINKVR(%)  1.3104E+00  3.2560E+01  5.8016E+01  3.9221E+01  8.9641E+01
 EBVSHRINKSD(%)  8.8568E-01  1.6949E+01  3.7280E+01  2.1960E+01  6.8974E+01
 EBVSHRINKVR(%)  1.7635E+00  3.1025E+01  6.0661E+01  3.9098E+01  9.0374E+01
 RELATIVEINF(%)  9.6819E+01  6.3860E+00  6.6008E+00  7.2510E+00  1.1304E+00
 EPSSHRINKSD(%)  4.3359E+01
 EPSSHRINKVR(%)  6.7918E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1520.1933055634011     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -785.04247899966288     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    10.96
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1520.193       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.55E-01  1.32E+00  2.94E-01  7.06E-01  6.72E-01  9.55E-01  8.64E-01  1.89E+00  1.08E+00  3.28E-01  1.39E+00
 


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
 #CPUT: Total CPU Time in Seconds,       11.008
Stop Time:
Sat Oct  2 00:05:18 CDT 2021