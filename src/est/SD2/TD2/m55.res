Fri Oct  1 14:52:32 CDT 2021
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
$DATA ../../../../data/SD2/TD2/dat55.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      600
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

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m55.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2100.96378946508        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1361E+02 -7.1641E+01 -4.2701E+01 -1.2714E+01  1.0949E+02  7.7765E+01 -1.2059E+01  4.3056E+00  1.7146E+00 -2.0504E+01
            -2.2679E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2113.39350223560        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  1.0081E+00  1.0705E+00  1.0118E+00  1.0307E+00  9.6820E-01  8.3142E-01  1.0393E+00  9.9013E-01  1.0093E+00  1.0475E+00
             1.0437E+00
 PARAMETER:  1.0807E-01  1.6813E-01  1.1176E-01  1.3020E-01  6.7687E-02 -8.4621E-02  1.3855E-01  9.0077E-02  1.0922E-01  1.4642E-01
             1.4273E-01
 GRADIENT:   3.9284E+01 -8.1794E+00 -1.1270E+01  1.2307E+01  1.7476E+01 -1.1629E+01 -4.1623E+00  3.2310E+00  1.2050E+00 -4.0051E+00
             1.0623E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2113.98573896683        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  1.0023E+00  1.2041E+00  9.6652E-01  9.5318E-01  1.0117E+00  8.2984E-01  1.0161E+00  8.1706E-01  1.0697E+00  1.1579E+00
             1.0142E+00
 PARAMETER:  1.0234E-01  2.8571E-01  6.5944E-02  5.2050E-02  1.1168E-01 -8.6525E-02  1.1598E-01 -1.0205E-01  1.6740E-01  2.4662E-01
             1.1407E-01
 GRADIENT:   1.9618E+01  7.6658E+00 -1.3069E+00  1.8556E+01  8.0417E+00 -1.2608E+01  8.6103E-01 -9.8110E-01  1.6917E+00  5.3782E+00
            -1.1197E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2115.73303472653        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      526
 NPARAMETR:  9.9702E-01  1.3364E+00  6.6721E-01  8.5028E-01  8.9889E-01  8.6737E-01  9.6460E-01  4.5093E-01  1.1337E+00  9.6844E-01
             1.0294E+00
 PARAMETER:  9.7012E-02  3.9001E-01 -3.0466E-01 -6.2188E-02 -6.5958E-03 -4.2294E-02  6.3960E-02 -6.9644E-01  2.2550E-01  6.7932E-02
             1.2897E-01
 GRADIENT:  -4.7902E+00  1.6557E+01  4.4451E+00  1.0960E+01 -1.8014E+01  4.1791E+00  1.5998E-01  8.5444E-01  1.6904E+00  4.8970E-01
             3.7772E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2116.54446753212        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      701
 NPARAMETR:  1.0002E+00  1.5713E+00  5.7906E-01  6.9201E-01  1.0019E+00  8.5462E-01  8.5648E-01  2.5089E-01  1.3042E+00  1.0490E+00
             1.0217E+00
 PARAMETER:  1.0024E-01  5.5190E-01 -4.4635E-01 -2.6815E-01  1.0191E-01 -5.7098E-02 -5.4923E-02 -1.2827E+00  3.6559E-01  1.4786E-01
             1.2148E-01
 GRADIENT:   2.9136E+00 -1.3840E+00 -2.8549E+00  2.9853E+00  1.4467E+00 -2.0587E+00  5.7557E-01  2.5757E-01  7.2980E-01  1.1740E+00
            -1.4414E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2116.64184480348        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      882
 NPARAMETR:  9.9929E-01  1.5910E+00  5.7762E-01  6.7797E-01  1.0124E+00  8.5926E-01  8.4855E-01  9.5659E-02  1.3221E+00  1.0549E+00
             1.0243E+00
 PARAMETER:  9.9292E-02  5.6435E-01 -4.4885E-01 -2.8865E-01  1.1230E-01 -5.1689E-02 -6.4224E-02 -2.2470E+00  3.7924E-01  1.5340E-01
             1.2405E-01
 GRADIENT:   5.7036E-02 -1.2916E-01  8.2391E-01 -4.6043E-01 -1.3443E+00  7.0056E-02  2.1156E-02  2.6380E-02 -3.9553E-02  7.6033E-03
             3.4526E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2116.64823570889        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1057
 NPARAMETR:  9.9927E-01  1.5952E+00  5.7302E-01  6.7564E-01  1.0135E+00  8.5887E-01  8.4764E-01  4.9726E-02  1.3252E+00  1.0551E+00
             1.0242E+00
 PARAMETER:  9.9269E-02  5.6701E-01 -4.5684E-01 -2.9210E-01  1.1342E-01 -5.2133E-02 -6.5297E-02 -2.9012E+00  3.8156E-01  1.5367E-01
             1.2391E-01
 GRADIENT:  -9.6903E-02 -7.0017E-01 -4.4211E-01  7.5394E-01  4.3053E-01 -1.2426E-01  1.3246E-01  7.7833E-03  9.2696E-02  1.2592E-01
             6.8204E-03

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2116.65408512989        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1242             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9977E-01  1.5934E+00  5.7344E-01  6.7547E-01  1.0134E+00  8.5923E-01  8.4721E-01  1.0000E-02  1.3259E+00  1.0546E+00
             1.0242E+00
 PARAMETER:  9.9767E-02  5.6587E-01 -4.5610E-01 -2.9235E-01  1.1334E-01 -5.1717E-02 -6.5804E-02 -4.9463E+00  3.8213E-01  1.5320E-01
             1.2396E-01
 GRADIENT:   3.8566E+02  4.6023E+02  4.4332E+00  8.3866E+01  9.4909E+00  2.4368E+01  5.4357E+00  0.0000E+00  1.8373E+01  1.4954E+00
             1.2798E+00

