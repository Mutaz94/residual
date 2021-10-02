Fri Oct  1 14:25:51 CDT 2021
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
$DATA ../../../../data/SD2/TD1/dat77.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m77.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2162.19539601767        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9218E+02  3.3812E+01  8.9417E+00  7.8301E+01 -3.7944E+01  4.0013E+01  5.5524E+00  7.7722E+00  4.8749E+01  1.5726E+00
             2.8696E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2168.39898597726        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      192
 NPARAMETR:  1.0122E+00  1.1251E+00  1.0564E+00  9.4084E-01  1.1273E+00  1.0925E+00  1.0091E+00  9.3100E-01  7.0377E-01  1.0469E+00
             9.4503E-01
 PARAMETER:  1.1209E-01  2.1789E-01  1.5485E-01  3.9013E-02  2.1985E-01  1.8848E-01  1.0903E-01  2.8507E-02 -2.5131E-01  1.4584E-01
             4.3466E-02
 GRADIENT:  -2.9872E+01  2.2245E+01  1.6751E+01  9.7329E+00 -2.6938E+00  1.9095E+01 -1.3572E+01 -2.6153E+00 -1.8338E+01 -1.4600E+01
            -2.3719E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2169.81088317528        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  1.0108E+00  1.0150E+00  1.0750E+00  1.0085E+00  1.0965E+00  1.0775E+00  1.1526E+00  7.5089E-01  6.6123E-01  1.1477E+00
             9.4406E-01
 PARAMETER:  1.1077E-01  1.1489E-01  1.7234E-01  1.0843E-01  1.9208E-01  1.7463E-01  2.4199E-01 -1.8650E-01 -3.1365E-01  2.3778E-01
             4.2438E-02
 GRADIENT:  -3.1036E+01  1.9180E+01  1.0114E+01  1.6415E+01 -4.4242E+00  1.4206E+01 -6.2954E+00 -2.3129E+00 -1.6524E+01 -1.1461E-02
            -2.4465E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2172.28935798850        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      545
 NPARAMETR:  1.0289E+00  1.0470E+00  8.9410E-01  9.6916E-01  1.0149E+00  1.0384E+00  1.1127E+00  4.9314E-01  7.6590E-01  1.0402E+00
             9.7128E-01
 PARAMETER:  1.2849E-01  1.4592E-01 -1.1938E-02  6.8672E-02  1.1479E-01  1.3765E-01  2.0678E-01 -6.0697E-01 -1.6670E-01  1.3943E-01
             7.0855E-02
 GRADIENT:  -7.9614E-02 -4.5480E-01 -1.0081E+00  1.1356E+00  3.6202E-01 -8.0086E-02 -9.1936E-02  2.2097E-01  3.6094E-01  3.0915E-01
             3.7273E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2172.33509586208        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      721
 NPARAMETR:  1.0300E+00  1.1253E+00  8.2562E-01  9.1659E-01  1.0181E+00  1.0391E+00  1.0548E+00  3.4668E-01  7.9458E-01  1.0353E+00
             9.7100E-01
 PARAMETER:  1.2957E-01  2.1806E-01 -9.1620E-02  1.2909E-02  1.1797E-01  1.3838E-01  1.5336E-01 -9.5936E-01 -1.2994E-01  1.3470E-01
             7.0575E-02
 GRADIENT:   2.0074E-01 -1.9266E+00 -7.7937E-01 -1.8091E+00  7.5649E-01 -1.3405E-01  2.7471E-01  1.1533E-01  2.5007E-01  2.8662E-01
             4.0009E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2172.35815193083        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      897
 NPARAMETR:  1.0306E+00  1.1698E+00  7.7549E-01  8.8785E-01  1.0112E+00  1.0399E+00  1.0239E+00  1.3127E-01  8.1177E-01  1.0255E+00
             9.7113E-01
 PARAMETER:  1.3016E-01  2.5685E-01 -1.5426E-01 -1.8954E-02  1.1118E-01  1.3911E-01  1.2364E-01 -1.9305E+00 -1.0854E-01  1.2519E-01
             7.0703E-02
 GRADIENT:   1.4681E-01  1.3575E-01 -7.8624E-01  5.7864E-01 -1.6153E-01 -6.9148E-02  1.0243E-01  1.8572E-02  1.4845E-01  3.9718E-01
             3.6926E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2172.36292630167        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1073
 NPARAMETR:  1.0306E+00  1.1719E+00  7.7364E-01  8.8612E-01  1.0118E+00  1.0400E+00  1.0223E+00  4.3522E-02  8.1294E-01  1.0257E+00
             9.7100E-01
 PARAMETER:  1.3013E-01  2.5866E-01 -1.5665E-01 -2.0898E-02  1.1175E-01  1.3924E-01  1.2201E-01 -3.0345E+00 -1.0709E-01  1.2539E-01
             7.0574E-02
 GRADIENT:   6.1157E-02 -1.0948E-01 -5.8443E-02 -7.6918E-02  5.1610E-03 -2.8705E-02  7.8580E-03  1.0918E-03  3.3723E-02  4.8019E-02
             9.1957E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2172.36566152625        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:     1235             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0321E+00  1.1718E+00  7.7355E-01  8.8626E-01  1.0117E+00  1.0409E+00  1.0225E+00  1.0000E-02  8.1289E-01  1.0257E+00
             9.7095E-01
 PARAMETER:  1.3160E-01  2.5850E-01 -1.5677E-01 -2.0745E-02  1.1168E-01  1.4008E-01  1.2228E-01 -4.5466E+00 -1.0716E-01  1.2537E-01
             7.0515E-02
 GRADIENT:   6.3595E+02  1.4605E+02  2.8423E+00  7.2118E+01  8.9787E+00  7.8467E+01  6.0513E+00  8.8369E-06  4.4405E+00  1.1404E+00
             1.0036E+00

