Fri Oct  1 16:27:25 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	One-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/28/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/SD2/All/dat40.csv ignore=@
$SUBR ADVAN2 TRANS2
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK

ET1 = EXP(ETA(1)*THETA(4))
ET2 = EXP(ETA(2)*THETA(5))
ET3 = EXP(ETA(3)*THETA(6))


CL = 5.0 * THETA(1) * ET1
V = 85  * THETA(2) * ET2
KA = 0.7 * THETA(3) * ET3

SC = V
$ERROR
CVERR 	= 0.05
W  	= THETA(7)*F*CVERR
Y  	= F + W * ERR(1)
$THETA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvKA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvK
(0,1) ; RUV
$OMEGA (0.09 FIX)x3
$SIGMA  1  FIX;        [P]

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
0LENGTH OF THETA:   7
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   3
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
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
0OMEGA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0INITIAL ESTIMATE OF SIGMA:
 0.1000E+01
0SIGMA CONSTRAINED TO BE THIS INITIAL ESTIMATE
1DOUBLE PRECISION PREDPP VERSION 7.5.0

 ONE COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN2)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   3
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   ELIMINATION RATE (K) IS BASIC PK PARAMETER NO.:  1
   ABSORPTION RATE (KA) IS BASIC PK PARAMETER NO.:  3

 TRANSLATOR WILL CONVERT PARAMETERS
 CLEARANCE (CL) AND VOLUME (V) TO K (TRANS2)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            4           *           *           *           *
    3            *           -           -           -           -
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
 RAW OUTPUT FILE (FILE): m40.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   12777.0208401088        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   6.6452E+02  1.7298E+02 -6.0334E+02 -7.6744E+02 -2.0349E+03 -5.3351E+02 -2.5567E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -648.475456183910        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:       60
 NPARAMETR:  1.2688E+00  2.8016E+00  2.8301E+00  2.1595E+00  4.6985E+00  1.1157E+00  1.1242E+01
 PARAMETER:  3.3808E-01  1.1302E+00  1.1403E+00  8.6990E-01  1.6472E+00  2.0952E-01  2.5197E+00
 GRADIENT:   3.4062E+01  8.5556E+01  5.5403E-01  6.5646E+01  1.4534E+02  4.2242E-01  2.4183E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -698.591097086403        NO. OF FUNC. EVALS.:  54
 CUMULATIVE NO. OF FUNC. EVALS.:      114
 NPARAMETR:  1.1679E+00  1.8863E+00  1.0507E+02  1.8786E+00  2.3651E+00  2.8490E+01  9.7315E+00
 PARAMETER:  2.5521E-01  7.3462E-01  4.7547E+00  7.3050E-01  9.6084E-01  3.4496E+00  2.3754E+00
 GRADIENT:   1.3394E+01  1.1998E+02  1.1070E-01  2.2441E+01 -4.0080E+01  1.0995E-02  1.1777E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -724.408924050085        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      166
 NPARAMETR:  1.0540E+00  1.3162E+00  2.5698E+02  1.7465E+00  2.4824E+00  2.9667E+01  8.3008E+00
 PARAMETER:  1.5255E-01  3.7478E-01  5.6490E+00  6.5761E-01  1.0092E+00  3.4900E+00  2.2164E+00
 GRADIENT:  -1.3002E+01  8.8364E+00  7.8604E-03 -1.7248E+00 -3.7925E+00 -2.4136E-03  3.2318E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -724.586815654545        NO. OF FUNC. EVALS.:  61
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  1.0623E+00  1.2708E+00  3.2423E+02  1.7684E+00  2.5186E+00  2.9664E+01  8.0197E+00
 PARAMETER:  1.6047E-01  3.3965E-01  5.8814E+00  6.7006E-01  1.0237E+00  3.4899E+00  2.1819E+00
 GRADIENT:  -1.3435E+01 -1.4232E+01  5.0893E-03 -1.8185E+01 -2.0529E+01 -2.5223E-03 -2.1385E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -726.791465852055        NO. OF FUNC. EVALS.: 106
 CUMULATIVE NO. OF FUNC. EVALS.:      333
 NPARAMETR:  1.0966E+00  1.3470E+00  1.8920E+02  1.9168E+00  2.7042E+00  3.5480E+01  8.1563E+00
 PARAMETER:  1.9226E-01  3.9791E-01  5.3428E+00  7.5067E-01  1.0948E+00  3.6690E+00  2.1988E+00
 GRADIENT:   1.4791E+01  1.6119E+01  1.9850E-02  2.0222E+01  2.4157E+01  1.2943E-02  2.2109E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -726.794431824945        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:      383
 NPARAMETR:  1.0939E+00  1.3377E+00  8.3404E+01  1.9298E+00  2.7119E+00  1.3253E+01  8.1060E+00
 PARAMETER:  1.8971E-01  3.9098E-01  4.5237E+00  7.5743E-01  1.0977E+00  2.6842E+00  2.1926E+00
 GRADIENT:   1.3802E+01  1.4272E+01  4.0400E-02  2.1548E+01  2.4428E+01 -3.1968E-03  1.7969E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -730.076912945857        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:      441
 NPARAMETR:  1.1099E+00  1.3314E+00  1.9455E+00  1.9453E+00  2.6959E+00  1.1036E-01  7.9224E+00
 PARAMETER:  2.0429E-01  3.8625E-01  7.6554E-01  7.6542E-01  1.0917E+00 -2.1040E+00  2.1697E+00
 GRADIENT:   1.0097E+01  1.2550E+01  1.3293E-01  1.9362E+01  2.1999E+01  3.8621E-02  7.4229E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -730.219152358849        NO. OF FUNC. EVALS.:  78
 CUMULATIVE NO. OF FUNC. EVALS.:      519
 NPARAMETR:  1.1216E+00  1.3431E+00  1.9624E+00  1.9096E+00  2.6578E+00  1.0000E-02  8.0590E+00
 PARAMETER:  2.1476E-01  3.9497E-01  7.7418E-01  7.4689E-01  1.0775E+00 -4.6795E+00  2.1868E+00
 GRADIENT:  -2.0602E+00 -2.6525E+00  1.0290E-01 -2.7695E+00 -3.4679E+00  0.0000E+00 -3.7366E+00

