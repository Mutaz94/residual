Fri Oct  1 05:17:17 CDT 2021
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
$DATA ../../../../data/SD1/TD1/dat81.csv ignore=@
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
 (2E4.0,E20.0,E4.0,2E2.0)

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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3500.50438502106        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1809E+02  3.8103E+01  1.2842E+02  5.7313E+01  1.6917E+02  2.6022E+01 -5.2393E+01 -5.1189E+02 -1.0176E+02 -6.8654E+00
            -8.6589E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3688.63850036398        NO. OF FUNC. EVALS.: 146
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.0073E+00  9.8073E-01  9.2949E-01  1.0305E+00  9.1276E-01  9.0650E-01  1.1142E+00  1.6914E+00  9.8151E-01  1.0081E+00
             1.0743E+00
 PARAMETER:  1.0727E-01  8.0542E-02  2.6883E-02  1.3003E-01  8.7190E-03  1.8397E-03  2.0815E-01  6.2555E-01  8.1339E-02  1.0804E-01
             1.7163E-01
 GRADIENT:  -3.4226E+01  4.9393E+00  2.0028E+01  2.0797E+00 -4.1876E+00 -9.2460E+01 -2.7249E+01 -1.8999E+02 -4.3221E+00 -1.5326E+01
             1.1859E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3725.70306626948        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      337
 NPARAMETR:  9.8920E-01  1.1372E+00  1.3675E+00  9.1850E-01  1.3857E+00  9.2369E-01  1.1077E+00  2.0624E+00  7.8976E-01  1.4046E+00
             1.0852E+00
 PARAMETER:  8.9140E-02  2.2854E-01  4.1298E-01  1.4984E-02  4.2622E-01  2.0624E-02  2.0231E-01  8.2388E-01 -1.3602E-01  4.3973E-01
             1.8174E-01
 GRADIENT:  -8.0936E+01 -1.1930E+02  2.9614E+01 -1.0827E+01  1.4082E+02 -8.4117E+01 -1.0077E+00 -1.9526E+02 -1.1806E+01  1.5297E+01
             1.1433E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3731.67561659868        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:      505
 NPARAMETR:  9.8967E-01  1.1557E+00  1.3133E+00  9.1352E-01  1.3834E+00  9.4167E-01  1.0760E+00  2.0790E+00  7.6136E-01  1.4527E+00
             1.0750E+00
 PARAMETER:  8.9612E-02  2.4467E-01  3.7255E-01  9.5524E-03  4.2453E-01  3.9894E-02  1.7323E-01  8.3191E-01 -1.7265E-01  4.7340E-01
             1.7232E-01
 GRADIENT:   3.4584E+02  1.2356E+02  3.7125E+01  7.0990E+01  2.9460E+02  6.1629E+00  1.6273E+01 -1.4658E+02 -1.0125E+01  5.8016E+01
             1.0125E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3732.47713604288        NO. OF FUNC. EVALS.: 155
 CUMULATIVE NO. OF FUNC. EVALS.:      660             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8524E-01  1.1569E+00  1.3132E+00  9.1352E-01  1.3835E+00  9.4460E-01  1.0743E+00  2.0787E+00  7.7715E-01  1.4397E+00
             1.0709E+00
 PARAMETER:  8.5133E-02  2.4577E-01  3.7248E-01  9.5524E-03  4.2460E-01  4.3002E-02  1.7171E-01  8.3175E-01 -1.5212E-01  4.6442E-01
             1.6853E-01
 GRADIENT:   3.3852E+02  1.2810E+02  3.7705E+01  7.1977E+01  2.9893E+02  8.6481E+00  1.7582E+01 -1.4590E+02 -9.0312E+00  5.5368E+01
             9.4646E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3742.33557271459        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      846
 NPARAMETR:  1.0175E+00  1.1563E+00  1.3132E+00  9.1331E-01  1.3819E+00  1.0935E+00  1.0748E+00  2.0792E+00  8.8680E-01  1.4412E+00
             1.0220E+00
 PARAMETER:  1.1736E-01  2.4522E-01  3.7248E-01  9.3207E-03  4.2347E-01  1.8936E-01  1.7211E-01  8.3197E-01 -2.0135E-02  4.6548E-01
             1.2176E-01
 GRADIENT:  -3.0695E+00 -1.0944E+02  2.0821E+01 -2.7335E+00  1.3388E+02 -1.0557E+00  5.3022E-01 -1.7889E+02 -1.7852E+00  2.4326E+01
            -5.0108E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3754.83417362373        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1028
 NPARAMETR:  1.0991E+00  1.1666E+00  1.3109E+00  9.1357E-01  1.3027E+00  1.1532E+00  1.0742E+00  2.2450E+00  7.2314E-01  1.4298E+00
             1.0057E+00
 PARAMETER:  1.9449E-01  2.5410E-01  3.7073E-01  9.6091E-03  3.6442E-01  2.4251E-01  1.7157E-01  9.0870E-01 -2.2415E-01  4.5757E-01
             1.0569E-01
 GRADIENT:   1.3084E+02 -8.1106E+01  2.8118E+01 -1.4278E+01  8.0191E+01  1.0443E+01 -1.0015E+01 -1.5425E+02 -2.3119E+01  2.3228E+01
            -2.5392E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3775.51326750474        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1210
 NPARAMETR:  1.0832E+00  1.1833E+00  1.3071E+00  9.1372E-01  1.1774E+00  1.1533E+00  1.0738E+00  2.5560E+00  7.1720E-01  1.4130E+00
             1.0101E+00
 PARAMETER:  1.7991E-01  2.6831E-01  3.6778E-01  9.7712E-03  2.6333E-01  2.4264E-01  1.7123E-01  1.0385E+00 -2.3241E-01  4.4571E-01
             1.1001E-01
 GRADIENT:   1.0549E+02 -4.0551E+01  3.2327E+01 -3.0408E+01 -1.2383E+01  1.3846E+01 -7.1577E+00 -9.1855E+01 -2.2809E+01  2.3815E+01
            -6.4889E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3785.97201057126        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     1376
 NPARAMETR:  1.0832E+00  1.1835E+00  1.3071E+00  9.1377E-01  1.1776E+00  1.1057E+00  1.0737E+00  3.0586E+00  7.1711E-01  1.4126E+00
             1.0101E+00
 PARAMETER:  1.7990E-01  2.6845E-01  3.6778E-01  9.8243E-03  2.6347E-01  2.0047E-01  1.7114E-01  1.2179E+00 -2.3253E-01  4.4545E-01
             1.1006E-01
 GRADIENT:   1.1419E+02 -4.4002E+01  1.5753E+01 -2.7253E+01 -2.2521E+01 -3.0510E+00 -8.9278E+00 -2.8295E+01 -1.7867E+01  2.0710E+01
            -1.2262E+00

