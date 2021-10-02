Fri Oct  1 09:33:11 CDT 2021
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
$DATA ../../../../data/SD2/A1/dat68.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m68.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1383.04663281641        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1903E+02  1.0491E+02 -4.8839E+00  1.9202E+02  1.0900E+02  4.5401E+01  1.3513E+01  5.3249E+00  3.8569E+01 -4.1447E+01
            -1.4543E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1809.98828646124        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0550E+00  1.0157E+00  1.0406E+00  9.8632E-01  9.9950E-01  1.0929E+00  8.0247E-01  9.0775E-01  6.5240E-01  8.8654E-01
             2.1331E+00
 PARAMETER:  1.5352E-01  1.1555E-01  1.3980E-01  8.6226E-02  9.9501E-02  1.8880E-01 -1.2005E-01  3.2173E-03 -3.2709E-01 -2.0433E-02
             8.5758E-01
 GRADIENT:   1.9552E+02  5.4615E+01 -1.2513E+01  9.0823E+01  1.9349E+01  4.8960E+01  3.4538E-01  4.5489E+00 -4.9175E+00  7.5476E+00
            -5.5839E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1816.64851730127        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.0413E+00  8.8654E-01  6.0051E-01  1.0189E+00  7.0067E-01  1.0316E+00  8.7764E-01  2.2372E-01  6.5819E-01  5.9862E-01
             2.1052E+00
 PARAMETER:  1.4045E-01 -2.0424E-02 -4.0998E-01  1.1873E-01 -2.5572E-01  1.3113E-01 -3.0514E-02 -1.3974E+00 -3.1827E-01 -4.1312E-01
             8.4439E-01
 GRADIENT:   1.5377E+02  4.0389E+01 -2.6782E+01  1.1582E+02  4.7914E+01  2.3508E+01  8.2509E-01  4.5672E-01 -9.4014E-02 -9.8094E-03
            -6.2062E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1820.98936826237        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      292
 NPARAMETR:  1.0242E+00  8.0262E-01  6.2829E-01  1.0343E+00  6.7836E-01  9.9636E-01  9.9439E-01  1.3063E-01  6.0984E-01  6.0459E-01
             2.1795E+00
 PARAMETER:  1.2390E-01 -1.1987E-01 -3.6476E-01  1.3373E-01 -2.8808E-01  9.6354E-02  9.4373E-02 -1.9354E+00 -3.9456E-01 -4.0320E-01
             8.7912E-01
 GRADIENT:  -1.5074E+01  2.8645E+00 -3.2056E+00 -1.4261E+01  8.9498E+00 -1.3335E-01  3.9275E+00  1.4593E-01 -3.1356E+00  2.1827E+00
            -3.1285E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1824.52998305964        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      467
 NPARAMETR:  1.0304E+00  5.2128E-01  6.3896E-01  1.1863E+00  5.8070E-01  1.0025E+00  1.2168E+00  4.4195E-02  5.9321E-01  5.5464E-01
             2.2606E+00
 PARAMETER:  1.2995E-01 -5.5147E-01 -3.4791E-01  2.7082E-01 -4.4352E-01  1.0245E-01  2.9624E-01 -3.0191E+00 -4.2221E-01 -4.8944E-01
             9.1564E-01
 GRADIENT:   4.1125E+00  6.5622E+00  1.0497E+01 -9.7291E-01 -1.3583E+01  3.4377E+00 -1.9954E-01  1.5552E-02  1.1086E+00 -1.5557E+00
             3.1939E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1829.16237514820        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      643
 NPARAMETR:  1.0278E+00  4.0437E-01  5.8479E-01  1.2200E+00  5.1213E-01  9.9603E-01  1.2242E+00  1.8111E-02  6.6639E-01  6.8201E-01
             2.1075E+00
 PARAMETER:  1.2744E-01 -8.0543E-01 -4.3651E-01  2.9886E-01 -5.6918E-01  9.6022E-02  3.0227E-01 -3.9113E+00 -3.0589E-01 -2.8272E-01
             8.4550E-01
 GRADIENT:   7.4178E+00  6.9324E+00  1.2095E+01  3.5667E+00 -2.0654E+01  1.1224E+00 -4.9586E-01  5.5312E-03  1.9145E+00 -6.7775E-01
            -2.0084E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1830.53283890241        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      820
 NPARAMETR:  1.0150E+00  2.2187E-01  7.1243E-01  1.3495E+00  5.4979E-01  9.8455E-01  1.7767E+00  1.0000E-02  6.1381E-01  7.5188E-01
             2.1159E+00
 PARAMETER:  1.1490E-01 -1.4057E+00 -2.3907E-01  3.9976E-01 -4.9821E-01  8.4426E-02  6.7478E-01 -5.9718E+00 -3.8806E-01 -1.8518E-01
             8.4950E-01
 GRADIENT:  -5.4774E+00  3.9465E+00 -1.0517E+00  2.6495E+01 -3.0962E+00 -1.5999E+00 -2.0724E-01  0.0000E+00 -2.9200E+00  3.0006E-02
             2.2243E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1831.14538448668        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      995
 NPARAMETR:  1.0124E+00  8.6654E-02  7.4711E-01  1.4198E+00  5.4073E-01  9.8520E-01  3.4318E+00  1.0000E-02  5.9963E-01  7.6353E-01
             2.1160E+00
 PARAMETER:  1.1234E-01 -2.3458E+00 -1.9154E-01  4.5053E-01 -5.1484E-01  8.5088E-02  1.3331E+00 -9.4453E+00 -4.1145E-01 -1.6980E-01
             8.4954E-01
 GRADIENT:  -1.5823E-01  1.4494E+00  2.5629E+00  1.0850E+01 -6.0477E+00 -2.8357E-01  1.0021E+00  0.0000E+00  3.6400E-01 -2.8351E-02
            -2.8949E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1831.38775917552        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1172
 NPARAMETR:  1.0105E+00  2.3597E-02  7.8229E-01  1.4558E+00  5.4830E-01  9.8516E-01  5.9438E+00  1.0000E-02  5.9192E-01  7.7847E-01
             2.1144E+00
 PARAMETER:  1.1045E-01 -3.6466E+00 -1.4553E-01  4.7559E-01 -5.0092E-01  8.5044E-02  1.8824E+00 -1.4101E+01 -4.2438E-01 -1.5043E-01
             8.4875E-01
 GRADIENT:   9.1948E-01  9.3418E-02 -7.7212E-01 -3.4661E+00  2.4796E+00  1.9417E-01  6.2200E-02  0.0000E+00  4.4253E-01 -5.2466E-01
            -7.0527E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1831.41691674288        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1355
 NPARAMETR:  1.0100E+00  1.0000E-02  7.9437E-01  1.4657E+00  5.5152E-01  9.8462E-01  7.8120E+00  1.0000E-02  5.8911E-01  7.8695E-01
             2.1161E+00
 PARAMETER:  1.0992E-01 -4.5309E+00 -1.3020E-01  4.8233E-01 -4.9508E-01  8.4499E-02  2.1557E+00 -1.7182E+01 -4.2914E-01 -1.3959E-01
             8.4958E-01
 GRADIENT:   6.2303E-01  2.8775E-02 -6.6029E-01 -3.0144E+00  2.1312E+00  8.2154E-02  2.0412E-03  0.0000E+00  8.9009E-02  2.0866E-02
             2.8340E-01

