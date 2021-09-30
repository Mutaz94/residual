Wed Sep 29 01:47:54 CDT 2021
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
$DATA ../../../../data/int/SL1/dat17.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m17.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2811.76508220913        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.6490E+02 -6.1781E+00  2.0458E+02  5.8320E+01  5.0948E+01  4.2808E+01 -7.1954E+01 -1.5190E+02 -4.1775E+01 -5.2887E+01
            -1.8777E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3262.93147577304        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0107E+00  1.0897E+00  7.8884E-01  9.5610E-01  9.8240E-01  9.9240E-01  1.1867E+00  1.1256E+00  1.0128E+00  1.2197E+00
             1.8094E+00
 PARAMETER:  1.1065E-01  1.8591E-01 -1.3720E-01  5.5110E-02  8.2238E-02  9.2370E-02  2.7115E-01  2.1835E-01  1.1269E-01  2.9865E-01
             6.9299E-01
 GRADIENT:   8.0445E+01 -5.3440E+00 -2.1717E+01 -3.4786E+01 -1.7164E+01  6.2256E+00  1.0654E+01  6.5024E-01  5.7584E+00  9.6788E+00
             1.3827E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3269.40682509057        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      262
 NPARAMETR:  1.0631E+00  1.5806E+00  1.3389E+00  7.0193E-01  1.7510E+00  9.5038E-01  9.1402E-01  2.0575E+00  1.1431E+00  1.9098E+00
             1.8195E+00
 PARAMETER:  1.6116E-01  5.5781E-01  3.9186E-01 -2.5392E-01  6.6016E-01  4.9110E-02  1.0101E-02  8.2149E-01  2.3377E-01  7.4698E-01
             6.9855E-01
 GRADIENT:   4.5438E+01 -8.8836E+01  2.4468E+01 -1.9104E+00  5.2103E+01 -2.6368E+01  1.3167E+00 -2.2922E+01  3.0883E+00  4.6187E+01
             1.4840E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3276.05618864036        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:      451             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0488E+00  1.5930E+00  1.3617E+00  6.9161E-01  1.7854E+00  9.9709E-01  8.9189E-01  2.2355E+00  1.1942E+00  1.6141E+00
             1.8101E+00
 PARAMETER:  1.4762E-01  5.6559E-01  4.0870E-01 -2.6873E-01  6.7965E-01  9.7089E-02 -1.4414E-02  9.0447E-01  2.7752E-01  5.7877E-01
             6.9336E-01
 GRADIENT:   2.2005E+02  1.5701E+02  1.4988E+01  3.8122E+01  1.5257E+02  9.1751E+00  1.0651E-01 -1.5482E+01  1.0502E+01  2.0497E+01
             1.5483E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3276.62674627821        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      609
 NPARAMETR:  1.0401E+00  1.5933E+00  1.2995E+00  6.9153E-01  1.7849E+00  1.0357E+00  9.4535E-01  2.2352E+00  1.1941E+00  1.6250E+00
             1.8088E+00
 PARAMETER:  1.3933E-01  5.6583E-01  3.6199E-01 -2.6885E-01  6.7939E-01  1.3511E-01  4.3803E-02  9.0432E-01  2.7739E-01  5.8551E-01
             6.9266E-01
 GRADIENT:  -5.6400E+00 -9.6526E+01  1.0729E+01  6.7247E+00  8.3503E+01  8.3313E+00  5.6042E+00 -1.5749E+01  9.8389E+00  3.2843E+00
             1.4547E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3278.89236728509        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      787
 NPARAMETR:  1.0464E+00  1.5961E+00  1.0180E+00  6.9107E-01  1.7815E+00  1.0042E+00  9.1713E-01  2.2330E+00  1.1932E+00  1.6723E+00
             1.8004E+00
 PARAMETER:  1.4539E-01  5.6757E-01  1.1780E-01 -2.6951E-01  6.7745E-01  1.0424E-01  1.3498E-02  9.0337E-01  2.7662E-01  6.1418E-01
             6.8798E-01
 GRADIENT:   6.5371E+00 -1.1315E+02 -4.7392E+00  2.3705E+01  1.0318E+02 -3.5111E+00  1.2506E+00 -8.7001E-01  1.2214E+01 -1.4938E+00
             1.4801E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3291.70727471854        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      967
 NPARAMETR:  1.0411E+00  1.6638E+00  9.1048E-01  6.8033E-01  1.6932E+00  1.0155E+00  8.9041E-01  2.1536E+00  1.1731E+00  1.6785E+00
             1.6282E+00
 PARAMETER:  1.4028E-01  6.0912E-01  6.2140E-03 -2.8517E-01  6.2662E-01  1.1543E-01 -1.6074E-02  8.6713E-01  2.5969E-01  6.1790E-01
             5.8749E-01
 GRADIENT:  -1.0989E+00 -3.9827E+01 -3.3531E-01  4.1613E+01  6.9684E+01 -2.0995E-01  7.6874E-02 -4.5710E+00  6.2343E+00  1.4810E-01
            -5.9081E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3298.74034144532        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1144
 NPARAMETR:  1.0365E+00  1.7282E+00  7.8474E-01  6.2308E-01  1.5436E+00  1.0119E+00  9.1730E-01  2.0934E+00  1.0596E+00  1.6100E+00
             1.6772E+00
 PARAMETER:  1.3587E-01  6.4710E-01 -1.4240E-01 -3.7308E-01  5.3410E-01  1.1188E-01  1.3677E-02  8.3877E-01  1.5790E-01  5.7621E-01
             6.1714E-01
 GRADIENT:  -1.1221E+01 -2.4405E+01 -1.8566E+00  1.9993E+00 -6.1538E+00 -1.3418E+00  8.4435E-01  1.4176E+00 -1.5473E+00 -6.0448E+00
             9.3967E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3299.25062097719        NO. OF FUNC. EVALS.: 172
 CUMULATIVE NO. OF FUNC. EVALS.:     1316
 NPARAMETR:  1.0279E+00  1.7652E+00  7.5069E-01  5.9197E-01  1.5841E+00  1.0111E+00  8.8384E-01  2.0531E+00  1.1422E+00  1.6519E+00
             1.6730E+00
 PARAMETER:  1.2759E-01  6.6845E-01 -1.8671E-01 -4.2418E-01  5.5986E-01  1.1033E-01 -2.4477E-02  8.1909E-01  2.3302E-01  6.0155E-01
             6.1443E-01
 GRADIENT:   2.7631E+04  5.2382E+03  1.8912E+04  8.3107E+03 -6.3060E+03 -2.3644E+00 -1.7467E+00 -2.1847E+03  7.5722E+03 -9.0080E-01
            -5.7545E+03
 NUMSIGDIG:         2.3         2.3         2.3         2.3         2.3         1.0         0.8         2.3         2.3         1.9
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1316
 NO. OF SIG. DIGITS IN FINAL EST.:  0.8

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4536E-02 -1.0853E-02 -2.4980E-02  3.2831E-02 -2.2802E-02
 SE:             2.9902E-02  2.4929E-02  1.5840E-02  1.9987E-02  2.6726E-02
 N:                     100         100         100         100         100

 P VAL.:         6.2687E-01  6.6329E-01  1.1479E-01  1.0046E-01  3.9357E-01

 ETASHRINKSD(%)  1.0000E-10  1.6485E+01  4.6934E+01  3.3041E+01  1.0464E+01
 ETASHRINKVR(%)  1.0000E-10  3.0252E+01  7.1840E+01  5.5165E+01  1.9832E+01
 EBVSHRINKSD(%)  6.7760E-01  1.7008E+01  4.9144E+01  3.6248E+01  8.8643E+00
 EBVSHRINKVR(%)  1.3506E+00  3.1124E+01  7.4137E+01  5.9357E+01  1.6943E+01
 RELATIVEINF(%)  9.8641E+01  1.1607E+01  1.6171E+01  6.1505E+00  3.3004E+01
 EPSSHRINKSD(%)  1.9241E+01
 EPSSHRINKVR(%)  3.4781E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3299.2506209771882     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1645.1612612087774     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    41.18
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    14.90
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3299.251       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.77E+00  7.51E-01  5.92E-01  1.58E+00  1.01E+00  8.83E-01  2.05E+00  1.14E+00  1.65E+00  1.67E+00
 


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
+        5.13E+06
 
 TH 2
