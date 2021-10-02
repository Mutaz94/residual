Sat Oct  2 01:09:47 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat55.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m55.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   120.310345031572        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2214E+02  5.0036E+01  1.3046E+01  6.0978E+01  2.7112E+02  7.4044E+01 -7.2397E+01 -1.6480E+01 -1.2236E+02 -1.7825E+02
            -3.1674E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1256.85828811801        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0892E+00  1.0178E+00  9.8321E-01  1.0884E+00  9.2303E-01  7.7893E-01  1.0104E+00  9.8154E-01  1.0114E+00  1.0238E+00
             4.6309E+00
 PARAMETER:  1.8540E-01  1.1766E-01  8.3068E-02  1.8471E-01  1.9912E-02 -1.4983E-01  1.1034E-01  8.1363E-02  1.1134E-01  1.2356E-01
             1.6327E+00
 GRADIENT:   1.5623E+02 -2.1760E+01 -1.4655E+01 -1.4290E+01  2.8223E-01 -7.7799E+00  1.3463E+01  5.2670E+00  2.4506E+01  2.4219E+01
             1.0590E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1273.68446075800        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.0283E+00  9.9712E-01  1.4226E+00  1.1051E+00  1.0583E+00  7.7294E-01  1.0673E+00  1.8036E-01  8.5752E-01  7.7876E-01
             4.4774E+00
 PARAMETER:  1.2790E-01  9.7121E-02  4.5252E-01  1.9990E-01  1.5662E-01 -1.5755E-01  1.6516E-01 -1.6128E+00 -5.3707E-02 -1.5005E-01
             1.5990E+00
 GRADIENT:  -8.0668E+00  1.8745E-01  1.0667E+00 -3.8740E+00 -4.9312E+00 -6.6024E+00  1.4393E+01  8.0395E-02  1.6177E+01  1.1341E+01
             8.9636E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1284.42039441012        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  1.0229E+00  1.0636E+00  1.1743E+00  1.0494E+00  1.0188E+00  8.1210E-01  5.9113E-01  1.7808E-01  8.0991E-01  3.7897E-01
             4.0474E+00
 PARAMETER:  1.2269E-01  1.6171E-01  2.6070E-01  1.4824E-01  1.1862E-01 -1.0814E-01 -4.2573E-01 -1.6255E+00 -1.1083E-01 -8.7029E-01
             1.4981E+00
 GRADIENT:   1.6703E+00  7.2401E+00 -1.7778E+00  1.0980E+01 -5.5376E-02  1.9121E+00 -8.4059E-01  1.2042E-01 -2.1995E+00  2.3505E+00
            -1.0350E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1285.70028255465        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      298
 NPARAMETR:  1.0211E+00  1.0352E+00  1.1556E+00  1.0543E+00  9.9400E-01  8.0636E-01  6.3775E-01  6.0791E-02  8.1293E-01  5.9508E-02
             4.0764E+00
 PARAMETER:  1.2084E-01  1.3455E-01  2.4459E-01  1.5284E-01  9.3980E-02 -1.1522E-01 -3.4981E-01 -2.7003E+00 -1.0712E-01 -2.7216E+00
             1.5052E+00
 GRADIENT:  -8.9986E-02  1.7707E-01 -1.2398E-01  4.0559E-01 -6.9152E-01  9.0872E-01 -2.9063E-01  1.5286E-02 -6.5188E-01  5.8377E-02
            -2.3506E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1285.78740293721        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      390
 NPARAMETR:  1.0212E+00  1.0536E+00  1.1801E+00  1.0452E+00  1.0136E+00  8.0214E-01  6.7124E-01  4.0821E-02  8.1215E-01  3.4613E-02
             4.0907E+00
 PARAMETER:  1.2101E-01  1.5223E-01  2.6561E-01  1.4421E-01  1.1346E-01 -1.2047E-01 -2.9863E-01 -3.0986E+00 -1.0807E-01 -3.2635E+00
             1.5087E+00
 GRADIENT:  -2.9752E+01 -3.3386E+00 -9.8033E-01 -4.8959E+00  1.5855E+00 -2.1949E+00  2.3955E-01  5.9868E-03  1.3539E-01  1.8443E-02
            -1.0597E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1286.10845611961        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      567
 NPARAMETR:  1.0330E+00  9.9395E-01  1.3033E+00  1.0975E+00  1.0319E+00  8.0729E-01  6.7197E-01  2.6506E-02  7.7391E-01  1.6159E-02
             4.1565E+00
 PARAMETER:  1.3246E-01  9.3929E-02  3.6491E-01  1.9301E-01  1.3143E-01 -1.1407E-01 -2.9755E-01 -3.5304E+00 -1.5630E-01 -4.0253E+00
             1.5247E+00
 GRADIENT:   4.9862E-01  1.0704E+00  4.7918E-01  1.1538E+00 -9.0690E-01 -3.0494E-02 -6.8836E-03  2.2583E-03  1.0255E-01  3.7629E-03
            -7.7627E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1286.11707859274        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      742
 NPARAMETR:  1.0323E+00  9.1462E-01  1.2895E+00  1.1458E+00  9.9956E-01  8.0734E-01  7.0596E-01  1.0992E-02  7.5354E-01  1.0000E-02
             4.1534E+00
 PARAMETER:  1.3182E-01  1.0750E-02  3.5428E-01  2.3612E-01  9.9562E-02 -1.1401E-01 -2.4820E-01 -4.4106E+00 -1.8297E-01 -5.2409E+00
             1.5239E+00
 GRADIENT:   9.3844E-02  1.1043E-01  2.0808E-03  1.7835E-01 -6.4032E-02 -3.1315E-03 -3.2578E-03  4.5746E-04  1.7364E-02  0.0000E+00
             4.2291E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1286.11710649706        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      922             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0323E+00  9.0902E-01  1.2920E+00  1.1492E+00  9.9847E-01  8.0734E-01  7.0864E-01  1.0000E-02  7.5169E-01  1.0000E-02
             4.1528E+00
 PARAMETER:  1.3177E-01  4.6167E-03  3.5620E-01  2.3904E-01  9.8464E-02 -1.1401E-01 -2.4440E-01 -4.6042E+00 -1.8543E-01 -5.3378E+00
             1.5238E+00
 GRADIENT:   3.0722E+01  1.2524E+00  2.0353E-01  9.4352E+00  4.4350E-01  1.5664E+00  1.5482E-01  0.0000E+00  4.1043E-01  0.0000E+00
             1.2132E+01

