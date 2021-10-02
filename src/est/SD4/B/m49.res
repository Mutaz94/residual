Fri Oct  1 23:23:34 CDT 2021
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
$DATA ../../../../data/SD4/B/dat49.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m49.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1612.45718726611        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.2082E+02 -1.3421E+01 -2.1014E+01  4.1550E+01  3.7663E+01  4.1844E+01 -3.0812E+01  6.7892E-01 -5.6165E+00 -1.2601E+01
             2.8283E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1622.54186404329        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:      176
 NPARAMETR:  9.6360E-01  1.0824E+00  1.0439E+00  9.6965E-01  1.0294E+00  1.0830E+00  1.2307E+00  1.0040E+00  1.0848E+00  1.0699E+00
             8.7212E-01
 PARAMETER:  6.2923E-02  1.7919E-01  1.4294E-01  6.9178E-02  1.2900E-01  1.7970E-01  3.0762E-01  1.0396E-01  1.8139E-01  1.6758E-01
            -3.6827E-02
 GRADIENT:   2.1043E+01 -7.0247E+00  5.7320E+00 -2.9970E+00 -1.3847E+01  1.6191E+01 -9.1843E+00 -2.1967E+00  9.9077E+00 -1.6280E+00
            -2.6579E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1623.69355942277        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      357
 NPARAMETR:  9.6497E-01  1.1371E+00  1.0764E+00  9.3350E-01  1.0558E+00  1.0802E+00  1.3187E+00  1.1375E+00  1.0154E+00  1.1030E+00
             8.9072E-01
 PARAMETER:  6.4347E-02  2.2847E-01  1.7366E-01  3.1185E-02  1.5425E-01  1.7717E-01  3.7662E-01  2.2886E-01  1.1527E-01  1.9803E-01
            -1.5720E-02
 GRADIENT:   2.3635E+01  1.9208E+00  1.1981E+01 -1.7673E+01 -2.9537E+01  1.5193E+01  1.8462E+00 -6.7974E-01 -1.2424E+00  3.4178E+00
            -1.6739E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1624.28582732422        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:      546
 NPARAMETR:  9.6457E-01  1.1366E+00  1.0831E+00  9.3360E-01  1.0589E+00  1.0439E+00  1.3175E+00  1.1490E+00  1.0190E+00  1.1062E+00
             9.2221E-01
 PARAMETER:  6.3922E-02  2.2801E-01  1.7980E-01  3.1296E-02  1.5724E-01  1.4292E-01  3.7574E-01  2.3886E-01  1.1881E-01  2.0089E-01
             1.9014E-02
 GRADIENT:   2.3832E+01  5.8514E-01  1.0694E+01 -1.7720E+01 -2.8853E+01  1.7257E+00  2.1511E+00 -3.4177E-01 -4.7117E-01  4.2384E+00
            -1.5687E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1624.79907308600        NO. OF FUNC. EVALS.: 123
 CUMULATIVE NO. OF FUNC. EVALS.:      669
 NPARAMETR:  9.5533E-01  1.1341E+00  1.0646E+00  9.4009E-01  1.0726E+00  1.0374E+00  1.3051E+00  1.1517E+00  1.0211E+00  1.0898E+00
             9.2570E-01
 PARAMETER:  5.4297E-02  2.2587E-01  1.6263E-01  3.8221E-02  1.7010E-01  1.3671E-01  3.6629E-01  2.4127E-01  1.2088E-01  1.8595E-01
             2.2792E-02
 GRADIENT:   4.9367E+02  1.1396E+02  6.9199E-01  7.5923E+01  9.7829E+00  1.0973E+02  3.0576E+01  1.5976E+00  1.1957E+01  2.8821E+00
             8.7363E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1624.82632034068        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:      859
 NPARAMETR:  9.5447E-01  1.1410E+00  1.0638E+00  9.3962E-01  1.0767E+00  1.0414E+00  1.3000E+00  1.1274E+00  1.0189E+00  1.0873E+00
             9.2588E-01
 PARAMETER:  5.3404E-02  2.3187E-01  1.6181E-01  3.7721E-02  1.7389E-01  1.4061E-01  3.6240E-01  2.1990E-01  1.1876E-01  1.8370E-01
             2.2993E-02
 GRADIENT:   2.0687E+00  1.8089E-01 -1.1262E+00  1.5060E+00 -1.9270E-01  9.5802E-01 -1.9363E-01 -5.9425E-02 -4.6439E-01 -3.3064E-01
            -1.7857E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1624.83066853343        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      977
 NPARAMETR:  9.5352E-01  1.1398E+00  1.0712E+00  9.3762E-01  1.0781E+00  1.0406E+00  1.3016E+00  1.1315E+00  1.0225E+00  1.0903E+00
             9.2623E-01
 PARAMETER:  5.2406E-02  2.3089E-01  1.6877E-01  3.5588E-02  1.7519E-01  1.3982E-01  3.6360E-01  2.2358E-01  1.2222E-01  1.8649E-01
             2.3366E-02
 GRADIENT:   4.8949E+02  1.1915E+02  3.0933E+00  7.5553E+01  1.0755E+01  1.1404E+02  3.0372E+01  1.2257E-01  1.1493E+01  1.8919E+00
             7.9538E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1624.84506238197        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1158
 NPARAMETR:  9.5082E-01  1.1436E+00  1.0974E+00  9.3882E-01  1.0918E+00  1.0348E+00  1.2888E+00  1.1872E+00  1.0263E+00  1.1007E+00
             9.2634E-01
 PARAMETER:  4.9565E-02  2.3420E-01  1.9293E-01  3.6868E-02  1.8785E-01  1.3423E-01  3.5372E-01  2.7160E-01  1.2595E-01  1.9594E-01
             2.3484E-02
 GRADIENT:  -5.5496E+00 -6.0904E-01 -1.1021E+00  6.0294E-01 -1.9541E-01 -1.6066E+00 -4.3156E-01 -2.8708E-03 -1.9299E-01 -1.3870E-01
            -3.9063E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1624.86754601896        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     1326             RESET HESSIAN, TYPE I
 NPARAMETR:  9.5467E-01  1.1443E+00  1.0999E+00  9.3821E-01  1.0913E+00  1.0433E+00  1.2923E+00  1.1864E+00  1.0275E+00  1.1008E+00
             9.2703E-01
 PARAMETER:  5.3615E-02  2.3478E-01  1.9523E-01  3.6219E-02  1.8738E-01  1.4237E-01  3.5645E-01  2.7091E-01  1.2714E-01  1.9601E-01
             2.4235E-02
 GRADIENT:   4.9201E+02  1.2335E+02  3.0698E+00  7.7305E+01  1.1733E+01  1.1703E+02  2.9459E+01  3.8648E-01  1.2070E+01  2.0127E+00
             1.0392E+00

