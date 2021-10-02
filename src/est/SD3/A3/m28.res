Fri Oct  1 18:11:37 CDT 2021
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
$DATA ../../../../data/SD3/A3/dat28.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m28.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -446.995220122887        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2878E+02  1.0264E+02  1.3537E+02 -8.0334E+01  2.5127E+02  4.2051E+01 -7.9963E+01 -9.9940E+01 -6.7708E+01 -1.5819E+02
            -3.5794E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1779.92612012708        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0217E+00  8.2370E-01  9.6376E-01  1.2665E+00  7.9201E-01  8.6197E-01  8.9654E-01  8.8390E-01  1.0980E+00  9.2581E-01
             3.7329E+00
 PARAMETER:  1.2145E-01 -9.3955E-02  6.3091E-02  3.3623E-01 -1.3319E-01 -4.8531E-02 -9.2126E-03 -2.3412E-02  1.9352E-01  2.2916E-02
             1.4172E+00
 GRADIENT:   6.1304E+01  2.0944E+01  1.4914E+00  5.4848E+01 -4.1960E+00 -2.8923E+01  9.2754E+00  8.4023E+00  2.3711E+01  1.7607E+01
             2.7698E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1794.92211634183        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0143E+00  5.0842E-01  4.8526E-01  1.4709E+00  4.2463E-01  9.3947E-01  5.2576E-01  4.2722E-01  1.0129E+00  7.8143E-01
             3.5387E+00
 PARAMETER:  1.1417E-01 -5.7645E-01 -6.2307E-01  4.8590E-01 -7.5653E-01  3.7557E-02 -5.4290E-01 -7.5047E-01  1.1283E-01 -1.4663E-01
             1.3638E+00
 GRADIENT:   2.9234E+01  9.0978E+01  2.9559E+01  2.5089E+02 -5.7186E+01 -2.9589E+00 -1.8779E-01  3.3981E+00 -1.8925E+01  1.2548E+01
             2.4227E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1830.22329639982        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      271
 NPARAMETR:  9.9154E-01  4.9038E-01  4.0431E-01  1.3977E+00  4.0332E-01  9.0987E-01  8.3706E-01  2.4862E-02  1.0215E+00  7.6410E-01
             3.0275E+00
 PARAMETER:  9.1507E-02 -6.1258E-01 -8.0558E-01  4.3479E-01 -8.0802E-01  5.5510E-03 -7.7859E-02 -3.5944E+00  1.2129E-01 -1.6906E-01
             1.2077E+00
 GRADIENT:  -3.0255E+01  3.1810E+01 -7.1775E+01  1.8029E+02  5.8759E+01 -2.0243E+01  3.1628E+00  1.2378E-02 -2.4059E+01  1.2079E+01
             1.1246E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1852.33706917779        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      448
 NPARAMETR:  9.9834E-01  3.7930E-01  3.7351E-01  1.2894E+00  3.4690E-01  9.5055E-01  6.1017E-01  1.0000E-02  1.0132E+00  7.3563E-01
             2.7229E+00
 PARAMETER:  9.8335E-02 -8.6942E-01 -8.8481E-01  3.5420E-01 -9.5872E-01  4.9282E-02 -3.9402E-01 -6.6700E+00  1.1313E-01 -2.0702E-01
             1.1017E+00
 GRADIENT:   3.8979E+00 -9.2629E+00 -8.5949E+00  2.8915E+01  2.8012E+01 -2.8906E+00 -1.3475E+00  0.0000E+00 -1.4067E+01 -3.1524E+00
             3.0158E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1855.24391666067        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      624
 NPARAMETR:  9.9768E-01  3.3572E-01  2.8950E-01  1.2196E+00  2.8647E-01  9.6273E-01  9.7365E-01  1.0000E-02  1.1044E+00  6.7387E-01
             2.6886E+00
 PARAMETER:  9.7681E-02 -9.9148E-01 -1.1396E+00  2.9851E-01 -1.1501E+00  6.2017E-02  7.3299E-02 -9.3527E+00  1.9931E-01 -2.9471E-01
             1.0890E+00
 GRADIENT:   3.7079E+00  1.9954E+00  4.4997E+00  3.0357E+00 -7.4156E+00  7.7848E-01  1.5958E+00  0.0000E+00 -1.1829E+00  2.3917E+00
             6.6694E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1855.35870123306        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      807             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9583E-01  3.3155E-01  2.8118E-01  1.2099E+00  2.8136E-01  9.6102E-01  9.2814E-01  1.0000E-02  1.1172E+00  6.6610E-01
             2.6740E+00
 PARAMETER:  9.5825E-02 -1.0040E+00 -1.1688E+00  2.9053E-01 -1.1681E+00  6.0235E-02  2.5425E-02 -9.6060E+00  2.1083E-01 -3.0632E-01
             1.0836E+00
 GRADIENT:   4.3970E+01  1.7368E+01  3.2018E+01  3.4756E+01  1.3106E+02  3.8048E+00  3.7020E-02  0.0000E+00  3.6297E+00  1.1817E+00
             1.2487E+01

0ITERATION NO.:   34    OBJECTIVE VALUE:  -1855.35927879238        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:      934
 NPARAMETR:  9.9581E-01  3.3141E-01  2.8110E-01  1.2100E+00  2.8142E-01  9.6101E-01  9.3093E-01  1.0000E-02  1.1172E+00  6.6650E-01
             2.6745E+00
 PARAMETER:  9.5800E-02 -1.0044E+00 -1.1690E+00  2.9058E-01 -1.1679E+00  6.0233E-02  2.8425E-02 -9.6060E+00  2.1085E-01 -3.0572E-01
             1.0838E+00
 GRADIENT:   2.1674E-02  1.3426E-01  1.5053E-01 -4.4483E-02 -4.3457E-01  1.1347E-03 -1.4902E-02  0.0000E+00  2.3550E-03 -5.5859E-02
            -1.0961E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      934
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0979E-03  6.8547E-03 -1.5827E-05 -9.2438E-03  2.2632E-03
 SE:             2.9220E-02  1.4555E-02  2.2019E-04  2.7291E-02  2.4198E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7003E-01  6.3768E-01  9.4270E-01  7.3483E-01  9.2548E-01

 ETASHRINKSD(%)  2.1106E+00  5.1239E+01  9.9262E+01  8.5714E+00  1.8935E+01
 ETASHRINKVR(%)  4.1766E+00  7.6224E+01  9.9995E+01  1.6408E+01  3.4285E+01
 EBVSHRINKSD(%)  2.2224E+00  5.1918E+01  9.9243E+01  7.3857E+00  1.8709E+01
 EBVSHRINKVR(%)  4.3953E+00  7.6882E+01  9.9994E+01  1.4226E+01  3.3917E+01
 RELATIVEINF(%)  9.5513E+01  4.3933E+00  3.8911E-04  4.9359E+01  2.7367E+00
 EPSSHRINKSD(%)  2.4387E+01
 EPSSHRINKVR(%)  4.2826E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1855.3592787923767     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -752.63303894676960     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.70
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1855.359       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.96E-01  3.31E-01  2.81E-01  1.21E+00  2.81E-01  9.61E-01  9.31E-01  1.00E-02  1.12E+00  6.66E-01  2.67E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.750
Stop Time:
Fri Oct  1 18:11:54 CDT 2021