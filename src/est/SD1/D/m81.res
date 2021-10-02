Fri Oct  1 07:26:02 CDT 2021
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
$DATA ../../../../data/SD1/D/dat81.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m81.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   49534.7967029529        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.0101E+03  7.5793E+02  5.9755E+01  6.3951E+02  3.6996E+01 -2.6584E+03 -1.7571E+03 -5.7972E+02 -2.2910E+03 -3.9050E+02
            -9.7808E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -658.236796376663        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1103E+00  1.8984E+00  9.2234E-01  1.7651E+00  9.5988E-01  3.2160E+00  3.3714E+00  9.8960E-01  1.9019E+00  1.1584E+00
             1.3711E+01
 PARAMETER:  2.0465E-01  7.4102E-01  1.9158E-02  6.6818E-01  5.9054E-02  1.2681E+00  1.3153E+00  8.9546E-02  7.4286E-01  2.4704E-01
             2.7182E+00
 GRADIENT:  -4.0611E+01  4.9740E+01 -2.8140E+01  1.4193E+02 -1.3933E+01  1.2327E+02  9.8887E-01  4.0247E+00 -2.5825E+00  2.3366E+01
             1.9857E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -743.535848649130        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.1870E+00  1.6804E+00  6.4397E+00  1.6160E+00  1.5597E+00  2.0939E+00  5.5320E+00  3.7829E-01  1.3476E+00  7.7913E-01
             1.3774E+01
 PARAMETER:  2.7145E-01  6.1901E-01  1.9625E+00  5.7996E-01  5.4452E-01  8.3901E-01  1.8106E+00 -8.7208E-01  3.9832E-01 -1.4957E-01
             2.7228E+00
 GRADIENT:  -1.3882E+01  3.6835E+01  9.1656E+00  6.1628E+01 -7.2580E+01  4.5280E+01  3.2748E+01  1.2299E-01 -6.5823E+00  7.5606E+00
             2.1073E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -772.031822300525        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.1947E+00  1.5493E+00  8.9939E+00  1.0350E+00  2.3401E+00  1.8340E+00  3.7570E+00  1.0628E+00  1.3309E+00  2.3522E-01
             1.2830E+01
 PARAMETER:  2.7789E-01  5.3779E-01  2.2965E+00  1.3441E-01  9.5019E-01  7.0649E-01  1.4236E+00  1.6090E-01  3.8585E-01 -1.3472E+00
             2.6518E+00
 GRADIENT:  -1.7234E+00 -2.0950E+01 -4.0463E+00 -1.5397E+01  3.2838E+01 -1.1260E+01  1.9666E+00  2.0072E-01  7.9112E+00  8.8082E-01
             2.0069E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -775.912202740144        NO. OF FUNC. EVALS.:  78
 CUMULATIVE NO. OF FUNC. EVALS.:      306
 NPARAMETR:  1.1820E+00  1.5962E+00  8.0484E+00  9.8721E-01  2.2493E+00  1.8794E+00  3.6866E+00  7.3344E-01  1.3267E+00  2.6309E-01
             1.2525E+01
 PARAMETER:  2.6722E-01  5.6765E-01  2.1855E+00  8.7126E-02  9.1060E-01  7.3097E-01  1.4047E+00 -2.1000E-01  3.8273E-01 -1.2353E+00
             2.6277E+00
 GRADIENT:   6.6183E-01 -1.8866E+01 -3.0169E+00 -1.4856E+01  2.3469E+01  2.5557E-01  1.2015E+00  1.0720E-01  7.6205E+00  1.1423E+00
             1.6887E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -779.699231256621        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:      474
 NPARAMETR:  1.1785E+00  1.6108E+00  8.0598E+00  9.8842E-01  2.2655E+00  1.8677E+00  3.7986E+00  2.3481E-01  1.3203E+00  2.5913E-01
             1.1557E+01
 PARAMETER:  2.6420E-01  5.7674E-01  2.1869E+00  8.8350E-02  9.1781E-01  7.2469E-01  1.4346E+00 -1.3490E+00  3.7787E-01 -1.2504E+00
             2.5473E+00
 GRADIENT:  -6.6511E+00 -1.2877E+01 -3.5431E+00 -6.6217E+00  2.5320E+01 -3.8953E+01 -1.3274E+01  1.1314E-02  6.0804E+00  1.0484E+00
            -1.3667E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -782.326518015126        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      651
 NPARAMETR:  1.1793E+00  1.6406E+00  8.2081E+00  9.8891E-01  2.1694E+00  1.9559E+00  4.1658E+00  3.4034E-02  1.3140E+00  2.5683E-01
             1.1541E+01
 PARAMETER:  2.6493E-01  5.9507E-01  2.2051E+00  8.8844E-02  8.7446E-01  7.7087E-01  1.5269E+00 -3.2804E+00  3.7310E-01 -1.2593E+00
             2.5459E+00
 GRADIENT:  -2.7808E+00 -4.2202E+00 -1.7477E+00 -1.4307E+01  9.9939E+00 -1.9239E+01  9.7794E+00  2.2686E-04  7.5915E+00  1.0360E+00
            -2.9563E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -784.881906061196        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      809
 NPARAMETR:  1.2168E+00  1.6100E+00  8.8174E+00  1.0172E+00  2.1533E+00  2.1177E+00  4.1798E+00  1.0166E-02  9.8416E-01  1.0082E-01
             1.1624E+01
 PARAMETER:  2.9621E-01  5.7623E-01  2.2767E+00  1.1705E-01  8.6701E-01  8.5031E-01  1.5303E+00 -4.4887E+00  8.4033E-02 -2.1945E+00
             2.5531E+00
 GRADIENT:   4.4796E-01 -9.4308E-01 -3.4848E-01 -2.8101E+00  4.2414E+00 -2.3677E+00  1.9314E+00  1.4914E-05  1.2425E-01  1.4115E-01
             8.2962E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -785.055350295544        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      984
 NPARAMETR:  1.2165E+00  1.5341E+00  8.4380E+00  1.0611E+00  2.0968E+00  2.1372E+00  4.2492E+00  1.0000E-02  1.0441E+00  3.6635E-02
             1.1570E+01
 PARAMETER:  2.9594E-01  5.2794E-01  2.2328E+00  1.5934E-01  8.4039E-01  8.5950E-01  1.5467E+00 -4.8111E+00  1.4320E-01 -3.2067E+00
             2.5484E+00
 GRADIENT:   5.6570E-01 -2.8673E-01 -9.7165E-02 -1.7821E-01 -5.1899E-01 -5.4542E-01  1.0366E-01  0.0000E+00 -6.2246E-02  1.8355E-02
             3.9209E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -785.089254470369        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1162            RESET HESSIAN, TYPE II
 NPARAMETR:  1.2149E+00  1.4972E+00  1.0219E+01  1.0917E+00  2.1391E+00  2.1451E+00  4.3262E+00  1.0000E-02  1.0919E+00  1.0000E-02
             1.1569E+01
 PARAMETER:  2.9463E-01  5.0360E-01  2.4242E+00  1.8770E-01  8.6037E-01  8.6319E-01  1.5647E+00 -5.0047E+00  1.8794E-01 -4.8141E+00
             2.5483E+00
 GRADIENT:   1.6020E+01  5.7989E+00  1.2375E-01  2.8235E+00  2.6048E+00  2.1943E+01  3.1178E+01  0.0000E+00  4.1309E-01  0.0000E+00
             4.5914E+01

