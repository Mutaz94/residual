Wed Sep 29 20:50:25 CDT 2021
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
$DATA ../../../../data/spa1/B/dat8.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 RAW OUTPUT FILE (FILE): m8.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2114.26089833703        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7195E+02  2.1510E+01  1.1543E+01  6.5968E+01  1.7142E+01  3.4499E+01 -2.7589E-01 -6.3949E+00  1.5852E+01  5.5236E-01
             3.3111E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2116.34813012434        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.8010E-01  1.0709E+00  8.7299E-01  9.7122E-01  9.6111E-01  1.0610E+00  1.0592E+00  1.0880E+00  9.2104E-01  9.7912E-01
             9.6432E-01
 PARAMETER:  7.9898E-02  1.6852E-01 -3.5833E-02  7.0797E-02  6.0331E-02  1.5925E-01  1.5751E-01  1.8436E-01  1.7751E-02  7.8902E-02
             6.3663E-02
 GRADIENT:  -7.1227E+00  2.9477E+00 -1.0586E+01  1.9746E+01  1.2761E-01  1.3823E+01 -2.6241E+00  3.7723E+00 -5.6335E+00  1.0954E+01
             6.0040E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2116.95242315469        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  9.8380E-01  1.1229E+00  8.1318E-01  9.3871E-01  9.3871E-01  1.0400E+00  1.0674E+00  1.1348E+00  9.4068E-01  8.7410E-01
             9.6203E-01
 PARAMETER:  8.3668E-02  2.1588E-01 -1.0681E-01  3.6754E-02  3.6753E-02  1.3920E-01  1.6521E-01  2.2645E-01  3.8844E-02 -3.4556E-02
             6.1295E-02
 GRADIENT:  -1.5537E+00  1.3577E+01 -6.3128E+00  2.0318E+01 -1.0562E+01  5.7031E+00  9.7485E-01  5.3756E+00 -3.7743E+00  4.5368E+00
             2.6038E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2118.15003988226        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  9.8686E-01  1.3193E+00  6.5334E-01  8.0244E-01  9.5914E-01  1.0220E+00  9.4293E-01  7.3127E-01  1.0829E+00  8.9700E-01
             9.5778E-01
 PARAMETER:  8.6771E-02  3.7710E-01 -3.2566E-01 -1.2009E-01  5.8287E-02  1.2178E-01  4.1239E-02 -2.1297E-01  1.7962E-01 -8.6956E-03
             5.6863E-02
 GRADIENT:   1.6917E+00  1.6595E+01  3.8991E+00  7.2672E+00 -1.4580E+01 -1.9465E+00  7.1343E-01  6.3177E-01 -2.1775E+00  8.7696E-01
            -7.5153E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2118.65090267718        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  9.8680E-01  1.5194E+00  5.3655E-01  6.6504E-01  1.0294E+00  1.0289E+00  8.5072E-01  4.1303E-01  1.2565E+00  9.5021E-01
             9.5632E-01
 PARAMETER:  8.6709E-02  5.1829E-01 -5.2259E-01 -3.0792E-01  1.2902E-01  1.2844E-01 -6.1669E-02 -7.8425E-01  3.2829E-01  4.8924E-02
             5.5333E-02
 GRADIENT:  -1.7284E-01  1.3713E+00 -8.0513E-01  1.8689E+00  8.0177E-01  2.0635E-01 -1.6635E-01  4.7332E-01 -9.3074E-02 -7.5557E-02
             1.9899E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2118.76496125217        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:      869
 NPARAMETR:  9.8709E-01  1.5313E+00  5.2945E-01  6.5300E-01  1.0346E+00  1.0285E+00  8.4597E-01  2.1903E-01  1.2712E+00  9.5479E-01
             9.5609E-01
 PARAMETER:  8.7010E-02  5.2609E-01 -5.3591E-01 -3.2618E-01  1.3406E-01  1.2813E-01 -6.7275E-02 -1.4185E+00  3.3995E-01  5.3740E-02
             5.5098E-02
 GRADIENT:   4.9282E-01 -5.0863E-01  4.5344E+00 -4.1655E+00 -1.1162E+00  1.2886E-01 -1.2913E+00  6.0194E-02 -1.1042E+00 -1.2192E+00
            -2.1071E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2118.85925803711        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1045
 NPARAMETR:  9.8681E-01  1.5345E+00  5.1366E-01  6.5202E-01  1.0251E+00  1.0285E+00  8.4947E-01  7.4157E-02  1.2761E+00  9.4747E-01
             9.5635E-01
 PARAMETER:  8.6717E-02  5.2819E-01 -5.6619E-01 -3.2768E-01  1.2481E-01  1.2812E-01 -6.3147E-02 -2.5016E+00  3.4383E-01  4.6041E-02
             5.5369E-02
 GRADIENT:  -3.8243E-01 -7.1519E-02 -8.0579E-02  6.9722E-03 -1.1497E+00  1.4153E-02  1.0003E-01  1.7201E-02 -2.0109E-02 -8.7578E-02
             5.3731E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2118.86663522100        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1225             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8816E-01  1.5356E+00  5.1252E-01  6.4950E-01  1.0275E+00  1.0291E+00  8.4789E-01  1.5910E-02  1.2801E+00  9.5083E-01
             9.5625E-01
 PARAMETER:  8.8090E-02  5.2894E-01 -5.6842E-01 -3.3155E-01  1.2711E-01  1.2864E-01 -6.5000E-02 -4.0408E+00  3.4695E-01  4.9580E-02
             5.5266E-02
 GRADIENT:   4.7696E+02  5.1823E+02  7.2708E+00  1.3150E+02  1.1302E+01  6.5945E+01  6.6784E+00  2.1159E-03  2.1329E+01  8.9519E-01
             1.1356E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2118.86935578139        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     1413             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8744E-01  1.5349E+00  5.1425E-01  6.5120E-01  1.0269E+00  1.0288E+00  8.4886E-01  1.0000E-02  1.2786E+00  9.5093E-01
             9.5622E-01
 PARAMETER:  8.7362E-02  5.2849E-01 -5.6504E-01 -3.2893E-01  1.2656E-01  1.2843E-01 -6.3861E-02 -5.8569E+00  3.4576E-01  4.9690E-02
             5.5230E-02
 GRADIENT:   4.7549E+02  5.1918E+02  8.0271E+00  1.3173E+02  1.0267E+01  6.5905E+01  6.6938E+00  0.0000E+00  2.1257E+01  8.2104E-01
             1.0549E+00

