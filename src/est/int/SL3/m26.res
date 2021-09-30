Wed Sep 29 04:07:02 CDT 2021
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
$DATA ../../../../data/int/SL3/dat26.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      969
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

 TOT. NO. OF OBS RECS:      869
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
 RAW OUTPUT FILE (FILE): m26.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   225.735943311988        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1951E+02  7.4966E+01  1.9379E+02  1.5139E+02  1.7564E+02  4.9920E+01 -1.5540E+02 -4.2135E+02 -1.3422E+02 -5.9823E+01
            -7.1093E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2622.49649779035        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0211E+00  1.2265E+00  9.4872E-01  8.9504E-01  1.0712E+00  8.3843E-01  1.1245E+00  9.8252E-01  8.7778E-01  1.0540E+00
             2.8342E+00
 PARAMETER:  1.2092E-01  3.0415E-01  4.7357E-02 -1.0883E-02  1.6874E-01 -7.6230E-02  2.1735E-01  8.2363E-02 -3.0357E-02  1.5260E-01
             1.1418E+00
 GRADIENT:   7.9732E+01  3.4274E+01 -5.3536E+00  1.1797E+01 -1.2304E+01 -3.0098E+01  1.3559E+01  6.2405E+00 -4.1904E+00 -7.3782E+00
             8.3969E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2629.55394260677        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.0138E+00  1.3793E+00  1.2753E+00  8.2567E-01  1.2739E+00  8.8461E-01  9.9122E-01  4.2121E-01  9.1931E-01  1.2701E+00
             2.8652E+00
 PARAMETER:  1.1366E-01  4.2158E-01  3.4321E-01 -9.1563E-02  3.4206E-01 -2.2603E-02  9.1177E-02 -7.6462E-01  1.5873E-02  3.3913E-01
             1.1526E+00
 GRADIENT:   5.3676E+01  6.8093E+01  1.2444E+01  2.6716E+01 -1.0717E+01 -7.7508E+00  8.0238E+00 -7.8632E-02 -5.6820E+00 -2.2973E+00
             1.1112E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2643.43754761871        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      334
 NPARAMETR:  1.0145E+00  1.9092E+00  1.4961E+00  5.2026E-01  1.8204E+00  9.2452E-01  6.8299E-01  1.3857E+00  1.4544E+00  1.6982E+00
             2.6487E+00
 PARAMETER:  1.1441E-01  7.4670E-01  5.0289E-01 -5.5343E-01  6.9904E-01  2.1516E-02 -2.8127E-01  4.2620E-01  4.7461E-01  6.2955E-01
             1.0741E+00
 GRADIENT:  -1.7112E+00  6.4556E+01 -9.3852E+00  5.4503E+01  2.9041E+01  3.1094E-01 -9.9914E+00 -1.6808E+00 -4.6043E+00  7.4198E+00
            -4.2638E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2652.17637926599        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      509
 NPARAMETR:  1.0195E+00  2.0713E+00  2.1133E+00  3.7907E-01  1.9768E+00  9.0689E-01  7.0309E-01  3.0621E+00  1.6431E+00  1.8052E+00
             2.6758E+00
 PARAMETER:  1.1927E-01  8.2816E-01  8.4825E-01 -8.7004E-01  7.8150E-01  2.2698E-03 -2.5228E-01  1.2191E+00  5.9657E-01  6.9067E-01
             1.0843E+00
 GRADIENT:   1.1450E+01  9.1786E+00 -4.9185E+00  1.2001E+01  1.7451E+01 -6.3486E+00  3.9528E-01 -8.7906E-01 -1.0401E+00  5.5736E+00
             4.0263E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2654.00262894815        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      686
 NPARAMETR:  1.0134E+00  2.2244E+00  2.6414E+00  2.6842E-01  1.9971E+00  9.2577E-01  6.7381E-01  4.0866E+00  2.0654E+00  1.8206E+00
             2.6699E+00
 PARAMETER:  1.1332E-01  8.9948E-01  1.0713E+00 -1.2152E+00  7.9172E-01  2.2868E-02 -2.9480E-01  1.5077E+00  8.2532E-01  6.9918E-01
             1.0820E+00
 GRADIENT:  -3.3945E+00  5.9238E+00  9.5695E-01  1.7369E+00 -2.8543E-01  1.2398E+00 -8.1631E-01 -6.5316E-01  4.6086E-01  1.3840E-01
            -3.8234E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2654.05756166332        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      862
 NPARAMETR:  1.0148E+00  2.2449E+00  2.4844E+00  2.5261E-01  1.9925E+00  9.2318E-01  6.7547E-01  4.4986E+00  2.0738E+00  1.8151E+00
             2.6685E+00
 PARAMETER:  1.1472E-01  9.0865E-01  1.0100E+00 -1.2759E+00  7.8937E-01  2.0071E-02 -2.9235E-01  1.6038E+00  8.2940E-01  6.9612E-01
             1.0815E+00
 GRADIENT:   2.4814E-01  2.1970E+00  5.8259E-01  5.7968E-01 -2.4544E+00  2.5791E-01 -4.4364E-01  4.2802E-01 -7.1543E-01 -1.1676E+00
            -1.7979E+00

