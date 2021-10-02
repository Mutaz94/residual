Fri Oct  1 00:42:33 CDT 2021
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
$DATA ../../../../data/SD1/A2/dat59.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m59.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1966.04512502521        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.3231E+02  1.5738E+02  1.5681E+02  1.7731E+01  1.8637E+02  2.9888E+01 -7.6295E+01 -1.7060E+02 -6.6446E+01 -1.0887E+02
            -3.4257E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3024.23771872255        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:       89
 NPARAMETR:  1.0642E+00  8.2055E-01  7.6515E-01  1.1307E+00  8.1231E-01  1.0700E+00  8.0384E-01  4.8718E-01  8.6311E-01  1.0708E+00
             1.9130E+00
 PARAMETER:  1.6220E-01 -9.7782E-02 -1.6768E-01  2.2288E-01 -1.0787E-01  1.6770E-01 -1.1836E-01 -6.1912E-01 -4.7208E-02  1.6838E-01
             7.4869E-01
 GRADIENT:   2.0144E+02 -8.1157E+00 -3.3068E+01  7.9528E+01  1.0763E+02  3.2070E+01 -1.6582E+01  3.0459E+00 -4.5172E+01  8.5309E+00
            -2.9742E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3042.24711403721        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  1.0543E+00  8.4166E-01  7.3303E-01  1.1058E+00  8.0195E-01  1.0462E+00  9.7852E-01  1.3901E-01  9.3676E-01  1.1425E+00
             2.0411E+00
 PARAMETER:  1.5288E-01 -7.2383E-02 -2.1056E-01  2.0060E-01 -1.2070E-01  1.4514E-01  7.8289E-02 -1.8732E+00  3.4667E-02  2.3325E-01
             8.1347E-01
 GRADIENT:  -1.9600E+01 -3.6374E+00 -6.2695E+01 -2.1944E+01  6.3436E+01  9.1181E-01  2.3118E+00  3.0172E-01 -1.5821E+01  2.5013E+01
            -1.3427E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3055.65780714656        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      401
 NPARAMETR:  1.0658E+00  6.4454E-01  6.1263E-01  1.1974E+00  5.9891E-01  1.0311E+00  9.7837E-01  3.6512E-02  9.7965E-01  8.8866E-01
             2.1538E+00
 PARAMETER:  1.6369E-01 -3.3922E-01 -3.8999E-01  2.8014E-01 -4.1264E-01  1.3063E-01  7.8129E-02 -3.2101E+00  7.9439E-02 -1.8042E-02
             8.6725E-01
 GRADIENT:  -3.8664E-01  2.8488E+00  5.1486E+00  2.5778E+00 -1.2652E+00 -4.8079E+00 -8.3889E-01  3.7451E-02  4.4441E+00  6.4964E-01
             8.0716E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3056.24446832794        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      577
 NPARAMETR:  1.0653E+00  5.6958E-01  5.3442E-01  1.2097E+00  5.2671E-01  1.0465E+00  1.0461E+00  2.3469E-02  9.7032E-01  8.2435E-01
             2.1366E+00
 PARAMETER:  1.6327E-01 -4.6285E-01 -5.2657E-01  2.9037E-01 -5.4110E-01  1.4545E-01  1.4506E-01 -3.6521E+00  6.9874E-02 -9.3157E-02
             8.5924E-01
 GRADIENT:  -6.6023E-01  2.5412E-01 -8.6864E-01 -1.0425E-01  8.1792E-01  2.4884E-01  9.3188E-03  1.6142E-02  3.3376E-02 -1.4310E-01
            -1.6674E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3056.25097988506        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      695
 NPARAMETR:  1.0657E+00  5.6906E-01  5.3458E-01  1.2091E+00  5.2591E-01  1.0454E+00  1.0459E+00  1.0381E-02  9.7012E-01  8.2504E-01
             2.1367E+00
 PARAMETER:  1.6368E-01 -4.6376E-01 -5.2628E-01  2.8985E-01 -5.4262E-01  1.4443E-01  1.4485E-01 -4.4678E+00  6.9665E-02 -9.2323E-02
             8.5925E-01
 GRADIENT:   1.7776E-01  4.9879E-01  1.6024E+00 -1.6567E+00 -2.2690E+00 -1.2560E-01  1.1831E-02  3.1703E-03  8.8909E-03  2.7631E-02
            -2.1264E-01

0ITERATION NO.:   27    OBJECTIVE VALUE:  -3056.25195620666        NO. OF FUNC. EVALS.:  63
 CUMULATIVE NO. OF FUNC. EVALS.:      758
 NPARAMETR:  1.0673E+00  5.6937E-01  5.3407E-01  1.2101E+00  5.2597E-01  1.0469E+00  1.0461E+00  1.0000E-02  9.7028E-01  8.2448E-01
             2.1368E+00
 PARAMETER:  1.6347E-01 -4.6402E-01 -5.2673E-01  2.9019E-01 -5.4210E-01  1.4441E-01  1.4472E-01 -4.5571E+00  6.9627E-02 -9.2341E-02
             8.5930E-01
 GRADIENT:  -1.1072E+00 -2.7188E-01  2.2768E-01 -3.7228E-01  3.1217E-01 -1.8951E-01 -1.2452E-02  0.0000E+00 -2.1763E-02  4.8513E-02
            -1.6293E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      758
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4521E-03 -7.7677E-03 -1.1806E-04 -1.2000E-03 -6.9493E-03
 SE:             2.9650E-02  2.0694E-02  2.1803E-04  2.8430E-02  2.4922E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6094E-01  7.0739E-01  5.8820E-01  9.6633E-01  7.8037E-01

 ETASHRINKSD(%)  6.7012E-01  3.0674E+01  9.9270E+01  4.7569E+00  1.6507E+01
 ETASHRINKVR(%)  1.3358E+00  5.1939E+01  9.9995E+01  9.2875E+00  3.0289E+01
 EBVSHRINKSD(%)  9.5949E-01  2.9928E+01  9.9189E+01  4.6507E+00  1.6987E+01
 EBVSHRINKVR(%)  1.9098E+00  5.0899E+01  9.9993E+01  9.0851E+00  3.1089E+01
 RELATIVEINF(%)  9.8056E+01  9.8137E+00  9.2643E-04  8.4626E+01  6.4634E+00
 EPSSHRINKSD(%)  1.8136E+01
 EPSSHRINKVR(%)  3.2984E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3056.2519562066623     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1402.1625964382515     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.47
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3056.252       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.07E+00  5.69E-01  5.34E-01  1.21E+00  5.26E-01  1.05E+00  1.05E+00  1.00E-02  9.70E-01  8.25E-01  2.14E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.536
Stop Time:
Fri Oct  1 00:42:54 CDT 2021
