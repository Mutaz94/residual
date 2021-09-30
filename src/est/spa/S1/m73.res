Wed Sep 29 14:32:07 CDT 2021
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
$DATA ../../../../data/spa/S1/dat73.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1693.16372916404        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9414E+02  1.7355E+01  4.3150E+01 -1.3294E+01 -7.6991E+01  8.4287E+01 -5.8768E+00 -1.4962E+01 -1.1011E+01  3.7337E+01
            -2.8495E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1706.58756846954        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      175
 NPARAMETR:  1.0149E+00  1.0430E+00  1.0049E+00  1.0049E+00  1.0897E+00  7.6191E-01  1.0673E+00  1.0927E+00  1.0736E+00  7.9891E-01
             1.0217E+00
 PARAMETER:  1.1475E-01  1.4214E-01  1.0492E-01  1.0489E-01  1.8588E-01 -1.7193E-01  1.6514E-01  1.8869E-01  1.7105E-01 -1.2450E-01
             1.2143E-01
 GRADIENT:  -1.2350E+00 -2.7523E+01 -7.0502E+00 -1.0102E+01  2.3369E+01 -5.2518E+01 -6.6877E+00 -1.4867E+01  4.7473E+00  1.5119E+01
             3.5212E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1713.02436660448        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      353
 NPARAMETR:  1.0274E+00  1.2384E+00  9.2522E-01  8.8774E-01  1.0939E+00  8.9473E-01  1.1608E+00  1.8750E+00  1.1310E+00  3.2081E-01
             1.1165E+00
 PARAMETER:  1.2701E-01  3.1385E-01  2.2277E-02 -1.9081E-02  1.8975E-01 -1.1239E-02  2.4907E-01  7.2860E-01  2.2307E-01 -1.0369E+00
             2.1020E-01
 GRADIENT:   2.9374E+01 -8.9995E+00 -9.9510E+00  1.6275E+00 -8.4797E+00  1.5030E+01  1.5401E+01  1.4821E+01  1.0857E+01 -1.9209E-01
             3.2903E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1717.29972072213        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      536
 NPARAMETR:  1.0156E+00  1.3731E+00  8.6577E-01  8.1833E-01  1.1321E+00  8.5199E-01  9.8988E-01  1.6852E+00  1.1857E+00  4.4113E-01
             1.0242E+00
 PARAMETER:  1.1549E-01  4.1706E-01 -4.4141E-02 -1.0050E-01  2.2405E-01 -6.0185E-02  8.9824E-02  6.2186E-01  2.7036E-01 -7.1841E-01
             1.2390E-01
 GRADIENT:  -3.9025E+00  1.6754E+01  6.5171E-01  1.6863E+01  1.8366E+00 -3.9962E+00  1.3540E+00 -8.4113E-01  7.7875E-02 -2.8311E+00
            -1.3713E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1717.90703237650        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      718             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0136E+00  1.4195E+00  9.0102E-01  7.7704E-01  1.1859E+00  8.5976E-01  9.2242E-01  1.7868E+00  1.2445E+00  5.6877E-01
             1.0137E+00
 PARAMETER:  1.1354E-01  4.5028E-01 -4.2242E-03 -1.5226E-01  2.7046E-01 -5.1098E-02  1.9244E-02  6.8045E-01  3.1875E-01 -4.6427E-01
             1.1365E-01
 GRADIENT:   4.6754E+02  3.0143E+02  2.8350E+00  6.0576E+01  1.3215E+01  3.1455E+01  4.8397E+00  5.7218E-01  1.4448E+01  9.0028E-01
            -4.5159E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1717.91445771015        NO. OF FUNC. EVALS.: 143
 CUMULATIVE NO. OF FUNC. EVALS.:      861
 NPARAMETR:  1.0142E+00  1.4195E+00  9.0124E-01  7.7641E-01  1.1875E+00  8.6069E-01  9.2213E-01  1.7869E+00  1.2465E+00  5.6850E-01
             1.0137E+00
 PARAMETER:  1.1411E-01  4.5027E-01 -3.9868E-03 -1.5308E-01  2.7182E-01 -5.0025E-02  1.8936E-02  6.8048E-01  3.2035E-01 -4.6475E-01
             1.1365E-01
 GRADIENT:  -7.4322E+00 -1.2088E+00  1.2850E+00  1.0804E+00  2.0596E+00  7.5169E-02  1.4526E-02 -2.0971E+00 -1.0456E+00  6.2851E-03
            -1.4975E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1717.95862904934        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1039
 NPARAMETR:  1.0179E+00  1.4195E+00  8.8614E-01  7.7359E-01  1.1802E+00  8.6092E-01  9.1788E-01  1.7870E+00  1.2569E+00  5.5774E-01
             1.0171E+00
 PARAMETER:  1.1772E-01  4.5028E-01 -2.0884E-02 -1.5671E-01  2.6566E-01 -4.9749E-02  1.4313E-02  6.8052E-01  3.2861E-01 -4.8386E-01
             1.1700E-01
 GRADIENT:   3.3116E+00 -5.0120E+00  4.5220E-01 -9.9736E-02 -1.2530E-01  2.2534E-01 -2.4216E-01 -1.0582E+00  3.5611E-01  7.9694E-02
             1.4861E-01

