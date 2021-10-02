Fri Oct  1 12:48:18 CDT 2021
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
$DATA ../../../../data/SD2/SL3/dat23.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m23.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1744.98067775910        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2614E+02  1.4472E+01 -5.1558E+01  1.3031E+02  5.6842E+01  5.9386E+01  2.3382E+00  8.2501E+00  2.6675E+01 -9.4500E+00
            -7.7897E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1926.13258519766        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0262E+00  1.1088E+00  1.2266E+00  9.3482E-01  1.1034E+00  1.0125E+00  9.4075E-01  8.9918E-01  8.2077E-01  9.0749E-01
             1.6924E+00
 PARAMETER:  1.2590E-01  2.0331E-01  3.0424E-01  3.2596E-02  1.9841E-01  1.1246E-01  3.8920E-02 -6.2714E-03 -9.7516E-02  2.9237E-03
             6.2613E-01
 GRADIENT:   2.1022E+02  2.3040E+01 -3.4096E+00  1.2460E+01  1.3346E+01  3.3657E+01 -3.6246E+00  2.0505E+00 -1.1917E+01 -9.9587E+00
            -1.5254E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1928.54198714496        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0061E+00  1.0099E+00  1.6597E+00  1.0128E+00  1.2160E+00  9.9945E-01  7.9313E-01  4.5473E-01  9.5516E-01  1.2427E+00
             1.6824E+00
 PARAMETER:  1.0604E-01  1.0984E-01  6.0665E-01  1.1272E-01  2.9559E-01  9.9445E-02 -1.3177E-01 -6.8804E-01  5.4120E-02  3.1726E-01
             6.2023E-01
 GRADIENT:   1.3973E+02  8.9879E+00 -2.6506E+00  3.2640E+01  1.4339E+01  2.7301E+01  3.5308E+00 -4.8145E-04  7.0274E+00  5.9413E+00
            -2.8716E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1929.63651004844        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      336
 NPARAMETR:  1.0274E+00  1.0659E+00  1.6890E+00  9.7958E-01  1.2214E+00  9.7688E-01  6.5027E-01  5.8337E-01  1.0024E+00  1.1886E+00
             1.7112E+00
 PARAMETER:  1.2700E-01  1.6380E-01  6.2412E-01  7.9372E-02  3.0001E-01  7.6608E-02 -3.3037E-01 -4.3893E-01  1.0238E-01  2.7278E-01
             6.3722E-01
 GRADIENT:   3.7934E+00 -1.4513E+00  4.1350E-02  3.3793E+00  6.4267E-01 -6.0446E-01  1.3585E-01 -7.1303E-02  1.5383E+00  1.6668E-01
             7.9989E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1930.38410929076        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      514
 NPARAMETR:  1.0261E+00  1.3829E+00  1.3196E+00  7.7532E-01  1.2460E+00  9.8988E-01  6.6877E-01  3.5241E-01  1.1586E+00  1.1796E+00
             1.7044E+00
 PARAMETER:  1.2576E-01  4.2417E-01  3.7731E-01 -1.5448E-01  3.1996E-01  8.9833E-02 -3.0232E-01 -9.4295E-01  2.4722E-01  2.6519E-01
             6.3319E-01
 GRADIENT:  -4.0394E+00  1.2242E+01  1.8264E+00  1.0340E+01 -8.1102E+00  3.4886E+00  1.0172E+00  8.4466E-02 -2.7935E-01  6.0741E-01
             7.1558E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1930.98784961349        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      689
 NPARAMETR:  1.0302E+00  1.6834E+00  1.0518E+00  5.7776E-01  1.3335E+00  9.7223E-01  6.0233E-01  1.1209E-01  1.4527E+00  1.2166E+00
             1.6880E+00
 PARAMETER:  1.2976E-01  6.2082E-01  1.5053E-01 -4.4860E-01  3.8781E-01  7.1836E-02 -4.0696E-01 -2.0884E+00  4.7341E-01  2.9606E-01
             6.2354E-01
 GRADIENT:   1.6674E+00  1.6453E+01 -2.1746E+00  1.3387E+01  6.0413E+00 -4.1879E+00 -9.7267E-01  1.6675E-02 -4.0809E-01 -6.6386E-01
            -4.7973E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1931.23389137729        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      865
 NPARAMETR:  1.0302E+00  1.8176E+00  9.7939E-01  4.8205E-01  1.3666E+00  9.8517E-01  5.9159E-01  5.1622E-02  1.6344E+00  1.2442E+00
             1.6884E+00
 PARAMETER:  1.2976E-01  6.9752E-01  7.9173E-02 -6.2970E-01  4.1235E-01  8.5058E-02 -4.2494E-01 -2.8638E+00  5.9125E-01  3.1852E-01
             6.2378E-01
 GRADIENT:   6.7509E-01  1.0460E+01  9.4479E-01  4.5303E+00 -2.9264E+00  7.9954E-01 -1.6762E-01  3.0553E-03 -1.0330E+00  1.4043E-01
            -3.3747E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1931.23790244752        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1043
 NPARAMETR:  1.0302E+00  1.8514E+00  9.5390E-01  4.5884E-01  1.3765E+00  9.8503E-01  5.8848E-01  4.0377E-02  1.6920E+00  1.2492E+00
             1.6899E+00
 PARAMETER:  1.2973E-01  7.1595E-01  5.2802E-02 -6.7905E-01  4.1955E-01  8.4920E-02 -4.3021E-01 -3.1095E+00  6.2591E-01  3.2250E-01
             6.2468E-01
 GRADIENT:   3.0809E-01  9.4160E+00  9.7700E-01  3.8876E+00 -2.9484E+00  7.1239E-01 -1.4386E-01  1.8804E-03 -7.6607E-01  1.3885E-01
            -2.4114E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1931.28211489881        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1228             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0306E+00  1.8495E+00  9.3033E-01  4.5281E-01  1.3777E+00  9.8326E-01  5.8787E-01  1.0000E-02  1.7094E+00  1.2445E+00
             1.6937E+00
 PARAMETER:  1.3010E-01  7.1492E-01  2.7786E-02 -6.9229E-01  4.2041E-01  8.3118E-02 -4.3126E-01 -5.1014E+00  6.3615E-01  3.1877E-01
             6.2694E-01
 GRADIENT:   2.2287E+02  3.6415E+02 -1.3162E-01  4.2971E+01  8.1189E+00  1.9510E+01  7.9213E+00  0.0000E+00  1.0489E+01  1.0258E+00
             6.5911E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1931.28458544976        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1415             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0305E+00  1.8498E+00  9.3142E-01  4.5343E-01  1.3764E+00  9.8323E-01  5.8605E-01  1.0000E-02  1.7111E+00  1.2434E+00
             1.6936E+00
 PARAMETER:  1.3006E-01  7.1510E-01  2.8960E-02 -6.9091E-01  4.1946E-01  8.3093E-02 -4.3436E-01 -5.1014E+00  6.3712E-01  3.1782E-01
             6.2684E-01
 GRADIENT:   2.2273E+02  3.6678E+02 -2.7880E-02  4.3652E+01  7.3890E+00  1.9500E+01  7.7294E+00  0.0000E+00  1.0542E+01  9.6492E-01
             6.3426E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1931.28486225508        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1600
 NPARAMETR:  1.0305E+00  1.8497E+00  9.3246E-01  4.5374E-01  1.3761E+00  9.8323E-01  5.8583E-01  1.0000E-02  1.7103E+00  1.2432E+00
             1.6935E+00
 PARAMETER:  1.3006E-01  7.1503E-01  3.0066E-02 -6.9024E-01  4.1926E-01  8.3084E-02 -4.3472E-01 -5.1014E+00  6.3667E-01  3.1769E-01
             6.2680E-01
 GRADIENT:   1.1896E+00 -5.6184E+00 -3.8019E-02 -1.1773E-01  1.0229E-01  6.4338E-02  3.7029E-02  0.0000E+00  9.7631E-02  1.1246E-02
            -5.9846E-03

