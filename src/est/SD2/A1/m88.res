Fri Oct  1 09:39:52 CDT 2021
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
$DATA ../../../../data/SD2/A1/dat88.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1617.89025009023        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2339E+02 -3.2487E+00 -1.9126E+01  5.1601E+01  1.9009E+02  4.9875E+01 -3.5852E+01 -1.8032E+01 -1.6448E+01 -4.1676E+01
            -8.7371E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1830.97493479455        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.8948E-01  9.3831E-01  9.2246E-01  1.0717E+00  8.2223E-01  9.5802E-01  1.1203E+00  9.9123E-01  1.0859E+00  9.1968E-01
             1.5131E+00
 PARAMETER:  8.9424E-02  3.6327E-02  1.9287E-02  1.6922E-01 -9.5730E-02  5.7114E-02  2.1356E-01  9.1187E-02  1.8240E-01  1.6272E-02
             5.1417E-01
 GRADIENT:   1.4566E+02  3.3153E+01  1.0091E+01  7.2042E+01  8.3944E+00  1.1272E+01 -3.8260E+00  2.0701E+00  1.7869E+01 -4.9246E+00
            -1.5403E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1836.61244786638        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:      220
 NPARAMETR:  9.9234E-01  6.5322E-01  8.5866E-01  1.2385E+00  6.8530E-01  9.9229E-01  1.5192E+00  6.2144E-01  8.8571E-01  9.2293E-01
             1.4992E+00
 PARAMETER:  9.2310E-02 -3.2584E-01 -5.2383E-02  3.1390E-01 -2.7790E-01  9.2257E-02  5.1818E-01 -3.7572E-01 -2.1368E-02  1.9803E-02
             5.0490E-01
 GRADIENT:  -2.7227E+01  2.5388E+01  3.3569E+01  2.0926E+01 -2.7137E+01  7.1398E+00 -7.1454E+00 -5.2253E+00 -1.4605E+01  2.3887E+00
            -1.6033E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1852.43011129621        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      397
 NPARAMETR:  1.0067E+00  5.6380E-01  7.3520E-01  1.2638E+00  6.1094E-01  9.6804E-01  1.7680E+00  5.6751E-01  8.7481E-01  8.0640E-01
             1.7698E+00
 PARAMETER:  1.0669E-01 -4.7305E-01 -2.0761E-01  3.3408E-01 -3.9276E-01  6.7514E-02  6.6985E-01 -4.6650E-01 -3.3747E-02 -1.1518E-01
             6.7085E-01
 GRADIENT:  -8.2902E-01  8.9338E+00 -3.2993E+00  1.3519E+01  6.5894E+00 -1.1025E+00  7.5436E-01  6.6444E-01 -5.5033E+00  1.2691E+00
             7.3090E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1854.52401386162        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      574
 NPARAMETR:  1.0012E+00  2.9754E-01  7.4512E-01  1.3978E+00  5.4634E-01  9.6865E-01  2.2268E+00  4.2891E-01  8.8744E-01  8.4618E-01
             1.7687E+00
 PARAMETER:  1.0121E-01 -1.1122E+00 -1.9420E-01  4.3489E-01 -5.0451E-01  6.8144E-02  9.0055E-01 -7.4650E-01 -1.9412E-02 -6.7019E-02
             6.7023E-01
 GRADIENT:   2.6059E-01  5.2913E+00  8.3235E+00  5.7494E-01 -1.2475E+01  9.8296E-01  2.7862E+00 -1.7913E+00  3.8921E+00  6.1328E-01
             2.5726E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1856.27872581239        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      750
 NPARAMETR:  9.9433E-01  1.0919E-01  7.9561E-01  1.5106E+00  5.3955E-01  9.6168E-01  3.3512E+00  5.1871E-01  8.3306E-01  8.4169E-01
             1.7645E+00
 PARAMETER:  9.4309E-02 -2.1147E+00 -1.2865E-01  5.1248E-01 -5.1702E-01  6.0925E-02  1.3093E+00 -5.5641E-01 -8.2655E-02 -7.2338E-02
             6.6785E-01
 GRADIENT:  -2.6324E+00  1.1675E+00 -2.0067E-01  1.3534E+01 -1.2163E-01 -4.2362E-01 -7.7818E-01 -2.1125E+00 -5.3839E+00 -4.7111E-01
            -1.1032E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1856.97977274808        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      925
 NPARAMETR:  9.9361E-01  5.2786E-02  8.5932E-01  1.5504E+00  5.5502E-01  9.6039E-01  4.6099E+00  7.6030E-01  8.3188E-01  8.1003E-01
             1.7507E+00
 PARAMETER:  9.3588E-02 -2.8415E+00 -5.1617E-02  5.3854E-01 -4.8875E-01  5.9589E-02  1.6282E+00 -1.7404E-01 -8.4067E-02 -1.1068E-01
             6.6004E-01
 GRADIENT:   3.4187E-02  5.4468E-01  2.0371E+00  6.4908E+00 -2.9140E+00 -4.7979E-01 -3.4439E-01  7.0792E-01 -1.9348E+00 -8.9770E-01
            -1.7717E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1857.31780849536        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1102
 NPARAMETR:  9.9205E-01  1.0837E-02  8.4526E-01  1.5672E+00  5.4235E-01  9.6068E-01  1.1843E+01  7.1748E-01  8.2989E-01  8.1922E-01
             1.7561E+00
 PARAMETER:  9.2021E-02 -4.4248E+00 -6.8108E-02  5.4930E-01 -5.1184E-01  5.9891E-02  2.5717E+00 -2.3202E-01 -8.6456E-02 -9.9404E-02
             6.6311E-01
 GRADIENT:  -4.1119E-01  1.9487E-01  1.2818E+00  3.4238E+00 -2.7545E+00  1.0368E-02  1.2870E-01 -1.0183E-01 -4.6912E-02  1.7907E-01
             1.5134E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1857.33733573188        NO. OF FUNC. EVALS.: 170
 CUMULATIVE NO. OF FUNC. EVALS.:     1272
 NPARAMETR:  9.9230E-01  1.0000E-02  8.4510E-01  1.5646E+00  5.4300E-01  9.6066E-01  1.2226E+01  7.2096E-01  8.2995E-01  8.1767E-01
             1.7555E+00
 PARAMETER:  9.2266E-02 -4.5258E+00 -6.8295E-02  5.4765E-01 -5.1065E-01  5.9861E-02  2.6036E+00 -2.2718E-01 -8.6394E-02 -1.0130E-01
             6.6276E-01
 GRADIENT:  -7.5711E-02  1.6428E-02 -2.0011E-01  3.2232E+00  6.3590E-01  2.8224E-03  8.1487E-02 -1.8202E-02  1.6075E-02 -5.5616E-02
             4.4966E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1272
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.5749E-04  1.6161E-03 -7.4137E-03 -6.3603E-03 -1.4961E-02
 SE:             2.9618E-02  2.1076E-03  1.3592E-02  2.8705E-02  2.1450E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8229E-01  4.4320E-01  5.8545E-01  8.2464E-01  4.8550E-01

 ETASHRINKSD(%)  7.7512E-01  9.2939E+01  5.4465E+01  3.8355E+00  2.8140E+01
 ETASHRINKVR(%)  1.5442E+00  9.9501E+01  7.9266E+01  7.5239E+00  4.8362E+01
 EBVSHRINKSD(%)  1.0353E+00  9.3636E+01  5.5164E+01  3.7539E+00  2.7521E+01
 EBVSHRINKVR(%)  2.0599E+00  9.9595E+01  7.9898E+01  7.3669E+00  4.7467E+01
 RELATIVEINF(%)  9.2120E+01  2.6298E-02  2.1149E+00  8.3196E+00  5.2120E+00
 EPSSHRINKSD(%)  3.0336E+01
 EPSSHRINKVR(%)  5.1469E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1857.3373357318844     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -938.39880252721173     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.33
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1857.337       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.92E-01  1.00E-02  8.45E-01  1.56E+00  5.43E-01  9.61E-01  1.22E+01  7.21E-01  8.30E-01  8.18E-01  1.76E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.378
Stop Time:
Fri Oct  1 09:40:13 CDT 2021