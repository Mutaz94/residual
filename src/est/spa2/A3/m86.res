Thu Sep 30 06:47:26 CDT 2021
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
$DATA ../../../../data/spa2/A3/dat86.csv ignore=@
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
Current Date:       30 SEP 2021
Days until program expires : 199
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -450.951903846500        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2097E+02  1.3354E+02  2.3587E+02  1.3072E+01  2.7682E+02  5.7423E+01 -9.2426E+01 -2.4403E+02 -8.1036E+01 -1.3632E+02
            -3.4736E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1665.83520629165        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0580E+00  8.1098E-01  7.0516E-01  1.2138E+00  6.8677E-01  7.7003E-01  1.0285E+00  1.0765E+00  1.0690E+00  1.0212E+00
             5.1417E+00
 PARAMETER:  1.5634E-01 -1.0952E-01 -2.4933E-01  2.9372E-01 -2.7576E-01 -1.6132E-01  1.2807E-01  1.7368E-01  1.6676E-01  1.2097E-01
             1.7374E+00
 GRADIENT:  -1.6258E+01 -4.8404E+00 -2.3849E+01  3.1996E+01  1.6772E+01 -3.7761E+01  1.2327E+01  1.3187E+01  2.6261E+01  3.7915E+01
             4.7232E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1678.59969631298        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0514E+00  4.2905E-01  2.8388E-01  1.4432E+00  2.7138E-01  7.0947E-01  1.0135E+00  9.9699E-01  1.2551E+00  8.7494E-01
             4.3587E+00
 PARAMETER:  1.5012E-01 -7.4619E-01 -1.1592E+00  4.6687E-01 -1.2042E+00 -2.4324E-01  1.1343E-01  9.6984E-02  3.2720E-01 -3.3598E-02
             1.5722E+00
 GRADIENT:  -3.3037E+01  1.4224E+02  5.8290E+01  2.6611E+02 -1.9234E+02 -8.7446E+01  4.0855E+00  2.0373E+01 -1.6105E+01  1.8025E+01
             3.7170E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1729.17030743301        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      276
 NPARAMETR:  1.0243E+00  3.2920E-01  1.6003E-01  1.3998E+00  1.8727E-01  8.3031E-01  3.3234E-01  6.9576E-01  1.7339E+00  1.1195E+00
             3.4257E+00
 PARAMETER:  1.2400E-01 -1.0111E+00 -1.7324E+00  4.3632E-01 -1.5752E+00 -8.5953E-02 -1.0016E+00 -2.6275E-01  6.5040E-01  2.1285E-01
             1.3313E+00
 GRADIENT:  -4.2277E+01  1.7475E+02 -2.8747E+00  2.0896E+02 -2.7188E+02 -3.9663E+01 -7.8267E-01  1.0417E+01 -6.1208E+00  3.2223E+01
             2.1481E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1845.92424417084        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      452
 NPARAMETR:  1.0185E+00  2.4732E-01  2.0849E-01  1.1232E+00  2.1978E-01  9.1677E-01  4.3279E-01  6.5817E-01  1.2607E+00  8.3966E-01
             2.7859E+00
 PARAMETER:  1.1835E-01 -1.2971E+00 -1.4679E+00  2.1622E-01 -1.4151E+00  1.3099E-02 -7.3751E-01 -3.1829E-01  3.3163E-01 -7.4760E-02
             1.1246E+00
 GRADIENT:  -3.3243E+01 -4.0548E+01  3.9422E+01  5.2132E+01 -8.5622E+01  1.1319E+00 -3.5300E-01  4.1883E+00  2.9331E+00  1.2534E+01
             4.5553E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1860.09053685383        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      627
 NPARAMETR:  1.0293E+00  2.8347E-01  1.8914E-01  1.0302E+00  2.2594E-01  9.2596E-01  1.1159E+00  4.7501E-01  1.3338E+00  7.1125E-01
             2.6341E+00
 PARAMETER:  1.2887E-01 -1.1606E+00 -1.5653E+00  1.2977E-01 -1.3875E+00  2.3081E-02  2.0966E-01 -6.4443E-01  3.8804E-01 -2.4074E-01
             1.0685E+00
 GRADIENT:   6.6466E+00 -8.8962E+00  1.3105E+01 -3.1446E+01 -2.9377E+01  1.9423E+00  4.3463E-01  1.4397E+00  5.5492E+00  1.1131E+00
             2.4859E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1865.18417574540        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      802
 NPARAMETR:  1.0262E+00  3.6302E-01  2.6284E-01  1.1442E+00  2.9100E-01  9.2059E-01  1.0950E+00  2.4650E-01  1.1879E+00  7.1558E-01
             2.6218E+00
 PARAMETER:  1.2586E-01 -9.1329E-01 -1.2362E+00  2.3472E-01 -1.1344E+00  1.7261E-02  1.9079E-01 -1.3004E+00  2.7221E-01 -2.3467E-01
             1.0638E+00
 GRADIENT:   4.1582E-01  5.2236E-01  5.3232E-01  2.3547E-01 -1.0139E+00 -4.7975E-01 -1.2855E-01  7.6394E-02 -1.0943E-01 -1.2585E+00
             3.6970E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1865.21761117170        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      979
 NPARAMETR:  1.0261E+00  3.6268E-01  2.6264E-01  1.1438E+00  2.9111E-01  9.2165E-01  1.0848E+00  1.5960E-01  1.1885E+00  7.2861E-01
             2.6236E+00
 PARAMETER:  1.2577E-01 -9.1424E-01 -1.2370E+00  2.3434E-01 -1.1341E+00  1.8407E-02  1.8139E-01 -1.7351E+00  2.7270E-01 -2.1661E-01
             1.0645E+00
 GRADIENT:   1.2343E-01 -6.2460E-01 -9.1541E-01  1.7330E-01  1.7693E+00  1.9752E-02  2.2748E-01  2.5755E-02 -1.1054E-01 -3.2863E-01
            -1.9510E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1865.23480634081        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1154
 NPARAMETR:  1.0260E+00  3.6307E-01  2.6268E-01  1.1434E+00  2.9097E-01  9.2127E-01  1.0578E+00  5.1974E-02  1.1896E+00  7.4050E-01
             2.6263E+00
 PARAMETER:  1.2572E-01 -9.1317E-01 -1.2368E+00  2.3398E-01 -1.1345E+00  1.8000E-02  1.5618E-01 -2.8570E+00  2.7361E-01 -2.0043E-01
             1.0656E+00
 GRADIENT:  -1.7183E-01  3.7411E-02  1.1431E-02  7.9017E-02 -1.0425E-01 -2.0853E-03  4.6111E-03  3.1763E-03  7.5827E-02  1.1982E-01
             1.0228E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1865.23590341809        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:     1316
 NPARAMETR:  1.0261E+00  3.6311E-01  2.6270E-01  1.1433E+00  2.9101E-01  9.2128E-01  1.0582E+00  1.0000E-02  1.1893E+00  7.4046E-01
             2.6263E+00
 PARAMETER:  1.2578E-01 -9.1306E-01 -1.2367E+00  2.3393E-01 -1.1344E+00  1.8010E-02  1.5661E-01 -4.5460E+00  2.7340E-01 -2.0048E-01
             1.0656E+00
 GRADIENT:  -4.2004E-03 -1.7566E-03 -2.1269E-02  1.3545E-03 -9.2546E-03  2.7348E-04  7.5309E-03  9.8973E-06  6.3016E-03  1.7081E-02
             2.5627E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1316
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.0113E-04  7.0035E-03 -4.0472E-05 -7.8638E-03  2.6221E-03
 SE:             2.9173E-02  1.6458E-02  2.0980E-04  2.7632E-02  2.4412E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7809E-01  6.7045E-01  8.4703E-01  7.7596E-01  9.1446E-01

 ETASHRINKSD(%)  2.2681E+00  4.4863E+01  9.9297E+01  7.4296E+00  1.8218E+01
 ETASHRINKVR(%)  4.4847E+00  6.9599E+01  9.9995E+01  1.4307E+01  3.3117E+01
 EBVSHRINKSD(%)  2.3241E+00  4.4665E+01  9.9299E+01  6.4602E+00  1.8517E+01
 EBVSHRINKVR(%)  4.5942E+00  6.9380E+01  9.9995E+01  1.2503E+01  3.3605E+01
 RELATIVEINF(%)  9.5291E+01  6.2831E+00  4.8237E-04  5.9749E+01  3.9381E+00
 EPSSHRINKSD(%)  2.5461E+01
 EPSSHRINKVR(%)  4.4440E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1865.2359034180915     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -762.50966357248444     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.51
 Elapsed covariance  time in seconds:     9.15
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1865.236       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  3.63E-01  2.63E-01  1.14E+00  2.91E-01  9.21E-01  1.06E+00  1.00E-02  1.19E+00  7.40E-01  2.63E+00
 


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
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         3.03E-02  5.80E-02  6.24E-02  6.40E-02  4.93E-02  6.59E-02  3.60E-01  3.19E-03  1.45E-01  1.02E-01  2.60E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        9.15E-04
 
 TH 2
