Sat Sep 18 16:00:29 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	One-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/7/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/spa/All/dat90.csv ignore=@
$SUBR ADVAN2 TRANS2
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER
$PK

ET1 = EXP(ETA(1)*THETA(4))
ET2 = EXP(ETA(2)*THETA(5))
ET3 = EXP(ETA(3)*THETA(6))


CL = 5.0 * THETA(1) * ET1
V = 85  * THETA(2) * ET2
KA = 0.7 * THETA(3) * ET3

SC = V
$ERROR
CVERR 	= 0.05
W  	= THETA(7)*F*CVERR
Y  	= F + W * ERR(1)
$THETA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvKA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvK
(0,1) ; RUV
$OMEGA
0.9 FIX ;     IIV CL
0.9 FIX  ;     IIV V
0.9 FIX ;      IIV KA
$SIGMA  1  FIX;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       18 SEP 2021
Days until program expires : 211
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      400
 TOT. NO. OF INDIVIDUALS:      100
0LENGTH OF THETA:   7
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   3
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
0INITIAL ESTIMATE OF OMEGA:
 0.9000E+00
 0.0000E+00   0.9000E+00
 0.0000E+00   0.0000E+00   0.9000E+00
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

 ONE COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN2)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   3
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   ELIMINATION RATE (K) IS BASIC PK PARAMETER NO.:  1
   ABSORPTION RATE (KA) IS BASIC PK PARAMETER NO.:  3

 TRANSLATOR WILL CONVERT PARAMETERS
 CLEARANCE (CL) AND VOLUME (V) TO K (TRANS2)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            4           *           *           *           *
    3            *           -           -           -           -
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
 NO. OF SIG. FIGURES REQUIRED:            3
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
 RAW OUTPUT FILE (FILE): m90.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   20750.3716421755        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   3.0014E+02  5.1075E+01  1.1167E+02 -7.2618E+02  2.4395E+02 -2.2952E+02 -4.2447E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -443.557806211502        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:       60
 NPARAMETR:  1.2885E+00  1.1104E+00  3.6994E+00  4.4925E-01  1.7564E-01  3.8790E-01  1.5570E+01
 PARAMETER:  3.5349E-01  2.0474E-01  1.4082E+00 -7.0017E-01 -1.6393E+00 -8.4700E-01  2.8454E+00
 GRADIENT:   9.2143E+01 -7.3625E+01 -8.2644E-01 -6.7109E+00  3.8592E+00  4.0738E-02 -8.5206E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -448.919738393839        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      112
 NPARAMETR:  1.1817E+00  1.1449E+00  3.8639E+00  4.5477E-01  1.5294E-01  5.3963E-01  1.5571E+01
 PARAMETER:  2.6698E-01  2.3529E-01  1.4517E+00 -6.8796E-01 -1.7777E+00 -5.1687E-01  2.8454E+00
 GRADIENT:   3.9232E-01  4.4208E+00 -1.9617E+00 -1.0734E+00  1.4601E+00  5.0953E-02 -2.4291E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -451.153394596406        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:      167
 NPARAMETR:  1.1329E+00  1.0888E+00  8.1107E+01  4.4669E-01  1.0494E-01  8.0759E+00  1.5434E+01
 PARAMETER:  2.2476E-01  1.8512E-01  4.4958E+00 -7.0590E-01 -2.1544E+00  2.1889E+00  2.8366E+00
 GRADIENT:  -1.1141E+00 -4.7461E+00  1.0483E-01  1.7484E+00  6.0998E-01  6.3142E-02 -5.1557E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -451.316562847869        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      219
 NPARAMETR:  1.1473E+00  1.0999E+00  4.0656E+01  4.4037E-01  8.4147E-02  6.6300E+00  1.5705E+01
 PARAMETER:  2.3743E-01  1.9518E-01  3.8051E+00 -7.2013E-01 -2.3752E+00  1.9916E+00  2.8540E+00
 GRADIENT:   1.5888E+00  2.1865E+00  1.1195E-01 -1.1945E+00  1.0474E-01 -2.9499E-01 -5.6125E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -451.326182520503        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:      270
 NPARAMETR:  1.1418E+00  1.0948E+00  4.2192E+01  4.4182E-01  8.1034E-02  6.8163E+00  1.5700E+01
 PARAMETER:  2.3264E-01  1.9055E-01  3.8422E+00 -7.1686E-01 -2.4129E+00  2.0193E+00  2.8537E+00
 GRADIENT:  -2.6744E-01 -3.8321E-01 -1.1439E-01  2.6510E-01  1.3696E-01  2.2930E-01  1.4596E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -451.326334806537        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:      320
 NPARAMETR:  1.1407E+00  1.0933E+00  4.2489E+01  4.4150E-01  7.7728E-02  6.8316E+00  1.5691E+01
 PARAMETER:  2.3160E-01  1.8922E-01  3.8492E+00 -7.1759E-01 -2.4545E+00  2.0216E+00  2.8531E+00
 GRADIENT:  -3.2126E-01 -2.7316E-01 -1.0828E-01  2.6052E-01  9.8600E-02  2.1874E-01  8.6520E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -451.326357169415        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  1.1403E+00  1.0927E+00  4.2564E+01  4.4124E-01  7.5770E-02  6.8318E+00  1.5688E+01
 PARAMETER:  2.3126E-01  1.8862E-01  3.8510E+00 -7.1818E-01 -2.4801E+00  2.0216E+00  2.8529E+00
 GRADIENT:  -2.5854E-01 -2.2982E-01 -8.8869E-02  2.1232E-01  7.9562E-02  1.7662E-01  6.1520E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -451.326367415699        NO. OF FUNC. EVALS.:  54
 CUMULATIVE NO. OF FUNC. EVALS.:      425
 NPARAMETR:  1.1401E+00  1.0923E+00  4.2634E+01  4.4108E-01  7.4580E-02  6.8339E+00  1.5688E+01
 PARAMETER:  2.3108E-01  1.8829E-01  3.8526E+00 -7.1853E-01 -2.4959E+00  2.0219E+00  2.8529E+00
 GRADIENT:  -2.2336E-01 -2.0592E-01 -7.6620E-02  1.8444E-01  6.9175E-02  1.5110E-01  5.0557E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -451.326372057442        NO. OF FUNC. EVALS.:  68
 CUMULATIVE NO. OF FUNC. EVALS.:      493
 NPARAMETR:  1.1399E+00  1.0921E+00  4.2687E+01  4.4099E-01  7.3831E-02  6.8360E+00  1.5688E+01
 PARAMETER:  2.3098E-01  1.8809E-01  3.8539E+00 -7.1874E-01 -2.5060E+00  2.0222E+00  2.8529E+00
 GRADIENT:  -1.3938E+00 -6.9388E-01 -9.3874E-02 -5.4931E-01  2.7478E-02  6.2247E-02 -1.8377E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -451.339455262383        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      610
 NPARAMETR:  1.1451E+00  1.0965E+00  4.6764E+01  4.4203E-01  7.2304E-02  7.1284E+00  1.5763E+01
 PARAMETER:  2.3549E-01  1.9210E-01  3.9451E+00 -7.1639E-01 -2.5269E+00  2.0641E+00  2.8577E+00
 GRADIENT:  -4.8477E-02 -9.8334E-02  1.6590E-02 -2.3821E-02  2.5971E-03 -3.7516E-02  6.2804E-02

