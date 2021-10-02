Fri Oct  1 09:48:41 CDT 2021
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
$DATA ../../../../data/SD2/A2/dat15.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m15.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1288.82173381457        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.4940E+02  2.6536E+01  9.3227E+01  3.2883E+00  1.8422E+02  6.1329E+01 -4.6809E+01 -9.3988E+01 -3.3834E+01 -1.1782E+02
            -1.3975E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1760.18602162293        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0041E+00  8.3723E-01  8.5309E-01  1.1202E+00  7.7219E-01  9.1631E-01  1.1817E+00  6.9044E-01  1.1547E+00  1.1802E+00
             1.9558E+00
 PARAMETER:  1.0406E-01 -7.7657E-02 -5.8886E-02  2.1353E-01 -1.5853E-01  1.2595E-02  2.6693E-01 -2.7042E-01  2.4383E-01  2.6572E-01
             7.7082E-01
 GRADIENT:   1.9919E+01  1.3038E+01  1.8812E+01  2.0664E+01 -9.9073E+00  1.2725E+01  2.6847E-01  5.1887E+00  3.1166E+01  1.3547E+01
            -7.8542E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1768.00528171135        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      198
 NPARAMETR:  9.8724E-01  5.1279E-01  6.5403E-01  1.4131E+00  5.4891E-01  8.6610E-01  1.7938E+00  8.5089E-02  8.7885E-01  8.1229E-01
             2.2061E+00
 PARAMETER:  8.7161E-02 -5.6789E-01 -3.2460E-01  4.4578E-01 -4.9982E-01 -4.3757E-02  6.8431E-01 -2.3641E+00 -2.9138E-02 -1.0790E-01
             8.9123E-01
 GRADIENT:  -1.6635E+02  5.1877E+01  1.2232E+01  1.9627E+02 -2.6952E+01 -2.2676E+01 -5.9178E+00  1.7831E-02 -2.2879E+01 -1.3963E+01
             1.9691E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1786.69660345195        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      374
 NPARAMETR:  1.0554E+00  4.5352E-01  4.4552E-01  1.2582E+00  4.2639E-01  8.9594E-01  1.7179E+00  8.1097E-02  9.3563E-01  7.3773E-01
             2.0866E+00
 PARAMETER:  1.5388E-01 -6.9071E-01 -7.0851E-01  3.2971E-01 -7.5241E-01 -9.8856E-03  6.4110E-01 -2.4121E+00  3.3462E-02 -2.0418E-01
             8.3554E-01
 GRADIENT:   2.5287E+01  3.1997E+00 -2.0536E+01  1.9067E+01  2.9066E+01 -1.3331E+00 -3.9216E+00  3.2141E-02  1.0842E+00 -3.3219E+00
            -5.1568E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1789.16402283348        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      549
 NPARAMETR:  1.0402E+00  2.8335E-01  4.6427E-01  1.3233E+00  4.0098E-01  8.9114E-01  2.3907E+00  4.6145E-02  9.0608E-01  8.0381E-01
             2.0906E+00
 PARAMETER:  1.3940E-01 -1.1611E+00 -6.6729E-01  3.8011E-01 -8.1384E-01 -1.5258E-02  9.7159E-01 -2.9760E+00  1.3763E-03 -1.1840E-01
             8.3747E-01
 GRADIENT:   1.1786E+00  2.1279E-01 -1.3396E+00 -3.3710E+00  1.8343E+00 -6.9039E-01  6.8129E-01  1.8051E-02 -7.9576E-02  3.6639E-01
             1.2288E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1789.32939731888        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      729
 NPARAMETR:  1.0350E+00  2.1140E-01  5.0573E-01  1.3829E+00  4.1192E-01  8.9519E-01  2.6663E+00  3.9774E-02  8.9564E-01  8.4451E-01
             2.0867E+00
 PARAMETER:  1.3443E-01 -1.4540E+00 -5.8176E-01  4.2421E-01 -7.8693E-01 -1.0721E-02  1.0807E+00 -3.1245E+00 -1.0214E-02 -6.8999E-02
             8.3560E-01
 GRADIENT:  -2.4905E+00  1.5635E+00  8.7182E+00  1.1693E+01 -1.2450E+01  1.9434E+00 -1.6508E+00  1.3059E-02 -1.6772E-01 -9.0711E-01
            -3.3969E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1789.53216667223        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      904
 NPARAMETR:  1.0348E+00  1.8058E-01  4.8529E-01  1.3784E+00  3.9812E-01  8.8957E-01  2.9400E+00  3.0214E-02  8.9753E-01  8.4584E-01
             2.0866E+00
 PARAMETER:  1.3418E-01 -1.6116E+00 -6.2301E-01  4.2095E-01 -8.2101E-01 -1.7021E-02  1.1784E+00 -3.3995E+00 -8.1110E-03 -6.7423E-02
             8.3553E-01
 GRADIENT:  -3.5391E-02 -6.1187E-02  2.3761E-01  5.9693E-01 -3.2089E-01  9.3212E-03 -2.3092E-01  8.6087E-03 -3.8800E-02  9.3932E-02
             1.3999E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1789.53648329735        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1082
 NPARAMETR:  1.0348E+00  1.8060E-01  4.8510E-01  1.3780E+00  3.9806E-01  8.8952E-01  2.9429E+00  1.3625E-02  8.9772E-01  8.4604E-01
             2.0862E+00
 PARAMETER:  1.3420E-01 -1.6114E+00 -6.2340E-01  4.2062E-01 -8.2115E-01 -1.7077E-02  1.1794E+00 -4.1958E+00 -7.8993E-03 -6.7190E-02
             8.3536E-01
 GRADIENT:   2.9864E-02 -1.5387E-03  7.7192E-02 -9.0702E-02  5.3000E-02 -1.7613E-03 -5.3077E-02  1.7609E-03  4.1379E-03  2.1161E-02
             1.2404E-02

