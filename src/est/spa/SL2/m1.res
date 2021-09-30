Wed Sep 29 15:31:52 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat1.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m1.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1657.53967399359        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3038E+02  2.4558E+01  3.7046E+01  1.8235E+01 -4.5857E+01  4.9471E+01  2.3343E+00 -2.0873E+00  1.2816E+01 -2.2519E+01
            -5.4336E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1660.97029859946        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      175
 NPARAMETR:  9.9960E-01  1.0299E+00  9.5574E-01  9.9510E-01  1.0627E+00  9.8476E-01  1.0101E+00  9.9316E-01  9.1941E-01  1.2725E+00
             1.0345E+00
 PARAMETER:  9.9604E-02  1.2943E-01  5.4729E-02  9.5087E-02  1.6078E-01  8.4643E-02  1.1004E-01  9.3132E-02  1.5979E-02  3.4102E-01
             1.3389E-01
 GRADIENT:  -2.5391E+00 -2.7051E+01 -1.7308E+01 -2.9550E+01 -2.8716E+00 -3.3357E+00  5.3124E-01  5.8356E+00 -8.6539E+00  1.0975E+01
             1.3750E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1662.59255912016        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      354
 NPARAMETR:  1.0022E+00  1.2919E+00  1.0578E+00  8.6160E-01  1.2728E+00  9.8948E-01  7.7042E-01  1.1233E+00  1.1652E+00  1.5385E+00
             1.0109E+00
 PARAMETER:  1.0222E-01  3.5613E-01  1.5619E-01 -4.8969E-02  3.4126E-01  8.9427E-02 -1.6083E-01  2.1628E-01  2.5285E-01  5.3081E-01
             1.1081E-01
 GRADIENT:   3.6912E+00  1.4555E+01  7.0291E+00  1.2917E+01 -8.3454E+00 -1.3798E+00  2.1808E+00 -6.1849E+00  2.3574E+00  1.7247E+01
             4.4426E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1664.27236349464        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      530
 NPARAMETR:  1.0002E+00  1.3113E+00  1.1490E+00  8.5083E-01  1.3128E+00  9.9693E-01  7.0798E-01  1.5204E+00  1.1886E+00  1.4125E+00
             9.9690E-01
 PARAMETER:  1.0017E-01  3.7099E-01  2.3887E-01 -6.1548E-02  3.7213E-01  9.6922E-02 -2.4533E-01  5.1899E-01  2.7277E-01  4.4537E-01
             9.6893E-02
 GRADIENT:  -3.3977E-01  1.1694E+01  9.6921E-01  1.5221E+01 -7.2411E-01  1.4806E+00 -4.4252E-01 -3.4639E-01  5.9521E-01 -9.0913E-02
            -1.4685E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1664.80306346044        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  1.0017E+00  1.5888E+00  9.5905E-01  6.6117E-01  1.3771E+00  9.9478E-01  6.6993E-01  1.6342E+00  1.4023E+00  1.4235E+00
             1.0008E+00
 PARAMETER:  1.0170E-01  5.6298E-01  5.8189E-02 -3.1374E-01  4.2000E-01  9.4765E-02 -3.0058E-01  5.9118E-01  4.3811E-01  4.5310E-01
             1.0082E-01
 GRADIENT:   2.6254E-01  1.7241E+01  7.9627E+00  4.4662E+00 -9.3231E+00  1.2955E-01 -2.2305E-01 -1.7807E+00 -2.0955E+00 -9.5776E-01
            -1.7455E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1665.15663228937        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      888
 NPARAMETR:  1.0027E+00  1.8071E+00  7.2896E-01  5.1747E-01  1.4197E+00  9.9202E-01  6.4797E-01  1.5698E+00  1.6546E+00  1.4455E+00
             1.0011E+00
 PARAMETER:  1.0269E-01  6.9170E-01 -2.1614E-01 -5.5880E-01  4.5043E-01  9.1989E-02 -3.3390E-01  5.5097E-01  6.0358E-01  4.6845E-01
             1.0112E-01
 GRADIENT:   5.0049E-01  2.8096E+01  7.7224E+00  6.3530E+00 -1.1211E+01 -1.4155E+00 -1.3842E+00 -1.6678E+00 -2.4094E+00  1.0510E+00
            -6.3333E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1665.63568353359        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1063
 NPARAMETR:  1.0034E+00  2.0279E+00  4.5306E-01  3.6716E-01  1.4577E+00  9.9187E-01  6.4848E-01  1.2351E+00  2.0267E+00  1.4380E+00
             1.0022E+00
 PARAMETER:  1.0341E-01  8.0701E-01 -6.9173E-01 -9.0196E-01  4.7687E-01  9.1834E-02 -3.3312E-01  3.1112E-01  8.0641E-01  4.6326E-01
             1.0218E-01
 GRADIENT:   5.0125E-01  2.1444E+01  2.1720E+00  7.1600E+00 -7.4470E+00 -2.0244E+00 -1.6953E-01  1.1037E-01 -8.9773E-01  2.2162E+00
             2.6095E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1665.86028596590        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1241
 NPARAMETR:  1.0027E+00  2.0328E+00  4.2257E-01  3.5166E-01  1.4770E+00  9.9929E-01  6.4762E-01  1.1819E+00  2.0587E+00  1.4295E+00
             1.0008E+00
 PARAMETER:  1.0267E-01  8.0941E-01 -7.6140E-01 -9.4509E-01  4.8998E-01  9.9287E-02 -3.3445E-01  2.6710E-01  8.2208E-01  4.5730E-01
             1.0079E-01
 GRADIENT:   4.5391E+02  1.1511E+03  4.8661E-01  9.4011E+01  2.7749E+01  5.0988E+01  2.0664E+01  7.8864E-01  2.7062E+01  6.3975E+00
             9.6266E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1665.90317911802        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:     1402            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0030E+00  2.0319E+00  4.2976E-01  3.5136E-01  1.4697E+00  9.9651E-01  6.4763E-01  1.1722E+00  2.0576E+00  1.4286E+00
             1.0008E+00
 PARAMETER:  1.0299E-01  8.0899E-01 -7.4453E-01 -9.4594E-01  4.8508E-01  9.6504E-02 -3.3443E-01  2.5890E-01  8.2156E-01  4.5671E-01
             1.0082E-01
 GRADIENT:   4.5630E+02  1.1537E+03  2.8138E+00  9.2368E+01  2.2320E+01  4.9887E+01  2.0715E+01  4.6590E-01  2.6624E+01  6.5786E+00
             8.3235E-01