+       -2.92E-05  3.36E-03
 
 TH 3
+       -7.75E-05  3.24E-03  3.90E-03
 
 TH 4
+       -2.07E-04  2.39E-03  2.98E-03  4.10E-03
 
 TH 5
+        1.51E-05  2.66E-03  3.02E-03  2.30E-03  2.43E-03
 
 TH 6
+       -2.41E-05  6.60E-04  3.65E-04  3.36E-04  3.82E-04  4.35E-03
 
 TH 7
+       -2.81E-03 -1.68E-03 -7.67E-04 -4.04E-04 -2.09E-04 -3.49E-04  1.30E-01
 
 TH 8
+        1.23E-05 -1.35E-07 -1.96E-05 -1.66E-05 -1.86E-05  5.88E-06 -1.09E-03  1.02E-05
 
 TH 9
+        3.81E-04 -4.79E-03 -5.36E-03 -5.57E-03 -4.33E-03 -1.19E-03 -7.85E-04  3.76E-05  2.09E-02
 
 TH10
+        3.70E-04  6.35E-04  8.17E-04  7.43E-04  3.78E-04  9.22E-04 -2.57E-02  2.07E-04 -7.48E-04  1.04E-02
 
 TH11
+        3.30E-03  3.73E-03  2.83E-03  1.30E-03  2.62E-03  1.40E-03 -4.63E-02  3.66E-04 -3.94E-04  1.10E-02  6.77E-02
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        3.03E-02
 
 TH 2
