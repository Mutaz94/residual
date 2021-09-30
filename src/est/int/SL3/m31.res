Wed Sep 29 04:10:29 CDT 2021
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
$DATA ../../../../data/int/SL3/dat31.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      979
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

 TOT. NO. OF OBS RECS:      879
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
 RAW OUTPUT FILE (FILE): m31.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -343.748584586693        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.9477E+02  9.3266E+01  4.1238E+01  1.5030E+02  1.5788E+02  4.1652E+01 -1.0965E+02 -1.0276E+02 -4.6007E+01 -4.9745E+01
            -6.5082E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2654.81432315885        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:       88
 NPARAMETR:  1.0118E+00  1.1381E+00  1.1411E+00  9.9628E-01  1.0127E+00  9.0662E-01  1.0473E+00  8.7472E-01  8.3886E-01  1.0245E+00
             2.7883E+00
 PARAMETER:  1.1170E-01  2.2939E-01  2.3196E-01  9.6274E-02  1.1262E-01  1.9667E-03  1.4619E-01 -3.3855E-02 -7.5710E-02  1.2418E-01
             1.1254E+00
 GRADIENT:   1.1422E+02  9.0932E+01  1.2189E+01  5.6918E+01 -5.0047E+01 -1.8993E+01  3.7952E+00  6.3017E+00 -1.0622E+01 -9.2761E+00
             6.2296E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2659.52895065093        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      163
 NPARAMETR:  1.0077E+00  1.1296E+00  1.0648E+00  9.9718E-01  1.0062E+00  9.2463E-01  9.2436E-01  3.7877E-01  9.5512E-01  1.1122E+00
             2.7887E+00
 PARAMETER:  1.0770E-01  2.2186E-01  1.6276E-01  9.7174E-02  1.0616E-01  2.1635E-02  2.1349E-02 -8.7082E-01  5.4082E-02  2.0633E-01
             1.1256E+00
 GRADIENT:   1.0056E+02  7.0169E+01  5.4821E+00  6.6067E+01 -2.9193E+01 -1.0678E+01 -1.0466E+00  1.4392E+00  6.8952E+00  7.5638E-01
             7.0508E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2662.00992799048        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      257
 NPARAMETR:  9.7799E-01  1.0711E+00  1.0402E+00  9.9234E-01  9.9021E-01  9.3994E-01  9.8540E-01  3.0860E-01  9.2229E-01  1.0693E+00
             2.7279E+00
 PARAMETER:  7.7739E-02  1.6869E-01  1.3938E-01  9.2311E-02  9.0162E-02  3.8065E-02  8.5292E-02 -1.0757E+00  1.9108E-02  1.6705E-01
             1.1035E+00
 GRADIENT:  -2.9679E+01 -3.9925E-01 -2.1929E+00  6.0845E+00 -1.0364E+01 -9.5262E+00 -8.2664E-01  9.9655E-01  2.3478E+00 -1.4996E+00
             9.5671E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2664.57313841316        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      433
 NPARAMETR:  9.8867E-01  1.3678E+00  1.1385E+00  8.1817E-01  1.2381E+00  9.5960E-01  7.7019E-01  1.6840E-01  1.0456E+00  1.3018E+00
             2.7095E+00
 PARAMETER:  8.8609E-02  4.1319E-01  2.2967E-01 -1.0068E-01  3.1358E-01  5.8758E-02 -1.6112E-01 -1.6814E+00  1.4460E-01  3.6371E-01
             1.0968E+00
 GRADIENT:  -3.5094E+00  3.5674E+00 -6.6758E-02  3.6628E+00 -6.3900E-01 -1.5298E+00 -1.3456E-01  1.1868E-01 -5.2354E-01  5.3321E-01
            -2.2291E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2664.63630604879        NO. OF FUNC. EVALS.: 156
 CUMULATIVE NO. OF FUNC. EVALS.:      589
 NPARAMETR:  9.8995E-01  1.3982E+00  1.1333E+00  7.9734E-01  1.2587E+00  9.6301E-01  7.5113E-01  5.6360E-02  1.0709E+00  1.3147E+00
             2.7112E+00
 PARAMETER:  8.9900E-02  4.3518E-01  2.2517E-01 -1.2647E-01  3.3005E-01  6.2304E-02 -1.8618E-01 -2.7760E+00  1.6849E-01  3.7364E-01
             1.0974E+00
 GRADIENT:   5.9430E+01  7.0984E+01  1.4801E+00  1.0607E+01  1.5599E+01  5.5462E+00  1.2545E+00  1.5568E-02  1.0934E+00  2.8250E+00
             1.8837E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2664.64409126345        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      765
 NPARAMETR:  9.8986E-01  1.3970E+00  1.1324E+00  7.9725E-01  1.2589E+00  9.6320E-01  7.5270E-01  1.7505E-02  1.0715E+00  1.3152E+00
             2.7112E+00
 PARAMETER:  8.9809E-02  4.3430E-01  2.2430E-01 -1.2659E-01  3.3023E-01  6.2505E-02 -1.8409E-01 -3.9453E+00  1.6908E-01  3.7399E-01
             1.0974E+00
 GRADIENT:  -6.4117E-01  7.2985E-01  2.2457E-01 -1.3004E-01 -3.7614E-01 -1.0153E-01 -1.2662E-02  1.1997E-03  7.8551E-03  2.0689E-02
            -2.8500E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2664.64880071239        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      942
 NPARAMETR:  9.9022E-01  1.3807E+00  1.1325E+00  8.0741E-01  1.2471E+00  9.6346E-01  7.6159E-01  1.0000E-02  1.0600E+00  1.3056E+00
             2.7118E+00
 PARAMETER:  9.0168E-02  4.2257E-01  2.2447E-01 -1.1393E-01  3.2078E-01  6.2773E-02 -1.7235E-01 -1.1365E+01  1.5827E-01  3.6668E-01
             1.0976E+00
 GRADIENT:   2.0961E-01  1.4598E-01  1.4800E-02 -2.8453E-02 -2.3903E-01  1.3417E-02 -1.9319E-02  0.0000E+00 -2.6991E-02 -3.8056E-02
             2.7261E-02

