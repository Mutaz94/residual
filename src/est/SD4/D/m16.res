Sat Oct  2 05:30:26 CDT 2021
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
$DATA ../../../../data/SD4/D/dat16.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m16.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -991.932726503044        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.2668E+02 -1.7882E+02 -9.8399E+01 -1.9159E+02  2.7571E+02 -3.1902E+02 -2.8843E+02 -1.5907E+01 -4.3604E+02 -1.6473E+02
            -1.2851E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1390.26681918392        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:       88
 NPARAMETR:  9.6177E-01  1.0405E+00  1.7719E+00  1.1289E+00  1.4729E+00  1.2837E+00  3.2897E+00  9.5224E-01  1.1029E+00  1.8454E+00
             1.3564E+00
 PARAMETER:  6.1018E-02  1.3968E-01  6.7204E-01  2.2127E-01  4.8720E-01  3.4977E-01  1.2908E+00  5.1061E-02  1.9793E-01  7.1270E-01
             4.0486E-01
 GRADIENT:   2.2309E+00  2.1446E+01 -3.3304E+01  1.6136E+02  8.1884E+01  1.0544E+02  4.5161E+02  3.3652E-01  6.6092E+00  3.1371E+01
             6.1071E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1413.64872217814        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:      276
 NPARAMETR:  9.7780E-01  9.5018E-01  1.5090E+00  1.0587E+00  1.2620E+00  1.3600E+00  3.6729E+00  9.5353E-01  1.1393E+00  1.4677E+00
             1.0359E+00
 PARAMETER:  7.7545E-02  4.8893E-02  5.1145E-01  1.5703E-01  3.3271E-01  4.0748E-01  1.4010E+00  5.2413E-02  2.3037E-01  4.8368E-01
             1.3528E-01
 GRADIENT:  -1.8503E+02 -2.1947E+01 -2.1297E+01 -7.0255E+00  5.1357E+01 -1.4649E+02 -4.0019E+01  4.2656E-01  4.9098E+00  4.7726E-02
            -6.0626E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1423.24181429966        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      456
 NPARAMETR:  1.0043E+00  9.4114E-01  1.4879E+00  1.0566E+00  1.2251E+00  1.3886E+00  3.8216E+00  1.0354E+00  1.1088E+00  1.4061E+00
             1.0663E+00
 PARAMETER:  1.0431E-01  3.9334E-02  4.9734E-01  1.5505E-01  3.0299E-01  4.2829E-01  1.4407E+00  1.3481E-01  2.0326E-01  4.4081E-01
             1.6416E-01
 GRADIENT:  -1.4682E+02 -1.9355E+01 -1.8751E+01 -1.5280E+01  4.0221E+01 -1.2317E+02 -3.2817E+01  1.1441E+00  4.8671E+00 -1.1904E+00
            -4.5315E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1438.52624236284        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:      623
 NPARAMETR:  1.0535E+00  7.3612E-01  1.9116E+00  1.2075E+00  1.1704E+00  1.5008E+00  4.4667E+00  1.2317E+00  1.0009E+00  1.3561E+00
             1.1187E+00
 PARAMETER:  1.5213E-01 -2.0636E-01  7.4795E-01  2.8855E-01  2.5736E-01  5.0598E-01  1.5966E+00  3.0842E-01  1.0090E-01  4.0461E-01
             2.1214E-01
 GRADIENT:   4.5473E+02  4.3908E+01  3.8784E+00  2.4729E+02  7.0572E+00  5.3319E+02  1.0702E+03 -4.1411E-01  1.5626E+00  1.3488E+00
            -2.7519E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1445.25923527154        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      741             RESET HESSIAN, TYPE I
 NPARAMETR:  1.2364E+00  9.2091E-01  1.9367E+00  1.2541E+00  1.1672E+00  1.9990E+00  3.9642E+00  1.2133E+00  1.2212E+00  1.3901E+00
             1.2530E+00
 PARAMETER:  3.1223E-01  1.7611E-02  7.6099E-01  3.2644E-01  2.5461E-01  7.9264E-01  1.4773E+00  2.9337E-01  2.9986E-01  4.2941E-01
             3.2554E-01
 GRADIENT:   9.2243E+02  2.9122E+01 -5.1528E+00  2.5589E+02 -7.7184E-01  7.4569E+02  6.1692E+02  2.3664E+00  2.8522E+01  1.2503E+01
             2.5751E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1451.80063074290        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:      879
 NPARAMETR:  1.1457E+00  9.7894E-01  1.9612E+00  1.1798E+00  1.1905E+00  1.6693E+00  3.6143E+00  1.1057E+00  1.3009E+00  1.3320E+00
             1.2204E+00
 PARAMETER:  2.3599E-01  7.8715E-02  7.7353E-01  2.6534E-01  2.7440E-01  6.1240E-01  1.3849E+00  2.0044E-01  3.6307E-01  3.8670E-01
             2.9917E-01
 GRADIENT:   7.6043E+00  1.9410E-01 -2.0661E+00  2.8903E+00 -8.4122E+00 -1.7627E+00 -2.3347E+01  7.7637E-01 -4.0663E-01  1.3558E+00
             8.7112E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1452.35409124914        NO. OF FUNC. EVALS.: 122
 CUMULATIVE NO. OF FUNC. EVALS.:     1001
 NPARAMETR:  1.1442E+00  9.9726E-01  2.0147E+00  1.1513E+00  1.2174E+00  1.7370E+00  3.3549E+00  8.3492E-01  1.3418E+00  1.3123E+00
             1.1778E+00
 PARAMETER:  2.3472E-01  9.7251E-02  8.0047E-01  2.4090E-01  2.9672E-01  6.5218E-01  1.3104E+00 -8.0414E-02  3.9398E-01  3.7181E-01
             2.6369E-01
 GRADIENT:   7.0852E+00 -6.0730E+00  1.5852E+00 -4.1953E+00 -9.9152E-01  1.9287E+01 -3.1607E+01 -2.3207E-01 -4.8101E+00 -5.9333E+00
            -1.0728E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1452.86674077614        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1187             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1442E+00  1.0177E+00  2.0264E+00  1.1602E+00  1.2221E+00  1.7604E+00  3.3915E+00  5.9582E-01  1.3928E+00  1.3525E+00
             1.1994E+00
 PARAMETER:  2.3470E-01  1.1752E-01  8.0625E-01  2.4857E-01  3.0060E-01  6.6552E-01  1.3213E+00 -4.1782E-01  4.3130E-01  4.0197E-01
             2.8185E-01
 GRADIENT:   7.2341E+02  3.0921E+01  2.3439E+00  1.6802E+02  1.0576E+01  6.6224E+02  5.6174E+02  3.3507E-02  4.7301E+01  1.9994E+00
             1.1285E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1452.91118264829        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1367
 NPARAMETR:  1.1429E+00  1.0319E+00  2.0331E+00  1.1653E+00  1.2231E+00  1.7447E+00  3.4432E+00  5.5138E-01  1.4786E+00  1.3651E+00
             1.2019E+00
 PARAMETER:  2.3357E-01  1.3137E-01  8.0958E-01  2.5299E-01  3.0142E-01  6.5657E-01  1.3364E+00 -4.9533E-01  4.9107E-01  4.1121E-01
             2.8389E-01
 GRADIENT:   5.7486E+00  5.7551E-01 -2.4120E+00 -9.4248E-01  1.0464E-01  2.0282E+01 -1.6300E+01  1.8106E-01  2.3546E+00  1.2470E+00
             9.9860E-01

