Wed Sep 29 17:46:50 CDT 2021
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
$DATA ../../../../data/spa/S2/dat91.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m91.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1637.60290309301        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.2311E+02 -5.0878E+01 -5.2505E+01 -9.4243E+00  5.6865E+01  1.4492E+01 -8.2225E-01  1.7039E+01 -3.0512E+00  2.1071E+01
             1.8782E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1648.76154116482        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.3369E-01  1.0639E+00  1.2096E+00  1.0183E+00  1.0714E+00  1.0645E+00  9.9848E-01  8.8051E-01  1.0612E+00  8.5764E-01
             9.1890E-01
 PARAMETER:  3.1390E-02  1.6193E-01  2.9032E-01  1.1812E-01  1.6899E-01  1.6246E-01  9.8478E-02 -2.7255E-02  1.5942E-01 -5.3571E-02
             1.5427E-02
 GRADIENT:  -2.7038E+00  1.4274E-01  5.7022E+00 -3.1221E+00  3.0944E+01  1.3573E+01  2.1809E+00  1.3431E+00 -2.4495E+00 -2.4090E+01
            -2.8431E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1650.94889948152        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      348
 NPARAMETR:  9.4576E-01  9.5934E-01  1.2696E+00  1.0969E+00  1.0614E+00  1.0309E+00  7.9836E-01  4.4895E-01  1.0463E+00  1.0345E+00
             9.3656E-01
 PARAMETER:  4.4234E-02  5.8489E-02  3.3867E-01  1.9248E-01  1.5957E-01  1.3043E-01 -1.2520E-01 -7.0085E-01  1.4529E-01  1.3390E-01
             3.4461E-02
 GRADIENT:   2.5043E+01  1.3316E+01  1.1700E+01  1.4883E+01  1.1859E+01  1.8757E+00 -2.0073E+00 -2.1625E+00 -8.1800E+00 -7.2812E+00
            -2.3641E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1653.27879114485        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      524
 NPARAMETR:  9.3465E-01  8.7207E-01  1.0750E+00  1.1495E+00  9.3489E-01  1.0226E+00  1.1523E+00  3.4276E-01  9.6598E-01  9.2724E-01
             9.6919E-01
 PARAMETER:  3.2420E-02 -3.6885E-02  1.7233E-01  2.3931E-01  3.2669E-02  1.2235E-01  2.4176E-01 -9.7073E-01  6.5390E-02  2.4461E-02
             6.8705E-02
 GRADIENT:  -1.3573E+00  9.2645E+00 -9.9943E-01  2.0648E+01  4.3229E+00 -1.1508E+00 -3.0051E-01  1.1981E-01  3.8865E-01  1.4890E+00
             3.3679E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1653.71094635388        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      702
 NPARAMETR:  9.3603E-01  7.5716E-01  9.8700E-01  1.2010E+00  8.4531E-01  1.0268E+00  1.3694E+00  2.3684E-01  8.9609E-01  8.3441E-01
             9.6365E-01
 PARAMETER:  3.3894E-02 -1.7818E-01  8.6911E-02  2.8314E-01 -6.8052E-02  1.2645E-01  4.1436E-01 -1.3404E+00 -9.7199E-03 -8.1033E-02
             6.2975E-02
 GRADIENT:   2.2162E+00  2.5480E+00  1.4722E+00  2.2879E+00 -1.9119E+00  6.4176E-01 -2.8756E-01  1.3806E-01 -1.0702E+00 -2.1998E+00
            -1.6560E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1653.78602201318        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      879
 NPARAMETR:  9.3462E-01  6.7487E-01  1.0041E+00  1.2508E+00  8.2634E-01  1.0242E+00  1.4949E+00  1.5662E-01  8.7236E-01  8.5159E-01
             9.6703E-01
 PARAMETER:  3.2381E-02 -2.9324E-01  1.0413E-01  3.2376E-01 -9.0746E-02  1.2392E-01  5.0203E-01 -1.7539E+00 -3.6548E-02 -6.0653E-02
             6.6473E-02
 GRADIENT:   7.4387E-01  1.2720E+00  6.9656E-01  1.0887E+00 -1.1015E+00  1.1002E-01  5.9166E-02  3.4346E-02  1.1287E-01 -4.9840E-01
            -1.8703E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1653.79927174801        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1060
 NPARAMETR:  9.3450E-01  6.7094E-01  1.0032E+00  1.2517E+00  8.2598E-01  1.0240E+00  1.4999E+00  9.2329E-02  8.7092E-01  8.5700E-01
             9.6757E-01
 PARAMETER:  3.2252E-02 -2.9908E-01  1.0315E-01  3.2447E-01 -9.1182E-02  1.2374E-01  5.0542E-01 -2.2824E+00 -3.8201E-02 -5.4313E-02
             6.7035E-02
 GRADIENT:   5.2379E-01 -4.3209E-02 -5.0186E-01 -8.8759E-01  1.0418E+00  6.7370E-02 -1.5154E-02  1.0026E-02  7.2974E-02 -3.5043E-02
            -4.2321E-04

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1653.80233226109        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1239             RESET HESSIAN, TYPE I
 NPARAMETR:  9.3509E-01  6.6783E-01  1.0033E+00  1.2524E+00  8.2474E-01  1.0243E+00  1.5059E+00  3.0807E-02  8.6993E-01  8.5801E-01
             9.6774E-01
 PARAMETER:  3.2888E-02 -3.0373E-01  1.0328E-01  3.2508E-01 -9.2684E-02  1.2398E-01  5.0942E-01 -3.3800E+00 -3.9347E-02 -5.3143E-02
             6.7213E-02
 GRADIENT:   3.9713E+02  4.4645E+01  3.6734E+00  3.1838E+02  8.8552E+00  5.1444E+01  1.3974E+01  8.7450E-03  7.1359E+00  5.7303E-01
             6.8514E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1653.80347586612        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1421             RESET HESSIAN, TYPE I
 NPARAMETR:  9.3487E-01  6.6886E-01  1.0021E+00  1.2525E+00  8.2452E-01  1.0242E+00  1.5070E+00  1.0000E-02  8.6942E-01  8.5808E-01
             9.6785E-01
 PARAMETER:  3.2650E-02 -3.0218E-01  1.0211E-01  3.2512E-01 -9.2959E-02  1.2395E-01  5.1010E-01 -6.0430E+00 -3.9934E-02 -5.3063E-02
             6.7318E-02
 GRADIENT:   3.9645E+02  4.4942E+01  3.3677E+00  3.1942E+02  8.9853E+00  5.1434E+01  1.4114E+01  0.0000E+00  7.0273E+00  6.8066E-01
             7.7112E-01