+       -1.67E-02  5.80E-02
 
 TH 3
+       -4.11E-02  8.95E-01  6.24E-02
 
 TH 4
+       -1.07E-01  6.44E-01  7.45E-01  6.40E-02
 
 TH 5
+        1.01E-02  9.29E-01  9.80E-01  7.28E-01  4.93E-02
 
 TH 6
+       -1.21E-02  1.73E-01  8.87E-02  7.95E-02  1.17E-01  6.59E-02
 
 TH 7
+       -2.58E-01 -8.03E-02 -3.41E-02 -1.75E-02 -1.18E-02 -1.47E-02  3.60E-01
 
 TH 8
+        1.28E-01 -7.33E-04 -9.85E-02 -8.11E-02 -1.18E-01  2.80E-02 -9.51E-01  3.19E-03
 
 TH 9
+        8.72E-02 -5.72E-01 -5.95E-01 -6.02E-01 -6.07E-01 -1.25E-01 -1.51E-02  8.15E-02  1.45E-01
 
 TH10
+        1.20E-01  1.07E-01  1.28E-01  1.14E-01  7.51E-02  1.37E-01 -6.99E-01  6.36E-01 -5.07E-02  1.02E-01
 
 TH11
+        4.19E-01  2.47E-01  1.74E-01  7.84E-02  2.04E-01  8.15E-02 -4.94E-01  4.41E-01 -1.05E-02  4.14E-01  2.60E-01
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.93E+03
 
 TH 2
+        9.38E+01  3.00E+03
 
 TH 3
+        1.08E+03  1.01E+03  9.31E+03
 
 TH 4
+        1.06E+02  1.44E+02 -3.52E+02  6.19E+02
 
 TH 5
+       -1.26E+03 -4.82E+03 -1.24E+04 -1.80E+02  2.19E+04
 
 TH 6
+        1.45E-01 -9.17E+01  2.28E+02 -2.95E+00 -2.09E+02  2.56E+02
 
 TH 7
+        2.67E+02 -1.96E+02  9.06E+01  6.76E+00  2.36E+02 -1.97E+01  1.67E+02
 
 TH 8
+        2.77E+04 -2.68E+04  9.29E+03  6.09E+02  3.44E+04 -1.18E+03  1.70E+04  1.95E+06
 
 TH 9
+       -8.80E+00  1.95E+01 -7.86E+01  6.72E+01  1.72E+02  7.58E+00  1.01E+00  1.88E+02  8.61E+01
 
 TH10
+        6.71E+01 -3.12E+01 -4.06E+02 -1.35E+01  5.76E+02 -5.12E+01  6.47E+01  3.04E+03  4.94E+00  2.26E+02
 
 TH11
+       -7.56E+01 -1.07E+01  6.28E+01  6.12E-01 -1.10E+02 -3.06E-01 -3.45E+00 -9.74E+02 -6.09E+00 -1.45E+01  2.59E+01
 
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
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       33.763
Stop Time:
Thu Sep 30 06:48:02 CDT 2021