0ITERATION NO.:   51    OBJECTIVE VALUE:  -451.339455262383        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      624
 NPARAMETR:  1.1451E+00  1.0965E+00  4.6764E+01  4.4203E-01  7.2304E-02  7.1284E+00  1.5763E+01
 PARAMETER:  2.3549E-01  1.9210E-01  3.9451E+00 -7.1639E-01 -2.5269E+00  2.0641E+00  2.8577E+00
 GRADIENT:  -4.8477E-02 -9.8334E-02  1.6590E-02 -2.3821E-02  2.5971E-03 -3.7516E-02  6.2804E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      624
 NO. OF SIG. DIGITS IN FINAL EST.:  3.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.8582E-02 -2.7781E-02 -1.8806E-02
 SE:             8.6834E-02  1.7827E-02  8.9363E-03
 N:                     100         100         100

 P VAL.:         6.5681E-01  1.1914E-01  3.5342E-02

 ETASHRINKSD(%)  8.0079E+00  8.1114E+01  9.0533E+01
 ETASHRINKVR(%)  1.5374E+01  9.6433E+01  9.9104E+01
 EBVSHRINKSD(%)  7.6686E+00  8.1914E+01  9.3429E+01
 EBVSHRINKVR(%)  1.4749E+01  9.6729E+01  9.9568E+01
 RELATIVEINF(%)  4.8538E+01  1.8031E+00  2.6554E-01
 EPSSHRINKSD(%)  2.6745E+00
 EPSSHRINKVR(%)  5.2774E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -451.33945526238347     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       283.81137130135471     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:     5.55
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     2.34
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -451.339       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.15E+00  1.10E+00  4.68E+01  4.42E-01  7.23E-02  7.13E+00  1.58E+01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3     
 
 ETA1
+        9.00E-01
 
 ETA2
+        0.00E+00  9.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-01
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3     
 
 ETA1
+        9.49E-01
 
 ETA2
+        0.00E+00  9.49E-01
 
 ETA3
+        0.00E+00  0.00E+00  9.49E-01
 


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
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        3.78E+02
 
 TH 2
+       -1.79E+02  6.22E+02
 
 TH 3
+        1.27E-01 -1.38E+02  1.58E-01
 
 TH 4
+        3.51E+01 -1.66E+02  3.23E-02  7.08E+02
 
 TH 5
+       -3.06E+01 -1.68E+02  1.58E+02 -2.02E+01  1.17E+02
 
 TH 6
+       -1.40E+00  1.73E+03 -1.98E+00 -6.49E-01  4.40E+00  2.50E+01
 
 TH 7
+       -7.05E+00 -1.08E+01  6.33E-01  5.41E+00  5.78E+00 -7.99E+00  4.66E+00
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,        7.968
Stop Time:
Sat Sep 18 16:00:38 CDT 2021