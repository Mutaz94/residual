Wed Sep 29 16:05:44 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat73.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m73.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1682.18562505738        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9660E+02  1.6079E+01  3.9009E+01 -7.8928E+00 -6.5283E+01  8.4962E+01 -8.1914E+00 -1.4689E+01 -1.2181E+01  3.6629E+01
            -1.9943E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1695.61035025972        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      175
 NPARAMETR:  1.0170E+00  1.0410E+00  9.9776E-01  1.0051E+00  1.0690E+00  7.7250E-01  1.0767E+00  1.0851E+00  1.0783E+00  8.1402E-01
             1.1000E+00
 PARAMETER:  1.1684E-01  1.4019E-01  9.7757E-02  1.0507E-01  1.6675E-01 -1.5812E-01  1.7387E-01  1.8167E-01  1.7535E-01 -1.0577E-01
             1.9527E-01
 GRADIENT:   6.9909E+00 -2.3442E+01 -3.5622E+00 -1.0325E+01  1.0247E+01 -4.3649E+01 -6.9685E+00 -1.2241E+01  6.0293E+00  1.8241E+01
             1.9055E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1702.48253935446        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      354
 NPARAMETR:  1.0066E+00  1.1798E+00  9.5890E-01  9.4663E-01  1.0329E+00  8.9540E-01  1.1961E+00  1.7959E+00  1.1048E+00  3.2888E-01
             1.1343E+00
 PARAMETER:  1.0661E-01  2.6532E-01  5.8028E-02  4.5152E-02  1.3235E-01 -1.0488E-02  2.7908E-01  6.8553E-01  1.9964E-01 -1.0121E+00
             2.2601E-01
 GRADIENT:  -2.4991E+01  2.8187E+01  8.3292E+00  1.7269E+01 -6.4039E+01  1.6683E+01  1.0428E+01  1.4817E+01  1.2635E+01  1.7848E+00
             3.2565E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1706.55738545794        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      530
 NPARAMETR:  1.0158E+00  1.1652E+00  9.0267E-01  9.3717E-01  1.0324E+00  8.5361E-01  1.1484E+00  1.4822E+00  1.0473E+00  3.5483E-01
             1.0586E+00
 PARAMETER:  1.1567E-01  2.5285E-01 -2.4005E-03  3.5106E-02  1.3189E-01 -5.8283E-02  2.3841E-01  4.9350E-01  1.4624E-01 -9.3611E-01
             1.5697E-01
 GRADIENT:   2.0661E-01  5.6260E+00  4.8456E-01  8.8790E+00 -9.7519E-01 -1.5464E+00 -8.1506E-01 -3.7214E-01 -2.1283E-01 -6.8355E-01
            -1.0378E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1706.97972730114        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  1.0165E+00  1.4416E+00  8.2774E-01  7.6189E-01  1.1452E+00  8.6315E-01  9.3390E-01  1.7508E+00  1.2541E+00  5.0487E-01
             1.0556E+00
 PARAMETER:  1.1637E-01  4.6573E-01 -8.9055E-02 -1.7195E-01  2.3559E-01 -4.7162E-02  3.1613E-02  6.6007E-01  3.2645E-01 -5.8346E-01
             1.5414E-01
 GRADIENT:  -2.2480E-01  7.3382E+00  2.4746E+00  6.2217E+00 -5.2982E+00  2.5650E+00 -2.1146E+00 -7.2034E-01  2.2334E-01  3.8978E-01
            -6.8527E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1707.05373609338        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      891
 NPARAMETR:  1.0173E+00  1.4665E+00  8.0710E-01  7.4092E-01  1.1530E+00  8.5350E-01  9.1929E-01  1.7773E+00  1.2827E+00  5.0613E-01
             1.0564E+00
 PARAMETER:  1.1711E-01  4.8286E-01 -1.1431E-01 -1.9987E-01  2.4234E-01 -5.8410E-02  1.5851E-02  6.7510E-01  3.4893E-01 -5.8096E-01
             1.5482E-01
 GRADIENT:   1.8251E+00  5.1951E-01  1.2805E+00  3.2079E+00 -2.1914E+00 -1.8070E+00 -2.1066E+00 -2.8958E-01  9.1987E-01  2.1646E-01
             5.9386E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1707.08196584569        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:     1051
 NPARAMETR:  1.0161E+00  1.4683E+00  8.0484E-01  7.3883E-01  1.1536E+00  8.5738E-01  9.2639E-01  1.7812E+00  1.2780E+00  5.0407E-01
             1.0562E+00
 PARAMETER:  1.1598E-01  4.8413E-01 -1.1711E-01 -2.0269E-01  2.4290E-01 -5.3879E-02  2.3536E-02  6.7730E-01  3.4529E-01 -5.8505E-01
             1.5469E-01
 GRADIENT:  -1.6066E+00 -3.0470E-01  1.1119E+00  2.2672E+00 -1.0644E+00 -4.3239E-02 -1.1338E+00 -8.6672E-02  5.3650E-01  1.7400E-01
            -8.0708E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1707.09268005514        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:     1211
 NPARAMETR:  1.0167E+00  1.4683E+00  8.0386E-01  7.3866E-01  1.1523E+00  8.5679E-01  9.3793E-01  1.7752E+00  1.2694E+00  4.9915E-01
             1.0572E+00
 PARAMETER:  1.1660E-01  4.8414E-01 -1.1833E-01 -2.0292E-01  2.4174E-01 -5.4558E-02  3.5916E-02  6.7390E-01  3.3858E-01 -5.9486E-01
             1.5559E-01
 GRADIENT:   2.6759E-01  9.7524E-01  1.7544E+00  1.3870E+00 -1.5331E+00 -3.0574E-01  2.0529E-01 -1.3573E-01  7.3060E-02  1.1290E-01
             7.4631E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1707.10176641648        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:     1378
 NPARAMETR:  1.0170E+00  1.4679E+00  8.0006E-01  7.3763E-01  1.1524E+00  8.5751E-01  9.3690E-01  1.7722E+00  1.2699E+00  4.9750E-01
             1.0573E+00
 PARAMETER:  1.1690E-01  4.8383E-01 -1.2307E-01 -2.0431E-01  2.4183E-01 -5.3723E-02  3.4826E-02  6.7221E-01  3.3892E-01 -5.9816E-01
             1.5570E-01
 GRADIENT:  -4.3391E+04 -1.0489E+04 -4.1196E+04 -2.4839E+04  2.0981E+04 -6.1504E-02 -5.1400E-03  7.4606E+03 -6.2468E-03 -1.2289E-02
             8.9122E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1378
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5527E-03 -1.7042E-02 -3.0433E-02  1.5938E-02 -3.7380E-02
 SE:             2.9830E-02  2.2976E-02  1.6983E-02  2.2992E-02  1.3448E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5849E-01  4.5824E-01  7.3131E-02  4.8819E-01  5.4432E-03

 ETASHRINKSD(%)  6.4098E-02  2.3029E+01  4.3106E+01  2.2975E+01  5.4947E+01
 ETASHRINKVR(%)  1.2815E-01  4.0755E+01  6.7630E+01  4.0671E+01  7.9702E+01
 EBVSHRINKSD(%)  6.4641E-01  2.3200E+01  4.1964E+01  2.3554E+01  5.5718E+01
 EBVSHRINKVR(%)  1.2886E+00  4.1018E+01  6.6318E+01  4.1560E+01  8.0391E+01
 RELATIVEINF(%)  9.8515E+01  2.3296E+00  1.9304E+00  2.5331E+00  4.8006E+00
 EPSSHRINKSD(%)  4.2966E+01
 EPSSHRINKVR(%)  6.7472E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1707.1017664164804     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -971.95093985274218     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.07
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.52
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1707.102       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.47E+00  8.00E-01  7.38E-01  1.15E+00  8.58E-01  9.37E-01  1.77E+00  1.27E+00  4.97E-01  1.06E+00
 


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
+        8.97E+06
 
 TH 2