0ITERATION NO.:   42    OBJECTIVE VALUE:  -2118.86935578139        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:     1472
 NPARAMETR:  9.8744E-01  1.5349E+00  5.1425E-01  6.5120E-01  1.0269E+00  1.0288E+00  8.4886E-01  1.0000E-02  1.2786E+00  9.5093E-01
             9.5622E-01
 PARAMETER:  8.7362E-02  5.2849E-01 -5.6504E-01 -3.2893E-01  1.2656E-01  1.2843E-01 -6.3861E-02 -5.8569E+00  3.4576E-01  4.9690E-02
             5.5230E-02
 GRADIENT:   1.0008E+00 -1.3022E+00  4.2657E-02 -3.8574E-01 -5.0186E-01  1.5311E-01  5.3837E-02  0.0000E+00  1.4684E-01  7.6084E-02
             5.4949E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1472
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.0851E-04 -2.5704E-02 -3.0080E-04  2.1063E-02 -2.9613E-02
 SE:             2.9905E-02  2.3646E-02  1.3661E-04  2.4287E-02  2.2419E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8110E-01  2.7702E-01  2.7676E-02  3.8582E-01  1.8655E-01

 ETASHRINKSD(%)  1.0000E-10  2.0784E+01  9.9542E+01  1.8634E+01  2.4892E+01
 ETASHRINKVR(%)  1.0000E-10  3.7248E+01  9.9998E+01  3.3796E+01  4.3588E+01
 EBVSHRINKSD(%)  2.9195E-01  2.0566E+01  9.9601E+01  1.9469E+01  2.3611E+01
 EBVSHRINKVR(%)  5.8305E-01  3.6902E+01  9.9998E+01  3.5147E+01  4.1647E+01
 RELATIVEINF(%)  9.9358E+01  5.8297E+00  3.3018E-04  6.4693E+00  1.1336E+01
 EPSSHRINKSD(%)  3.4223E+01
 EPSSHRINKVR(%)  5.6734E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2118.8693557813917     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1199.9308225767190     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.41
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     7.23
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2118.869       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.87E-01  1.53E+00  5.14E-01  6.51E-01  1.03E+00  1.03E+00  8.49E-01  1.00E-02  1.28E+00  9.51E-01  9.56E-01
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.07E+03
 
 TH 2
+       -4.04E+00  4.33E+02
 
 TH 3
+        7.59E+00  2.53E+02  7.96E+02
 
 TH 4
+       -4.41E+00  3.14E+02 -4.15E+02  1.05E+03
 
 TH 5
+        1.53E+00 -2.48E+02 -4.73E+02  3.34E+02  6.82E+02
 
 TH 6
+        1.29E+00 -7.28E-01  3.66E+00 -1.98E+00  3.47E-01  1.86E+02
 
 TH 7
+        6.94E-01  9.54E+00 -4.73E+01  2.35E+00 -5.65E+00  1.67E-01  1.18E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        5.22E-01 -2.04E+01 -2.90E+01  5.30E+01 -1.08E+00 -3.54E-01  1.74E+01  0.00E+00  5.66E+01
 
 TH10
+        1.26E+00 -1.66E+01 -5.02E+01 -7.35E+00 -6.36E+01  4.62E-01  2.22E+01  0.00E+00  9.26E+00  7.59E+01
 
 TH11
+       -7.27E+00 -1.44E+01 -1.17E+01 -9.25E+00  7.36E-01  1.21E+00  4.81E+00  0.00E+00  8.06E+00  1.69E+01  4.38E+02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       30.698
Stop Time:
Wed Sep 29 20:50:57 CDT 2021
