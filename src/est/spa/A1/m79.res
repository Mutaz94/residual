Sat Sep 18 09:27:18 CDT 2021
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
$DATA ../../../../data/spa/A1/dat79.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER
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

$OMEGA  0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX
$SIGMA  1 FIX ;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       18 SEP 2021
Days until program expires : 211
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 NO. OF SIG. FIGURES REQUIRED:            3
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
 RAW OUTPUT FILE (FILE): m79.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1223.13681532326        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.2873E+01 -1.4311E+01 -4.3421E+01  2.6171E+01  1.3393E+02  3.1742E+01 -4.4594E+01  2.9668E+00 -7.3481E+01 -1.7372E+01
            -8.2081E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1473.85033593402        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:       90
 NPARAMETR:  1.0006E+00  9.7665E-01  1.0589E+00  1.0253E+00  9.4968E-01  8.9787E-01  1.1551E+00  9.4519E-01  1.2128E+00  8.7837E-01
             1.8396E+00
 PARAMETER:  1.0060E-01  7.6371E-02  1.5722E-01  1.2496E-01  4.8371E-02 -7.7257E-03  2.4416E-01  4.3636E-02  2.9295E-01 -2.9688E-02
             7.0954E-01
 GRADIENT:  -4.2600E+01 -3.9664E+00 -1.5283E+01  1.4007E+01  4.5315E+01 -5.1518E+00 -6.1407E+00  3.9830E+00  2.7796E+00 -4.1186E+00
            -8.4468E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1480.58418935295        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  1.0155E+00  7.1342E-01  6.8907E-01  1.1979E+00  6.6048E-01  8.9146E-01  1.3709E+00  3.0818E-01  1.0646E+00  6.3750E-01
             1.8626E+00
 PARAMETER:  1.1541E-01 -2.3769E-01 -2.7242E-01  2.8055E-01 -3.1479E-01 -1.4894E-02  4.1547E-01 -1.0771E+00  1.6255E-01 -3.5020E-01
             7.2196E-01
 GRADIENT:  -1.3152E+01  9.2150E+00 -4.1348E+01  8.9789E+01  6.4291E+01 -8.5573E+00 -1.2328E+01  1.0922E+00  1.9655E-01 -2.4575E+00
            -7.3621E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1492.06197826107        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  1.0260E+00  5.2559E-01  5.0243E-01  1.1964E+00  4.7825E-01  9.1020E-01  1.8128E+00  1.0163E-01  9.3503E-01  4.4313E-01
             2.1405E+00
 PARAMETER:  1.2571E-01 -5.4324E-01 -5.8830E-01  2.7934E-01 -6.3763E-01  5.9089E-03  6.9488E-01 -2.1864E+00  3.2824E-02 -7.1388E-01
             8.6104E-01
 GRADIENT:  -3.2400E-01  1.3463E+01  1.1014E+01  6.2500E+00 -2.0482E+01  1.2074E+00 -9.2771E-01  1.5578E-01 -1.9597E+00  2.8951E+00
             9.8238E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1492.82320049716        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      301
 NPARAMETR:  1.0244E+00  4.1538E-01  4.7780E-01  1.2284E+00  4.4413E-01  9.0645E-01  2.1311E+00  7.6112E-02  9.1821E-01  3.9664E-01
             2.1120E+00
 PARAMETER:  1.2408E-01 -7.7857E-01 -6.3857E-01  3.0568E-01 -7.1163E-01  1.7796E-03  8.5663E-01 -2.4756E+00  1.4671E-02 -8.2473E-01
             8.4764E-01
 GRADIENT:  -2.1130E-01 -8.1022E-01 -4.3997E+00  1.0417E+00  6.6636E+00  2.1118E-01  5.5834E-02  2.7188E-02 -2.0656E-01 -4.8141E-01
            -4.1422E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1493.38938974163        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      420
 NPARAMETR:  1.0244E+00  3.8035E-01  5.4057E-01  1.2709E+00  4.7126E-01  9.0238E-01  2.2832E+00  5.5081E-02  9.1840E-01  4.8127E-01
             2.1183E+00
 PARAMETER:  1.2413E-01 -8.6666E-01 -5.1513E-01  3.3969E-01 -6.5235E-01 -2.7153E-03  9.2559E-01 -2.7989E+00  1.4873E-02 -6.3132E-01
             8.5059E-01
 GRADIENT:  -5.8217E+00  1.9460E-01  3.3030E+00 -7.1522E+00 -8.6958E+00 -6.8150E-01 -8.7173E-01  1.9221E-02  3.6406E-01  1.1856E+00
             8.9136E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1493.52844330603        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      595
 NPARAMETR:  1.0254E+00  3.6192E-01  5.7845E-01  1.2959E+00  4.9054E-01  9.0237E-01  2.4054E+00  5.1696E-02  9.1177E-01  5.0092E-01
             2.1222E+00
 PARAMETER:  1.2507E-01 -9.1632E-01 -4.4740E-01  3.5924E-01 -6.1225E-01 -2.7291E-03  9.7770E-01 -2.8624E+00  7.6275E-03 -5.9130E-01
             8.5245E-01
 GRADIENT:   9.1910E-03 -5.6294E-02 -1.7988E-02 -6.5164E-02 -4.8123E-02 -1.5271E-02  6.3445E-03  1.2639E-02  2.9483E-02  2.8398E-02
             1.0111E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1493.53197937538        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      774
 NPARAMETR:  1.0259E+00  3.6457E-01  5.7857E-01  1.2950E+00  4.9129E-01  9.0254E-01  2.3919E+00  3.0760E-02  9.1273E-01  5.0183E-01
             2.1232E+00
 PARAMETER:  1.2554E-01 -9.0904E-01 -4.4720E-01  3.5854E-01 -6.1072E-01 -2.5397E-03  9.7207E-01 -3.3815E+00  8.6851E-03 -5.8949E-01
             8.5294E-01
 GRADIENT:   1.0490E+00 -1.1256E-01 -6.9702E-01  3.6612E-01  8.7817E-01  2.4416E-02 -7.9222E-02  4.6536E-03  1.2536E-01  1.0803E-01
             4.2753E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1493.53392706827        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      949
 NPARAMETR:  1.0253E+00  3.6460E-01  5.8117E-01  1.2954E+00  4.9270E-01  9.0234E-01  2.3946E+00  1.3568E-02  9.1234E-01  5.0332E-01
             2.1221E+00
 PARAMETER:  1.2495E-01 -9.0896E-01 -4.4271E-01  3.5882E-01 -6.0786E-01 -2.7593E-03  9.7322E-01 -4.2001E+00  8.2573E-03 -5.8652E-01
             8.5242E-01
 GRADIENT:  -2.5338E-01 -3.8023E-02  3.2437E-02 -2.6251E-01  2.6178E-01 -2.0763E-02 -2.6022E-02  8.7131E-04  4.3363E-03  1.7387E-02
             6.6711E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1493.53427811413        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1125
 NPARAMETR:  1.0255E+00  3.6348E-01  5.8082E-01  1.2962E+00  4.9223E-01  9.0244E-01  2.4004E+00  1.0241E-02  9.1209E-01  5.0317E-01
             2.1222E+00
 PARAMETER:  1.2518E-01 -9.1203E-01 -4.4332E-01  3.5946E-01 -6.0880E-01 -2.6513E-03  9.7565E-01 -4.4814E+00  7.9785E-03 -5.8683E-01
             8.5243E-01
 GRADIENT:   3.5046E-01  4.6818E-02  3.0549E-02  3.4154E-01  9.7232E-02  1.9947E-02  2.6599E-02  4.8799E-04  1.1510E-02  2.4754E-03
             1.7266E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1493.53433885029        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:     1289
 NPARAMETR:  1.0254E+00  3.6320E-01  5.8084E-01  1.2961E+00  4.9220E-01  9.0238E-01  2.4007E+00  1.0000E-02  9.1199E-01  5.0320E-01
             2.1221E+00
 PARAMETER:  1.2504E-01 -9.1280E-01 -4.4328E-01  3.5936E-01 -6.0887E-01 -2.7161E-03  9.7577E-01 -4.5181E+00  7.8765E-03 -5.8677E-01
             8.5240E-01
 GRADIENT:   2.8829E-02 -3.7395E-02  8.2354E-02 -4.2770E-02  9.8213E-02  3.0477E-03 -1.6180E-02  0.0000E+00 -3.6781E-03  3.2884E-03
             9.8202E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1289
 NO. OF SIG. DIGITS IN FINAL EST.:  3.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0801E-03  3.6802E-02 -3.4141E-04 -2.5684E-02  9.2682E-03
 SE:             2.9215E-02  1.9082E-02  2.0911E-04  2.5542E-02  1.5587E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7051E-01  5.3777E-02  1.0253E-01  3.1462E-01  5.5210E-01

 ETASHRINKSD(%)  2.1272E+00  3.6073E+01  9.9299E+01  1.4431E+01  4.7782E+01
 ETASHRINKVR(%)  4.2091E+00  5.9134E+01  9.9995E+01  2.6779E+01  7.2733E+01
 EBVSHRINKSD(%)  2.2041E+00  4.1787E+01  9.9227E+01  1.2957E+01  4.4270E+01
 EBVSHRINKVR(%)  4.3597E+00  6.6112E+01  9.9994E+01  2.4236E+01  6.8942E+01
 RELATIVEINF(%)  9.4346E+01  7.9151E+00  2.6214E-04  2.8069E+01  1.2538E+00
 EPSSHRINKSD(%)  3.4958E+01
 EPSSHRINKVR(%)  5.7695E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1493.5343388502929     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -758.38351228655472     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.98
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     7.07
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1493.534       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  3.63E-01  5.81E-01  1.30E+00  4.92E-01  9.02E-01  2.40E+00  1.00E-02  9.12E-01  5.03E-01  2.12E+00
 


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
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.26E+03
 
 TH 2
