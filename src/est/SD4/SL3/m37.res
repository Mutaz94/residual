Sat Oct  2 03:16:02 CDT 2021
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
$DATA ../../../../data/SD4/SL3/dat37.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m37.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1566.56947608823        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3285E+02  6.4999E+00 -6.1358E+00  6.0497E+01  6.2668E+01  5.9621E+01 -2.3906E+01 -9.6523E+00 -1.1596E+01 -3.7855E+01
            -1.2369E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1584.78001942296        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  1.0287E+00  1.0310E+00  9.8243E-01  1.0075E+00  9.6224E-01  9.8810E-01  1.0844E+00  1.0278E+00  1.0454E+00  1.0960E+00
             1.2922E+00
 PARAMETER:  1.2833E-01  1.3052E-01  8.2269E-02  1.0750E-01  6.1504E-02  8.8030E-02  1.8104E-01  1.2739E-01  1.4441E-01  1.9165E-01
             3.5634E-01
 GRADIENT:   4.1831E+01  1.4835E+00  1.7010E+00  1.2407E+01 -1.1778E+01  1.0506E+00 -1.3968E+01 -1.7706E+00  1.8385E+00 -4.4626E+00
             1.1182E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1588.02978695217        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  1.0248E+00  1.0464E+00  1.0869E+00  1.0116E+00  1.0279E+00  9.8069E-01  1.4300E+00  1.2152E+00  8.9524E-01  1.2721E+00
             1.2526E+00
 PARAMETER:  1.2452E-01  1.4538E-01  1.8335E-01  1.1157E-01  1.2755E-01  8.0500E-02  4.5769E-01  2.9489E-01 -1.0668E-02  3.4068E-01
             3.2522E-01
 GRADIENT:   3.6436E+01  1.8853E+01 -3.8540E+00  2.1818E+01 -1.5619E+01 -1.4672E+00  1.3920E+00  1.2638E+00  6.3029E-01  1.2821E+01
             1.5974E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1589.04510449236        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:      541             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0213E+00  9.3502E-01  1.3440E+00  1.0939E+00  1.0774E+00  9.7982E-01  1.5789E+00  1.4526E+00  8.3755E-01  1.3104E+00
             1.2575E+00
 PARAMETER:  1.2106E-01  3.2818E-02  3.9564E-01  1.8976E-01  1.7455E-01  7.9615E-02  5.5674E-01  4.7338E-01 -7.7279E-02  3.7034E-01
             3.2914E-01
 GRADIENT:   3.7854E+02  4.0926E+01  3.7422E+00  1.4488E+02 -7.3511E+00  3.1654E+01  2.3037E+01  7.7457E-01  4.5410E+00  1.2636E+01
             5.1789E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1590.02372612308        NO. OF FUNC. EVALS.: 156
 CUMULATIVE NO. OF FUNC. EVALS.:      697
 NPARAMETR:  1.0070E+00  9.0974E-01  1.3550E+00  1.0822E+00  1.0887E+00  9.8146E-01  1.5740E+00  1.4616E+00  8.3526E-01  1.2410E+00
             1.2509E+00
 PARAMETER:  1.0700E-01  5.4011E-03  4.0380E-01  1.7900E-01  1.8501E-01  8.1288E-02  5.5364E-01  4.7952E-01 -8.0012E-02  3.1594E-01
             3.2386E-01
 GRADIENT:   1.0107E+00  4.4173E-01 -2.6612E-01 -6.1293E+00  7.3035E-01  2.9535E-01 -1.1293E-01 -1.0056E+00  7.3470E-01 -2.3625E-01
            -3.6650E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1590.04983292507        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:      884             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0070E+00  9.0647E-01  1.3587E+00  1.0854E+00  1.0891E+00  9.8088E-01  1.5744E+00  1.4708E+00  8.2941E-01  1.2432E+00
             1.2531E+00
 PARAMETER:  1.0697E-01  1.8067E-03  4.0652E-01  1.8193E-01  1.8537E-01  8.0699E-02  5.5385E-01  4.8581E-01 -8.7045E-02  3.1769E-01
             3.2558E-01
 GRADIENT:   3.0911E+02  1.9755E+01  2.5155E+00  1.0973E+02  8.3793E+00  3.4081E+01  2.0877E+01  4.1977E-01  4.2146E+00  2.8402E+00
             2.9052E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1590.10883797144        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1064
 NPARAMETR:  1.0054E+00  8.8343E-01  1.3615E+00  1.1007E+00  1.0901E+00  9.7986E-01  1.6057E+00  1.4672E+00  8.1604E-01  1.2468E+00
             1.2551E+00
 PARAMETER:  1.0537E-01 -2.3944E-02  4.0856E-01  1.9594E-01  1.8630E-01  7.9655E-02  5.7357E-01  4.8338E-01 -1.0329E-01  3.2058E-01
             3.2721E-01
 GRADIENT:  -2.4669E+00  2.5686E-01 -4.4822E+00 -8.1898E-01  6.7383E+00 -2.4403E-01 -1.2697E+00 -2.0896E-01 -4.4784E-01  1.2348E-01
             1.0738E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1590.17465997173        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1240            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0069E+00  8.6823E-01  1.3981E+00  1.1096E+00  1.0759E+00  9.8068E-01  1.6439E+00  1.4611E+00  8.1004E-01  1.2473E+00
             1.2514E+00
 PARAMETER:  1.0688E-01 -4.1294E-02  4.3515E-01  2.0404E-01  1.7320E-01  8.0496E-02  5.9708E-01  4.7920E-01 -1.1067E-01  3.2097E-01
             3.2430E-01
 GRADIENT:   3.1037E+02  2.0924E+01  8.0827E+00  1.2733E+02 -1.0857E+00  3.4160E+01  2.3554E+01 -1.1553E+00  4.2003E+00  4.0762E+00
             2.2727E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1590.29580252759        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1415
 NPARAMETR:  1.0051E+00  8.5622E-01  1.3989E+00  1.1177E+00  1.0825E+00  9.7958E-01  1.6478E+00  1.5035E+00  8.1048E-01  1.2372E+00
             1.2519E+00
 PARAMETER:  1.0508E-01 -5.5225E-02  4.3569E-01  2.1130E-01  1.7923E-01  7.9365E-02  5.9943E-01  5.0778E-01 -1.1013E-01  3.1284E-01
             3.2465E-01
 GRADIENT:  -2.2910E+00  1.1348E+00 -1.8506E+00 -3.4794E+00  8.6091E-01 -2.4418E-01 -7.2009E-01  1.3765E-01  1.9866E-01 -3.4679E-01
            -5.3491E-02

