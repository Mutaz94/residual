Wed Sep 29 22:59:09 CDT 2021
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
$DATA ../../../../data/spa1/A2/dat2.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m2.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1194.14170883493        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6555E+02  6.0257E+01  4.5333E+01  6.6690E+01  1.0223E+02  4.2868E+01 -4.1093E+01 -5.8811E+00  1.4696E+01 -8.3539E+01
            -1.6691E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1716.28686057800        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0284E+00  8.9850E-01  1.0174E+00  1.0900E+00  9.5704E-01  1.0191E+00  1.0739E+00  7.1280E-01  8.5064E-01  1.3593E+00
             1.9961E+00
 PARAMETER:  1.2797E-01 -7.0314E-03  1.1726E-01  1.8620E-01  5.6088E-02  1.1894E-01  1.7129E-01 -2.3856E-01 -6.1769E-02  4.0698E-01
             7.9118E-01
 GRADIENT:   2.2520E+02  1.4748E+01 -1.7294E+01  5.2565E+01  1.3834E+01  2.5768E+01 -1.1495E+01  7.2498E+00 -1.1723E+01  3.1699E+01
            -1.0601E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1729.16982214136        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  9.9594E-01  8.0289E-01  4.4648E-01  1.0756E+00  5.6134E-01  1.0520E+00  9.3617E-01  5.4274E-02  9.7619E-01  7.8417E-01
             2.0106E+00
 PARAMETER:  9.5934E-02 -1.1954E-01 -7.0635E-01  1.7286E-01 -4.7742E-01  1.5070E-01  3.4046E-02 -2.8137E+00  7.5903E-02 -1.4313E-01
             7.9841E-01
 GRADIENT:   1.0819E+02  2.4680E+00 -3.7970E+01  6.7525E+01  1.1527E+02  4.0513E+01 -7.9468E+00  8.9159E-02  1.4034E+01  4.4847E+00
            -7.5510E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1735.14034414190        NO. OF FUNC. EVALS.: 141
 CUMULATIVE NO. OF FUNC. EVALS.:      299
 NPARAMETR:  9.8829E-01  7.1210E-01  4.1740E-01  1.1597E+00  4.9386E-01  9.9704E-01  1.1444E+00  5.9380E-02  8.4411E-01  6.8225E-01
             2.0459E+00
 PARAMETER:  8.8226E-02 -2.3954E-01 -7.7370E-01  2.4819E-01 -6.0551E-01  9.7035E-02  2.3486E-01 -2.7238E+00 -6.9476E-02 -2.8236E-01
             8.1586E-01
 GRADIENT:  -6.6278E+00  4.5679E+01 -4.8564E+01  1.3746E+02  5.4226E+01  8.6016E+00 -5.9349E+00  9.3336E-02 -1.9465E+01  1.3035E+00
            -6.5022E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1747.55485810748        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      476
 NPARAMETR:  9.6499E-01  5.0462E-01  3.6852E-01  1.1997E+00  3.9018E-01  1.0161E+00  1.2837E+00  1.0000E-02  8.3805E-01  5.7510E-01
             2.2213E+00
 PARAMETER:  6.4367E-02 -5.8395E-01 -8.9825E-01  2.8205E-01 -8.4115E-01  1.1598E-01  3.4973E-01 -4.5070E+00 -7.6679E-02 -4.5321E-01
             8.9810E-01
 GRADIENT:  -5.8147E+01  3.2388E+01 -5.5531E-01  7.6462E+01 -2.2393E+01  1.4922E+01 -5.6381E+00  1.4562E-03 -1.4769E+01  8.6585E-01
             1.9188E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1753.97857689375        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      651
 NPARAMETR:  9.8490E-01  3.2671E-01  3.8220E-01  1.2349E+00  3.6558E-01  9.6283E-01  1.9849E+00  1.0000E-02  8.5606E-01  5.7467E-01
             2.1660E+00
 PARAMETER:  8.4790E-02 -1.0187E+00 -8.6182E-01  3.1099E-01 -9.0627E-01  6.2121E-02  7.8557E-01 -5.6974E+00 -5.5410E-02 -4.5395E-01
             8.7289E-01
 GRADIENT:  -1.5530E+00  3.1919E+00  1.1445E+00 -3.4309E+00 -4.0868E+00  3.0254E-01  2.0576E+00  0.0000E+00  2.8242E+00 -9.2210E-02
             1.0027E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1754.62314469482        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      826
 NPARAMETR:  9.7686E-01  1.6838E-01  4.7049E-01  1.3540E+00  3.9707E-01  9.5703E-01  2.9792E+00  1.0000E-02  8.1071E-01  6.6164E-01
             2.1786E+00
 PARAMETER:  7.6593E-02 -1.6815E+00 -6.5398E-01  4.0306E-01 -8.2365E-01  5.6081E-02  1.1916E+00 -6.9723E+00 -1.0984E-01 -3.1303E-01
             8.7867E-01
 GRADIENT:  -1.3669E+00  2.3082E+00 -3.2597E+00  7.1813E+00  2.5282E+00  1.0729E-01  2.3187E+00  0.0000E+00 -1.2942E+00  4.9655E-01
             8.1628E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1755.50171882505        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1004
 NPARAMETR:  9.7339E-01  8.8161E-02  4.5783E-01  1.3788E+00  3.7865E-01  9.5416E-01  4.2618E+00  1.0000E-02  8.1584E-01  6.2813E-01
             2.1716E+00
 PARAMETER:  7.3027E-02 -2.3286E+00 -6.8127E-01  4.2118E-01 -8.7113E-01  5.3079E-02  1.5497E+00 -9.0868E+00 -1.0353E-01 -3.6501E-01
             8.7549E-01
 GRADIENT:   6.3845E-02  2.2655E+00  1.4122E+01  1.0044E+01 -2.0899E+01 -8.1703E-01  1.2393E+00  0.0000E+00  2.2599E+00 -2.9091E+00
            -3.3395E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1755.79714589796        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:     1166
 NPARAMETR:  9.7240E-01  7.0916E-02  4.5806E-01  1.3809E+00  3.7974E-01  9.5618E-01  4.7694E+00  1.0000E-02  8.0058E-01  6.4072E-01
             2.1754E+00
 PARAMETER:  7.2014E-02 -2.5463E+00 -6.8076E-01  4.2277E-01 -8.6826E-01  5.5192E-02  1.6622E+00 -9.7795E+00 -1.2242E-01 -3.4516E-01
             8.7722E-01
 GRADIENT:   6.4600E+00  3.4777E+01 -3.4434E+01 -5.8154E+01  5.1001E+01 -2.1830E+00  6.7416E+01  0.0000E+00 -3.2632E+01 -1.8929E+01
            -1.2189E+01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1166
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.6827E-03  2.8326E-02 -4.2165E-05 -1.7444E-02  1.0673E-03
 SE:             2.9316E-02  1.2417E-02  2.2551E-04  2.7163E-02  2.0645E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5423E-01  2.2530E-02  8.5168E-01  5.2075E-01  9.5877E-01

 ETASHRINKSD(%)  1.7883E+00  5.8402E+01  9.9245E+01  9.0005E+00  3.0838E+01
 ETASHRINKVR(%)  3.5446E+00  8.2696E+01  9.9994E+01  1.7191E+01  5.2165E+01
 EBVSHRINKSD(%)  1.5934E+00  7.2419E+01  9.9149E+01  7.5356E+00  2.7605E+01
 EBVSHRINKVR(%)  3.1615E+00  9.2393E+01  9.9993E+01  1.4503E+01  4.7589E+01
 RELATIVEINF(%)  9.5927E+01  3.9595E+00  4.0724E-04  3.1658E+01  3.0203E+00
 EPSSHRINKSD(%)  2.7434E+01
 EPSSHRINKVR(%)  4.7342E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1755.7971458979596     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -836.85861269328689     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.72
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     9.49
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1755.797       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.72E-01  7.09E-02  4.58E-01  1.38E+00  3.80E-01  9.56E-01  4.77E+00  1.00E-02  8.01E-01  6.41E-01  2.18E+00
 


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
+        1.71E+05
 
 TH 2