+        3.96E+01  2.99E+02
 
 TH 3
+        3.81E+02  7.39E+02  2.23E+03
 
 TH 4
+       -5.45E+01  4.26E+01 -8.05E+01  9.76E+01
 
 TH 5
+       -5.43E+02 -1.29E+03 -3.78E+03  9.61E+01  6.42E+03
 
 TH 6
+       -9.59E+00 -9.48E-01 -2.26E+00 -8.25E-01  3.52E+00  8.95E-02
 
 TH 7
+       -3.60E+00  3.18E+00  4.89E+00  1.71E+00 -9.36E+00  6.67E-03  5.93E-02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -3.02E+01 -3.14E+01 -4.76E+01 -2.17E+01  8.83E+01  5.36E-01 -4.71E-01  0.00E+00  7.71E+00
 
 TH10
+       -3.04E+01 -2.81E+01 -6.83E+01 -6.38E+00  1.18E+02  3.38E-01 -2.57E-01  0.00E+00  4.27E+00  3.35E+00
 
 TH11
+       -3.37E+01 -2.23E+01 -4.90E+01 -8.49E+00  8.52E+01  3.92E-01 -2.19E-01  0.00E+00  4.40E+00  3.03E+00  2.94E+00
 
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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.24E+03
 
 TH 2