0ITERATION NO.:   43    OBJECTIVE VALUE:  -1665.90596272325        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:     1500
 NPARAMETR:  1.0028E+00  2.0324E+00  4.2961E-01  3.5088E-01  1.4696E+00  9.9745E-01  6.4756E-01  1.1581E+00  2.0515E+00  1.4273E+00
             1.0009E+00
 PARAMETER:  1.0277E-01  8.0923E-01 -7.4487E-01 -9.4732E-01  4.8499E-01  9.6446E-02 -3.3455E-01  2.4676E-01  8.2156E-01  4.5578E-01
             1.0080E-01
 GRADIENT:   1.1898E+00  2.7347E+00  4.2450E+01 -2.0300E+01  3.9609E+00 -2.6837E-01 -4.7699E-01 -1.1006E+02  6.4810E+03  3.1182E+00
            -3.9831E-02
 NUMSIGDIG:         7.2         6.0         4.8         5.0         6.0         1.9         7.1         4.9         2.3         6.2
                    3.0

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1500
 NO. OF SIG. DIGITS IN FINAL EST.:  1.9

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5276E-03 -5.3541E-02 -2.2089E-02  4.3290E-02 -5.7114E-02
 SE:             2.9918E-02  2.2660E-02  7.1062E-03  2.2315E-02  2.2248E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5928E-01  1.8140E-02  1.8811E-03  5.2389E-02  1.0256E-02

 ETASHRINKSD(%)  1.0000E-10  2.4085E+01  7.6193E+01  2.5241E+01  2.5465E+01
 ETASHRINKVR(%)  1.0000E-10  4.2369E+01  9.4332E+01  4.4111E+01  4.4445E+01
 EBVSHRINKSD(%)  4.3525E-01  2.1580E+01  7.8514E+01  2.8944E+01  2.1088E+01
 EBVSHRINKVR(%)  8.6860E-01  3.8503E+01  9.5384E+01  4.9511E+01  3.7728E+01
 RELATIVEINF(%)  9.9105E+01  6.5325E+00  8.2574E-01  5.4948E+00  2.8967E+01
 EPSSHRINKSD(%)  4.5061E+01
 EPSSHRINKVR(%)  6.9817E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1665.9059627232509     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -930.75513615951274     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.91
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.93
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1665.906       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  2.03E+00  4.30E-01  3.51E-01  1.47E+00  9.96E-01  6.48E-01  1.16E+00  2.06E+00  1.43E+00  1.00E+00
 


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
+        2.53E+07
 
 TH 2
+       -7.61E+00  9.96E+04
 
 TH 3
+        6.26E+00  1.35E+02  2.62E+06
 
 TH 4
+       -1.23E+01  3.68E+02 -2.67E+02  2.43E+06
 
 TH 5
+       -1.83E+06 -6.91E+01 -9.03E+01  9.59E+01  5.28E+05
 
 TH 6
+       -1.37E+00 -1.33E+00  4.29E+00 -1.82E+00 -3.22E-01  1.98E+02
 
 TH 7
+        1.37E+00 -1.70E+01 -1.54E+00 -1.50E+01 -1.38E+01 -9.43E-01  5.72E+06
 
 TH 8
+       -3.84E+00 -8.97E+00 -6.02E+01  4.10E+01 -3.01E-01 -5.14E+00  4.16E+00  3.28E+06
 
 TH 9
+        7.76E+05 -8.19E+01 -2.49E+05 -2.41E+05 -1.12E+05  8.02E+05  3.69E+05  2.79E+05  4.63E+04
 
 TH10
+        3.56E-01 -1.04E+01 -1.55E+01  1.17E+00 -3.56E+01  3.72E-01  4.28E+00  7.35E-01  1.23E+05  6.34E+05
 
 TH11
+       -8.11E+00 -1.70E+01 -1.13E+01 -3.70E+00  3.47E-01  2.75E+00  8.38E+00  7.55E+00  7.92E+05  8.25E+00  1.32E+07
 
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
 #CPUT: Total CPU Time in Seconds,       27.892
Stop Time:
Wed Sep 29 15:32:22 CDT 2021
