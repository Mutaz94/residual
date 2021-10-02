Sat Oct  2 05:52:57 CDT 2021
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
$DATA ../../../../data/SD4/D/dat74.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m74.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   15395.1519828543        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.4769E+02  2.9001E+02 -2.1266E+01  1.8111E+02  3.3544E+02 -2.7415E+03 -9.0084E+02 -4.8900E+01 -1.3976E+03 -8.6837E+02
            -2.7796E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -563.524433750460        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.2952E+00  1.1985E+00  8.7608E-01  1.7552E+00  1.3094E+00  1.9794E+00  1.2083E+00  9.8772E-01  1.1258E+00  1.0572E+00
             1.4579E+01
 PARAMETER:  3.5866E-01  2.8105E-01 -3.2298E-02  6.6258E-01  3.6959E-01  7.8278E-01  2.8918E-01  8.7649E-02  2.1847E-01  1.5559E-01
             2.7796E+00
 GRADIENT:  -2.3928E+01  4.2725E+01  1.9371E+00  7.7505E+01 -1.2383E+01  2.1732E+01 -3.3683E+00  4.8909E+00  1.9957E+00  1.6242E+00
             5.5063E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -578.555395111959        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.2457E+00  1.0082E+00  8.7936E-01  1.4964E+00  2.0522E+00  1.7619E+00  1.9678E+00  2.0467E-01  1.1176E+00  3.8013E+00
             1.3581E+01
 PARAMETER:  3.1970E-01  1.0820E-01 -2.8563E-02  5.0303E-01  8.1892E-01  6.6642E-01  7.7692E-01 -1.4864E+00  2.1115E-01  1.4353E+00
             2.7087E+00
 GRADIENT:  -3.8930E+00  7.6020E+00 -9.7536E+00  1.3307E+01 -1.3474E+01  6.3301E+00  4.5734E+00  1.8693E-01  1.6819E+01  1.1936E+01
             6.2673E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -604.672068456480        NO. OF FUNC. EVALS.:  80
 CUMULATIVE NO. OF FUNC. EVALS.:      235
 NPARAMETR:  1.0825E+00  3.0262E-01  8.5943E-01  1.7858E+00  7.3322E+00  1.6394E+00  3.3013E+00  3.5213E-02  1.9108E-01  1.0677E+01
             1.2674E+01
 PARAMETER:  1.7930E-01 -1.0953E+00 -5.1489E-02  6.7987E-01  2.0923E+00  5.9431E-01  1.2943E+00 -3.2463E+00 -1.5551E+00  2.4681E+00
             2.6396E+00
 GRADIENT:  -4.2048E+01  2.4646E+01  7.9646E-01  2.4692E+02 -6.4886E+00 -1.8805E+01 -3.3589E-01 -9.3618E-05 -1.2522E+00  3.8601E+01
            -7.8399E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -680.079586599412        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      307
 NPARAMETR:  8.6110E-01  9.5938E-02  1.2067E-01  1.0249E+00  6.5184E+00  2.1450E+00  3.8000E-01  1.0000E-02  1.6544E-01  1.8560E+00
             1.0447E+01
 PARAMETER: -4.9548E-02 -2.2441E+00 -2.0147E+00  1.2460E-01  1.9746E+00  8.6316E-01 -8.6759E-01 -9.4128E+00 -1.6991E+00  7.1844E-01
             2.4463E+00
 GRADIENT:   3.0700E+01  2.1197E+01 -5.3380E+01  1.3345E+02 -4.0362E+01  2.9032E+01  2.2360E+00  0.0000E+00 -2.1818E-01  2.5130E+01
            -9.5343E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -712.588180560384        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      381
 NPARAMETR:  5.7562E-01  3.4545E-02  4.4858E-02  4.6367E-01  9.1768E+00  1.5931E+00  2.9838E-02  1.0000E-02  8.4716E-02  8.1745E-01
             9.8915E+00
 PARAMETER: -4.5230E-01 -3.2655E+00 -3.0043E+00 -6.6858E-01  2.3167E+00  5.6566E-01 -3.4120E+00 -1.1614E+01 -2.3684E+00 -1.0156E-01
             2.3917E+00
 GRADIENT:   3.1349E+01  8.2208E+00  5.1772E+01 -2.6016E+00 -1.2103E+00 -5.1664E+01  5.9996E-03  0.0000E+00  1.0683E-01  2.1222E-01
            -7.6240E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -724.519588368979        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      562
 NPARAMETR:  4.9350E-01  1.9047E-02  2.7222E-02  3.2905E-01  7.6170E+00  1.8154E+00  1.0000E-02  1.0000E-02  3.3535E-02  4.7304E-01
             1.0986E+01
 PARAMETER: -6.0623E-01 -3.8609E+00 -3.5037E+00 -1.0115E+00  2.1304E+00  6.9628E-01 -4.7529E+00 -1.3958E+01 -3.2952E+00 -6.4857E-01
             2.4966E+00
 GRADIENT:   3.9719E+00  2.7181E+00 -1.4791E+01  1.3785E+01  8.5336E-01 -2.9924E+00  0.0000E+00  0.0000E+00  2.7428E-02  1.9964E-01
             3.8366E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -725.343035969806        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      739
 NPARAMETR:  4.6929E-01  1.4255E-02  2.4464E-02  2.9923E-01  7.0195E+00  1.8305E+00  1.0000E-02  1.0000E-02  1.8532E-02  2.3711E-01
             1.0897E+01
 PARAMETER: -6.5653E-01 -4.1507E+00 -3.6105E+00 -1.1065E+00  2.0487E+00  7.0458E-01 -5.0589E+00 -1.4319E+01 -3.8883E+00 -1.3393E+00
             2.4885E+00
 GRADIENT:   2.0858E+00  1.0761E+00 -1.8854E+00 -5.0979E-01  1.7018E+00  3.0338E-01  0.0000E+00  0.0000E+00  6.1101E-03  7.9128E-02
             1.5606E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -725.671677029338        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      915
 NPARAMETR:  4.6849E-01  1.0846E-02  2.4447E-02  3.0063E-01  6.1754E+00  1.8386E+00  1.0000E-02  1.0000E-02  1.0000E-02  5.0673E-02
             1.0896E+01
 PARAMETER: -6.5824E-01 -4.4239E+00 -3.6112E+00 -1.1019E+00  1.9206E+00  7.0903E-01 -5.0589E+00 -1.4319E+01 -5.3187E+00 -2.8824E+00
             2.4884E+00
 GRADIENT:   1.5900E-01  8.2269E-02  1.0349E+00 -1.5648E+00 -6.9053E-01  1.2287E-01  0.0000E+00  0.0000E+00  0.0000E+00  1.2297E-02
             4.9466E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -725.678137822168        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1091
 NPARAMETR:  4.6805E-01  1.0808E-02  2.4442E-02  3.0052E-01  6.2126E+00  1.8380E+00  1.0000E-02  1.0000E-02  1.0000E-02  2.0735E-02
             1.0890E+01
 PARAMETER: -6.5917E-01 -4.4275E+00 -3.6114E+00 -1.1022E+00  1.9266E+00  7.0869E-01 -5.0589E+00 -1.4319E+01 -5.3187E+00 -3.7759E+00
             2.4878E+00
 GRADIENT:  -4.0981E-02 -6.5831E-03  9.1402E-02 -6.6098E-02 -1.3613E-02 -3.3767E-03  0.0000E+00  0.0000E+00  0.0000E+00  1.9152E-03
            -3.0537E-02