0ITERATION NO.:   44    OBJECTIVE VALUE:  -730.322155365286        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      592
 NPARAMETR:  1.1286E+00  1.3614E+00  1.9543E+00  1.9515E+00  2.7161E+00  1.0000E-02  8.1011E+00
 PARAMETER:  2.2099E-01  4.0853E-01  7.7005E-01  7.6862E-01  1.0992E+00 -4.6795E+00  2.1920E+00
 GRADIENT:  -7.5225E-01 -3.9489E-01 -2.1057E-01 -2.6183E-01  3.3140E-01  0.0000E+00  5.2573E+00

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      592
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.8406E-03 -1.1590E-02 -3.1841E-05
 SE:             2.8105E-02  2.8657E-02  2.1970E-05
 N:                     100         100         100

 P VAL.:         9.4778E-01  6.8589E-01  1.4726E-01

 ETASHRINKSD(%)  5.8445E+00  3.9957E+00  9.9926E+01
 ETASHRINKVR(%)  1.1347E+01  7.8317E+00  1.0000E+02
 EBVSHRINKSD(%)  5.2733E+00  3.6047E+00  9.9857E+01
 EBVSHRINKVR(%)  1.0269E+01  7.0795E+00  1.0000E+02
 RELATIVEINF(%)  8.9551E+01  9.1635E+01  2.0174E-04
 EPSSHRINKSD(%)  1.4972E+01
 EPSSHRINKVR(%)  2.7702E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -730.32215536528588     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       188.61637783938681     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:     5.65
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -730.322       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.13E+00  1.36E+00  1.95E+00  1.95E+00  2.72E+00  1.00E-02  8.10E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,        5.693
Stop Time:
Fri Oct  1 16:27:32 CDT 2021