0ITERATION NO.:   42    OBJECTIVE VALUE:  -1286.11710649706        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      979
 NPARAMETR:  1.0323E+00  9.0902E-01  1.2920E+00  1.1492E+00  9.9847E-01  8.0734E-01  7.0864E-01  1.0000E-02  7.5169E-01  1.0000E-02
             4.1528E+00
 PARAMETER:  1.3177E-01  4.6167E-03  3.5620E-01  2.3904E-01  9.8464E-02 -1.1401E-01 -2.4440E-01 -4.6042E+00 -1.8543E-01 -5.3378E+00
             1.5238E+00
 GRADIENT:   2.1954E-01 -8.4515E-02 -2.7479E-02 -1.3634E-01  5.2870E-02  6.5840E-03 -2.4074E-03  0.0000E+00  4.5400E-03  0.0000E+00
            -5.8475E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      979
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2541E-03 -9.1548E-03  6.7059E-05 -1.1639E-02 -3.2486E-05
 SE:             2.7911E-02  1.0519E-02  5.4041E-05  1.8863E-02  1.3120E-04
 N:                     100         100         100         100         100

 P VAL.:         9.6416E-01  3.8416E-01  2.1465E-01  5.3723E-01  8.0445E-01

 ETASHRINKSD(%)  6.4961E+00  6.4758E+01  9.9819E+01  3.6806E+01  9.9560E+01
 ETASHRINKVR(%)  1.2570E+01  8.7580E+01  1.0000E+02  6.0065E+01  9.9998E+01
 EBVSHRINKSD(%)  6.4163E+00  6.4992E+01  9.9771E+01  3.6816E+01  9.9481E+01
 EBVSHRINKVR(%)  1.2421E+01  8.7745E+01  9.9999E+01  6.0077E+01  9.9997E+01
 RELATIVEINF(%)  7.6524E+01  4.7302E-02  2.1239E-05  2.0837E-01  7.2119E-05
 EPSSHRINKSD(%)  1.7180E+01
 EPSSHRINKVR(%)  3.1409E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1286.1171064970567     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -550.96627993331856     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.28
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1286.117       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  9.09E-01  1.29E+00  1.15E+00  9.98E-01  8.07E-01  7.09E-01  1.00E-02  7.52E-01  1.00E-02  4.15E+00
 


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
 #CPUT: Total CPU Time in Seconds,       11.316
Stop Time:
Sat Oct  2 01:10:00 CDT 2021