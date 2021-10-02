Fri Oct  1 08:26:40 CDT 2021
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
$DATA ../../../../data/SD2/B/dat53.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m53.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1659.30144036174        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3947E+02 -5.3575E+01  4.7894E+01 -3.9797E+01  4.8883E+01  2.7112E+01  1.6410E+01 -1.8138E+02  3.3710E+01  4.2583E+00
            -7.0774E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2094.77203886134        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:       89
 NPARAMETR:  8.3327E-01  1.0010E+00  9.6712E-01  1.0257E+00  9.8785E-01  1.0001E+00  9.5752E-01  1.0480E+00  9.1319E-01  9.7254E-01
             1.2526E+00
 PARAMETER: -8.2403E-02  1.0104E-01  6.6569E-02  1.2533E-01  8.7771E-02  1.0013E-01  5.6590E-02  1.4684E-01  9.1901E-03  7.2156E-02
             3.2523E-01
 GRADIENT:  -9.7611E+01 -4.0372E+01 -4.0209E+01  1.3172E+01  4.4512E+01 -1.8795E+01  1.0062E+01  1.4089E+01  3.1029E+01  1.7093E+01
             1.7990E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2101.44215508709        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:      186
 NPARAMETR:  8.3319E-01  1.0438E+00  5.2326E-01  9.6975E-01  7.1183E-01  1.0072E+00  9.2791E-01  5.4210E-01  8.8885E-01  6.9012E-01
             1.1927E+00
 PARAMETER: -8.2488E-02  1.4289E-01 -5.4768E-01  6.9280E-02 -2.3992E-01  1.0716E-01  2.5181E-02 -5.1231E-01 -1.7825E-02 -2.7090E-01
             2.7622E-01
 GRADIENT:  -3.6253E+02 -5.3873E+01 -5.4208E+01 -1.6511E+01  2.8264E+01 -8.7553E+01  6.7850E+00  7.0244E+00  2.4130E+01  1.5673E+01
             1.4914E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2153.73771116588        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      364
 NPARAMETR:  9.5456E-01  8.6784E-01  8.6841E-01  1.1186E+00  8.2838E-01  9.6429E-01  1.0881E+00  6.3976E-01  7.5865E-01  8.5656E-01
             9.8738E-01
 PARAMETER:  5.3499E-02 -4.1744E-02 -4.1094E-02  2.1206E-01 -8.8289E-02  6.3633E-02  1.8439E-01 -3.4667E-01 -1.7622E-01 -5.4828E-02
             8.7296E-02
 GRADIENT:  -5.9662E+01 -6.1539E+00  5.3465E+00 -2.9663E+01 -1.8984E+01 -4.7033E+01  3.3036E+00  2.3508E+00  2.0399E+00  6.2510E+00
             2.5180E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2157.63395586758        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      541
 NPARAMETR:  9.7637E-01  8.8326E-01  8.7389E-01  1.1187E+00  8.4591E-01  1.0670E+00  1.0213E+00  5.7920E-01  7.6138E-01  8.5559E-01
             9.5852E-01
 PARAMETER:  7.6086E-02 -2.4137E-02 -3.4802E-02  2.1215E-01 -6.7343E-02  1.6489E-01  1.2110E-01 -4.4611E-01 -1.7262E-01 -5.5966E-02
             5.7636E-02
 GRADIENT:  -4.3215E+00 -4.3018E+00  1.6753E-01 -5.1381E+00  1.7703E+00 -6.4784E-01 -1.3768E+00  1.7346E-02 -1.1552E+00 -5.6679E-01
            -3.4032E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2157.97863677504        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      717
 NPARAMETR:  9.8127E-01  1.0410E+00  7.3071E-01  1.0153E+00  8.3335E-01  1.0721E+00  9.4223E-01  4.0342E-01  8.0301E-01  8.2508E-01
             9.5810E-01
 PARAMETER:  8.1090E-02  1.4021E-01 -2.1374E-01  1.1518E-01 -8.2302E-02  1.6958E-01  4.0494E-02 -8.0778E-01 -1.1939E-01 -9.2278E-02
             5.7201E-02
 GRADIENT:   1.0055E+00 -6.4384E-01 -6.3730E-01  4.7159E-01 -1.0644E-03  2.2661E-01 -1.9197E-01  2.8502E-01 -1.4657E-01  3.6119E-01
             4.3312E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2158.04633233022        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      893
 NPARAMETR:  9.8133E-01  1.0902E+00  6.8900E-01  9.8182E-01  8.3274E-01  1.0724E+00  9.1740E-01  2.5978E-01  8.1858E-01  8.2436E-01
             9.5728E-01
 PARAMETER:  8.1159E-02  1.8634E-01 -2.7252E-01  8.1651E-02 -8.3039E-02  1.6986E-01  1.3793E-02 -1.2479E+00 -1.0019E-01 -9.3152E-02
             5.6338E-02
 GRADIENT:   7.8579E-02 -7.5905E-01 -2.1474E-01 -1.0750E+00 -9.5933E-02  6.9225E-02 -8.1073E-02  7.1700E-02 -1.1968E-01  2.0470E-01
            -3.2526E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2158.06062021931        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1068
 NPARAMETR:  9.8157E-01  1.1034E+00  6.7206E-01  9.7266E-01  8.2950E-01  1.0724E+00  9.1230E-01  9.6926E-02  8.2353E-01  8.2618E-01
             9.5803E-01
 PARAMETER:  8.1401E-02  1.9841E-01 -2.9740E-01  7.2281E-02 -8.6936E-02  1.6987E-01  8.2082E-03 -2.2338E+00 -9.4152E-02 -9.0942E-02
             5.7121E-02
 GRADIENT:   1.9125E-01 -3.1878E-01 -3.3233E-01 -1.2267E-01  9.2389E-02 -1.2613E-02  6.2976E-02  4.0026E-03  4.0193E-02  2.0574E-01
             1.5399E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2158.06114635298        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1245
 NPARAMETR:  9.8152E-01  1.1071E+00  6.6985E-01  9.7039E-01  8.2999E-01  1.0724E+00  9.1033E-01  2.3638E-02  8.2476E-01  8.2656E-01
             9.5796E-01
 PARAMETER:  8.1349E-02  2.0172E-01 -3.0070E-01  6.9946E-02 -8.6339E-02  1.6993E-01  6.0508E-03 -3.6449E+00 -9.2668E-02 -9.0485E-02
             5.7049E-02
 GRADIENT:   3.5545E-02 -3.4743E-02 -6.4618E-02 -9.5960E-03  4.1525E-03 -4.1618E-03  1.1213E-02  2.1434E-04  7.1419E-03  3.9166E-02
             1.1461E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2158.06260926059        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1424
 NPARAMETR:  9.8244E-01  1.1072E+00  6.7010E-01  9.7018E-01  8.2978E-01  1.0759E+00  9.1009E-01  1.0000E-02  8.2462E-01  8.2625E-01
             9.5790E-01
 PARAMETER:  8.2151E-02  2.0170E-01 -3.0078E-01  6.9941E-02 -8.6304E-02  1.7147E-01  6.0843E-03 -5.6241E+00 -9.2584E-02 -9.0558E-02
             5.7076E-02
 GRADIENT:  -7.5487E-02 -5.4959E-02 -1.0737E-01  1.4963E-01  1.8275E-01 -2.0615E-01  9.7806E-03  0.0000E+00  1.5882E-02  1.5174E-02
             2.0797E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1424
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.9592E-04 -9.2457E-03 -3.7508E-04  4.3024E-03 -1.4249E-02
 SE:             2.9918E-02  2.1058E-02  1.9261E-04  2.5186E-02  2.3561E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9211E-01  6.6062E-01  5.1495E-02  8.6436E-01  5.4533E-01

 ETASHRINKSD(%)  1.0000E-10  2.9452E+01  9.9355E+01  1.5624E+01  2.1069E+01
 ETASHRINKVR(%)  1.0000E-10  5.0229E+01  9.9996E+01  2.8806E+01  3.7698E+01
 EBVSHRINKSD(%)  2.6120E-01  2.9274E+01  9.9420E+01  1.6151E+01  2.0565E+01
 EBVSHRINKVR(%)  5.2171E-01  4.9978E+01  9.9997E+01  2.9694E+01  3.6900E+01
 RELATIVEINF(%)  9.9271E+01  3.0107E+00  3.8650E-04  5.1210E+00  6.4630E+00
 EPSSHRINKSD(%)  3.3617E+01
 EPSSHRINKVR(%)  5.5933E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2158.0626092605903     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1239.1240760559176     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.98
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2158.063       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.82E-01  1.11E+00  6.70E-01  9.70E-01  8.30E-01  1.07E+00  9.10E-01  1.00E-02  8.25E-01  8.26E-01  9.58E-01
 


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
 #CPUT: Total CPU Time in Seconds,       20.025
Stop Time:
Fri Oct  1 08:27:02 CDT 2021