+       -4.26E+01  5.61E+02
 
 TH 3
+        2.99E+01  5.19E+02  2.10E+03
 
 TH 4
+       -3.24E+01  2.26E+02 -2.82E+02  6.12E+02
 
 TH 5
+        2.37E+01 -1.08E+03 -3.33E+03  1.87E+02  5.75E+03
 
 TH 6
+       -3.80E-01 -8.48E+00  8.64E+00 -1.14E+01 -7.07E-01  2.23E+02
 
 TH 7
+        1.68E+00  4.24E+01 -3.46E+00 -4.56E+00 -4.52E+00  9.22E-01  1.03E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        7.63E+00 -2.10E+01 -1.48E+01 -5.89E+00  3.13E+01  3.42E-01  4.88E+00  0.00E+00  1.43E+02
 
 TH10
+       -6.88E+00  7.53E+00 -1.05E+02 -2.23E+01  4.91E+01  9.70E-01  2.81E+00  0.00E+00 -6.74E+00  1.11E+02
 
 TH11
+       -1.53E+01 -1.52E+00 -4.03E+01 -1.15E+01  4.00E+01  3.41E+00  1.56E+00  0.00E+00  8.65E+00  2.44E+01  6.18E+01
 
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
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.24E+03
 
 TH 2
+       -3.18E+02  5.28E+02
 
 TH 3
+       -2.33E+02  4.74E+02  1.98E+03
 
 TH 4
+       -1.85E+02  3.26E+02 -1.89E+02  6.11E+02
 
 TH 5
+        3.30E+02 -7.96E+02 -3.22E+03  3.35E+02  5.70E+03
 
 TH 6
+       -4.74E+01  5.23E+01 -1.75E+01  5.81E+01  1.03E+01  1.44E+02
 
 TH 7
+       -1.43E+01  2.00E+01 -2.73E+00 -1.10E+01 -7.33E+00  4.61E+00  6.52E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        6.37E+01 -1.50E+02  2.30E+02 -3.58E+02 -6.67E+02 -3.91E+00  2.86E+01  0.00E+00  6.90E+02
 
 TH10
+        2.01E+01 -3.48E+01 -5.58E+01 -9.08E+01 -1.94E+01  1.27E+00  7.92E+00  0.00E+00  1.39E+02  7.43E+01
 
 TH11
+        1.40E+02 -1.60E+02  6.97E+01 -3.09E+02 -3.73E+02  5.31E-01  1.95E+01  0.00E+00  4.93E+02  1.25E+02  4.15E+02
 
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
 #CPUT: Total CPU Time in Seconds,       24.118
Stop Time:
Sat Sep 18 09:27:43 CDT 2021