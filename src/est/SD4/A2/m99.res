Sat Oct  2 00:50:20 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat99.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m99.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -982.265399688131        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4410E+02  1.9626E+01 -1.4043E+01  5.5587E+01  1.6888E+02  5.8459E+01 -4.8943E+01 -1.9991E+00 -6.3448E+01 -5.4353E+01
            -1.1665E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1371.24534352183        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1432E+00  1.0074E+00  1.0442E+00  1.0746E+00  8.9385E-01  1.2059E+00  1.1321E+00  9.3770E-01  1.2198E+00  8.4122E-01
             2.5644E+00
 PARAMETER:  2.3384E-01  1.0740E-01  1.4327E-01  1.7193E-01 -1.2218E-02  2.8723E-01  2.2407E-01  3.5670E-02  2.9871E-01 -7.2906E-02
             1.0417E+00
 GRADIENT:   3.3847E+02  3.3063E+01  1.7012E+01  4.1543E+01 -3.1743E+01  7.2695E+01  6.4290E+00  3.7329E+00  2.2148E+01  1.2124E+01
            -2.5212E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1384.29735739430        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:      181
 NPARAMETR:  1.1251E+00  8.6139E-01  3.6190E-01  1.1037E+00  4.7707E-01  1.0293E+00  1.2007E+00  5.0172E-01  1.1537E+00  2.4752E-01
             2.5140E+00
 PARAMETER:  2.1790E-01 -4.9206E-02 -9.1640E-01  1.9866E-01 -6.4010E-01  1.2886E-01  2.8287E-01 -5.8971E-01  2.4297E-01 -1.2963E+00
             1.0219E+00
 GRADIENT:   2.1449E+02  6.3385E+01 -1.2685E+01  1.0227E+02 -1.9728E+01  1.8289E+01  2.7950E+00  4.0027E+00  2.3502E+01  1.8122E+00
             4.1017E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1407.70959488319        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      358
 NPARAMETR:  1.0037E+00  8.2354E-01  6.1668E-01  1.1083E+00  6.4170E-01  8.7036E-01  1.3657E+00  3.6802E-01  1.0016E+00  2.7899E-01
             2.6234E+00
 PARAMETER:  1.0368E-01 -9.4142E-02 -3.8340E-01  2.0282E-01 -3.4364E-01 -3.8850E-02  4.1164E-01 -8.9963E-01  1.0161E-01 -1.1766E+00
             1.0645E+00
 GRADIENT:  -1.3470E+01  8.0784E+00 -9.1782E+00  1.5900E+01  1.1373E+01 -8.8522E+00  4.2589E+00  9.6589E-01  2.4756E+00  1.3875E+00
            -1.1042E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1408.61409997727        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      533
 NPARAMETR:  1.0080E+00  7.1895E-01  6.9570E-01  1.1703E+00  6.5378E-01  8.7936E-01  1.4478E+00  2.1321E-01  9.6084E-01  1.5067E-01
             2.7282E+00
 PARAMETER:  1.0798E-01 -2.2997E-01 -2.6284E-01  2.5727E-01 -3.2499E-01 -2.8564E-02  4.7004E-01 -1.4455E+00  6.0050E-02 -1.7927E+00
             1.1037E+00
 GRADIENT:   2.4706E+00 -6.4082E-01 -2.1080E+00  2.8240E+00  4.5776E+00 -2.0359E+00  2.6700E-01 -3.9057E-02  1.6668E+00  8.5775E-02
             1.7351E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1412.32914238366        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      715
 NPARAMETR:  1.0054E+00  5.9701E-01  2.6376E-01  1.0599E+00  3.4684E-01  9.3339E-01  1.5332E+00  9.7998E-02  9.5823E-01  1.0000E-02
             2.3489E+00
 PARAMETER:  1.0535E-01 -4.1582E-01 -1.2327E+00  1.5821E-01 -9.5890E-01  3.1067E-02  5.2738E-01 -2.2228E+00  5.7338E-02 -4.9777E+00
             9.5395E-01
 GRADIENT:  -4.4487E+00  1.7669E+01  6.5882E+00  1.2978E+01 -2.4712E+01  6.9521E+00  4.2350E+00 -3.7823E-02 -1.2922E+00  0.0000E+00
            -9.3186E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1412.69804000214        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      891            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0070E+00  5.8654E-01  2.7118E-01  1.0590E+00  3.5261E-01  9.1401E-01  1.5138E+00  9.7236E-02  9.6013E-01  1.0000E-02
             2.3562E+00
 PARAMETER:  1.0694E-01 -4.3351E-01 -1.2050E+00  1.5734E-01 -9.4238E-01  1.0089E-02  5.1462E-01 -2.2306E+00  5.9314E-02 -5.0640E+00
             9.5707E-01
 GRADIENT:   6.7006E+01  1.1548E+01  1.7939E+01  2.3008E+01  5.7406E+01  4.6244E+00  3.0582E+00 -5.3352E-03  2.1037E+00  0.0000E+00
             7.7012E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1412.73782867110        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1070
 NPARAMETR:  1.0070E+00  5.8453E-01  2.7200E-01  1.0605E+00  3.5176E-01  9.1406E-01  1.5089E+00  2.3685E-01  9.5987E-01  1.0000E-02
             2.3479E+00
 PARAMETER:  1.0701E-01 -4.3694E-01 -1.2020E+00  1.5870E-01 -9.4480E-01  1.0142E-02  5.1136E-01 -1.3403E+00  5.9041E-02 -5.0640E+00
             9.5352E-01
 GRADIENT:   6.0991E-04  1.1062E+00  3.5552E-01 -1.0873E+00 -2.5191E-01 -1.8071E-02 -2.2842E-01  1.7487E-02 -4.3553E-02  0.0000E+00
             2.9300E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1412.75816868091        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1246
 NPARAMETR:  1.0073E+00  5.6895E-01  2.7412E-01  1.0686E+00  3.4909E-01  9.1409E-01  1.5440E+00  2.6963E-01  9.5704E-01  1.0000E-02
             2.3441E+00
 PARAMETER:  1.0731E-01 -4.6397E-01 -1.1942E+00  1.6632E-01 -9.5241E-01  1.0178E-02  5.3436E-01 -1.2107E+00  5.6090E-02 -5.0640E+00
             9.5191E-01
 GRADIENT:  -4.4834E-02 -1.5839E-01 -2.0811E-01  8.0317E-02  6.8140E-01 -1.4812E-02  6.3767E-02  1.1712E-02 -3.9859E-02  0.0000E+00
             1.2727E-01