0ITERATION NO.:   41    OBJECTIVE VALUE:  -3785.97201057126        NO. OF FUNC. EVALS.:  27
 CUMULATIVE NO. OF FUNC. EVALS.:     1403
 NPARAMETR:  1.0832E+00  1.1835E+00  1.3071E+00  9.1377E-01  1.1776E+00  1.1079E+00  1.0737E+00  3.0567E+00  7.1719E-01  1.4126E+00
             1.0101E+00
 PARAMETER:  1.7990E-01  2.6845E-01  3.6778E-01  9.8243E-03  2.6347E-01  2.0047E-01  1.7114E-01  1.2179E+00 -2.3253E-01  4.4545E-01
             1.1006E-01
 GRADIENT:   1.0826E+02 -5.6784E+01  2.9352E+01 -3.2645E+01 -2.5599E+01 -4.0597E+00 -1.9713E+01  1.9438E+03 -5.2643E+03  1.9982E+01
            -1.4152E+01
 NUMSIGDIG:         4.7         4.8         5.0         5.5         5.2         1.0         5.5         2.3         2.3         5.0
                    5.8

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1403
 NO. OF SIG. DIGITS IN FINAL EST.:  1.0
 ADDITIONAL PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -5.3458E-02 -1.0871E-02 -6.0199E-02  3.8161E-02 -3.0247E-02
 SE:             2.9751E-02  2.5131E-02  2.6823E-02  2.4775E-02  2.4072E-02
 N:                     100         100         100         100         100

 P VAL.:         7.2358E-02  6.6532E-01  2.4811E-02  1.2349E-01  2.0892E-01

 ETASHRINKSD(%)  3.3098E-01  1.5807E+01  1.0140E+01  1.7000E+01  1.9357E+01
 ETASHRINKVR(%)  6.6086E-01  2.9115E+01  1.9251E+01  3.1109E+01  3.4967E+01
 EBVSHRINKSD(%)  2.1681E-01  1.8195E+01  1.7168E+01  2.6776E+01  1.3209E+01
 EBVSHRINKVR(%)  4.3315E-01  3.3079E+01  3.1389E+01  4.6383E+01  2.4674E+01
 RELATIVEINF(%)  9.9565E+01  3.3219E+01  6.3594E+01  2.6645E+01  5.2333E+01
 EPSSHRINKSD(%)  2.3269E+01
 EPSSHRINKVR(%)  4.1124E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3785.9720105712577     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -2131.8826508028469     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    45.47
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3785.972       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.08E+00  1.18E+00  1.31E+00  9.14E-01  1.18E+00  1.11E+00  1.07E+00  3.06E+00  7.17E-01  1.41E+00  1.01E+00
 


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
 #CPUT: Total CPU Time in Seconds,       45.540
Stop Time:
Fri Oct  1 05:18:04 CDT 2021
