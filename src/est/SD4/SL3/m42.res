Sat Oct  2 03:17:39 CDT 2021
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
$DATA ../../../../data/SD4/SL3/dat42.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m42.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1649.88144790268        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9800E+02  5.6606E+01 -4.2054E+01  1.5854E+02  1.1147E+02  5.0471E+01  5.8023E+00  3.1623E+00  4.3677E+00 -9.5508E+00
            -9.4121E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1666.31596127671        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0687E+00  9.3164E-01  1.0079E+00  1.0111E+00  9.1747E-01  9.8541E-01  9.2294E-01  9.4467E-01  9.9766E-01  8.6759E-01
             1.2482E+00
 PARAMETER:  1.6642E-01  2.9195E-02  1.0784E-01  1.1104E-01  1.3861E-02  8.5300E-02  1.9805E-02  4.3081E-02  9.7660E-02 -4.2038E-02
             3.2168E-01
 GRADIENT:   3.4819E+01 -1.3101E+00 -6.6000E+00  1.0360E+01  3.5992E+01 -6.2136E+00 -7.5199E-01  4.9474E-01 -7.4764E-01 -7.3058E+00
             8.8503E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1667.27829270195        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      372
 NPARAMETR:  1.0621E+00  7.4208E-01  9.4631E-01  1.1290E+00  8.1027E-01  9.7365E-01  9.5026E-01  8.2888E-01  9.1155E-01  8.1356E-01
             1.2385E+00
 PARAMETER:  1.6023E-01 -1.9830E-01  4.4817E-02  2.2129E-01 -1.1039E-01  7.3294E-02  4.8979E-02 -8.7682E-02  7.3959E-03 -1.0634E-01
             3.1392E-01
 GRADIENT:   2.1958E+01  4.3855E+00 -1.1589E+01  2.6191E+01  2.1726E+01 -1.0558E+01 -4.3335E+00  1.2732E-01 -6.1506E+00 -4.7307E+00
             6.9084E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1668.58556093813        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      549
 NPARAMETR:  1.0528E+00  7.7200E-01  8.2120E-01  1.0827E+00  7.5629E-01  1.0044E+00  1.1992E+00  6.8281E-01  9.0869E-01  7.5522E-01
             1.2095E+00
 PARAMETER:  1.5145E-01 -1.5877E-01 -9.6989E-02  1.7946E-01 -1.7933E-01  1.0442E-01  2.8168E-01 -2.8153E-01  4.2510E-03 -1.8075E-01
             2.9021E-01
 GRADIENT:  -7.8585E-01 -3.6349E+00 -1.1664E-01 -4.6217E+00  2.7019E+00  1.3974E+00  3.1218E-01  3.8396E-02  1.9697E+00 -5.8540E-01
            -6.4567E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1668.76981193723        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      728
 NPARAMETR:  1.0548E+00  8.9355E-01  7.1287E-01  1.0052E+00  7.4448E-01  1.0043E+00  1.1123E+00  5.7762E-01  9.3578E-01  7.1666E-01
             1.2099E+00
 PARAMETER:  1.5335E-01 -1.2551E-02 -2.3846E-01  1.0519E-01 -1.9507E-01  1.0427E-01  2.0645E-01 -4.4884E-01  3.3624E-02 -2.3315E-01
             2.9055E-01
 GRADIENT:  -7.7669E-01  3.3437E+00  1.6129E+00  4.2332E+00 -2.8131E+00  5.0191E-01  2.1161E-01 -6.4051E-02 -1.1429E-01 -1.4424E-01
            -6.6593E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1668.84773191713        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      903
 NPARAMETR:  1.0562E+00  9.9157E-01  6.2814E-01  9.3461E-01  7.4028E-01  1.0042E+00  1.0398E+00  4.7964E-01  9.7107E-01  6.8710E-01
             1.2114E+00
 PARAMETER:  1.5472E-01  9.1539E-02 -3.6499E-01  3.2374E-02 -2.0073E-01  1.0414E-01  1.3902E-01 -6.3471E-01  7.0643E-02 -2.7527E-01
             2.9181E-01
 GRADIENT:   1.0668E-01  1.9924E-01 -4.4984E-02  3.6936E-01 -6.2397E-02 -2.3395E-02  3.7938E-02  2.1311E-02 -1.2621E-01  9.0500E-02
             7.8588E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1668.85373250696        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1082
 NPARAMETR:  1.0585E+00  1.0166E+00  6.0748E-01  9.1713E-01  7.3960E-01  1.0050E+00  1.0237E+00  4.5215E-01  9.8167E-01  6.7943E-01
             1.2114E+00
 PARAMETER:  1.5686E-01  1.1651E-01 -3.9843E-01  1.3492E-02 -2.0165E-01  1.0495E-01  1.2342E-01 -6.9373E-01  8.1505E-02 -2.8650E-01
             2.9178E-01
 GRADIENT:   4.4726E+00  9.1104E-02 -2.9596E-01  3.7800E-01  2.9509E-01  1.9638E-01  1.6011E-01  3.4302E-02  1.1281E-01  1.0005E-01
             8.9258E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1668.85430190176        NO. OF FUNC. EVALS.: 171
 CUMULATIVE NO. OF FUNC. EVALS.:     1253
 NPARAMETR:  1.0579E+00  1.0166E+00  6.0764E-01  9.1693E-01  7.3949E-01  1.0047E+00  1.0226E+00  4.4807E-01  9.8140E-01  6.7910E-01
             1.2112E+00
 PARAMETER:  1.5630E-01  1.1630E-01 -3.9841E-01  1.3293E-02 -2.0167E-01  1.0466E-01  1.2262E-01 -6.9585E-01  8.1349E-02 -2.8656E-01
             2.9172E-01
 GRADIENT:  -5.8032E-04 -2.1001E-01 -1.9547E-01  2.7566E-02  3.4579E-01  7.9246E-04  3.5486E-02  1.5110E-02  3.1068E-02  4.8921E-02
             5.1849E-02
 NUMSIGDIG:         5.8         2.8         3.1         3.8         3.1         4.7         2.6         1.9         2.8         2.7
                    3.4

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1253
 NO. OF SIG. DIGITS IN FINAL EST.:  1.9

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.6937E-04 -6.0489E-03 -1.4752E-02  1.2037E-03 -1.6388E-02
 SE:             2.9796E-02  2.1310E-02  7.7368E-03  2.5095E-02  2.0447E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9546E-01  7.7652E-01  5.6549E-02  9.6174E-01  4.2287E-01

 ETASHRINKSD(%)  1.7891E-01  2.8609E+01  7.4081E+01  1.5928E+01  3.1499E+01
 ETASHRINKVR(%)  3.5750E-01  4.9033E+01  9.3282E+01  2.9320E+01  5.3075E+01
 EBVSHRINKSD(%)  6.0795E-01  2.8632E+01  7.5768E+01  1.5903E+01  3.1290E+01
 EBVSHRINKVR(%)  1.2122E+00  4.9066E+01  9.4128E+01  2.9276E+01  5.2789E+01
 RELATIVEINF(%)  9.8607E+01  2.6403E+00  4.3650E-01  4.9932E+00  3.6208E+00
 EPSSHRINKSD(%)  4.3117E+01
 EPSSHRINKVR(%)  6.7644E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1668.8543019017591     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -933.70347533802089     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.05
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1668.854       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.06E+00  1.02E+00  6.07E-01  9.17E-01  7.40E-01  1.00E+00  1.02E+00  4.51E-01  9.82E-01  6.79E-01  1.21E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.082
Stop Time:
Sat Oct  2 03:17:56 CDT 2021