0ITERATION NO.:   53    OBJECTIVE VALUE:  -1931.28494775738        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:     1698
 NPARAMETR:  1.0305E+00  1.8495E+00  9.3341E-01  4.5386E-01  1.3759E+00  9.8323E-01  5.8590E-01  1.0000E-02  1.7099E+00  1.2431E+00
             1.6935E+00
 PARAMETER:  1.3006E-01  7.1493E-01  3.1088E-02 -6.8997E-01  4.1909E-01  8.3084E-02 -4.3461E-01 -5.1014E+00  6.3645E-01  3.1764E-01
             6.2679E-01
 GRADIENT:   1.1933E+00 -5.5162E+00  2.3837E-02 -1.5885E-01 -1.0948E-01  6.5426E-02  5.8804E-02  0.0000E+00  8.1642E-02  1.0031E-02
            -3.3286E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1698
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.3190E-04 -3.4128E-02 -6.8439E-05  2.1204E-02 -3.8302E-02
 SE:             2.9693E-02  1.8905E-02  4.2231E-05  2.2213E-02  2.2074E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8033E-01  7.1038E-02  1.0511E-01  3.3979E-01  8.2712E-02

 ETASHRINKSD(%)  5.2544E-01  3.6666E+01  9.9859E+01  2.5585E+01  2.6049E+01
 ETASHRINKVR(%)  1.0481E+00  5.9888E+01  1.0000E+02  4.4624E+01  4.5313E+01
 EBVSHRINKSD(%)  8.8524E-01  3.4395E+01  9.9853E+01  2.7776E+01  2.4780E+01
 EBVSHRINKVR(%)  1.7626E+00  5.6960E+01  1.0000E+02  4.7838E+01  4.3420E+01
 RELATIVEINF(%)  9.8090E+01  3.1780E+00  7.7136E-05  4.0105E+00  2.4605E+01
 EPSSHRINKSD(%)  2.8687E+01
 EPSSHRINKVR(%)  4.9145E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1931.2849477573848     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1012.3464145527121     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    27.74
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1931.285       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.85E+00  9.33E-01  4.54E-01  1.38E+00  9.83E-01  5.86E-01  1.00E-02  1.71E+00  1.24E+00  1.69E+00
 


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
 #CPUT: Total CPU Time in Seconds,       27.772
Stop Time:
Fri Oct  1 12:48:47 CDT 2021