+        2.90E+00  6.36E+04
 
 TH 3
+        6.35E+03  7.39E+02  4.50E+06
 
 TH 4
+       -4.28E+03 -9.26E+01  2.51E+06  1.40E+06
 
 TH 5
+       -1.85E+02 -6.21E+01 -9.66E+02  7.46E+02  1.12E+05
 
 TH 6
+        1.40E+02  1.02E+01  1.03E+02  5.41E+01 -1.67E+01  1.92E+02
 
 TH 7
+       -4.83E+02 -2.40E+01 -4.50E+02 -2.43E+02  7.17E+01 -1.02E+00  1.33E+02
 
 TH 8
+       -4.98E+00 -4.50E+04 -5.17E+02  3.48E+02  1.01E+01 -8.44E+00  3.82E+01  3.21E+04
 
 TH 9
+       -1.33E+03 -1.55E+02  3.12E+03 -2.07E+03  1.96E+02  5.35E+01 -2.13E+02  1.09E+02  1.24E+06
 
 TH10
+       -9.52E+00 -4.44E+00 -2.51E-01  4.94E-01 -3.56E+00  7.97E+05  3.47E+00 -2.10E+00 -1.69E+00  8.95E+04
 
 TH11
+       -6.55E+05 -1.50E+02 -8.17E+02  5.58E+02  2.31E+01 -1.14E+01  6.39E+01  5.18E+04  1.75E+02  9.44E+00  8.41E+04
 
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
 #CPUT: Total CPU Time in Seconds,       56.213
Stop Time:
Wed Sep 29 01:48:52 CDT 2021
