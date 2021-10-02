Fri Oct  1 20:01:45 CDT 2021
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
$DATA ../../../../data/SD3/SL3/dat48.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      699
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

 TOT. NO. OF OBS RECS:      599
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
 RAW OUTPUT FILE (FILE): m48.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1185.42989796161        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3467E+02 -8.1632E+01 -1.7142E+01  1.4894E+02  7.7565E+01  1.3557E+01 -3.7426E+01 -5.5782E+01 -3.4244E+01  7.3300E+00
            -2.4321E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1961.21155515906        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.6412E-01  1.2696E+00  9.8514E-01  8.4207E-01  1.1538E+00  1.0416E+00  1.0015E+00  9.9141E-01  8.3406E-01  9.1230E-01
             2.0395E+00
 PARAMETER:  6.3462E-02  3.3871E-01  8.5025E-02 -7.1897E-02  2.4302E-01  1.4073E-01  1.0150E-01  9.1374E-02 -8.1455E-02  8.2082E-03
             8.1271E-01
 GRADIENT:   4.3289E+00 -5.0873E+00 -1.5361E+01 -2.6285E+00  7.3374E+01  2.9156E+00 -2.6387E+00 -5.1846E+00 -2.1610E+01 -2.5340E+01
            -1.7190E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1971.26152806875        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      242
 NPARAMETR:  9.9164E-01  1.6433E+00  9.1273E-01  6.7902E-01  1.3383E+00  1.0353E+00  7.6715E-01  1.0834E+00  1.2007E+00  1.2892E+00
             2.0053E+00
 PARAMETER:  9.1606E-02  5.9669E-01  8.6846E-03 -2.8711E-01  3.9142E-01  1.3474E-01 -1.6507E-01  1.8008E-01  2.8294E-01  3.5401E-01
             7.9578E-01
 GRADIENT:  -5.0284E+01  4.2354E+01 -5.0264E+00  5.5997E+01  1.4812E+01 -1.4842E+01 -7.8822E+00 -4.4168E+00 -4.9999E+00  8.9268E+00
            -1.8471E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1988.77051093909        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      419
 NPARAMETR:  1.0226E+00  1.6271E+00  1.4667E+00  6.8166E-01  1.5165E+00  1.0523E+00  8.1955E-01  2.5104E+00  1.1062E+00  1.2605E+00
             2.2832E+00
 PARAMETER:  1.2231E-01  5.8677E-01  4.8299E-01 -2.8323E-01  5.1643E-01  1.5094E-01 -9.8997E-02  1.0204E+00  2.0095E-01  3.3154E-01
             9.2556E-01
 GRADIENT:   6.9409E+00 -1.3409E+00 -1.4296E+01  2.5649E+01  3.3195E+01 -5.2341E+00  2.2875E+00  1.4108E+00  3.0738E+00 -3.7808E+00
             3.5316E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1992.47601478606        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      594
 NPARAMETR:  1.0175E+00  1.6308E+00  4.9669E+00  6.7810E-01  1.7539E+00  1.0649E+00  8.3442E-01  4.7254E+00  9.7143E-01  1.4942E+00
             2.2609E+00
 PARAMETER:  1.1739E-01  5.8908E-01  1.7028E+00 -2.8846E-01  6.6181E-01  1.6288E-01 -8.1022E-02  1.6530E+00  7.1009E-02  5.0159E-01
             9.1577E-01
 GRADIENT:  -1.3651E+00 -8.9409E+00 -4.5604E-01 -5.4386E+00  6.1277E+00 -5.3272E-01 -3.8390E-01 -8.0756E-02  4.1551E-02  1.3614E-01
            -8.8856E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1992.59755968982        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      770
 NPARAMETR:  1.0182E+00  1.5737E+00  5.6076E+00  7.2343E-01  1.7368E+00  1.0665E+00  8.6148E-01  4.7698E+00  9.2479E-01  1.4828E+00
             2.2623E+00
 PARAMETER:  1.1802E-01  5.5342E-01  1.8241E+00 -2.2375E-01  6.5206E-01  1.6437E-01 -4.9099E-02  1.6623E+00  2.1813E-02  4.9394E-01
             9.1640E-01
 GRADIENT:  -2.2380E-01  1.4927E+00 -1.6508E-02  4.9157E-01 -8.4613E-01  4.2663E-02 -4.2575E-02  2.1529E-01 -1.1166E-01 -2.0152E-01
            -8.1013E-01

0ITERATION NO.:   29    OBJECTIVE VALUE:  -1992.61560921165        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:      897
 NPARAMETR:  1.0183E+00  1.5407E+00  5.7966E+00  7.4573E-01  1.7347E+00  1.0664E+00  8.7270E-01  4.7318E+00  9.1048E-01  1.4803E+00
             2.2631E+00
 PARAMETER:  1.1810E-01  5.3223E-01  1.8573E+00 -1.9340E-01  6.5082E-01  1.6426E-01 -3.6159E-02  1.6543E+00  6.2123E-03  4.9226E-01
             9.1675E-01
 GRADIENT:  -3.6423E-02  3.2457E-01  1.3092E-03  1.8573E-01 -1.6615E-01  9.3286E-03 -2.0856E-02  3.4537E-02 -2.5013E-02 -2.6934E-02
            -1.7513E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      897
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.9219E-04 -1.4131E-02 -4.6107E-02  2.7219E-03 -4.2090E-02
 SE:             2.9510E-02  2.2239E-02  1.4152E-02  1.7872E-02  2.2721E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7858E-01  5.2517E-01  1.1225E-03  8.7895E-01  6.3956E-02

 ETASHRINKSD(%)  1.1380E+00  2.5495E+01  5.2588E+01  4.0128E+01  2.3883E+01
 ETASHRINKVR(%)  2.2630E+00  4.4490E+01  7.7521E+01  6.4153E+01  4.2062E+01
 EBVSHRINKSD(%)  1.2767E+00  2.4951E+01  6.5305E+01  4.3877E+01  1.7842E+01
 EBVSHRINKVR(%)  2.5370E+00  4.3676E+01  8.7962E+01  6.8502E+01  3.2500E+01
 RELATIVEINF(%)  9.7307E+01  1.9010E+00  5.6991E+00  1.0615E+00  4.3764E+01
 EPSSHRINKSD(%)  2.5184E+01
 EPSSHRINKVR(%)  4.4026E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          599
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1100.8883627791979     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1992.6156092116476     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -891.72724643244965     
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
 





 #OBJV:********************************************    -1992.616       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.54E+00  5.80E+00  7.46E-01  1.73E+00  1.07E+00  8.73E-01  4.73E+00  9.10E-01  1.48E+00  2.26E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.102
Stop Time:
Fri Oct  1 20:02:02 CDT 2021