0ITERATION NO.:   42    OBJECTIVE VALUE:  -1653.80347586612        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1478
 NPARAMETR:  9.3487E-01  6.6886E-01  1.0021E+00  1.2525E+00  8.2452E-01  1.0242E+00  1.5070E+00  1.0000E-02  8.6942E-01  8.5808E-01
             9.6785E-01
 PARAMETER:  3.2650E-02 -3.0218E-01  1.0211E-01  3.2512E-01 -9.2959E-02  1.2395E-01  5.1010E-01 -6.0430E+00 -3.9934E-02 -5.3063E-02
             6.7318E-02
 GRADIENT:   1.3905E+00  1.5272E-01  4.5959E-01 -1.6960E+00 -1.4765E-01  1.6865E-01  1.2071E-01  0.0000E+00 -3.6938E-02  3.4010E-02
            -2.8911E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1478
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.5071E-05  6.4601E-03 -3.7578E-04 -9.2090E-03 -1.2215E-02
 SE:             2.9808E-02  1.8085E-02  1.9785E-04  2.5619E-02  2.3808E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9746E-01  7.2094E-01  5.7522E-02  7.1925E-01  6.0790E-01

 ETASHRINKSD(%)  1.4054E-01  3.9413E+01  9.9337E+01  1.4173E+01  2.0239E+01
 ETASHRINKVR(%)  2.8089E-01  6.3293E+01  9.9996E+01  2.6337E+01  3.6382E+01
 EBVSHRINKSD(%)  4.1324E-01  4.1025E+01  9.9361E+01  1.3546E+01  1.8032E+01
 EBVSHRINKVR(%)  8.2477E-01  6.5220E+01  9.9996E+01  2.5256E+01  3.2813E+01
 RELATIVEINF(%)  9.8530E+01  2.0748E+00  4.9508E-04  6.0324E+00  5.6961E+00
 EPSSHRINKSD(%)  4.2947E+01
 EPSSHRINKVR(%)  6.7450E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1653.8034758661238     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -918.65264930238561     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.71
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.08
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1653.803       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.35E-01  6.69E-01  1.00E+00  1.25E+00  8.25E-01  1.02E+00  1.51E+00  1.00E-02  8.69E-01  8.58E-01  9.68E-01
 


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
+        1.20E+03
 
 TH 2
+       -1.11E+01  4.05E+02
 
 TH 3
+        1.30E+01  2.01E+02  4.71E+02
 
 TH 4
+       -5.09E+00  3.45E+02 -1.45E+02  7.05E+02
 
 TH 5
+       -3.85E+00 -4.22E+02 -7.47E+02  1.77E+02  1.48E+03
 
 TH 6
+        1.01E+00 -2.57E+00  3.53E+00 -2.52E+00 -3.26E+00  1.86E+02
 
 TH 7
+        1.02E+00  2.59E+01  7.67E+00 -3.61E+00 -1.20E+01  6.02E-03  1.68E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.53E+00 -2.06E+01 -1.98E+01  1.05E+01  1.20E+01 -5.37E-01  1.66E+01  0.00E+00  1.50E+02
 
 TH10
+       -1.04E+00  3.88E+00 -4.78E+01 -2.17E+01 -4.98E+01  2.62E-01  6.77E+00  0.00E+00  5.55E+00  1.17E+02
 
 TH11
+       -9.18E+00 -1.21E+01 -4.33E+01 -5.90E+00  1.96E+01  2.49E+00  2.78E+00  0.00E+00  8.33E+00  3.26E+01  2.34E+02
 
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
 #CPUT: Total CPU Time in Seconds,       25.857
Stop Time:
Wed Sep 29 17:47:17 CDT 2021
