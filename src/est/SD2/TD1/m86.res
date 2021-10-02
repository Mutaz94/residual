Fri Oct  1 14:30:00 CDT 2021
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
$DATA ../../../../data/SD2/TD1/dat86.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m86.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2152.58949192964        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.7786E+02 -1.8789E+01 -8.1917E-01  6.1109E+00  4.9347E+01  5.2038E+01  4.8798E+00 -2.6224E+00  1.1861E+01  3.4827E+00
             1.2776E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2157.52898242680        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:      204
 NPARAMETR:  1.0326E+00  1.0164E+00  9.6139E-01  1.0452E+00  9.4434E-01  9.9716E-01  9.8368E-01  1.0174E+00  9.6641E-01  9.7288E-01
             9.7832E-01
 PARAMETER:  1.3206E-01  1.1632E-01  6.0625E-02  1.4417E-01  4.2726E-02  9.7154E-02  8.3541E-02  1.1724E-01  6.5837E-02  7.2505E-02
             7.8084E-02
 GRADIENT:  -1.7258E+00  7.9498E+00  6.3454E+00  2.4581E+00 -4.2660E+00 -4.0616E-01  1.0496E+00  3.8247E-01  1.3691E+00  6.2193E+00
            -6.5231E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2158.36519834721        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      387
 NPARAMETR:  1.0329E+00  9.1442E-01  8.2780E-01  1.1012E+00  8.3761E-01  9.7658E-01  1.1804E+00  7.3296E-01  9.1953E-01  8.7920E-01
             9.7231E-01
 PARAMETER:  1.3236E-01  1.0537E-02 -8.8986E-02  1.9644E-01 -7.7208E-02  7.6299E-02  2.6588E-01 -2.1066E-01  1.6112E-02 -2.8748E-02
             7.1917E-02
 GRADIENT:  -1.2368E+00  7.7407E+00 -4.3054E+00  2.1390E+01  5.8638E+00 -8.5570E+00  3.7378E+00  1.1671E+00  4.4485E+00  2.0915E+00
            -9.1146E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2159.41677646712        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      563
 NPARAMETR:  1.0357E+00  1.0495E+00  6.8881E-01  9.9332E-01  8.1793E-01  1.0066E+00  1.0281E+00  5.0342E-01  9.6544E-01  8.3920E-01
             9.8647E-01
 PARAMETER:  1.3512E-01  1.4833E-01 -2.7279E-01  9.3293E-02 -1.0098E-01  1.0659E-01  1.2768E-01 -5.8632E-01  6.4827E-02 -7.5303E-02
             8.6376E-02
 GRADIENT:   2.0349E-01 -2.2406E+00 -1.0280E+00 -4.6737E+00 -7.8399E-01  2.4220E+00  6.6384E-03  1.4557E+00 -1.7249E+00 -1.5828E-01
             2.6036E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2159.91493943166        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      739
 NPARAMETR:  1.0365E+00  1.1091E+00  6.1804E-01  9.5144E-01  8.0641E-01  1.0035E+00  9.8381E-01  1.4190E-01  1.0055E+00  8.4359E-01
             9.8355E-01
 PARAMETER:  1.3587E-01  2.0358E-01 -3.8120E-01  5.0222E-02 -1.1517E-01  1.0349E-01  8.3679E-02 -1.8526E+00  1.0548E-01 -7.0087E-02
             8.3411E-02
 GRADIENT:   7.6253E-02 -2.9541E+00 -4.6725E+00 -1.1285E+00  2.1433E+00  7.4258E-01 -1.9633E-01  1.3675E-01  2.5027E-01  9.3686E-01
             8.0226E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2159.97676310937        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      914
 NPARAMETR:  1.0364E+00  1.0962E+00  6.2258E-01  9.6015E-01  8.0258E-01  1.0015E+00  1.0014E+00  4.1494E-02  9.9812E-01  8.4239E-01
             9.8259E-01
 PARAMETER:  1.3572E-01  1.9183E-01 -3.7388E-01  5.9334E-02 -1.1993E-01  1.0146E-01  1.0143E-01 -3.0822E+00  9.8120E-02 -7.1518E-02
             8.2438E-02
 GRADIENT:   1.4395E-02 -3.6692E-01 -2.8193E-01 -2.4079E-01  5.3078E-01  3.3272E-02  1.5816E-01  6.5246E-03  5.1756E-03  5.5468E-02
             1.3740E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2159.98206127854        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1090            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0378E+00  1.0960E+00  6.2201E-01  9.6027E-01  8.0195E-01  1.0018E+00  1.0001E+00  1.0000E-02  9.9823E-01  8.4215E-01
             9.8260E-01
 PARAMETER:  1.3715E-01  1.9167E-01 -3.7479E-01  5.9463E-02 -1.2071E-01  1.0176E-01  1.0014E-01 -5.0000E+00  9.8225E-02 -7.1794E-02
             8.2449E-02
 GRADIENT:   6.2676E+02  9.1576E+01  1.1841E+01  7.7989E+01  1.3718E+01  4.9544E+01  4.0784E+00  0.0000E+00  7.0059E+00  8.1803E-01
             9.8876E-01

0ITERATION NO.:   32    OBJECTIVE VALUE:  -2159.98206127854        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:     1145
 NPARAMETR:  1.0378E+00  1.0960E+00  6.2201E-01  9.6027E-01  8.0195E-01  1.0018E+00  1.0001E+00  1.0000E-02  9.9823E-01  8.4215E-01
             9.8260E-01
 PARAMETER:  1.3715E-01  1.9167E-01 -3.7479E-01  5.9463E-02 -1.2071E-01  1.0176E-01  1.0014E-01 -5.0000E+00  9.8225E-02 -7.1794E-02
             8.2449E-02
 GRADIENT:   3.2097E+00 -2.2367E-01 -8.5405E-02 -1.6711E-01  1.3337E-01  1.5549E-01  5.2963E-03  0.0000E+00  1.9223E-02  1.5135E-02
            -1.1251E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1145
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.9901E-04 -1.0825E-02 -4.0032E-04  5.8418E-03 -1.5278E-02
 SE:             2.9874E-02  2.1053E-02  2.0206E-04  2.5991E-02  2.3218E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9201E-01  6.0713E-01  4.7565E-02  8.2216E-01  5.1054E-01

 ETASHRINKSD(%)  1.0000E-10  2.9471E+01  9.9323E+01  1.2927E+01  2.2216E+01
 ETASHRINKVR(%)  1.0000E-10  5.0256E+01  9.9995E+01  2.4183E+01  3.9496E+01
 EBVSHRINKSD(%)  3.2723E-01  2.9205E+01  9.9405E+01  1.2913E+01  2.2338E+01
 EBVSHRINKVR(%)  6.5338E-01  4.9881E+01  9.9996E+01  2.4159E+01  3.9686E+01
 RELATIVEINF(%)  9.9197E+01  4.5298E+00  7.8200E-04  9.6535E+00  7.7365E+00
 EPSSHRINKSD(%)  3.4001E+01
 EPSSHRINKVR(%)  5.6442E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2159.9820612785375     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1241.0435280738648     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.27
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2159.982       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  1.10E+00  6.22E-01  9.60E-01  8.02E-01  1.00E+00  1.00E+00  1.00E-02  9.98E-01  8.42E-01  9.83E-01
 


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
 #CPUT: Total CPU Time in Seconds,       17.321
Stop Time:
Fri Oct  1 14:30:19 CDT 2021