+       -6.75E+01  6.69E+05
 
 TH 3
+        1.08E+07 -1.49E+03  1.31E+07
 
 TH 4
+        7.08E+06  1.54E+03  8.55E+06  5.59E+06
 
 TH 5
+        1.42E+02 -5.04E+02  3.81E+03 -2.99E+03  1.63E+06
 
 TH 6
+       -2.58E+02 -4.46E+01 -3.10E+02 -2.07E+02  1.08E+02  2.64E+02
 
 TH 7
+       -1.29E+03 -2.01E+02 -1.56E+03 -1.03E+03  5.47E+02 -3.26E-01  8.51E+01
 
 TH 8
+        3.60E+01  2.49E+05  9.25E+02 -7.26E+02 -3.86E+05  2.61E+01  1.36E+02  8.74E+04
 
 TH 9
+        2.59E+03  4.21E+02  3.11E+03  2.08E+03 -1.12E+03 -2.75E-01  1.93E+01 -2.47E+02  4.73E+01
 
 TH10
+        9.71E+02  1.66E+02  1.17E+03  7.52E+02 -5.12E+02  4.64E-01  1.11E+01 -8.85E+01  2.66E+00  1.43E+06
 
 TH11
+        3.17E+03  5.27E+02  3.84E+03  2.50E+03 -1.41E+03  3.37E+00  8.22E+06 -3.09E+02 -1.79E+06 -2.59E+06  4.68E+06
 
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
 #CPUT: Total CPU Time in Seconds,       25.650
Stop Time:
Wed Sep 29 16:06:11 CDT 2021
