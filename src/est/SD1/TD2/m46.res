Fri Oct  1 05:40:36 CDT 2021
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
$DATA ../../../../data/SD1/TD2/dat46.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m46.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3342.22713069280        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.8118E+02 -5.8707E+01  4.3300E+01  1.0833E+02  1.2810E+02  5.0054E+01 -4.1929E+01 -5.6528E+01 -5.3266E+01  2.5112E+01
            -9.3565E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3489.86371091414        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0076E+00  1.2039E+00  8.7848E-01  9.8366E-01  9.5448E-01  9.2379E-01  1.0999E+00  1.0690E+00  1.1418E+00  8.3698E-01
             1.4740E+00
 PARAMETER:  1.0757E-01  2.8559E-01 -2.9557E-02  8.3523E-02  5.3408E-02  2.0728E-02  1.9521E-01  1.6668E-01  2.3257E-01 -7.7959E-02
             4.8798E-01
 GRADIENT:   2.9997E+02  2.1402E+02 -3.1524E+01  9.1468E+01 -5.2100E+01 -1.7922E+00  9.5573E+00  3.7779E+00  1.0765E+01 -2.6226E+00
             1.1604E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3504.33229437660        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      267
 NPARAMETR:  1.0229E+00  1.5268E+00  1.3560E+00  8.0914E-01  1.3565E+00  1.0163E+00  8.5440E-01  1.7896E+00  1.2065E+00  1.1555E+00
             1.5012E+00
 PARAMETER:  1.2266E-01  5.2318E-01  4.0454E-01 -1.1178E-01  4.0493E-01  1.1613E-01 -5.7354E-02  6.8197E-01  2.8773E-01  2.4457E-01
             5.0626E-01
 GRADIENT:   1.1482E+02  7.1096E+01 -2.6665E+00  7.5497E+01 -3.4882E+00  1.5144E+01  3.9561E+00 -6.0442E+00  5.8203E+00  3.8865E+00
             1.4394E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3516.05820632515        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      447
 NPARAMETR:  9.9530E-01  1.5270E+00  1.4970E+00  7.7987E-01  1.4222E+00  9.5440E-01  8.7013E-01  2.5280E+00  1.0669E+00  1.1769E+00
             1.4331E+00
 PARAMETER:  9.5286E-02  5.2332E-01  5.0346E-01 -1.4863E-01  4.5217E-01  5.3329E-02 -3.9116E-02  1.0274E+00  1.6475E-01  2.6284E-01
             4.5986E-01
 GRADIENT:   6.5209E+01  3.3648E+01 -1.2367E+01  3.7996E+01  1.2515E+01 -4.1421E+00  2.7297E+00  2.4559E+00 -6.0303E-03 -5.5691E-01
             7.0078E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3516.24838815604        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      607
 NPARAMETR:  9.9579E-01  1.5270E+00  1.4970E+00  7.8045E-01  1.4189E+00  9.6449E-01  8.5406E-01  2.5150E+00  1.0678E+00  1.1784E+00
             1.4297E+00
 PARAMETER:  9.5784E-02  5.2330E-01  5.0346E-01 -1.4789E-01  4.4989E-01  6.3848E-02 -5.7751E-02  1.0223E+00  1.6557E-01  2.6416E-01
             4.5745E-01
 GRADIENT:   6.5154E+01  3.5728E+01 -1.1745E+01  3.8800E+01  1.0170E+01 -8.1544E-02  7.5671E-02  1.9497E+00 -1.1285E+00 -2.3533E-01
             6.4747E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3516.63857481459        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:      774
 NPARAMETR:  9.9312E-01  1.5268E+00  1.5056E+00  7.8046E-01  1.4190E+00  9.6558E-01  8.5622E-01  2.5145E+00  1.0681E+00  1.1783E+00
             1.4261E+00
 PARAMETER:  9.3093E-02  5.2318E-01  5.0920E-01 -1.4787E-01  4.4994E-01  6.4975E-02 -5.5233E-02  1.0221E+00  1.6590E-01  2.6408E-01
             4.5492E-01
 GRADIENT:   5.8771E+01  3.6283E+01 -1.0929E+01  3.8071E+01  9.5598E+00  6.5312E-01  3.3361E-01  1.5699E+00 -9.6667E-01 -2.6799E-01
             5.9829E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3516.97501457530        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      956
 NPARAMETR:  9.9311E-01  1.4960E+00  1.5018E+00  7.5467E-01  1.4050E+00  9.6420E-01  8.5378E-01  2.4700E+00  1.0760E+00  1.1798E+00
             1.4293E+00
 PARAMETER:  9.3090E-02  5.0277E-01  5.0665E-01 -1.8148E-01  4.4006E-01  6.3548E-02 -5.8084E-02  1.0042E+00  1.7329E-01  2.6531E-01
             4.5716E-01
 GRADIENT:   5.9432E+01 -2.7452E+01 -7.3806E+00 -1.8879E+01 -8.5716E-01  3.3202E-01  3.6012E-01  1.7968E+00 -1.9223E+00  1.1556E+00
             6.5602E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3517.28857851870        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1131
 NPARAMETR:  9.9316E-01  1.5296E+00  1.5023E+00  7.5136E-01  1.4178E+00  9.6410E-01  8.3358E-01  2.4087E+00  1.1121E+00  1.1824E+00
             1.4285E+00
 PARAMETER:  9.3136E-02  5.2499E-01  5.0698E-01 -1.8587E-01  4.4909E-01  6.3437E-02 -8.2031E-02  9.7909E-01  2.0623E-01  2.6759E-01
             4.5665E-01
 GRADIENT:   5.9309E+01  2.8574E+00 -4.8632E+00  2.6931E+00 -3.3794E-02  1.9347E-01 -3.3368E-01 -2.3013E-01  1.6605E-01 -1.3264E-01
             6.0611E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3518.98170788724        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:     1288
 NPARAMETR:  9.6786E-01  1.5363E+00  1.5504E+00  7.4276E-01  1.4248E+00  9.6309E-01  8.3268E-01  2.4267E+00  1.1135E+00  1.1901E+00
             1.3866E+00
 PARAMETER:  6.7327E-02  5.2940E-01  5.3852E-01 -1.9738E-01  4.5404E-01  6.2394E-02 -8.3102E-02  9.8654E-01  2.0752E-01  2.7403E-01
             4.2682E-01
 GRADIENT:  -7.0196E-01  3.9364E+00  2.9051E-01 -6.7016E+00 -3.5048E+00  9.5808E-01 -1.0898E+00 -3.1763E+00 -9.2929E-01 -5.9774E-01
            -9.4276E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -3519.05634397375        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:     1452
 NPARAMETR:  9.6800E-01  1.5313E+00  1.5538E+00  7.5026E-01  1.4266E+00  9.6011E-01  8.4126E-01  2.4391E+00  1.1118E+00  1.1919E+00
             1.3865E+00
 PARAMETER:  6.7477E-02  5.2613E-01  5.4072E-01 -1.8734E-01  4.5528E-01  5.9289E-02 -7.2856E-02  9.9162E-01  2.0596E-01  2.7551E-01
             4.2677E-01
 GRADIENT:  -3.9836E-01  7.0386E+00 -1.1015E+00  2.9850E-01  1.4168E+00 -2.7615E-01  9.9214E-03 -2.9158E+00  3.3917E-01  2.4953E-01
             1.4032E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -3519.06633140712        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1631
 NPARAMETR:  9.6829E-01  1.5273E+00  1.5635E+00  7.5190E-01  1.4242E+00  9.6081E-01  8.4262E-01  2.4270E+00  1.1090E+00  1.1893E+00
             1.3864E+00
 PARAMETER:  6.7775E-02  5.2349E-01  5.4691E-01 -1.8515E-01  4.5363E-01  6.0026E-02 -7.1243E-02  9.8668E-01  2.0343E-01  2.7339E-01
             4.2672E-01
 GRADIENT:   3.3079E-01  5.9858E+00 -1.5775E-01 -1.1456E+00  5.4241E-01  2.7142E-02 -5.5317E-02 -3.5898E+00  1.2745E-01  1.7121E-01
             4.0964E-02