0ITERATION NO.:   48    OBJECTIVE VALUE:  -785.089454719405        NO. OF FUNC. EVALS.:  90
 CUMULATIVE NO. OF FUNC. EVALS.:     1252
 NPARAMETR:  1.2151E+00  1.4976E+00  1.0209E+01  1.0928E+00  2.1392E+00  2.1440E+00  4.3248E+00  1.0000E-02  1.0898E+00  1.0000E-02
             1.1572E+01
 PARAMETER:  2.9485E-01  5.0385E-01  2.4233E+00  1.8876E-01  8.6045E-01  8.6268E-01  1.5644E+00 -5.0047E+00  1.8596E-01 -4.8115E+00
             2.5486E+00
 GRADIENT:   2.1978E-01  1.7623E-01  8.7546E-03 -1.4093E-01  1.5213E-02  6.8054E-01  6.3497E-01  0.0000E+00  2.0613E-02  0.0000E+00
             1.3868E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1252
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5389E-02  1.7032E-02 -5.9664E-06 -5.5835E-02 -9.8204E-06
 SE:             2.8889E-02  2.5430E-02  8.8592E-06  1.1384E-02  1.0539E-04
 N:                     100         100         100         100         100

 P VAL.:         5.9425E-01  5.0301E-01  5.0065E-01  9.3658E-07  9.2576E-01

 ETASHRINKSD(%)  3.2175E+00  1.4806E+01  9.9970E+01  6.1863E+01  9.9647E+01
 ETASHRINKVR(%)  6.3314E+00  2.7420E+01  1.0000E+02  8.5456E+01  9.9999E+01
 EBVSHRINKSD(%)  4.7288E+00  1.0080E+01  9.9956E+01  6.7084E+01  9.9568E+01
 EBVSHRINKVR(%)  9.2339E+00  1.9143E+01  1.0000E+02  8.9165E+01  9.9998E+01
 RELATIVEINF(%)  9.0465E+01  3.2330E+01  3.3729E-06  4.4300E+00  3.2823E-04
 EPSSHRINKSD(%)  5.0998E+00
 EPSSHRINKVR(%)  9.9395E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -785.08945471940456     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       868.99990504900620     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    38.97
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -785.089       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.22E+00  1.50E+00  1.02E+01  1.09E+00  2.14E+00  2.14E+00  4.32E+00  1.00E-02  1.09E+00  1.00E-02  1.16E+01
 


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
 #CPUT: Total CPU Time in Seconds,       39.035
Stop Time:
Fri Oct  1 07:26:42 CDT 2021
