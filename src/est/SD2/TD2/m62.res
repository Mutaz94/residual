Fri Oct  1 14:54:34 CDT 2021
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
$DATA ../../../../data/SD2/TD2/dat62.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m62.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2079.13028577418        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2271E+02  2.9078E+01 -3.2942E+01  1.0241E+02  1.0768E+02  7.2788E+01  9.0166E-01 -1.7269E+00 -1.5947E+01 -8.6586E+00
            -7.1168E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2088.03868694769        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0246E+00  9.4102E-01  9.8275E-01  1.0327E+00  8.9179E-01  9.1148E-01  9.8527E-01  1.0121E+00  1.1577E+00  9.5530E-01
             1.0648E+00
 PARAMETER:  1.2435E-01  3.9210E-02  8.2599E-02  1.3217E-01 -1.4528E-02  7.3172E-03  8.5165E-02  1.1205E-01  2.4640E-01  5.4273E-02
             1.6279E-01
 GRADIENT:   6.4269E+00  5.4264E+00  4.6722E+00  5.8425E+00 -6.8274E+00 -1.4864E+01  5.7716E+00  7.1523E-02  1.5119E+01  5.5916E+00
            -1.2950E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2088.90891416937        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  1.0260E+00  8.2487E-01  9.6681E-01  1.1081E+00  8.2536E-01  9.2849E-01  8.8296E-01  1.0346E+00  1.1037E+00  8.6675E-01
             1.0740E+00
 PARAMETER:  1.2570E-01 -9.2526E-02  6.6246E-02  2.0262E-01 -9.1941E-02  2.5808E-02 -2.4470E-02  1.3403E-01  1.9865E-01 -4.3006E-02
             1.7139E-01
 GRADIENT:   1.1164E+01  1.3151E+01  8.9284E+00  1.7123E+01 -2.5210E+01 -6.9509E+00  1.2281E+00 -6.2117E-01  1.1492E+01  6.5442E-01
            -6.5305E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2089.84563035712        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      548
 NPARAMETR:  1.0190E+00  7.2342E-01  1.1621E+00  1.1702E+00  8.8357E-01  9.4403E-01  6.0729E-01  1.2004E+00  1.0506E+00  9.5224E-01
             1.0852E+00
 PARAMETER:  1.1880E-01 -2.2376E-01  2.5021E-01  2.5717E-01 -2.3785E-02  4.2402E-02 -3.9875E-01  2.8265E-01  1.4941E-01  5.1062E-02
             1.8178E-01
 GRADIENT:  -1.7116E+00  3.5526E+00  2.2129E+00  4.9035E+00 -3.5047E+00  4.9021E-01  4.5698E-01  1.1604E+00  1.0741E+00  1.9728E+00
             1.5129E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2089.96714016925        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      730             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0197E+00  6.3399E-01  1.1583E+00  1.2172E+00  8.5575E-01  9.4262E-01  4.3657E-01  1.1698E+00  1.0137E+00  9.2358E-01
             1.0845E+00
 PARAMETER:  1.1947E-01 -3.5573E-01  2.4694E-01  2.9657E-01 -5.5774E-02  4.0906E-02 -7.2880E-01  2.5683E-01  1.1360E-01  2.0502E-02
             1.8110E-01
 GRADIENT:   4.7804E+02  6.4953E+01  3.6450E+00  3.0960E+02  1.0419E+01  4.1569E+01  2.2889E+00  1.0179E+00  1.3708E+01  4.2385E-01
             1.8590E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2089.97552590693        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      909
 NPARAMETR:  1.0198E+00  6.3460E-01  1.1605E+00  1.2182E+00  8.5516E-01  9.4234E-01  4.2529E-01  1.1682E+00  1.0183E+00  9.2487E-01
             1.0844E+00
 PARAMETER:  1.1958E-01 -3.5477E-01  2.4885E-01  2.9734E-01 -5.6464E-02  4.0614E-02 -7.5499E-01  2.5544E-01  1.1811E-01  2.1894E-02
             1.8105E-01
 GRADIENT:   2.9430E+00 -3.9456E-01 -9.1491E-02 -2.2173E+00 -3.3875E-01  1.5873E-01  1.9423E-02 -6.2955E-02 -1.0536E-01 -7.5060E-02
            -3.4637E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2089.97617079700        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1091             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0195E+00  6.3511E-01  1.1614E+00  1.2182E+00  8.5560E-01  9.4234E-01  4.1834E-01  1.1693E+00  1.0190E+00  9.2549E-01
             1.0844E+00
 PARAMETER:  1.1930E-01 -3.5396E-01  2.4962E-01  2.9739E-01 -5.5957E-02  4.0607E-02 -7.7145E-01  2.5643E-01  1.1880E-01  2.2570E-02
             1.8105E-01
 GRADIENT:   4.7709E+02  6.6454E+01  5.4779E+00  3.1273E+02  7.1781E+00  4.1484E+01  2.2534E+00  7.6561E-01  1.5823E+01  5.8479E-01
             1.7825E+00

0ITERATION NO.:   32    OBJECTIVE VALUE:  -2089.97617079700        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1148
 NPARAMETR:  1.0195E+00  6.3511E-01  1.1614E+00  1.2182E+00  8.5560E-01  9.4234E-01  4.1834E-01  1.1693E+00  1.0190E+00  9.2549E-01
             1.0844E+00
 PARAMETER:  1.1930E-01 -3.5396E-01  2.4962E-01  2.9739E-01 -5.5957E-02  4.0607E-02 -7.7145E-01  2.5643E-01  1.1880E-01  2.2570E-02
             1.8105E-01
 GRADIENT:  -1.1079E-02 -5.9434E-03 -5.3689E-05  3.1204E-01 -5.1964E-01 -2.3976E-03 -1.8421E-03 -5.5182E-02 -1.2684E-01 -5.1658E-02
            -2.6670E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1148
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.7362E-04 -1.3032E-02 -3.0844E-02 -1.3324E-03 -2.9664E-02
 SE:             2.9867E-02  5.2009E-03  1.7494E-02  2.9158E-02  2.1848E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8201E-01  1.2219E-02  7.7882E-02  9.6355E-01  1.7455E-01

 ETASHRINKSD(%)  1.0000E-10  8.2576E+01  4.1392E+01  2.3178E+00  2.6807E+01
 ETASHRINKVR(%)  1.0000E-10  9.6964E+01  6.5652E+01  4.5820E+00  4.6427E+01
 EBVSHRINKSD(%)  4.1582E-01  8.4136E+01  4.4479E+01  2.4911E+00  2.4770E+01
 EBVSHRINKVR(%)  8.2990E-01  9.7483E+01  6.9174E+01  4.9201E+00  4.3405E+01
 RELATIVEINF(%)  9.8194E+01  2.0710E-01  6.9823E+00  1.0248E+01  1.2067E+01
 EPSSHRINKSD(%)  3.4223E+01
 EPSSHRINKVR(%)  5.6734E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2089.9761707970038     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1171.0376375923311     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.01
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2089.976       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  6.35E-01  1.16E+00  1.22E+00  8.56E-01  9.42E-01  4.18E-01  1.17E+00  1.02E+00  9.25E-01  1.08E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.053
Stop Time:
Fri Oct  1 14:54:53 CDT 2021