0ITERATION NO.:   38    OBJECTIVE VALUE:  -1789.53668497437        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:     1175
 NPARAMETR:  1.0347E+00  1.8043E-01  4.8503E-01  1.3782E+00  3.9800E-01  8.8952E-01  2.9445E+00  1.0000E-02  8.9773E-01  8.4606E-01
             2.0862E+00
 PARAMETER:  1.3416E-01 -1.6124E+00 -6.2355E-01  4.2076E-01 -8.2131E-01 -1.7078E-02  1.1799E+00 -4.5671E+00 -7.8913E-03 -6.7169E-02
             8.3534E-01
 GRADIENT:  -6.9329E-02  2.0125E-03  2.2777E-02  2.0628E-01  5.1021E-02 -3.2122E-03 -6.1013E-02  0.0000E+00  1.7784E-03  2.5070E-02
             1.1504E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1175
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2253E-03  2.2220E-02 -1.3001E-04 -1.4087E-02  8.2404E-04
 SE:             2.9376E-02  1.3146E-02  2.0638E-04  2.7228E-02  2.2953E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6673E-01  9.0968E-02  5.2873E-01  6.0490E-01  9.7136E-01

 ETASHRINKSD(%)  1.5872E+00  5.5960E+01  9.9309E+01  8.7828E+00  2.3104E+01
 ETASHRINKVR(%)  3.1491E+00  8.0605E+01  9.9995E+01  1.6794E+01  4.0870E+01
 EBVSHRINKSD(%)  1.7169E+00  6.9025E+01  9.9260E+01  6.8259E+00  1.8879E+01
 EBVSHRINKVR(%)  3.4043E+00  9.0405E+01  9.9995E+01  1.3186E+01  3.4193E+01
 RELATIVEINF(%)  9.4259E+01  3.0607E+00  4.1036E-04  2.9993E+01  4.8815E+00
 EPSSHRINKSD(%)  2.9407E+01
 EPSSHRINKVR(%)  5.0166E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1789.5366849743671     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -870.59815176969437     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.83
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1789.537       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.80E-01  4.85E-01  1.38E+00  3.98E-01  8.90E-01  2.94E+00  1.00E-02  8.98E-01  8.46E-01  2.09E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.866
Stop Time:
Fri Oct  1 09:49:01 CDT 2021
