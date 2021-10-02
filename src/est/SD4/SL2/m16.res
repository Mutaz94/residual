Sat Oct  2 02:34:48 CDT 2021
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
$DATA ../../../../data/SD4/SL2/dat16.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1716.27352556234        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.5480E+02 -6.6626E+01 -5.7369E+01  2.1581E+01  1.1527E+02  7.6168E+01 -6.4846E+00  3.9646E+00  3.2849E+01 -8.9381E+00
             2.3911E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1728.87195429900        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0160E+00  1.1200E+00  1.0529E+00  9.7401E-01  9.6945E-01  8.5088E-01  1.0354E+00  9.9301E-01  8.6053E-01  1.0045E+00
             9.2254E-01
 PARAMETER:  1.1590E-01  2.1333E-01  1.5151E-01  7.3668E-02  6.8974E-02 -6.1489E-02  1.3480E-01  9.2985E-02 -5.0204E-02  1.0449E-01
             1.9371E-02
 GRADIENT:  -5.3823E+01  4.4491E+00  1.7995E+01 -9.9947E+00 -2.6310E+01 -2.2455E+01 -7.9108E+00 -3.1313E+00  6.1598E-01 -2.4597E+00
            -1.4661E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1729.55621133217        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  1.0288E+00  1.1223E+00  9.7942E-01  9.5808E-01  9.4457E-01  8.7993E-01  1.2573E+00  1.0374E+00  7.1823E-01  9.4502E-01
             9.5507E-01
 PARAMETER:  1.2844E-01  2.1536E-01  7.9210E-02  5.7175E-02  4.2970E-02 -2.7912E-02  3.2895E-01  1.3671E-01 -2.3097E-01  4.3455E-02
             5.4029E-02
 GRADIENT:  -1.5579E+01  1.2961E+00  1.6398E+01 -3.7569E+01 -2.5593E+01 -7.3717E+00  1.0093E+01 -7.7988E-01 -7.7209E+00 -2.4576E+00
            -1.0306E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1731.22436586347        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      546
 NPARAMETR:  1.0358E+00  1.0712E+00  8.9665E-01  9.9898E-01  9.0180E-01  8.9635E-01  1.1895E+00  7.6520E-01  7.8564E-01  9.5283E-01
             9.5147E-01
 PARAMETER:  1.3514E-01  1.6875E-01 -9.0847E-03  9.8977E-02 -3.3586E-03 -9.4267E-03  2.7354E-01 -1.6761E-01 -1.4125E-01  5.1686E-02
             5.0255E-02
 GRADIENT:   1.8168E+00  2.0049E+00 -5.8493E-01  4.7636E+00 -6.1758E-01 -1.7862E-01 -1.8029E-01  1.9267E-01 -9.3081E-02  9.7293E-01
             1.7285E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1731.35769298274        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      723
 NPARAMETR:  1.0364E+00  1.2902E+00  6.8205E-01  8.5136E-01  8.9383E-01  8.9944E-01  1.0303E+00  4.8273E-01  8.6140E-01  9.1121E-01
             9.5151E-01
 PARAMETER:  1.3579E-01  3.5480E-01 -2.8266E-01 -6.0921E-02 -1.2238E-02 -5.9815E-03  1.2985E-01 -6.2829E-01 -4.9196E-02  7.0149E-03
             5.0295E-02
 GRADIENT:  -1.8783E+00  3.6552E+00  3.4484E-01  3.3479E+00 -1.8416E+00  1.7894E-01 -1.9854E-01  9.8910E-02 -3.6755E-01 -3.6029E-01
            -7.5429E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1731.38504936641        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      903             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0391E+00  1.3707E+00  6.3103E-01  7.9389E-01  9.1082E-01  9.0027E-01  9.7981E-01  3.4470E-01  9.0378E-01  9.2088E-01
             9.5193E-01
 PARAMETER:  1.3834E-01  4.1532E-01 -3.6040E-01 -1.3082E-01  6.5849E-03 -5.0586E-03  7.9601E-02 -9.6509E-01 -1.1640E-03  1.7573E-02
             5.0736E-02
 GRADIENT:   6.5652E+02  2.7293E+02  7.2270E+00  6.0815E+01  9.1340E+00  3.9664E+01  5.3049E+00  1.6166E-01  3.2778E+00  5.8631E-01
             7.1873E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1731.39242609932        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1081             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0387E+00  1.3726E+00  6.2917E-01  7.9472E-01  9.1101E-01  8.9959E-01  9.7952E-01  3.2866E-01  9.0447E-01  9.2285E-01
             9.5205E-01
 PARAMETER:  1.3793E-01  4.1671E-01 -3.6335E-01 -1.2977E-01  6.8019E-03 -5.8139E-03  7.9307E-02 -1.0127E+00 -4.0404E-04  1.9712E-02
             5.0857E-02
 GRADIENT:   6.5302E+02  2.7622E+02  6.0864E+00  6.4135E+01  1.0905E+01  3.9388E+01  5.3850E+00  1.6238E-01  3.4697E+00  7.9298E-01
             7.9457E-01

0ITERATION NO.:   33    OBJECTIVE VALUE:  -1731.39246477948        NO. OF FUNC. EVALS.:  90
 CUMULATIVE NO. OF FUNC. EVALS.:     1171
 NPARAMETR:  1.0384E+00  1.3733E+00  6.2911E-01  7.9482E-01  9.1084E-01  8.9960E-01  9.7963E-01  3.2534E-01  9.0449E-01  9.2294E-01
             9.5205E-01
 PARAMETER:  1.3771E-01  4.1721E-01 -3.6344E-01 -1.2964E-01  6.6075E-03 -5.8003E-03  7.9416E-02 -1.0229E+00 -3.8854E-04  1.9804E-02
             5.0864E-02
 GRADIENT:   2.7248E+00 -3.1303E-01  3.6861E-01  1.5939E-01  3.5639E-01  9.4835E-02 -3.5268E-03  1.7884E-03 -2.0537E-02 -5.5664E-02
            -3.0445E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1171
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0129E-04 -1.2374E-02 -1.1577E-02  7.9992E-03 -2.1165E-02
 SE:             2.9840E-02  2.4005E-02  4.6441E-03  2.2153E-02  2.2982E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9729E-01  6.0622E-01  1.2675E-02  7.1803E-01  3.5709E-01

 ETASHRINKSD(%)  3.3029E-02  1.9581E+01  8.4442E+01  2.5784E+01  2.3006E+01
 ETASHRINKVR(%)  6.6047E-02  3.5329E+01  9.7579E+01  4.4920E+01  4.0719E+01
 EBVSHRINKSD(%)  4.6396E-01  1.9543E+01  8.6553E+01  2.7260E+01  2.1294E+01
 EBVSHRINKVR(%)  9.2577E-01  3.5266E+01  9.8192E+01  4.7089E+01  3.8054E+01
 RELATIVEINF(%)  9.8893E+01  3.2785E+00  1.4329E-01  2.3731E+00  7.4458E+00
 EPSSHRINKSD(%)  4.4762E+01
 EPSSHRINKVR(%)  6.9487E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1731.3924647794763     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -996.24163821573813     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.66
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1731.392       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  1.37E+00  6.29E-01  7.95E-01  9.11E-01  9.00E-01  9.80E-01  3.25E-01  9.04E-01  9.23E-01  9.52E-01
 


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
 #CPUT: Total CPU Time in Seconds,       14.704
Stop Time:
Sat Oct  2 02:35:04 CDT 2021
