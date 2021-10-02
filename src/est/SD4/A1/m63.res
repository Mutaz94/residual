Sat Oct  2 00:08:43 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat63.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m63.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1348.80490869701        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.6273E+02 -2.2199E+01 -3.8697E+01  5.8803E+00  1.2376E+02  3.0428E+01 -2.4712E+01  1.0157E+01 -4.9854E+01 -6.0280E+00
            -5.9031E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1516.59117190856        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0631E+00  9.9397E-01  1.1231E+00  1.0374E+00  9.4767E-01  1.0952E+00  1.0714E+00  8.9563E-01  1.2015E+00  7.8272E-01
             2.1428E+00
 PARAMETER:  1.6115E-01  9.3947E-02  2.1612E-01  1.3668E-01  4.6251E-02  1.9091E-01  1.6898E-01 -1.0223E-02  2.8356E-01 -1.4498E-01
             8.6209E-01
 GRADIENT:   1.8283E+02 -7.0270E+00  6.4374E+00 -1.3344E+01 -1.4075E+01  4.5862E+01  3.7514E+00  5.2554E+00  1.5244E+01  1.1885E+01
             5.6138E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1524.33985381217        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.0583E+00  8.3818E-01  5.8068E-01  1.1111E+00  6.3594E-01  1.0199E+00  1.3843E+00  3.6655E-01  1.0298E+00  4.5130E-01
             2.0667E+00
 PARAMETER:  1.5667E-01 -7.6522E-02 -4.4356E-01  2.0535E-01 -3.5265E-01  1.1970E-01  4.2517E-01 -9.0362E-01  1.2933E-01 -6.9561E-01
             8.2597E-01
 GRADIENT:   1.6306E+02 -6.3994E-01 -3.8210E+01  6.0339E+01  5.5283E+01  1.4075E+01  6.8712E+00  4.0704E+00  1.3590E+01  9.2019E+00
             5.4472E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1533.68498844934        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      333
 NPARAMETR:  1.0411E+00  5.5869E-01  5.2592E-01  1.2598E+00  5.0583E-01  9.9210E-01  1.9766E+00  1.7212E-01  9.0325E-01  3.6103E-01
             1.8357E+00
 PARAMETER:  1.4029E-01 -4.8217E-01 -5.4260E-01  3.3097E-01 -5.8156E-01  9.2065E-02  7.8140E-01 -1.6596E+00 -1.7526E-03 -9.1880E-01
             7.0742E-01
 GRADIENT:  -2.4043E+01  1.7851E+01 -2.0586E+01  5.4306E+01  1.8705E+01 -8.1479E+00  2.4514E+00  9.2278E-01  4.1283E-01  2.3053E-01
            -7.3706E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1537.55010290374        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      508
 NPARAMETR:  1.0528E+00  3.6997E-01  4.4176E-01  1.2778E+00  4.0898E-01  1.0139E+00  2.3780E+00  3.6757E-02  8.6695E-01  4.3355E-01
             1.7642E+00
 PARAMETER:  1.5146E-01 -8.9433E-01 -7.1698E-01  3.4513E-01 -7.9409E-01  1.1378E-01  9.6624E-01 -3.2034E+00 -4.2773E-02 -7.3576E-01
             6.6771E-01
 GRADIENT:   3.3841E+00  3.8580E+00  6.7241E+00 -2.7736E+00 -1.2647E+01  9.3667E-01 -2.2986E+00  5.2925E-02 -2.9140E+00  3.6047E-01
            -8.8355E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1538.29157887937        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      685
 NPARAMETR:  1.0483E+00  3.1633E-01  4.6874E-01  1.3120E+00  4.1700E-01  1.0096E+00  2.6601E+00  2.8937E-02  8.7748E-01  4.6052E-01
             1.7751E+00
 PARAMETER:  1.4719E-01 -1.0510E+00 -6.5771E-01  3.7155E-01 -7.7466E-01  1.0958E-01  1.0784E+00 -3.4426E+00 -3.0702E-02 -6.7540E-01
             6.7386E-01
 GRADIENT:  -1.3998E+00  3.5449E-01  2.9674E+00 -3.7189E+00 -3.7494E+00  4.3087E-01 -1.6837E+00  2.9657E-02  1.5836E+00  7.0910E-01
             1.9362E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1538.35042765403        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      842
 NPARAMETR:  1.0484E+00  3.1096E-01  4.6895E-01  1.3161E+00  4.1663E-01  1.0080E+00  2.7202E+00  1.0295E-02  8.7185E-01  4.5440E-01
             1.7728E+00
 PARAMETER:  1.4729E-01 -1.0681E+00 -6.5727E-01  3.7465E-01 -7.7555E-01  1.0799E-01  1.1007E+00 -4.4761E+00 -3.7143E-02 -6.8877E-01
             6.7257E-01
 GRADIENT:  -7.7702E-01  6.7287E-01  1.7312E+00  4.3829E-01 -2.5029E+00 -1.1948E-01 -6.2392E-01  3.3639E-03  3.1094E-01 -8.6664E-02
             6.9295E-01

0ITERATION NO.:   33    OBJECTIVE VALUE:  -1538.36168225861        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      934
 NPARAMETR:  1.0486E+00  3.0547E-01  4.6921E-01  1.3178E+00  4.1627E-01  1.0083E+00  2.7655E+00  1.0000E-02  8.6928E-01  4.5472E-01
             1.7701E+00
 PARAMETER:  1.4748E-01 -1.0859E+00 -6.5671E-01  3.7594E-01 -7.7642E-01  1.0826E-01  1.1172E+00 -5.0103E+00 -4.0093E-02 -6.8807E-01
             6.7106E-01
 GRADIENT:   1.9228E-02 -1.7975E-01  5.5073E-01 -8.9295E-02 -2.4119E-01 -7.6725E-02 -2.4623E-01  0.0000E+00  8.3192E-02 -7.7358E-02
             1.6219E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      934
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.0877E-03  4.8009E-02 -6.0734E-04 -2.7702E-02  2.4231E-02
 SE:             2.9584E-02  2.0239E-02  2.2685E-04  2.6371E-02  1.6025E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4374E-01  1.7684E-02  7.4236E-03  2.9350E-01  1.3052E-01

 ETASHRINKSD(%)  8.8981E-01  3.2198E+01  9.9240E+01  1.1655E+01  4.6313E+01
 ETASHRINKVR(%)  1.7717E+00  5.4029E+01  9.9994E+01  2.1952E+01  7.1177E+01
 EBVSHRINKSD(%)  1.2536E+00  3.7641E+01  9.9073E+01  1.0061E+01  4.1811E+01
 EBVSHRINKVR(%)  2.4915E+00  6.1113E+01  9.9991E+01  1.9110E+01  6.6140E+01
 RELATIVEINF(%)  9.6893E+01  1.3354E+01  3.6552E-04  3.8125E+01  1.3701E+00
 EPSSHRINKSD(%)  3.8207E+01
 EPSSHRINKVR(%)  6.1816E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1538.3616822586123     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -803.21085569487411     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    12.02
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1538.362       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  3.05E-01  4.69E-01  1.32E+00  4.16E-01  1.01E+00  2.77E+00  1.00E-02  8.69E-01  4.55E-01  1.77E+00
 


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
 #CPUT: Total CPU Time in Seconds,       12.057
Stop Time:
Sat Oct  2 00:08:56 CDT 2021