0ITERATION NO.:   48    OBJECTIVE VALUE:  -725.678966144587        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:     1183
 NPARAMETR:  4.6811E-01  1.0895E-02  2.4440E-02  3.0050E-01  6.2219E+00  1.8378E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0000E-02
             1.0890E+01
 PARAMETER: -6.5905E-01 -4.4194E+00 -3.6115E+00 -1.1023E+00  1.9281E+00  7.0858E-01 -5.0589E+00 -1.4319E+01 -5.3187E+00 -4.6269E+00
             2.4878E+00
 GRADIENT:   3.4999E-02  8.9643E-03  2.7223E-02 -5.0043E-02  4.4301E-02 -1.1907E-02  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -1.9245E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1183
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.2431E-03  9.3880E-06  8.9129E-05 -2.1208E-04  4.7684E-06
 SE:             2.9129E-02  8.6749E-06  2.8451E-04  3.5327E-04  6.0022E-05
 N:                     100         100         100         100         100

 P VAL.:         9.3862E-01  2.7916E-01  7.5407E-01  5.4829E-01  9.3668E-01

 ETASHRINKSD(%)  2.4134E+00  9.9971E+01  9.9047E+01  9.8816E+01  9.9799E+01
 ETASHRINKVR(%)  4.7685E+00  1.0000E+02  9.9991E+01  9.9986E+01  1.0000E+02
 EBVSHRINKSD(%)  2.6006E+00  9.9962E+01  9.9047E+01  9.8794E+01  9.9754E+01
 EBVSHRINKVR(%)  5.1336E+00  1.0000E+02  9.9991E+01  9.9985E+01  9.9999E+01
 RELATIVEINF(%)  9.9836E+00  2.4070E-06  5.5188E-05  8.5092E-05  1.4180E-04
 EPSSHRINKSD(%)  7.0908E+00
 EPSSHRINKVR(%)  1.3679E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -725.67896614458743     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       9.4718604191507438     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.42
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -725.679       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         4.68E-01  1.09E-02  2.44E-02  3.01E-01  6.22E+00  1.84E+00  1.00E-02  1.00E-02  1.00E-02  1.00E-02  1.09E+01
 


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
 #CPUT: Total CPU Time in Seconds,       14.459
Stop Time:
Sat Oct  2 05:53:13 CDT 2021