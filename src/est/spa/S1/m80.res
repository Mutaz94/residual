Wed Sep 29 14:35:23 CDT 2021
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
$DATA ../../../../data/spa/S1/dat80.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m80.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1723.56991466374        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0703E+02  2.3544E+01  1.3662E+01  5.1250E+01 -3.4186E+01  8.2708E+01  8.2889E+00  2.0569E+00  4.4819E+01  1.0736E+01
            -2.1311E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1727.78305944997        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0109E+00  1.0949E+00  1.0203E+00  9.7032E-01  1.0884E+00  8.1192E-01  9.7562E-01  9.8792E-01  7.5282E-01  9.4839E-01
             1.0293E+00
 PARAMETER:  1.1089E-01  1.9071E-01  1.2013E-01  6.9869E-02  1.8469E-01 -1.0835E-01  7.5315E-02  8.7846E-02 -1.8393E-01  4.7007E-02
             1.2890E-01
 GRADIENT:  -3.3731E+01  1.6001E+01  4.2883E+00  2.0518E+01  1.4134E+01 -4.4427E+01 -8.9765E+00 -5.2449E+00 -1.4774E+01 -7.7761E+00
            -6.9749E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1728.70599555054        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      372
 NPARAMETR:  1.0152E+00  1.1090E+00  8.8501E-01  9.4853E-01  1.0076E+00  8.3481E-01  9.9766E-01  1.0837E+00  7.2961E-01  8.1559E-01
             1.0106E+00
 PARAMETER:  1.1510E-01  2.0349E-01 -2.2153E-02  4.7161E-02  1.0753E-01 -8.0551E-02  9.7662E-02  1.8034E-01 -2.1525E-01 -1.0385E-01
             1.1058E-01
 GRADIENT:  -2.1567E+01  7.1108E+00 -1.5291E+00  1.1259E+01  4.7475E+00 -3.1960E+01 -8.1743E+00  1.1652E+00 -1.6204E+01 -7.8830E+00
            -6.0028E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1731.59561888464        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      551
 NPARAMETR:  1.0227E+00  1.1875E+00  8.2050E-01  8.9372E-01  1.0225E+00  9.0313E-01  9.6969E-01  8.7393E-01  8.3721E-01  9.1173E-01
             1.0160E+00
 PARAMETER:  1.2244E-01  2.7189E-01 -9.7840E-02 -1.2361E-02  1.2230E-01 -1.8856E-03  6.9222E-02 -3.4758E-02 -7.7682E-02  7.5926E-03
             1.1585E-01
 GRADIENT:   3.8425E-01  1.9443E+00  1.3194E-01  1.9213E+00 -1.4351E+00  8.6940E-01  3.5449E-01  2.4741E-01 -7.1232E-01  5.7736E-01
             1.1695E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1731.64951996920        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      730
 NPARAMETR:  1.0241E+00  1.3249E+00  6.8128E-01  8.0337E-01  1.0147E+00  9.0292E-01  8.9631E-01  7.1577E-01  8.9787E-01  8.8341E-01
             1.0160E+00
 PARAMETER:  1.2378E-01  3.8137E-01 -2.8378E-01 -1.1894E-01  1.1455E-01 -2.1211E-03 -9.4703E-03 -2.3439E-01 -7.7322E-03 -2.3966E-02
             1.1584E-01
 GRADIENT:   5.0140E-01  8.0442E+00  1.7341E+00  5.9704E+00 -4.0676E+00  1.3112E-01 -5.2050E-01  4.9509E-02  4.1197E-01 -3.0646E-01
            -5.5387E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1731.72537772883        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      906
 NPARAMETR:  1.0244E+00  1.4538E+00  5.4309E-01  7.1140E-01  1.0060E+00  9.0102E-01  8.4139E-01  4.6883E-01  9.5906E-01  8.5673E-01
             1.0155E+00
 PARAMETER:  1.2414E-01  4.7416E-01 -5.1048E-01 -2.4052E-01  1.0594E-01 -4.2238E-03 -7.2697E-02 -6.5752E-01  5.8201E-02 -5.4633E-02
             1.1536E-01
 GRADIENT:  -7.6069E-01  3.2961E+00 -1.7785E-01  3.5666E+00 -1.6615E+00 -1.1735E+00 -4.2304E-01  2.3334E-01  7.8284E-01 -1.5396E-01
             8.6468E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1731.75249800173        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1086
 NPARAMETR:  1.0264E+00  1.4816E+00  5.2106E-01  6.8714E-01  1.0138E+00  9.0586E-01  8.3116E-01  3.1129E-01  9.6888E-01  8.5895E-01
             1.0154E+00
 PARAMETER:  1.2607E-01  4.9310E-01 -5.5189E-01 -2.7522E-01  1.1375E-01  1.1325E-03 -8.4932E-02 -1.0670E+00  6.8383E-02 -5.2041E-02
             1.1531E-01
 GRADIENT:   4.5016E+00 -5.1004E+00  2.2911E+00 -5.5343E+00  1.1563E-01  9.0250E-01 -8.2246E-01 -1.5795E-02 -1.2570E+00 -1.3422E+00
            -5.1118E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1731.78857818038        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1263
 NPARAMETR:  1.0252E+00  1.4881E+00  5.0716E-01  6.8478E-01  1.0096E+00  9.0454E-01  8.3386E-01  1.6236E-01  9.7863E-01  8.6984E-01
             1.0138E+00
 PARAMETER:  1.2489E-01  4.9750E-01 -5.7892E-01 -2.7866E-01  1.0951E-01 -3.2521E-04 -8.1691E-02 -1.7179E+00  7.8402E-02 -3.9452E-02
             1.1369E-01
 GRADIENT:   1.0303E+00 -2.8176E+00 -1.2816E+00  1.4660E+00  2.9504E+00  2.5866E-01  7.4620E-01  1.7266E-02  5.3587E-01  9.2459E-01
            -2.5936E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1731.81244275752        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1441
 NPARAMETR:  1.0263E+00  1.5006E+00  4.8797E-01  6.7397E-01  1.0006E+00  9.0432E-01  8.2548E-01  2.1082E-02  9.8118E-01  8.4955E-01
             1.0147E+00
 PARAMETER:  1.2598E-01  5.0587E-01 -6.1751E-01 -2.9457E-01  1.0064E-01 -5.6912E-04 -9.1794E-02 -3.7594E+00  8.1004E-02 -6.3047E-02
             1.1464E-01
 GRADIENT:   3.9303E+00 -2.6519E+00  6.0636E-01 -1.8707E+00 -6.2764E-01  1.3755E-01 -1.5546E-01  4.3705E-04 -1.9143E-01 -1.5239E-01
            -1.5494E-01