0ITERATION NO.:   43    OBJECTIVE VALUE:  -1590.33743291131        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:     1514
 NPARAMETR:  1.0031E+00  8.4589E-01  1.4152E+00  1.1239E+00  1.0840E+00  9.7826E-01  1.6592E+00  1.5199E+00  8.0688E-01  1.2378E+00
             1.2519E+00
 PARAMETER:  1.0308E-01 -6.7367E-02  4.4730E-01  2.1679E-01  1.8066E-01  7.8025E-02  6.0634E-01  5.1862E-01 -1.1458E-01  3.1336E-01
             3.2464E-01
 GRADIENT:  -7.2725E+04 -1.4992E+05 -1.6751E+04 -1.8899E+01 -8.2973E+04 -7.4957E+04  2.4725E+04  1.4424E+04 -1.3083E+05 -2.3921E+04
            -4.6413E+04

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1514
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.0092E-03  6.4805E-03 -3.9297E-02 -1.4636E-02 -4.0670E-02
 SE:             2.9835E-02  2.1422E-02  1.5283E-02  2.0969E-02  2.0873E-02
 N:                     100         100         100         100         100

 P VAL.:         8.9310E-01  7.6226E-01  1.0133E-02  4.8517E-01  5.1356E-02

 ETASHRINKSD(%)  4.8571E-02  2.8234E+01  4.8799E+01  2.9752E+01  3.0074E+01
 ETASHRINKVR(%)  9.7118E-02  4.8496E+01  7.3785E+01  5.0652E+01  5.1103E+01
 EBVSHRINKSD(%)  6.9792E-01  2.9272E+01  5.3897E+01  2.9965E+01  2.5964E+01
 EBVSHRINKVR(%)  1.3910E+00  4.9975E+01  7.8745E+01  5.0950E+01  4.5187E+01
 RELATIVEINF(%)  9.7884E+01  3.1958E+00  4.5098E+00  3.1255E+00  1.6361E+01
 EPSSHRINKSD(%)  4.3731E+01
 EPSSHRINKVR(%)  6.8338E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1590.3374329113130     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -855.18660634757487     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.22
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1590.337       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  8.46E-01  1.42E+00  1.12E+00  1.08E+00  9.78E-01  1.66E+00  1.52E+00  8.07E-01  1.24E+00  1.25E+00
 


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
 #CPUT: Total CPU Time in Seconds,       21.260
Stop Time:
Sat Oct  2 03:16:25 CDT 2021
