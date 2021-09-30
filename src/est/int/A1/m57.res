Tue Sep 28 21:58:34 CDT 2021
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
$DATA ../../../../data/int/A1/dat57.csv ignore=@
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
Current Date:       28 SEP 2021
Days until program expires : 201
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
 (2E4.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m57.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3065.21627805478        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.6520E+02  3.2559E+01  6.4158E+01  6.7136E+01  1.5887E+02  6.9613E+01 -7.9647E+01 -2.4446E+01  3.5396E+01 -2.8783E+01
            -1.6147E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3418.80009753535        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0053E+00  9.6380E-01  8.9735E-01  1.0551E+00  8.7695E-01  8.3606E-01  1.1075E+00  8.3435E-01  7.9387E-01  8.8798E-01
             1.6655E+00
 PARAMETER:  1.0527E-01  6.3128E-02 -8.3041E-03  1.5360E-01 -3.1300E-02 -7.9056E-02  2.0209E-01 -8.1100E-02 -1.3083E-01 -1.8810E-02
             6.1015E-01
 GRADIENT:   6.5793E+01  2.6939E+01 -1.6747E+00  4.1518E+01  1.1600E+01 -2.0591E+01 -8.0012E+00  2.2437E+01 -7.6801E+00  8.2767E+00
             5.0684E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3432.26015999717        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      179
 NPARAMETR:  1.0044E+00  6.4194E-01  6.2042E-01  1.2111E+00  5.9393E-01  8.7846E-01  1.3948E+00  3.9190E-01  8.3459E-01  6.3029E-01
             1.5774E+00
 PARAMETER:  1.0440E-01 -3.4326E-01 -3.7737E-01  2.9155E-01 -4.2099E-01 -2.9584E-02  4.3277E-01 -8.3675E-01 -8.0811E-02 -3.6158E-01
             5.5579E-01
 GRADIENT:  -8.6754E+01 -2.1027E+01  1.6787E+01  8.3898E+01 -3.2756E+00 -1.3159E+01 -4.7605E-01  1.0108E+01 -8.8752E+00  4.9450E+00
            -3.5674E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3439.52587587367        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      356
 NPARAMETR:  1.0305E+00  7.1099E-01  6.5473E-01  1.1710E+00  6.4098E-01  8.7122E-01  1.3084E+00  1.2322E-01  9.0097E-01  6.5738E-01
             1.6189E+00
 PARAMETER:  1.3008E-01 -2.4110E-01 -3.2354E-01  2.5783E-01 -3.4476E-01 -3.7862E-02  3.6884E-01 -1.9938E+00 -4.2803E-03 -3.1949E-01
             5.8172E-01
 GRADIENT:  -1.4483E+01 -2.6376E+00 -3.5411E+00  2.7167E+01  9.1751E+00 -1.3618E+01 -7.8746E+00  8.5200E-01  1.7700E+01  2.5676E+00
             1.2556E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3441.14043793768        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      532
 NPARAMETR:  1.0352E+00  6.9914E-01  6.4051E-01  1.1601E+00  6.2704E-01  9.0177E-01  1.3828E+00  4.6475E-02  8.4834E-01  6.2622E-01
             1.6097E+00
 PARAMETER:  1.3457E-01 -2.5790E-01 -3.4549E-01  2.4855E-01 -3.6674E-01 -3.3910E-03  4.2411E-01 -2.9688E+00 -6.4471E-02 -3.6805E-01
             5.7607E-01
 GRADIENT:  -7.6378E-01  9.9528E-01  6.5169E-02 -4.5970E+00 -3.4890E+00  1.7364E-01 -1.8108E-03  1.1772E-01 -5.1281E-01 -1.2446E-01
             8.2455E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3441.20658950435        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      694
 NPARAMETR:  1.0355E+00  7.0499E-01  6.4768E-01  1.1599E+00  6.3386E-01  9.0167E-01  1.3784E+00  1.0000E-02  8.4889E-01  6.3208E-01
             1.6100E+00
 PARAMETER:  1.3486E-01 -2.4957E-01 -3.3436E-01  2.4830E-01 -3.5593E-01 -3.5048E-03  4.2095E-01 -4.6886E+00 -6.3831E-02 -3.5874E-01
             5.7621E-01
 GRADIENT:  -8.2807E-02 -1.9178E-01  1.0077E+00 -5.4936E-01 -7.5063E-01  1.3314E-01 -9.8738E-02  0.0000E+00  1.1252E-02 -4.0048E-02
             1.9904E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      694
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1159E-03 -4.1589E-03 -1.7592E-04  5.6859E-04 -7.7068E-03
 SE:             2.9700E-02  2.5321E-02  2.4118E-04  2.8077E-02  2.1713E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7003E-01  8.6954E-01  4.6573E-01  9.8384E-01  7.2263E-01

 ETASHRINKSD(%)  5.0264E-01  1.5170E+01  9.9192E+01  5.9396E+00  2.7259E+01
 ETASHRINKVR(%)  1.0028E+00  2.8038E+01  9.9993E+01  1.1526E+01  4.7087E+01
 EBVSHRINKSD(%)  7.6505E-01  1.4253E+01  9.9063E+01  6.2059E+00  2.8588E+01
 EBVSHRINKVR(%)  1.5242E+00  2.6474E+01  9.9991E+01  1.2027E+01  4.9003E+01
 RELATIVEINF(%)  9.8455E+01  2.3898E+01  1.6046E-03  6.5347E+01  6.2351E+00
 EPSSHRINKSD(%)  1.8701E+01
 EPSSHRINKVR(%)  3.3905E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3441.2065895043506     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1787.1172297359399     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.62
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    12.38
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3441.207       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  7.05E-01  6.48E-01  1.16E+00  6.34E-01  9.02E-01  1.38E+00  1.00E-02  8.49E-01  6.32E-01  1.61E+00
 


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
+        1.26E+03
 
 TH 2
+       -3.04E+00  8.70E+02
 
 TH 3
+        1.99E+00  6.40E+01  2.26E+03
 
 TH 4
+       -1.09E+01  1.35E+02 -1.72E+02  1.01E+03
 
 TH 5
+       -7.59E+00 -9.05E+02 -2.25E+03  3.83E+02  3.46E+03
 
 TH 6
+        4.20E+00 -1.52E+00  5.86E+00 -3.83E+00 -5.34E+00  2.36E+02
 
 TH 7
+        1.84E-01  1.90E+01  6.64E+00  8.46E+00 -1.04E+01  1.45E-02  5.29E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        3.30E+00 -1.02E+01  4.64E+01  1.20E+01 -1.13E+01  2.89E-02  2.67E+00  0.00E+00  2.14E+02
 
 TH10
+        7.28E-01 -1.07E+01 -1.11E+02 -1.18E+01  1.37E+01  4.27E-01  1.87E+01  0.00E+00 -2.93E-01  1.60E+02
 
 TH11
+       -1.30E+01 -1.77E+01 -3.74E+01 -1.48E+01  7.31E-02  2.38E+00  9.62E+00  0.00E+00  1.23E+01  2.43E+01  4.29E+02
 
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
 #CPUT: Total CPU Time in Seconds,       29.123
Stop Time:
Tue Sep 28 21:59:05 CDT 2021
