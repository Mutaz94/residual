Wed Sep 29 14:30:23 CDT 2021
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
$DATA ../../../../data/spa/S1/dat69.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m69.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1664.56434632897        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4368E+02  4.9397E+01 -7.8418E+01  1.9929E+02  1.2839E+02  5.1816E+01 -6.7409E+00  9.1745E+00  6.4721E+00 -2.6653E+00
            -3.9206E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1674.59480213529        NO. OF FUNC. EVALS.: 123
 CUMULATIVE NO. OF FUNC. EVALS.:      136
 NPARAMETR:  1.0480E+00  1.0362E+00  1.1058E+00  8.8912E-01  9.4314E-01  9.3101E-01  1.0411E+00  9.5504E-01  9.5757E-01  9.4212E-01
             1.1105E+00
 PARAMETER:  1.4689E-01  1.3557E-01  2.0053E-01 -1.7518E-02  4.1464E-02  2.8520E-02  1.4030E-01  5.3995E-02  5.6648E-02  4.0380E-02
             2.0477E-01
 GRADIENT:   5.6565E+01 -2.5485E+01  1.8627E+01 -6.1148E+01 -5.5655E+01 -2.9053E+01 -8.9345E+00  2.4085E+00 -9.4906E+00  1.5803E+00
             5.9655E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1676.56279331178        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      314
 NPARAMETR:  1.0488E+00  1.2631E+00  1.1960E+00  8.0039E-01  1.0776E+00  9.4635E-01  9.8982E-01  9.4072E-01  1.0974E+00  1.0727E+00
             1.1075E+00
 PARAMETER:  1.4765E-01  3.3360E-01  2.7895E-01 -1.2265E-01  1.7474E-01  4.4854E-02  8.9764E-02  3.8894E-02  1.9299E-01  1.7016E-01
             2.0213E-01
 GRADIENT:   5.4357E+01  2.9723E+01  1.2976E+01  1.3978E+01 -1.6886E+01 -2.2411E+01  2.7214E+00 -3.2078E+00 -2.0734E+00  4.8637E+00
             4.7235E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1679.18987012074        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      492
 NPARAMETR:  1.0246E+00  1.2667E+00  8.9832E-01  7.6843E-01  1.0033E+00  1.0014E+00  1.0104E+00  6.0770E-01  1.0934E+00  9.5286E-01
             1.0898E+00
 PARAMETER:  1.2429E-01  3.3644E-01 -7.2298E-03 -1.6341E-01  1.0328E-01  1.0144E-01  1.1030E-01 -3.9807E-01  1.8929E-01  5.1715E-02
             1.8595E-01
 GRADIENT:  -5.1699E+00 -7.1737E-01  1.2211E+00 -2.4764E+00  1.0779E+00  1.3432E+00  2.2748E+00  5.1295E-01 -8.3049E-01 -6.0173E-01
             1.0530E-03

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1679.62306534553        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      669
 NPARAMETR:  1.0295E+00  1.4523E+00  7.1664E-01  6.5249E-01  1.0183E+00  9.9749E-01  8.9793E-01  1.6920E-01  1.2356E+00  9.5115E-01
             1.0876E+00
 PARAMETER:  1.2904E-01  4.7313E-01 -2.3319E-01 -3.2696E-01  1.1815E-01  9.7487E-02 -7.6585E-03 -1.6767E+00  3.1152E-01  4.9918E-02
             1.8397E-01
 GRADIENT:   3.0155E+00  8.3948E+00 -1.2778E+00  8.4556E+00 -1.9577E+00 -4.6361E-01 -9.5935E-01  9.3482E-02 -1.3154E-01  1.8686E-02
            -6.7329E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1679.71444213646        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      846
 NPARAMETR:  1.0278E+00  1.6394E+00  6.4762E-01  5.3469E-01  1.0929E+00  9.9831E-01  8.2620E-01  2.5651E-02  1.4311E+00  1.0028E+00
             1.0897E+00
 PARAMETER:  1.2740E-01  5.9434E-01 -3.3445E-01 -5.2608E-01  1.8883E-01  9.8305E-02 -9.0921E-02 -3.5632E+00  4.5841E-01  1.0284E-01
             1.8592E-01
 GRADIENT:  -1.0183E+00  1.1143E+01 -9.7759E-01  9.8203E+00 -3.4847E-02 -9.2909E-02 -4.4868E-01  1.7137E-03 -3.0697E-01  5.6743E-02
            -4.5070E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1679.71828619570        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1027
 NPARAMETR:  1.0276E+00  1.6926E+00  6.2362E-01  5.0062E-01  1.1136E+00  9.9823E-01  8.0914E-01  1.2378E-02  1.4976E+00  1.0169E+00
             1.0905E+00
 PARAMETER:  1.2723E-01  6.2627E-01 -3.7222E-01 -5.9192E-01  2.0761E-01  9.8230E-02 -1.1178E-01 -4.2918E+00  5.0385E-01  1.1675E-01
             1.8666E-01
 GRADIENT:  -1.5168E+00  1.1226E+01 -1.0884E+00  9.8832E+00  4.4353E-01 -1.0864E-01 -4.8161E-01  3.8979E-04 -3.1465E-01  9.9273E-02
            -3.5992E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1679.85002628419        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     1217
 NPARAMETR:  1.0298E+00  1.6832E+00  6.2542E-01  4.9228E-01  1.1153E+00  9.9863E-01  8.0859E-01  1.0000E-02  1.5096E+00  1.0156E+00
             1.0911E+00
 PARAMETER:  1.2935E-01  6.2070E-01 -3.6932E-01 -6.0870E-01  2.0909E-01  9.8632E-02 -1.1247E-01 -4.8515E+00  5.1181E-01  1.1547E-01
             1.8717E-01
 GRADIENT:   3.7515E+00 -1.3123E+01 -4.1982E-01 -1.4006E+00  7.1464E-01  1.4696E-01 -7.5626E-02  0.0000E+00 -7.8620E-02 -3.3810E-02
             9.5864E-02