0ITERATION NO.:   31    OBJECTIVE VALUE:  -2654.05756166332        NO. OF FUNC. EVALS.:  26
 CUMULATIVE NO. OF FUNC. EVALS.:      888
 NPARAMETR:  1.0148E+00  2.2449E+00  2.4844E+00  2.5261E-01  1.9925E+00  9.2318E-01  6.7547E-01  4.4986E+00  2.0738E+00  1.8151E+00
             2.6685E+00
 PARAMETER:  1.1472E-01  9.0865E-01  1.0100E+00 -1.2759E+00  7.8937E-01  2.0071E-02 -2.9235E-01  1.6038E+00  8.2940E-01  6.9612E-01
             1.0815E+00
 GRADIENT:  -1.5012E+04  6.1429E+00  8.8249E+00  4.8464E-01 -1.0918E+03  1.2971E-01  1.8993E+00  5.2251E+02  2.0745E+03 -1.2378E+03
            -1.5963E+03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      888
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0995E-03 -2.5654E-02 -1.4443E-02  2.1473E-02 -2.0851E-02
 SE:             2.9323E-02  2.4273E-02  6.4951E-03  1.6404E-02  2.6043E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7009E-01  2.9055E-01  2.6167E-02  1.9053E-01  4.2333E-01

 ETASHRINKSD(%)  1.7647E+00  1.8683E+01  7.8241E+01  4.5044E+01  1.2754E+01
 ETASHRINKVR(%)  3.4982E+00  3.3876E+01  9.5265E+01  6.9798E+01  2.3881E+01
 EBVSHRINKSD(%)  1.8087E+00  1.6576E+01  8.2473E+01  5.3913E+01  9.6959E+00
 EBVSHRINKVR(%)  3.5848E+00  3.0404E+01  9.6928E+01  7.8760E+01  1.8452E+01
 RELATIVEINF(%)  9.6327E+01  5.9236E+00  1.8692E+00  1.7683E+00  6.1853E+01
 EPSSHRINKSD(%)  1.6334E+01
 EPSSHRINKVR(%)  3.0000E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          869
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1597.1151707097210     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2654.0575616633187     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1056.9423909535976     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.58
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    14.11
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2654.058       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  2.24E+00  2.48E+00  2.53E-01  1.99E+00  9.23E-01  6.75E-01  4.50E+00  2.07E+00  1.82E+00  2.67E+00
 


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
+        3.18E+06
 
 TH 2
+       -1.71E+01  3.50E+02
 
 TH 3
+       -6.94E-02  1.52E+00  1.05E+00
 
 TH 4
+       -2.28E+01  4.62E+02  2.45E+02  9.67E+02
 
 TH 5
+       -6.03E+00 -1.35E+04 -1.47E+00  8.48E+04  1.75E+04
 
 TH 6
+       -8.02E+01 -4.42E+00  4.89E-03 -6.82E+00 -7.21E+00  2.14E+02
 
 TH 7
+        1.87E+06 -1.25E+01 -8.71E+04  7.04E-01 -5.86E+01  2.36E+06  1.10E+06
 
 TH 8
+        8.29E-01 -2.85E+03  2.32E+03 -1.90E+04 -1.91E-01  1.41E+00  6.05E+04  6.42E-01
 
 TH 9
+        3.19E+00 -1.23E+04  9.99E+03  3.12E+01  4.64E-01  5.64E+00  5.75E+01 -6.94E+03  2.91E+04
 
 TH10
+       -4.10E+00 -1.36E+00  1.35E+04  6.17E+00 -8.15E+00 -7.62E+00  1.73E+05 -4.59E+03  2.44E+01  2.70E+04
 
 TH11
+       -1.92E+01  7.32E+03 -2.86E+01 -4.63E+04  7.99E-01  1.48E-01 -2.41E+01  2.13E+03  1.01E+00 -1.18E+04  1.59E+02
 
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
 #CPUT: Total CPU Time in Seconds,       36.801
Stop Time:
Wed Sep 29 04:07:40 CDT 2021