0ITERATION NO.:   42    OBJECTIVE VALUE:  -1412.75819631399        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1303
 NPARAMETR:  1.0074E+00  5.6961E-01  2.7402E-01  1.0682E+00  3.4918E-01  9.1414E-01  1.5423E+00  2.6575E-01  9.5740E-01  1.0000E-02
             2.3441E+00
 PARAMETER:  1.0733E-01 -4.6281E-01 -1.1946E+00  1.6599E-01 -9.5218E-01  1.0232E-02  5.3330E-01 -1.2252E+00  5.6462E-02 -5.0640E+00
             9.5189E-01
 GRADIENT:   5.6257E-02 -5.1994E-03  1.0407E-01 -1.6609E-02  1.6441E-01 -6.9401E-04  4.5583E-04 -1.9878E-03  8.5507E-03  0.0000E+00
             3.1294E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1303
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1227E-03  1.9038E-02 -1.2745E-02 -1.5096E-02  5.1822E-04
 SE:             2.9211E-02  2.3604E-02  5.5231E-03  2.6086E-02  3.8171E-04
 N:                     100         100         100         100         100

 P VAL.:         9.6934E-01  4.1993E-01  2.1027E-02  5.6280E-01  1.7457E-01

 ETASHRINKSD(%)  2.1398E+00  2.0924E+01  8.1497E+01  1.2607E+01  9.8721E+01
 ETASHRINKVR(%)  4.2338E+00  3.7469E+01  9.6576E+01  2.3625E+01  9.9984E+01
 EBVSHRINKSD(%)  2.2957E+00  1.9395E+01  8.2085E+01  1.2476E+01  9.8808E+01
 EBVSHRINKVR(%)  4.5387E+00  3.5029E+01  9.6791E+01  2.3395E+01  9.9986E+01
 RELATIVEINF(%)  9.4438E+01  9.3170E+00  1.5749E-01  2.7858E+01  5.0152E-04
 EPSSHRINKSD(%)  3.4585E+01
 EPSSHRINKVR(%)  5.7208E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1412.7581963139901     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -677.60736975025191     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.63
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1412.758       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  5.70E-01  2.74E-01  1.07E+00  3.49E-01  9.14E-01  1.54E+00  2.66E-01  9.57E-01  1.00E-02  2.34E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.667
Stop Time:
Sat Oct  2 00:50:38 CDT 2021
