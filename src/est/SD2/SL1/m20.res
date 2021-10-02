Fri Oct  1 11:33:49 CDT 2021
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
$DATA ../../../../data/SD2/SL1/dat20.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m20.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1502.11658201478        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.9270E+02  7.9557E+00  4.5141E+01  3.0204E+01  1.1870E+02  2.9583E+01  3.9801E+00 -2.2399E+02 -5.2570E+01 -2.5692E+01
            -8.5204E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2023.03911996127        NO. OF FUNC. EVALS.:  83
 CUMULATIVE NO. OF FUNC. EVALS.:       96
 NPARAMETR:  8.5594E-01  9.3318E-01  9.1205E-01  1.0341E+00  8.8084E-01  9.2844E-01  9.7668E-01  1.0030E+00  1.0256E+00  1.0153E+00
             1.3104E+00
 PARAMETER: -5.5549E-02  3.0838E-02  7.9412E-03  1.3352E-01 -2.6877E-02  2.5754E-02  7.6405E-02  1.0302E-01  1.2532E-01  1.1522E-01
             3.7033E-01
 GRADIENT:  -5.1998E+01  1.1175E+01 -2.6140E+01  6.6707E+01  2.6131E+01 -1.4720E+01  1.8152E+00  1.2365E+01  6.1673E+00  1.5583E+01
             1.5830E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2030.50343318778        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      273
 NPARAMETR:  8.3599E-01  6.9003E-01  9.0435E-01  1.2144E+00  7.6832E-01  1.0650E+00  9.8890E-01  5.2227E-01  1.0004E+00  9.4263E-01
             1.2651E+00
 PARAMETER: -7.9135E-02 -2.7102E-01 -5.4262E-04  2.9424E-01 -1.6355E-01  1.6302E-01  8.8837E-02 -5.4958E-01  1.0036E-01  4.0920E-02
             3.3516E-01
 GRADIENT:  -2.8200E+02  1.4874E+01 -4.6507E+00  5.5745E+01 -1.8741E+00 -2.2986E+01 -2.5124E+00 -9.9627E-01  7.5261E+00 -1.6255E+00
             1.3122E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2066.10712455205        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      456
 NPARAMETR:  9.6189E-01  8.0610E-01  8.1988E-01  1.0981E+00  7.7827E-01  9.6052E-01  1.1995E+00  4.0501E-01  9.8124E-01  9.5019E-01
             1.0590E+00
 PARAMETER:  6.1145E-02 -1.1555E-01 -9.8592E-02  1.9361E-01 -1.5068E-01  5.9720E-02  2.8189E-01 -8.0384E-01  8.1061E-02  4.8907E-02
             1.5733E-01
 GRADIENT:  -1.1384E+01 -6.7215E+00 -4.0431E+00 -5.3498E+00  5.1493E+00 -2.4566E+01  5.5148E-01  4.1467E-02 -7.0937E-01  3.3679E+00
             1.3215E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2067.24637509919        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      631
 NPARAMETR:  9.6788E-01  9.1967E-01  7.7151E-01  1.0328E+00  7.9375E-01  1.0209E+00  1.0840E+00  3.5337E-01  1.0322E+00  9.3431E-01
             1.0411E+00
 PARAMETER:  6.7356E-02  1.6255E-02 -1.5940E-01  1.3224E-01 -1.3099E-01  1.2070E-01  1.8070E-01 -9.4024E-01  1.3166E-01  3.2052E-02
             1.4030E-01
 GRADIENT:   8.4643E-01  1.5767E+00 -1.0947E+00  1.6031E+00 -4.9644E-01  4.7641E-01 -5.3024E-04  2.7784E-01 -2.4053E-01  9.3108E-01
            -5.5212E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2067.27272554163        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      807            RESET HESSIAN, TYPE II
 NPARAMETR:  9.6829E-01  9.1442E-01  7.6339E-01  1.0331E+00  7.8855E-01  1.0212E+00  1.0950E+00  2.8099E-01  1.0315E+00  9.2996E-01
             1.0424E+00
 PARAMETER:  6.7780E-02  1.0531E-02 -1.6998E-01  1.3258E-01 -1.3756E-01  1.2102E-01  1.9078E-01 -1.1694E+00  1.3103E-01  2.7389E-02
             1.4150E-01
 GRADIENT:   4.1489E+02  3.6459E+01  4.9959E+00  1.1720E+02  1.5183E+01  8.5864E+01  7.8155E+00  2.6131E-01  1.8339E+01  1.0232E+00
             1.4593E+00

0ITERATION NO.:   27    OBJECTIVE VALUE:  -2067.27272554163        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:      862
 NPARAMETR:  9.6829E-01  9.1442E-01  7.6339E-01  1.0331E+00  7.8855E-01  1.0212E+00  1.0950E+00  2.8099E-01  1.0315E+00  9.2996E-01
             1.0424E+00
 PARAMETER:  6.7780E-02  1.0531E-02 -1.6998E-01  1.3258E-01 -1.3756E-01  1.2102E-01  1.9078E-01 -1.1694E+00  1.3103E-01  2.7389E-02
             1.4150E-01
 GRADIENT:   1.7426E+00 -4.1605E-01 -2.1453E-01 -4.0340E-01  3.4032E-01  6.3932E-01  4.0232E-02  1.3624E-02  1.0291E-01  7.8279E-02
             4.4314E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      862
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.5846E-04 -9.9150E-03 -1.0590E-02  3.4594E-03 -1.6516E-02
 SE:             2.9863E-02  1.8279E-02  5.4094E-03  2.6489E-02  2.4127E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9042E-01  5.8753E-01  5.0257E-02  8.9609E-01  4.9364E-01

 ETASHRINKSD(%)  1.0000E-10  3.8762E+01  8.1878E+01  1.1260E+01  1.9172E+01
 ETASHRINKVR(%)  1.0000E-10  6.2499E+01  9.6716E+01  2.1251E+01  3.4668E+01
 EBVSHRINKSD(%)  3.5628E-01  3.8603E+01  8.3804E+01  1.1305E+01  1.8268E+01
 EBVSHRINKVR(%)  7.1129E-01  6.2304E+01  9.7377E+01  2.1331E+01  3.3199E+01
 RELATIVEINF(%)  9.8956E+01  3.3005E+00  4.6118E-01  9.7074E+00  1.0951E+01
 EPSSHRINKSD(%)  3.3814E+01
 EPSSHRINKVR(%)  5.6194E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2067.2727255416339     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1148.3341923369612     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    12.72
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2067.273       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.68E-01  9.14E-01  7.63E-01  1.03E+00  7.89E-01  1.02E+00  1.10E+00  2.81E-01  1.03E+00  9.30E-01  1.04E+00
 


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
 #CPUT: Total CPU Time in Seconds,       12.765
Stop Time:
Fri Oct  1 11:34:03 CDT 2021
