Fri Oct  1 18:22:49 CDT 2021
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
$DATA ../../../../data/SD3/A3/dat66.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m66.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -799.606741897529        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.1333E+02  1.7196E+02  2.1213E+02 -1.9325E+01  2.6153E+02  4.1212E+01 -7.2278E+01 -1.3260E+02 -1.5425E+01 -1.5641E+02
            -2.8311E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1849.82310975891        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  9.6551E-01  5.6009E-01  5.5654E-01  1.2180E+00  5.0486E-01  7.1188E-01  9.8762E-01  9.2847E-01  9.0262E-01  1.1765E+00
             2.5304E+00
 PARAMETER:  6.4904E-02 -4.7965E-01 -4.8602E-01  2.9723E-01 -5.8347E-01 -2.3984E-01  8.7546E-02  2.5781E-02 -2.4518E-03  2.6253E-01
             1.0284E+00
 GRADIENT:   9.9404E+01  4.1194E+01  3.4733E+01  2.4469E+01  3.6187E+01 -1.0901E+02  4.7030E+00  1.6795E+01 -1.5495E+01  4.9198E+01
             6.9659E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1851.18124782475        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      224
 NPARAMETR:  9.6893E-01  4.8575E-01  5.4117E-01  1.2599E+00  4.7731E-01  7.0540E-01  9.7291E-01  8.7856E-01  8.7898E-01  1.2099E+00
             2.5090E+00
 PARAMETER:  6.8442E-02 -6.2205E-01 -5.1403E-01  3.3101E-01 -6.3958E-01 -2.4898E-01  7.2539E-02 -2.9468E-02 -2.8998E-02  2.9052E-01
             1.0199E+00
 GRADIENT:   5.7271E+01  6.7795E+00  2.1112E+01  9.6796E+00  8.7596E+00 -1.2602E+02  3.5990E+00  1.5542E+01 -2.1432E+01  5.5077E+01
             5.3056E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1884.56415801549        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      402
 NPARAMETR:  1.0007E+00  2.9193E-01  2.9441E-01  1.1726E+00  2.7802E-01  7.2430E-01  1.1267E+00  5.3518E-01  8.9982E-01  8.7035E-01
             2.1043E+00
 PARAMETER:  1.0069E-01 -1.1312E+00 -1.1228E+00  2.5924E-01 -1.1800E+00 -2.2255E-01  2.1930E-01 -5.2514E-01 -5.5646E-03 -3.8863E-02
             8.4397E-01
 GRADIENT:   1.9462E+02 -2.6588E+01  9.0103E+01 -2.5202E+01 -6.5441E+01 -1.2964E+02 -1.7856E+00 -6.1515E-01 -4.8638E+01  2.4246E+01
            -8.5472E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1927.61069483821        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      579
 NPARAMETR:  9.4927E-01  2.4345E-01  1.8512E-01  1.0737E+00  2.1519E-01  9.1560E-01  1.4410E+00  8.5190E-01  1.2517E+00  5.4251E-01
             2.0165E+00
 PARAMETER:  4.7933E-02 -1.3128E+00 -1.5867E+00  1.7110E-01 -1.4362E+00  1.1828E-02  4.6533E-01 -6.0283E-02  3.2453E-01 -5.1154E-01
             8.0135E-01
 GRADIENT:  -2.0413E+00 -1.8504E+01  1.4385E+01 -3.3612E+00 -3.9082E-01 -1.2197E+01 -4.5990E+00 -4.8072E+00  5.4917E+00  7.2434E-01
            -2.3847E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1929.17842133100        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      754
 NPARAMETR:  9.4869E-01  2.6170E-01  1.9267E-01  1.0955E+00  2.2411E-01  9.5572E-01  1.5308E+00  9.8943E-01  1.2026E+00  4.3572E-01
             2.0584E+00
 PARAMETER:  4.7327E-02 -1.2405E+00 -1.5468E+00  1.9119E-01 -1.3956E+00  5.4706E-02  5.2578E-01  8.9373E-02  2.8448E-01 -7.3076E-01
             8.2194E-01
 GRADIENT:  -3.4558E+00  2.6259E+00 -7.9902E-01  1.3533E+00 -2.0761E-01  4.1246E+00 -2.5100E-01 -1.2052E-01 -1.1452E+00  1.3713E+00
             1.4139E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1929.33569657990        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      929
 NPARAMETR:  9.4995E-01  2.6163E-01  1.9528E-01  1.0985E+00  2.2624E-01  9.4449E-01  1.5907E+00  1.0463E+00  1.2040E+00  3.5501E-01
             2.0543E+00
 PARAMETER:  4.8657E-02 -1.2408E+00 -1.5333E+00  1.9396E-01 -1.3861E+00  4.2889E-02  5.6418E-01  1.4526E-01  2.8567E-01 -9.3560E-01
             8.1992E-01
 GRADIENT:   3.3625E-01 -8.3111E-02  2.8402E-02 -5.3351E-01  1.3949E-01 -1.6107E-01  3.5933E-02 -8.6807E-02 -5.2683E-02  5.7110E-02
             1.8601E-01

0ITERATION NO.:   31    OBJECTIVE VALUE:  -1929.33569657990        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:      953
 NPARAMETR:  9.4995E-01  2.6163E-01  1.9528E-01  1.0985E+00  2.2624E-01  9.4449E-01  1.5907E+00  1.0463E+00  1.2040E+00  3.5501E-01
             2.0543E+00
 PARAMETER:  4.8657E-02 -1.2408E+00 -1.5333E+00  1.9396E-01 -1.3861E+00  4.2889E-02  5.6418E-01  1.4526E-01  2.8567E-01 -9.3560E-01
             8.1992E-01
 GRADIENT:   1.8704E-01 -5.9589E-01 -2.7413E-01 -4.2013E-01  1.8293E+00 -1.7040E-01 -1.1970E-02 -5.1851E-02 -1.0836E-01  3.4812E-02
             2.2256E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      953
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.5922E-04  2.2196E-02 -1.0187E-02 -6.7435E-03  1.4827E-02
 SE:             2.9473E-02  2.3070E-02  2.1751E-02  2.8004E-02  1.3589E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8757E-01  3.3600E-01  6.3953E-01  8.0971E-01  2.7522E-01

 ETASHRINKSD(%)  1.2631E+00  2.2712E+01  2.7130E+01  6.1837E+00  5.4475E+01
 ETASHRINKVR(%)  2.5102E+00  4.0265E+01  4.6900E+01  1.1985E+01  7.9275E+01
 EBVSHRINKSD(%)  1.5530E+00  2.1572E+01  2.6148E+01  6.0342E+00  5.6354E+01
 EBVSHRINKVR(%)  3.0819E+00  3.8491E+01  4.5458E+01  1.1704E+01  8.0950E+01
 RELATIVEINF(%)  9.6878E+01  1.9761E+01  6.8812E+00  5.1336E+01  1.5882E+00
 EPSSHRINKSD(%)  3.0507E+01
 EPSSHRINKVR(%)  5.1707E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1929.3356965799007     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -826.60945673429364     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.13
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1929.336       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.50E-01  2.62E-01  1.95E-01  1.10E+00  2.26E-01  9.44E-01  1.59E+00  1.05E+00  1.20E+00  3.55E-01  2.05E+00
 


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
 #CPUT: Total CPU Time in Seconds,       17.188
Stop Time:
Fri Oct  1 18:23:07 CDT 2021