0ITERATION NO.:   49    OBJECTIVE VALUE:  -1831.41798325169        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:     1492
 NPARAMETR:  1.0098E+00  1.0000E-02  7.9343E-01  1.4652E+00  5.4976E-01  9.8441E-01  7.6898E+00  1.0000E-02  5.8906E-01  7.8641E-01
             2.1150E+00
 PARAMETER:  1.0984E-01 -4.5732E+00 -1.3010E-01  4.8234E-01 -4.9571E-01  8.4359E-02  2.1593E+00 -1.7182E+01 -4.2927E-01 -1.3977E-01
             8.4931E-01
 GRADIENT:   4.8845E-02  0.0000E+00  2.1676E-01  3.3620E-01  8.5818E-01  4.3689E-03  1.9866E-04  0.0000E+00 -2.1372E-03  1.1978E-02
             3.9036E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1492
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.3951E-04 -2.7832E-04  6.6799E-06 -8.3289E-03 -1.5172E-02
 SE:             2.9540E-02  1.5323E-03  1.8592E-04  2.7403E-02  2.1908E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9083E-01  8.5587E-01  9.7134E-01  7.6117E-01  4.8860E-01

 ETASHRINKSD(%)  1.0363E+00  9.4867E+01  9.9377E+01  8.1981E+00  2.6605E+01
 ETASHRINKVR(%)  2.0619E+00  9.9736E+01  9.9996E+01  1.5724E+01  4.6132E+01
 EBVSHRINKSD(%)  1.2841E+00  9.4953E+01  9.9344E+01  8.1316E+00  2.6469E+01
 EBVSHRINKVR(%)  2.5516E+00  9.9745E+01  9.9996E+01  1.5602E+01  4.5933E+01
 RELATIVEINF(%)  8.3692E+01  4.5569E-03  2.1346E-04  1.7282E+00  3.3672E+00
 EPSSHRINKSD(%)  2.6348E+01
 EPSSHRINKVR(%)  4.5754E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1831.4179832516884     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -912.47945004701569     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.48
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1831.418       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  1.00E-02  7.94E-01  1.47E+00  5.51E-01  9.84E-01  7.84E+00  1.00E-02  5.89E-01  7.87E-01  2.12E+00
 


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
 #CPUT: Total CPU Time in Seconds,       23.521
Stop Time:
Fri Oct  1 09:33:36 CDT 2021