0ITERATION NO.:   38    OBJECTIVE VALUE:  -1679.85127295959        NO. OF FUNC. EVALS.: 101
 CUMULATIVE NO. OF FUNC. EVALS.:     1318
 NPARAMETR:  1.0295E+00  1.6830E+00  6.2545E-01  4.9231E-01  1.1168E+00  9.9862E-01  8.0856E-01  1.0000E-02  1.5128E+00  1.0169E+00
             1.0913E+00
 PARAMETER:  1.2901E-01  6.2246E-01 -3.6563E-01 -6.0633E-01  2.0850E-01  9.8565E-02 -1.1191E-01 -4.8515E+00  5.1313E-01  1.1569E-01
             1.8693E-01
 GRADIENT:  -9.5433E-02  2.8225E+00  1.9471E-01  7.5540E-01 -9.0770E-01 -1.4940E-02  6.9847E-02  0.0000E+00 -8.3724E-02 -6.2857E-02
            -1.4057E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1318
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.6813E-04 -2.9257E-02 -2.1764E-04  2.3786E-02 -3.2408E-02
 SE:             2.9811E-02  2.3174E-02  8.1889E-05  2.1685E-02  2.3233E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9550E-01  2.0678E-01  7.8664E-03  2.7269E-01  1.6305E-01

 ETASHRINKSD(%)  1.2951E-01  2.2363E+01  9.9726E+01  2.7353E+01  2.2166E+01
 ETASHRINKVR(%)  2.5885E-01  3.9725E+01  9.9999E+01  4.7225E+01  3.9418E+01
 EBVSHRINKSD(%)  5.1607E-01  2.1267E+01  9.9760E+01  3.0249E+01  2.0065E+01
 EBVSHRINKVR(%)  1.0295E+00  3.8010E+01  9.9999E+01  5.1348E+01  3.6103E+01
 RELATIVEINF(%)  9.8869E+01  4.0646E+00  9.2208E-05  3.1541E+00  1.5691E+01
 EPSSHRINKSD(%)  4.3291E+01
 EPSSHRINKVR(%)  6.7841E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1679.8512729595898     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -944.70044639585160     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.36
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.24
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1679.851       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.69E+00  6.28E-01  4.93E-01  1.11E+00  9.99E-01  8.09E-01  1.00E-02  1.51E+00  1.02E+00  1.09E+00
 


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
+        1.04E+03
 
 TH 2
+       -7.23E+00  3.90E+02
 
 TH 3
+        7.85E+00  9.02E+01  2.01E+02
 
 TH 4
+       -1.84E+01  3.92E+02 -1.91E+02  9.96E+02
 
 TH 5
+       -5.67E+00 -1.55E+02 -2.16E+02  2.32E+02  5.55E+02
 
 TH 6
+       -2.26E-02 -1.41E+00  1.15E+00 -4.08E+00 -1.39E+00  1.96E+02
 
 TH 7
+        1.27E+00  6.97E+00 -1.65E+00 -2.10E+01 -1.09E+01 -5.07E-01  1.34E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        7.37E-01 -1.65E+01 -2.30E+01  5.39E+01  1.86E+00 -2.18E-01  1.59E+01  0.00E+00  3.24E+01
 
 TH10
+       -6.49E-01 -1.49E+01 -2.64E+01  6.13E-01 -5.64E+01  2.86E-01  1.02E+01  0.00E+00  4.16E+00  8.55E+01
 
 TH11
+       -7.42E+00 -1.56E+01 -1.49E+01  3.47E+00  2.53E+00  2.32E+00  6.76E+00  0.00E+00  3.89E+00  1.71E+01  1.87E+02
 
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
 #CPUT: Total CPU Time in Seconds,       23.666
Stop Time:
Wed Sep 29 14:30:49 CDT 2021