0ITERATION NO.:   31    OBJECTIVE VALUE:  -1717.95862904934        NO. OF FUNC. EVALS.:  27
 CUMULATIVE NO. OF FUNC. EVALS.:     1066
 NPARAMETR:  1.0180E+00  1.4186E+00  8.8625E-01  7.7375E-01  1.1806E+00  8.6084E-01  9.1880E-01  1.7854E+00  1.2574E+00  5.5746E-01
             1.0173E+00
 PARAMETER:  1.1772E-01  4.5028E-01 -2.0884E-02 -1.5671E-01  2.6566E-01 -4.9749E-02  1.4313E-02  6.8052E-01  3.2861E-01 -4.8386E-01
             1.1700E-01
 GRADIENT:  -4.3532E+04  1.1373E+04 -5.1230E+04 -3.2716E+04 -1.9287E+04  1.4427E-01 -2.1972E-01  7.4436E+03 -1.5603E+04  7.6285E-02
            -4.3810E+04
 NUMSIGDIG:         2.3         2.3         2.3         2.3         2.3         2.4         1.4         2.3         2.3         2.4
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1066
 NO. OF SIG. DIGITS IN FINAL EST.:  1.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.7909E-04 -1.8623E-02 -3.1600E-02  1.7047E-02 -4.0900E-02
 SE:             2.9827E-02  2.1770E-02  1.7491E-02  2.3509E-02  1.4683E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8184E-01  3.9230E-01  7.0821E-02  4.6838E-01  5.3432E-03

 ETASHRINKSD(%)  7.6295E-02  2.7067E+01  4.1402E+01  2.1243E+01  5.0810E+01
 ETASHRINKVR(%)  1.5253E-01  4.6807E+01  6.5663E+01  3.7973E+01  7.5804E+01
 EBVSHRINKSD(%)  5.9555E-01  2.7083E+01  4.0887E+01  2.1968E+01  5.1485E+01
 EBVSHRINKVR(%)  1.1876E+00  4.6831E+01  6.5057E+01  3.9111E+01  7.6463E+01
 RELATIVEINF(%)  9.8506E+01  1.9285E+00  2.2855E+00  2.5417E+00  5.9468E+00
 EPSSHRINKSD(%)  4.3575E+01
 EPSSHRINKVR(%)  6.8162E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1717.9586290493378     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -982.80780248559961     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.80
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     7.68
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1717.959       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.42E+00  8.86E-01  7.74E-01  1.18E+00  8.61E-01  9.18E-01  1.79E+00  1.26E+00  5.58E-01  1.02E+00
 


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
+        8.92E+06
 
 TH 2
+        5.84E+01  6.28E+05
 
 TH 3
+       -8.46E+03 -2.26E+06  1.63E+07
 
 TH 4
+        6.93E+03 -9.78E+02  9.26E+03  8.73E+06
 
 TH 5
+       -1.50E+03  7.65E+01  4.61E+06  2.79E+03  1.30E+06
 
 TH 6
+       -2.82E+02  5.11E+01 -3.77E+02 -2.79E+02 -1.09E+02  2.62E+02
 
 TH 7
+       -1.21E+03  2.38E+02 -1.63E+03  1.15E+07 -4.69E+02 -2.32E-01  1.52E+07
 
 TH 8
+        3.62E+01 -1.74E+02  8.04E+02 -6.70E+02  1.37E+02  2.78E+01  1.26E+02  8.47E+04
 
 TH 9
+        2.59E+03 -4.97E+02  3.50E+06  2.05E+03  9.90E+05 -8.13E+01 -3.29E+02 -2.44E+02  7.52E+05
 
 TH10
+        5.34E+02 -9.51E+01  7.22E+02  3.92E+06  1.08E+02  5.51E+06  5.17E+06 -4.41E+01  1.57E+02  1.76E+06
 
 TH11
+        8.99E+06 -6.57E+02  1.21E+07  6.98E+03 -1.55E+03 -2.78E+02 -1.21E+03 -3.35E+02  2.61E+03  5.65E+02  9.05E+06
 
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
 #CPUT: Total CPU Time in Seconds,       21.368
Stop Time:
Wed Sep 29 14:32:33 CDT 2021