0ITERATION NO.:   44    OBJECTIVE VALUE:  -1731.81359125720        NO. OF FUNC. EVALS.: 131
 CUMULATIVE NO. OF FUNC. EVALS.:     1572
 NPARAMETR:  1.0259E+00  1.5005E+00  4.8746E-01  6.7432E-01  1.0010E+00  9.0430E-01  8.2588E-01  1.0000E-02  9.8196E-01  8.5054E-01
             1.0150E+00
 PARAMETER:  1.2555E-01  5.0582E-01 -6.1855E-01 -2.9405E-01  1.0095E-01 -5.9585E-04 -9.1309E-02 -4.7891E+00  8.1793E-02 -6.1879E-02
             1.1489E-01
 GRADIENT:   2.6981E+00 -3.0192E+00 -3.5240E-01 -5.4811E-01  8.2968E-01  1.2325E-01  1.8157E-02  0.0000E+00  6.5241E-02  3.1510E-02
             6.3078E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1572
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -8.6864E-05 -1.7493E-02 -3.3148E-04  1.4644E-02 -2.6555E-02
 SE:             2.9826E-02  2.4419E-02  1.3620E-04  2.2597E-02  2.1678E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9768E-01  4.7376E-01  1.4941E-02  5.1696E-01  2.2058E-01

 ETASHRINKSD(%)  8.0494E-02  1.8194E+01  9.9544E+01  2.4296E+01  2.7376E+01
 ETASHRINKVR(%)  1.6092E-01  3.3077E+01  9.9998E+01  4.2690E+01  4.7257E+01
 EBVSHRINKSD(%)  5.1413E-01  1.8149E+01  9.9596E+01  2.5480E+01  2.6396E+01
 EBVSHRINKVR(%)  1.0256E+00  3.3004E+01  9.9998E+01  4.4467E+01  4.5824E+01
 RELATIVEINF(%)  9.8929E+01  3.2338E+00  1.0656E-04  2.3289E+00  6.4634E+00
 EPSSHRINKSD(%)  4.3843E+01
 EPSSHRINKVR(%)  6.8464E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1731.8135912572041     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -996.66276469346587     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.24
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.12
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1731.814       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.50E+00  4.87E-01  6.74E-01  1.00E+00  9.04E-01  8.26E-01  1.00E-02  9.82E-01  8.51E-01  1.02E+00
 


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
+        1.28E+03
 
 TH 2
+       -9.35E+00  4.99E+02
 
 TH 3
+        1.17E+01  2.40E+02  8.43E+02
 
 TH 4
+       -2.44E+01  4.11E+02 -6.27E+02  1.42E+03
 
 TH 5
+       -6.31E+00 -2.89E+02 -6.91E+02  4.85E+02  8.34E+02
 
 TH 6
+       -5.74E-01 -1.49E+00  2.91E+00 -4.74E+00 -1.11E+00  2.39E+02
 
 TH 7
+        5.25E-01  1.82E+01 -3.85E+01 -1.18E+01  1.13E+00  1.29E-01  1.38E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.70E+00 -2.01E+01 -4.90E+01  6.32E+01 -1.89E+00  5.22E-02  2.04E+01  0.00E+00  7.76E+01
 
 TH10
+       -2.29E-01 -1.54E+01 -4.83E+01 -1.16E+01 -7.21E+01 -3.16E-02  1.92E+01  0.00E+00  1.39E+01  8.82E+01
 
 TH11
+       -8.08E+00 -1.77E+01 -3.37E+01  4.39E+00 -3.64E+00  2.24E+00  1.06E+01  0.00E+00  1.10E+01  2.00E+01  2.06E+02
 
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
 #CPUT: Total CPU Time in Seconds,       27.369
Stop Time:
Wed Sep 29 14:35:52 CDT 2021