0ITERATION NO.:   37    OBJECTIVE VALUE:  -2116.65408512989        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:     1300
 NPARAMETR:  9.9977E-01  1.5934E+00  5.7344E-01  6.7547E-01  1.0134E+00  8.5923E-01  8.4721E-01  1.0000E-02  1.3259E+00  1.0546E+00
             1.0242E+00
 PARAMETER:  9.9767E-02  5.6587E-01 -4.5610E-01 -2.9235E-01  1.1334E-01 -5.1717E-02 -6.5804E-02 -4.9463E+00  3.8213E-01  1.5320E-01
             1.2396E-01
 GRADIENT:   1.4185E+00 -2.7377E+00 -3.9630E-01 -3.6270E-01  7.3079E-01  4.6504E-02  1.5931E-02  0.0000E+00  2.0899E-01  4.5859E-02
             4.0259E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1300
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.2133E-04 -2.8450E-02 -2.9201E-04  2.2777E-02 -3.0688E-02
 SE:             2.9824E-02  2.2820E-02  1.2392E-04  2.4098E-02  2.3284E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8873E-01  2.1251E-01  1.8453E-02  3.4458E-01  1.8751E-01

 ETASHRINKSD(%)  8.6802E-02  2.3550E+01  9.9585E+01  1.9268E+01  2.1995E+01
 ETASHRINKVR(%)  1.7353E-01  4.1553E+01  9.9998E+01  3.4824E+01  3.9152E+01
 EBVSHRINKSD(%)  4.7240E-01  2.3419E+01  9.9638E+01  2.0186E+01  2.0372E+01
 EBVSHRINKVR(%)  9.4257E-01  4.1353E+01  9.9999E+01  3.6297E+01  3.6594E+01
 RELATIVEINF(%)  9.8980E+01  5.0549E+00  2.8627E-04  6.0210E+00  1.2647E+01
 EPSSHRINKSD(%)  3.4022E+01
 EPSSHRINKVR(%)  5.6470E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2116.6540851298882     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1197.7155519252155     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.36
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2116.654       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.59E+00  5.73E-01  6.75E-01  1.01E+00  8.59E-01  8.47E-01  1.00E-02  1.33E+00  1.05E+00  1.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.406
Stop Time:
Fri Oct  1 14:52:52 CDT 2021