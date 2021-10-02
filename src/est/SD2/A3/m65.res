Fri Oct  1 10:41:02 CDT 2021
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
$DATA ../../../../data/SD2/A3/dat65.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m65.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   23.9754206202676        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2257E+02  4.9594E+01  2.7368E+02 -3.7037E+01  2.6950E+02  6.9487E+01 -4.5015E+01 -4.5712E+02 -1.0153E+02 -2.0166E+02
            -3.4440E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1514.00669112202        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.1064E+00  1.0073E+00  9.0167E-01  1.1547E+00  8.9562E-01  7.8064E-01  9.6692E-01  1.0459E+00  1.0240E+00  1.0324E+00
             3.9738E+00
 PARAMETER:  2.0110E-01  1.0725E-01 -3.5122E-03  2.4388E-01 -1.0234E-02 -1.4765E-01  6.6355E-02  1.4486E-01  1.2369E-01  1.3185E-01
             1.4797E+00
 GRADIENT:   2.6958E+02  1.9575E+01 -1.0653E+01  5.4305E+01  8.3700E-01 -2.2167E+01  8.0025E+00  8.0075E+00  1.0786E+01  2.1631E+01
             1.0823E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1530.91153144740        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0865E+00  7.7920E-01  3.6406E-01  1.2120E+00  4.4978E-01  8.0154E-01  4.9360E-01  3.8168E-01  1.2205E+00  4.3914E-01
             3.8900E+00
 PARAMETER:  1.8295E-01 -1.4949E-01 -9.1043E-01  2.9228E-01 -6.9900E-01 -1.2122E-01 -6.0603E-01 -8.6317E-01  2.9926E-01 -7.2293E-01
             1.4584E+00
 GRADIENT:   1.8119E+02  6.8527E+01  1.9853E+01  1.0371E+02 -4.3466E+01 -1.3274E+01 -1.1759E+00  6.8075E-02  1.5780E+01  1.7921E-01
             1.1410E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1555.32428194107        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      315
 NPARAMETR:  9.9423E-01  5.9052E-01  3.0405E-01  1.1824E+00  3.6334E-01  8.3374E-01  1.8588E-01  1.1617E-01  1.1851E+00  7.4098E-01
             3.1955E+00
 PARAMETER:  9.4213E-02 -4.2676E-01 -1.0905E+00  2.6752E-01 -9.1241E-01 -8.1838E-02 -1.5827E+00 -2.0527E+00  2.6982E-01 -1.9978E-01
             1.2617E+00
 GRADIENT:  -9.2915E+01  3.2197E+01 -2.6957E+00  5.4168E+01 -9.1073E-01 -7.0198E+00 -8.5237E-03 -1.4178E-02 -6.6293E+00  8.1265E+00
             1.1849E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1565.12788269681        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      494
 NPARAMETR:  1.0248E+00  3.8993E-01  2.1441E-01  1.1190E+00  2.5920E-01  8.4128E-01  3.6258E-02  2.5856E-02  1.2573E+00  6.7036E-01
             3.0805E+00
 PARAMETER:  1.2446E-01 -8.4179E-01 -1.4399E+00  2.1245E-01 -1.2502E+00 -7.2828E-02 -3.2171E+00 -3.5552E+00  3.2895E-01 -2.9994E-01
             1.2251E+00
 GRADIENT:   6.5444E+00 -6.3723E-01 -7.0126E+00  8.2657E+00  1.0866E+01 -2.0930E+00  5.4259E-03 -1.1953E-02  1.2912E+00 -7.5493E-01
            -4.7967E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1565.26115054331        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      670
 NPARAMETR:  1.0224E+00  3.7555E-01  2.0861E-01  1.1050E+00  2.5166E-01  8.4596E-01  1.8392E-02  2.2663E-02  1.2580E+00  6.7451E-01
             3.0747E+00
 PARAMETER:  1.2220E-01 -8.7937E-01 -1.4673E+00  1.9988E-01 -1.2797E+00 -6.7279E-02 -3.8959E+00 -3.6870E+00  3.2953E-01 -2.9377E-01
             1.2232E+00
 GRADIENT:   1.6465E-01 -1.6770E-01 -2.5611E-01 -1.0788E-01  4.9853E-01  3.1965E-02  1.4717E-03 -9.2412E-03  7.8070E-02 -6.1777E-03
            -6.8858E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1567.66726095835        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      851
 NPARAMETR:  1.0228E+00  3.7383E-01  2.1028E-01  1.1082E+00  2.5250E-01  8.4615E-01  1.0000E-02  7.1925E-01  1.2563E+00  6.7096E-01
             3.0724E+00
 PARAMETER:  1.2256E-01 -8.8397E-01 -1.4593E+00  2.0276E-01 -1.2764E+00 -6.7062E-02 -3.9105E+01 -2.2954E-01  3.2815E-01 -2.9905E-01
             1.2224E+00
 GRADIENT:  -1.6444E+00 -7.3530E+00  4.5221E+00 -3.3663E+00  9.9515E+00  5.3086E-01  0.0000E+00 -1.2061E+00  6.8438E-01  1.5303E+01
             2.7021E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1573.06858685639        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1031
 NPARAMETR:  1.0204E+00  4.1756E-01  1.9118E-01  1.0881E+00  2.5290E-01  8.4849E-01  1.0000E-02  1.2363E+00  1.3223E+00  4.8282E-01
             2.8839E+00
 PARAMETER:  1.2024E-01 -7.7332E-01 -1.5546E+00  1.8442E-01 -1.2747E+00 -6.4296E-02 -4.0212E+01  3.1214E-01  3.7935E-01 -6.2811E-01
             1.1592E+00
 GRADIENT:  -2.3661E-01  1.9745E-01 -1.3919E+01 -3.6966E+00  4.0686E+01 -1.6375E+00  0.0000E+00 -3.4035E+00 -5.2893E+00  3.5619E+00
             1.0921E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1575.93160233832        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1206
 NPARAMETR:  1.0185E+00  3.6592E-01  1.7900E-01  1.0789E+00  2.3234E-01  8.5067E-01  1.0000E-02  1.4064E+00  1.4153E+00  3.6207E-01
             2.7955E+00
 PARAMETER:  1.1832E-01 -9.0533E-01 -1.6203E+00  1.7590E-01 -1.3596E+00 -6.1732E-02 -3.8270E+01  4.4105E-01  4.4736E-01 -9.1592E-01
             1.1280E+00
 GRADIENT:   1.9439E+00 -2.0275E+00  4.1220E+00 -3.7597E+00  9.1393E+00 -1.4607E-01  0.0000E+00 -3.7192E-01 -2.8310E+00 -1.3055E+00
             2.6620E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1576.37654285128        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     1369
 NPARAMETR:  1.0173E+00  3.5156E-01  1.6640E-01  1.0650E+00  2.2142E-01  8.5174E-01  1.0000E-02  1.3838E+00  1.4687E+00  3.9686E-01
             2.7810E+00
 PARAMETER:  1.1713E-01 -9.4536E-01 -1.6933E+00  1.6297E-01 -1.4077E+00 -6.0474E-02 -3.4727E+01  4.2482E-01  4.8441E-01 -8.2417E-01
             1.1228E+00
 GRADIENT:   2.9147E-01 -3.4399E-03 -1.5248E-01  5.7610E-01 -2.0347E-01  5.7997E-02  0.0000E+00 -7.7245E-02  5.0328E-02 -1.2562E-01
             5.0621E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1369
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.1950E-03 -2.7786E-04  1.5053E-02 -5.1521E-03  2.1168E-02
 SE:             2.8831E-02  1.3394E-04  2.2586E-02  2.6944E-02  1.3946E-02
 N:                     100         100         100         100         100

 P VAL.:         9.3931E-01  3.8027E-02  5.0510E-01  8.4835E-01  1.2907E-01

 ETASHRINKSD(%)  3.4141E+00  9.9551E+01  2.4335E+01  9.7349E+00  5.3278E+01
 ETASHRINKVR(%)  6.7116E+00  9.9998E+01  4.2748E+01  1.8522E+01  7.8170E+01
 EBVSHRINKSD(%)  3.4083E+00  9.9542E+01  2.3728E+01  7.6700E+00  5.4672E+01
 EBVSHRINKVR(%)  6.7004E+00  9.9998E+01  4.1826E+01  1.4752E+01  7.9453E+01
 RELATIVEINF(%)  9.3136E+01  4.0710E-04  9.5733E+00  5.5557E+01  1.4404E+00
 EPSSHRINKSD(%)  2.8215E+01
 EPSSHRINKVR(%)  4.8469E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1576.3765428512816     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -657.43800964660886     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.83
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1576.377       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  3.52E-01  1.66E-01  1.06E+00  2.21E-01  8.52E-01  1.00E-02  1.38E+00  1.47E+00  3.97E-01  2.78E+00
 


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
 #CPUT: Total CPU Time in Seconds,       20.875
Stop Time:
Fri Oct  1 10:41:26 CDT 2021