+       -2.15E+01  7.98E+04
 
 TH 3
+       -6.21E+01 -9.10E+03  4.33E+04
 
 TH 4
+       -1.48E+02 -3.45E+03  1.14E+04  8.65E+03
 
 TH 5
+        6.09E+01  8.69E+03 -2.75E+04 -3.63E+03  3.68E+04
 
 TH 6
+        1.97E+02 -1.44E+02  6.48E+01  9.81E+01 -2.03E+01  1.77E+05
 
 TH 7
+       -8.27E-01 -5.32E+02 -1.34E+02 -2.08E+01  3.89E+02 -1.56E+00  5.30E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.69E+02  1.30E+03 -7.36E+02 -4.44E+02  4.89E+02 -7.28E+01  1.98E+01  0.00E+00  1.67E+05
 
 TH10
+        2.79E+01 -3.35E+03  7.37E+03  3.38E+03 -9.01E+02  2.01E+01 -3.75E+01  0.00E+00 -5.85E+02  3.35E+04
 
 TH11
+       -2.11E+01 -4.11E+02  3.51E+03  9.23E+02  1.54E+03  1.03E+01 -1.32E-02  0.00E+00 -4.42E+01  2.06E+02  6.42E+02
 
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
 #CPUT: Total CPU Time in Seconds,       28.204
Stop Time:
Wed Sep 29 22:59:38 CDT 2021