0ITERATION NO.:   38    OBJECTIVE VALUE:  -2664.64880793743        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:     1040
 NPARAMETR:  9.9085E-01  1.3803E+00  1.1330E+00  8.0714E-01  1.2485E+00  9.6372E-01  7.6260E-01  1.0000E-02  1.0614E+00  1.3083E+00
             2.7107E+00
 PARAMETER:  9.0116E-02  4.2306E-01  2.2463E-01 -1.1446E-01  3.2137E-01  6.2758E-02 -1.7274E-01 -1.1035E+01  1.5879E-01  3.6711E-01
             1.0976E+00
 GRADIENT:  -1.2962E-01  9.6192E-02 -2.9768E-03 -1.9259E-02 -4.6196E-02 -8.5837E-03 -9.5262E-03  0.0000E+00 -9.7629E-03 -2.8747E-02
             6.9321E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1040
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.6208E-03 -2.1492E-02 -8.5034E-05  8.6582E-03 -1.5502E-02
 SE:             2.9298E-02  1.9284E-02  7.2823E-05  2.3217E-02  2.5829E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5588E-01  2.6507E-01  2.4294E-01  7.0921E-01  5.4839E-01

 ETASHRINKSD(%)  1.8480E+00  3.5395E+01  9.9756E+01  2.2219E+01  1.3468E+01
 ETASHRINKVR(%)  3.6618E+00  5.8262E+01  9.9999E+01  3.9501E+01  2.5122E+01
 EBVSHRINKSD(%)  1.8404E+00  3.5467E+01  9.9730E+01  2.2993E+01  1.3086E+01
 EBVSHRINKVR(%)  3.6469E+00  5.8355E+01  9.9999E+01  4.0699E+01  2.4459E+01
 RELATIVEINF(%)  9.6279E+01  4.7832E+00  3.5960E-04  8.1962E+00  1.5307E+01
 EPSSHRINKSD(%)  1.6146E+01
 EPSSHRINKVR(%)  2.9686E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          879
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1615.4939413738146     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2664.6488079374330     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1049.1548665636185     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.59
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    11.94
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2664.649       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.90E-01  1.38E+00  1.13E+00  8.07E-01  1.25E+00  9.63E-01  7.61E-01  1.00E-02  1.06E+00  1.31E+00  2.71E+00
 


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
+        1.18E+03
 
 TH 2
+       -1.49E+01  4.28E+02
 
 TH 3
+        1.92E+00  4.39E+01  6.99E+01
 
 TH 4
+       -2.47E+01  4.44E+02 -5.66E+01  8.94E+02
 
 TH 5
+       -3.50E+00 -1.65E+02 -9.74E+01  1.00E+02  3.13E+02
 
 TH 6
+        7.21E+00 -4.92E+00  1.04E+00 -9.14E+00 -2.10E+00  1.97E+02
 
 TH 7
+        1.95E+00  1.75E-01 -4.56E+00 -8.84E+00 -1.10E+00 -5.24E-01  5.85E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.81E+00 -1.51E+01 -3.46E-01  3.24E+01  2.54E+00 -1.54E-01  2.63E+01  0.00E+00  6.64E+01
 
 TH10
+        1.53E-02 -1.42E+01 -7.78E+00  1.14E+01 -1.20E+01  5.12E-01  1.62E+01  0.00E+00  4.93E+00  6.26E+01
 
 TH11
+       -1.72E+01 -1.52E+01 -2.51E+00 -1.95E+01  1.99E+00  2.91E+00  5.85E+00  0.00E+00  5.45E+00  4.88E+00  1.56E+02
 
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
 #CPUT: Total CPU Time in Seconds,       36.643
Stop Time:
Wed Sep 29 04:11:08 CDT 2021