0ITERATION NO.:   54    OBJECTIVE VALUE:  -3519.10823692927        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:     1749
 NPARAMETR:  9.6748E-01  1.5241E+00  1.5650E+00  7.5200E-01  1.4210E+00  9.6062E-01  8.4322E-01  2.4465E+00  1.1086E+00  1.1894E+00
             1.3877E+00
 PARAMETER:  6.6704E-02  5.2019E-01  5.4659E-01 -1.8544E-01  4.5241E-01  5.9329E-02 -7.1524E-02  9.9696E-01  2.0263E-01  2.7279E-01
             4.2667E-01
 GRADIENT:  -1.8738E+04 -7.2117E+03 -3.4232E+03 -1.0111E+04  8.2817E+03 -2.0837E-01 -1.4227E-01  3.6989E+03 -1.8496E+04 -1.3737E+04
            -8.7928E+03
 NUMSIGDIG:         2.3         2.3         2.3         2.3         2.3         1.9         1.7         2.3         2.3         2.3
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1749
 NO. OF SIG. DIGITS IN FINAL EST.:  1.7

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.0342E-03 -3.5454E-02 -2.8636E-02  3.1375E-02 -3.7495E-02
 SE:             2.9836E-02  2.2239E-02  1.9314E-02  2.4106E-02  2.4349E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4564E-01  1.1088E-01  1.3816E-01  1.9307E-01  1.2359E-01

 ETASHRINKSD(%)  4.5183E-02  2.5498E+01  3.5295E+01  1.9242E+01  1.8426E+01
 ETASHRINKVR(%)  9.0345E-02  4.4494E+01  5.8133E+01  3.4781E+01  3.3458E+01
 EBVSHRINKSD(%)  5.5397E-01  2.5428E+01  4.0331E+01  2.3253E+01  1.5073E+01
 EBVSHRINKVR(%)  1.1049E+00  4.4391E+01  6.4396E+01  4.1099E+01  2.7875E+01
 RELATIVEINF(%)  9.8890E+01  1.6127E+01  2.6116E+01  1.7874E+01  3.6474E+01
 EPSSHRINKSD(%)  2.0169E+01
 EPSSHRINKVR(%)  3.6271E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3519.1082369292694     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1865.0188771608587     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    51.47
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3519.108       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.67E-01  1.52E+00  1.56E+00  7.52E-01  1.42E+00  9.60E-01  8.42E-01  2.45E+00  1.11E+00  1.19E+00  1.39E+00
 


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
 #CPUT: Total CPU Time in Seconds,       51.533
Stop Time:
Fri Oct  1 05:41:29 CDT 2021