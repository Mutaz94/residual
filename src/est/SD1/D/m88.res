Fri Oct  1 07:31:12 CDT 2021
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
$DATA ../../../../data/SD1/D/dat88.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m88.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   46279.7850450484        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   9.1679E+02  8.0667E+02  7.0723E+00  6.8825E+02  1.9259E+02 -3.1912E+03 -1.7839E+03 -1.1810E+02 -2.4896E+03 -8.2220E+02
            -9.0629E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -592.633211537522        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0275E+00  2.2483E+00  8.8968E-01  1.9897E+00  8.4893E-01  4.2744E+00  4.7969E+00  1.0010E+00  2.2875E+00  1.3652E+00
             1.2817E+01
 PARAMETER:  1.2717E-01  9.1018E-01 -1.6897E-02  7.8800E-01 -6.3783E-02  1.5527E+00  1.6680E+00  1.0101E-01  9.2745E-01  4.1126E-01
             2.6507E+00
 GRADIENT:  -2.5991E+01  6.1239E+01 -3.4082E+01  1.4085E+02 -4.3764E+01  1.7426E+02  3.7462E+01  4.1474E+00  1.4745E+01  2.6426E+01
             1.5975E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -662.540302849186        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  9.2744E-01  3.3843E+00  1.8747E+01  2.5002E+00  2.2764E+00  3.3450E+00  1.0201E+01  8.0931E-01  2.0075E+00  1.2795E+00
             1.3036E+01
 PARAMETER:  2.4676E-02  1.3192E+00  3.0310E+00  1.0164E+00  9.2258E-01  1.3075E+00  2.4225E+00 -1.1158E-01  7.9691E-01  3.4643E-01
             2.6677E+00
 GRADIENT:  -5.1316E+01  4.8667E+01 -6.2676E+00  1.2551E+02  6.3948E+00  1.1490E+02  4.6895E+01  9.8416E-02 -6.3908E+00  2.4145E+01
             2.1245E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -751.297520649227        NO. OF FUNC. EVALS.:  78
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  1.2264E+00  2.0613E+00  4.7461E+00  8.8514E-01  1.9909E+00  2.2775E+00  4.0334E+00  8.0314E-01  1.3737E+00  6.9844E-01
             1.3077E+01
 PARAMETER:  3.0405E-01  8.2334E-01  1.6573E+00 -2.2009E-02  7.8859E-01  9.2309E-01  1.4946E+00 -1.1923E-01  4.1753E-01 -2.5890E-01
             2.6708E+00
 GRADIENT:   2.1866E+00  1.0697E+01 -1.7012E+00 -1.1652E+01 -1.6002E+00 -2.5564E+00  3.5563E+01  2.0210E-01  1.1379E+01  8.4798E+00
             2.7267E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -757.223413855607        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:      328
 NPARAMETR:  1.1987E+00  1.8133E+00  5.1613E+00  8.7979E-01  2.0184E+00  2.3683E+00  3.7915E+00  7.8064E-01  1.4288E+00  6.6734E-01
             1.2636E+01
 PARAMETER:  2.8120E-01  6.9514E-01  1.7412E+00 -2.8069E-02  8.0228E-01  9.6217E-01  1.4328E+00 -1.4764E-01  4.5684E-01 -3.0445E-01
             2.6366E+00
 GRADIENT:  -1.1179E+01 -1.6829E+01 -1.7051E+00 -1.4001E+01 -5.9699E-02 -1.2280E+01 -3.0206E+01  1.6544E-01  1.0811E+01  7.7999E+00
             2.0290E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -776.070517214046        NO. OF FUNC. EVALS.: 200
 CUMULATIVE NO. OF FUNC. EVALS.:      528            RESET HESSIAN, TYPE II
 NPARAMETR:  1.1561E+00  1.7743E+00  7.8413E+00  9.2039E-01  2.0225E+00  2.7372E+00  4.4703E+00  1.0000E-02  3.8521E-01  2.5415E-01
             1.1030E+01
 PARAMETER:  2.4507E-01  6.7338E-01  2.1594E+00  1.7040E-02  8.0434E-01  1.1069E+00  1.5974E+00 -8.3198E+00 -8.5396E-01 -1.2698E+00
             2.5006E+00
 GRADIENT:  -4.0623E-02  2.3297E+01  4.4637E+00  4.1824E+01 -2.4106E+01  4.4933E+01  2.6484E+01  0.0000E+00 -3.0610E+00  6.5284E-01
             3.8497E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -779.873350869684        NO. OF FUNC. EVALS.: 155
 CUMULATIVE NO. OF FUNC. EVALS.:      683
 NPARAMETR:  1.2171E+00  1.6309E+00  4.4304E+00  8.4216E-01  1.9932E+00  2.7318E+00  4.6295E+00  1.0000E-02  3.1916E-01  1.6230E-01
             1.0931E+01
 PARAMETER:  2.9649E-01  5.8913E-01  1.5885E+00 -7.1781E-02  7.8972E-01  1.1049E+00  1.6324E+00 -8.3198E+00 -1.0421E+00 -1.7183E+00
             2.4916E+00
 GRADIENT:   2.9731E+00 -2.7661E+00 -3.2426E-01 -6.0402E+00  5.6603E+00  2.8397E+00  4.5054E+00  0.0000E+00  3.3920E-01  4.0392E-01
             9.9038E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -780.240481442011        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      858
 NPARAMETR:  1.2053E+00  1.7307E+00  3.5205E+00  8.1298E-01  1.9037E+00  2.7121E+00  4.4427E+00  1.0000E-02  2.3046E-01  8.0986E-02
             1.0901E+01
 PARAMETER:  2.8669E-01  6.4854E-01  1.3586E+00 -1.0705E-01  7.4379E-01  1.0977E+00  1.5913E+00 -8.3198E+00 -1.3677E+00 -2.4135E+00
             2.4888E+00
 GRADIENT:   4.5154E-01  1.4730E-01  3.7102E-02 -1.5915E+00 -1.2555E+00  5.2880E-01 -6.0537E-01  0.0000E+00  2.4200E-01  1.0525E-01
             2.4927E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -780.388581676673        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1033
 NPARAMETR:  1.2037E+00  1.7354E+00  3.5033E+00  8.0634E-01  1.9134E+00  2.7091E+00  4.4503E+00  1.0000E-02  4.9275E-02  1.1271E-02
             1.0890E+01
 PARAMETER:  2.8541E-01  6.5126E-01  1.3537E+00 -1.1525E-01  7.4889E-01  1.0966E+00  1.5930E+00 -8.3198E+00 -2.9103E+00 -4.3855E+00
             2.4878E+00
 GRADIENT:   2.4533E-01 -4.3720E-02 -1.5818E-03  1.3206E-01 -7.7353E-03  1.7095E-02 -8.9198E-02  0.0000E+00  7.9783E-03  2.0356E-03
             2.5203E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -780.404040755948        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1212
 NPARAMETR:  1.2028E+00  1.7320E+00  3.4849E+00  8.0465E-01  1.9159E+00  2.7169E+00  4.4592E+00  1.0000E-02  1.0000E-02  1.0000E-02
             1.0878E+01
 PARAMETER:  2.8485E-01  6.5208E-01  1.3530E+00 -1.1618E-01  7.4874E-01  1.1075E+00  1.5936E+00 -8.3198E+00 -5.0328E+00 -5.8946E+00
             2.4872E+00
 GRADIENT:   1.9182E-02  8.5542E-02  3.4208E-02  1.5607E-01 -1.9227E-01  8.1161E-01 -1.2566E-01  0.0000E+00  0.0000E+00  0.0000E+00
             2.6451E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1212
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3161E-02  5.3260E-03 -1.4857E-05 -6.9742E-04 -8.6751E-07
 SE:             2.8921E-02  2.7511E-02  2.4802E-05  1.6130E-04  1.1392E-04
 N:                     100         100         100         100         100

 P VAL.:         6.4906E-01  8.4649E-01  5.4915E-01  1.5358E-05  9.9392E-01

 ETASHRINKSD(%)  3.1119E+00  7.8357E+00  9.9917E+01  9.9460E+01  9.9618E+01
 ETASHRINKVR(%)  6.1270E+00  1.5057E+01  1.0000E+02  9.9997E+01  9.9999E+01
 EBVSHRINKSD(%)  2.7181E+00  4.6996E+00  9.9903E+01  9.9643E+01  9.9540E+01
 EBVSHRINKVR(%)  5.3624E+00  9.1784E+00  1.0000E+02  9.9999E+01  9.9998E+01
 RELATIVEINF(%)  9.4458E+01  5.2542E+01  2.4312E-05  7.0694E-04  5.5912E-04
 EPSSHRINKSD(%)  4.4718E+00
 EPSSHRINKVR(%)  8.7435E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -780.40404075594790     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       873.68531901246286     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    36.21
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -780.404       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.20E+00  1.74E+00  3.50E+00  8.06E-01  1.91E+00  2.74E+00  4.45E+00  1.00E-02  1.00E-02  1.00E-02  1.09E+01
 


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
 #CPUT: Total CPU Time in Seconds,       36.271
Stop Time:
Fri Oct  1 07:31:50 CDT 2021