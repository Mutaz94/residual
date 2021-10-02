Sat Oct  2 00:16:20 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat87.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m87.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1274.24463259622        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1450E+02 -1.3096E+00 -2.6799E+01  2.9298E+01  1.5009E+02  4.5029E+01 -4.3707E+01  9.6473E+00 -6.0699E+01 -4.5123E+01
            -6.5652E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1471.44700830824        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0563E+00  9.0755E-01  1.0162E+00  1.1227E+00  8.5972E-01  1.1280E+00  1.2395E+00  8.3875E-01  1.3426E+00  9.2751E-01
             2.0793E+00
 PARAMETER:  1.5481E-01  2.9971E-03  1.1603E-01  2.1576E-01 -5.1146E-02  2.2044E-01  3.1475E-01 -7.5843E-02  3.9461E-01  2.4748E-02
             8.3204E-01
 GRADIENT:   2.0999E+02  2.3856E+01  9.8381E+00  5.6775E+01 -6.8104E+00  6.1595E+01  8.7460E+00  8.5369E+00  4.7850E+01  1.0364E+00
             3.0567E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1487.69568508710        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0447E+00  5.3253E-01  5.8426E-01  1.3631E+00  5.1920E-01  1.1059E+00  1.8650E+00  2.3294E-01  1.0349E+00  5.5414E-01
             1.9843E+00
 PARAMETER:  1.4377E-01 -5.3011E-01 -4.3740E-01  4.0973E-01 -5.5547E-01  2.0068E-01  7.2328E-01 -1.3570E+00  1.3430E-01 -4.9034E-01
             7.8527E-01
 GRADIENT:   1.7098E+02  5.4153E+01 -1.6951E+01  2.5605E+02  5.7421E+01  5.1134E+01  1.5179E+01  1.2421E+00  5.0745E+00 -4.7917E+00
             1.4549E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1496.03743804825        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      318
 NPARAMETR:  1.0141E+00  4.6672E-01  5.6092E-01  1.3247E+00  4.8892E-01  1.0157E+00  1.7613E+00  6.9159E-02  9.8765E-01  6.1596E-01
             1.8796E+00
 PARAMETER:  1.1403E-01 -6.6203E-01 -4.7817E-01  3.8118E-01 -6.1555E-01  1.1558E-01  6.6605E-01 -2.5713E+00  8.7573E-02 -3.8457E-01
             7.3106E-01
 GRADIENT:  -3.5106E+01  2.1859E+01 -3.3281E+00  5.2958E+01 -1.2189E+00 -2.0620E+00 -2.6277E+00  1.1359E-01 -1.2210E+01  3.1808E-01
            -8.6304E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1501.67363384257        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      493
 NPARAMETR:  1.0303E+00  2.4166E-01  5.1491E-01  1.3664E+00  4.1852E-01  1.0171E+00  2.7056E+00  1.0000E-02  9.9022E-01  6.1868E-01
             1.8773E+00
 PARAMETER:  1.2988E-01 -1.3202E+00 -5.6376E-01  4.1218E-01 -7.7104E-01  1.1692E-01  1.0953E+00 -5.0566E+00  9.0172E-02 -3.8016E-01
             7.2984E-01
 GRADIENT:   8.8455E+00  3.1953E+00  1.3848E+01 -1.1690E+01 -2.0893E+01  1.4397E+00  6.6396E-01  0.0000E+00  1.4795E+00  8.2756E-01
            -9.5095E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1502.04930314445        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      669
 NPARAMETR:  1.0209E+00  1.6973E-01  5.4542E-01  1.4211E+00  4.2843E-01  1.0108E+00  3.2950E+00  1.0000E-02  9.7162E-01  6.3925E-01
             1.8820E+00
 PARAMETER:  1.2070E-01 -1.6736E+00 -5.0620E-01  4.5142E-01 -7.4764E-01  1.1071E-01  1.2924E+00 -4.5750E+00  7.1212E-02 -3.4746E-01
             7.3233E-01
 GRADIENT:  -3.6194E+00  7.2557E-01  9.1907E-01  3.5467E+00 -1.8520E+00  4.2565E-02  2.7102E-01  0.0000E+00 -5.3199E-01  4.6490E-01
             3.4456E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1502.06762848695        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      851             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0223E+00  1.5600E-01  5.4117E-01  1.4207E+00  4.2452E-01  1.0105E+00  3.4327E+00  1.0000E-02  9.7180E-01  6.3602E-01
             1.8797E+00
 PARAMETER:  1.2209E-01 -1.7579E+00 -5.1403E-01  4.5118E-01 -7.5679E-01  1.1048E-01  1.3334E+00 -4.7744E+00  7.1391E-02 -3.5253E-01
             7.3111E-01
 GRADIENT:   1.3686E+02  9.6846E+00  1.3501E+01  2.0851E+02  6.3321E+01  1.3477E+01  9.9541E+00  0.0000E+00  7.6157E+00  1.0164E+00
             5.6964E+00

0ITERATION NO.:   34    OBJECTIVE VALUE:  -1502.06840913480        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:      991
 NPARAMETR:  1.0223E+00  1.5655E-01  5.4094E-01  1.4204E+00  4.2455E-01  1.0105E+00  3.4312E+00  1.0000E-02  9.7180E-01  6.3608E-01
             1.8788E+00
 PARAMETER:  1.2208E-01 -1.7586E+00 -5.1380E-01  4.5123E-01 -7.5701E-01  1.1050E-01  1.3323E+00 -4.7744E+00  7.2391E-02 -3.5105E-01
             7.3125E-01
 GRADIENT:  -2.1993E-02 -2.5441E-01  9.3397E-01  3.7351E-01 -6.5622E-01  1.5470E-02 -1.2896E-01  0.0000E+00  1.1005E-01  1.5230E-01
             1.9778E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      991
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.7597E-04  3.0606E-02 -2.3170E-04 -1.7835E-02  5.9084E-03
 SE:             2.9418E-02  1.4819E-02  2.2348E-04  2.7248E-02  2.0488E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7625E-01  3.8894E-02  2.9984E-01  5.1277E-01  7.7306E-01

 ETASHRINKSD(%)  1.4452E+00  5.0355E+01  9.9251E+01  8.7145E+00  3.1362E+01
 ETASHRINKVR(%)  2.8695E+00  7.5354E+01  9.9994E+01  1.6670E+01  5.2888E+01
 EBVSHRINKSD(%)  1.4069E+00  6.3935E+01  9.9140E+01  6.7434E+00  2.6468E+01
 EBVSHRINKVR(%)  2.7939E+00  8.6993E+01  9.9993E+01  1.3032E+01  4.5930E+01
 RELATIVEINF(%)  9.6207E+01  5.0228E+00  3.6381E-04  4.1213E+01  2.5548E+00
 EPSSHRINKSD(%)  3.8035E+01
 EPSSHRINKVR(%)  6.1604E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1502.0684091347973     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -766.91758257105914     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.64
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1502.068       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.56E-01  5.41E-01  1.42E+00  4.24E-01  1.01E+00  3.43E+00  1.00E-02  9.73E-01  6.37E-01  1.88E+00
 


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
 #CPUT: Total CPU Time in Seconds,       13.686
Stop Time:
Sat Oct  2 00:16:35 CDT 2021