0ITERATION NO.:   42    OBJECTIVE VALUE:  -1624.86754601896        NO. OF FUNC. EVALS.:  87
 CUMULATIVE NO. OF FUNC. EVALS.:     1413
 NPARAMETR:  9.5489E-01  1.1442E+00  1.0998E+00  9.3832E-01  1.0909E+00  1.0418E+00  1.2913E+00  1.1864E+00  1.0276E+00  1.1009E+00
             9.2677E-01
 PARAMETER:  5.3615E-02  2.3478E-01  1.9523E-01  3.6219E-02  1.8738E-01  1.4237E-01  3.5645E-01  2.7091E-01  1.2714E-01  1.9601E-01
             2.4235E-02
 GRADIENT:  -2.8977E+05  1.8078E-01  9.5369E-02 -3.0049E-01  1.5465E+05  6.2369E-01  8.1298E+04 -1.9511E+02 -3.1956E-02 -5.5030E-02
             1.3449E-01
 NUMSIGDIG:         2.3         3.0         2.8         2.6         2.3         1.7         2.3         5.3         2.8         2.7
                    2.2

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1413
 NO. OF SIG. DIGITS IN FINAL EST.:  1.7
 ADDITIONAL PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.0853E-04 -8.7534E-03 -3.7328E-02  2.7500E-03 -3.6116E-02
 SE:             2.9821E-02  2.1957E-02  1.3409E-02  2.2389E-02  2.1709E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9710E-01  6.9014E-01  5.3721E-03  9.0225E-01  9.6181E-02

 ETASHRINKSD(%)  9.5607E-02  2.6443E+01  5.5079E+01  2.4993E+01  2.7273E+01
 ETASHRINKVR(%)  1.9112E-01  4.5893E+01  7.9821E+01  4.3739E+01  4.7108E+01
 EBVSHRINKSD(%)  3.4608E-01  2.6623E+01  5.9158E+01  2.6080E+01  2.3726E+01
 EBVSHRINKVR(%)  6.9096E-01  4.6159E+01  8.3319E+01  4.5358E+01  4.1823E+01
 RELATIVEINF(%)  9.8804E+01  2.4692E+00  2.1154E+00  2.5473E+00  1.3390E+01
 EPSSHRINKSD(%)  4.5787E+01
 EPSSHRINKVR(%)  7.0610E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1624.8675460189622     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -889.71671945522405     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.09
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1624.868       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.55E-01  1.14E+00  1.10E+00  9.38E-01  1.09E+00  1.04E+00  1.29E+00  1.19E+00  1.03E+00  1.10E+00  9.27E-01
 


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
 #CPUT: Total CPU Time in Seconds,       20.130
Stop Time:
Fri Oct  1 23:23:56 CDT 2021