0ITERATION NO.:   49    OBJECTIVE VALUE:  -1452.95039641258        NO. OF FUNC. EVALS.: 133
 CUMULATIVE NO. OF FUNC. EVALS.:     1500
 NPARAMETR:  1.1416E+00  1.0241E+00  2.1055E+00  1.1687E+00  1.2238E+00  1.7573E+00  3.4428E+00  3.2436E-01  1.4822E+00  1.3495E+00
             1.1998E+00
 PARAMETER:  2.3242E-01  1.2380E-01  8.4455E-01  2.5593E-01  3.0196E-01  6.6376E-01  1.3363E+00 -1.0259E+00  4.9351E-01  3.9976E-01
             2.8217E-01
 GRADIENT:  -5.6120E-01 -1.2140E+03 -3.1920E+00  5.8037E+02 -2.5296E+02  3.1742E+00  8.7305E+00  1.4683E+02 -1.3599E+01 -2.8887E+00
            -1.8961E+00

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1500
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.5003E-04  2.2988E-02 -5.2165E-03 -3.5951E-02 -1.7801E-02
 SE:             2.9869E-02  2.3449E-02  2.0207E-03  1.9349E-02  2.2631E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7730E-01  3.2692E-01  9.8368E-03  6.3160E-02  4.3154E-01

 ETASHRINKSD(%)  1.0000E-10  2.1442E+01  9.3230E+01  3.5180E+01  2.4183E+01
 ETASHRINKVR(%)  1.0000E-10  3.8287E+01  9.9542E+01  5.7983E+01  4.2518E+01
 EBVSHRINKSD(%)  1.9337E-01  1.8396E+01  9.4145E+01  3.5913E+01  2.0791E+01
 EBVSHRINKVR(%)  3.8636E-01  3.3407E+01  9.9657E+01  5.8929E+01  3.7259E+01
 RELATIVEINF(%)  9.9563E+01  1.5319E+01  9.5855E-02  8.3298E+00  2.1390E+01
 EPSSHRINKSD(%)  4.0920E+01
 EPSSHRINKVR(%)  6.5096E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1452.9503964125813     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -717.79956984884313     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.01
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1452.950       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.14E+00  1.02E+00  2.11E+00  1.17E+00  1.22E+00  1.76E+00  3.44E+00  3.24E-01  1.48E+00  1.35E+00  1.20E+00
 


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
 #CPUT: Total CPU Time in Seconds,       22.038
Stop Time:
Sat Oct  2 05:30:50 CDT 2021