0ITERATION NO.:   37    OBJECTIVE VALUE:  -2172.36566152625        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:     1290
 NPARAMETR:  1.0321E+00  1.1718E+00  7.7355E-01  8.8626E-01  1.0117E+00  1.0409E+00  1.0225E+00  1.0000E-02  8.1289E-01  1.0257E+00
             9.7095E-01
 PARAMETER:  1.3160E-01  2.5850E-01 -1.5677E-01 -2.0745E-02  1.1168E-01  1.4008E-01  1.2228E-01 -4.5466E+00 -1.0716E-01  1.2537E-01
             7.0515E-02
 GRADIENT:   3.1446E+00 -9.5660E-02 -2.4645E-02  1.9653E-02  1.2404E-01  3.0668E-01  1.9609E-02  4.4185E-06  2.9880E-02  1.8671E-02
             3.6015E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1290
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.3924E-04 -7.8913E-03 -4.2313E-04  4.1308E-03 -1.9297E-02
 SE:             2.9897E-02  2.2622E-02  1.7236E-04  2.2916E-02  2.3740E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9362E-01  7.2722E-01  1.4093E-02  8.5695E-01  4.1631E-01

 ETASHRINKSD(%)  1.0000E-10  2.4214E+01  9.9423E+01  2.3228E+01  2.0466E+01
 ETASHRINKVR(%)  1.0000E-10  4.2564E+01  9.9997E+01  4.1061E+01  3.6744E+01
 EBVSHRINKSD(%)  2.7626E-01  2.4014E+01  9.9506E+01  2.4421E+01  1.8212E+01
 EBVSHRINKVR(%)  5.5177E-01  4.2261E+01  9.9998E+01  4.2879E+01  3.3108E+01
 RELATIVEINF(%)  9.9038E+01  3.0747E+00  2.7002E-04  2.9179E+00  1.0514E+01
 EPSSHRINKSD(%)  3.3091E+01
 EPSSHRINKVR(%)  5.5232E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2172.3656615262503     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1253.4271283215776     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.06
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2172.366       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.17E+00  7.74E-01  8.86E-01  1.01E+00  1.04E+00  1.02E+00  1.00E-02  8.13E-01  1.03E+00  9.71E-01
 


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
 #CPUT: Total CPU Time in Seconds,       19.115
Stop Time:
Fri Oct  1 14:26:12 CDT 2021
