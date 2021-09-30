Wed Sep 29 20:44:26 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	One-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/28/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/spa/All/dat91.csv ignore=@
$SUBR ADVAN2 TRANS2
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
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
$OMEGA (0.09 FIX)x3
$SIGMA  1  FIX;        [P]
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
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   24397.1087456390        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   1.0765E+03  6.6944E+02 -3.4114E+02 -2.1351E+03 -2.5632E+03 -8.0718E+02 -4.5181E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -386.920921101847        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:       60
 NPARAMETR:  1.0431E+00  1.1119E+00  1.5068E+00  1.6859E+00  8.4566E-01  9.6053E-01  1.5022E+01
 PARAMETER:  1.4216E-01  2.0608E-01  5.0999E-01  6.2230E-01 -6.7634E-02  5.9725E-02  2.8095E+00
 GRADIENT:  -4.4051E+01 -1.2274E+01 -9.1726E+00  3.7340E+01  7.8219E+00  2.8721E+00  3.4664E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -395.236253124903        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      112
 NPARAMETR:  1.1273E+00  1.1461E+00  2.9023E+00  1.4234E+00  5.7326E-01  1.2172E+00  1.5391E+01
 PARAMETER:  2.1980E-01  2.3640E-01  1.1655E+00  4.5303E-01 -4.5641E-01  2.9658E-01  2.8338E+00
 GRADIENT:   1.0092E+01  4.4476E+00 -1.8317E+00 -1.1125E-01  1.0157E-01  2.6618E-01  6.1868E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -395.319077349032        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:      162
 NPARAMETR:  1.0926E+00  1.1179E+00  4.7993E+00  1.4048E+00  4.4684E-01  2.1198E+00  1.5146E+01
 PARAMETER:  1.8852E-01  2.1147E-01  1.6685E+00  4.3992E-01 -7.0555E-01  8.5132E-01  2.8177E+00
 GRADIENT:   3.5044E+00  1.1876E+01 -1.7906E+00 -2.6254E-01 -2.0323E+00 -4.0169E-02 -9.5501E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -395.392746692877        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:      212
 NPARAMETR:  1.0682E+00  1.0871E+00  8.1116E+00  1.3839E+00  3.9057E-01  2.4539E+00  1.5010E+01
 PARAMETER:  1.6595E-01  1.8348E-01  2.1933E+00  4.2492E-01 -8.4014E-01  9.9768E-01  2.8087E+00
 GRADIENT:   4.1059E-01  5.2684E+00 -1.2014E+00 -9.3450E-01 -1.7274E+00 -4.4074E-02 -1.3077E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -396.982223386471        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:      267
 NPARAMETR:  1.0813E+00  1.1066E+00  2.1813E+02  1.3966E+00  5.3924E-01  8.1396E-02  1.4972E+01
 PARAMETER:  1.7814E-01  2.0133E-01  5.4851E+00  4.3407E-01 -5.1760E-01 -2.4084E+00  2.8062E+00
 GRADIENT:   6.6356E+00  5.3703E+00 -3.9983E-02 -3.2962E+00  5.5212E-02 -5.6446E-08 -1.2465E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -398.102531487744        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      359
 NPARAMETR:  1.1183E+00  1.1470E+00  1.6730E+03  1.4397E+00  5.4314E-01  1.0000E-02  1.5812E+01
 PARAMETER:  2.1180E-01  2.3714E-01  7.5224E+00  4.6444E-01 -5.1039E-01 -5.5454E+00  2.8608E+00
 GRADIENT:   4.0500E-01  1.3619E-02 -5.0076E-03  9.7361E-02 -8.1006E-02  0.0000E+00 -3.2618E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -398.107241346313        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      475
 NPARAMETR:  1.1179E+00  1.1474E+00  1.7465E+04  1.4396E+00  5.4632E-01  1.0000E-02  1.5813E+01
 PARAMETER:  2.1148E-01  2.3752E-01  9.8679E+00  4.6436E-01 -5.0456E-01 -5.6009E+00  2.8608E+00
 GRADIENT:  -1.1111E-01  1.5277E-01 -4.8106E-04 -4.1541E-02  7.6218E-03  0.0000E+00 -3.1271E-03

0ITERATION NO.:   40    OBJECTIVE VALUE:  -398.107869683571        NO. OF FUNC. EVALS.: 122
 CUMULATIVE NO. OF FUNC. EVALS.:      597             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1177E+00  1.1467E+00  2.9423E+06  1.4398E+00  5.4517E-01  1.0000E-02  1.5806E+01
 PARAMETER:  2.1128E-01  2.3692E-01  1.4995E+01  4.6450E-01 -5.0666E-01 -5.6009E+00  2.8604E+00
 GRADIENT:   9.7629E+00  5.5404E+00 -2.6492E-06  5.0604E+00  3.1364E-01  0.0000E+00  2.2607E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -398.107899594311        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      689
 NPARAMETR:  1.1178E+00  1.1468E+00  3.6851E+07  1.4401E+00  5.4561E-01  1.0000E-02  1.5803E+01
 PARAMETER:  2.1138E-01  2.3700E-01  1.7522E+01  4.6469E-01 -5.0585E-01 -5.6009E+00  2.8602E+00
 GRADIENT:   2.1683E-01 -8.2298E-02 -2.2860E-07  8.0490E-02 -2.2536E-02  0.0000E+00 -4.6992E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -398.107910075541        NO. OF FUNC. EVALS.: 101
 CUMULATIVE NO. OF FUNC. EVALS.:      790
 NPARAMETR:  1.1176E+00  1.1468E+00  3.0431E+08  1.4399E+00  5.4615E-01  1.0000E-02  1.5804E+01
 PARAMETER:  2.1118E-01  2.3699E-01  1.9634E+01  4.6460E-01 -5.0487E-01 -5.6009E+00  2.8603E+00
 GRADIENT:   4.5240E-03 -9.5968E-02 -2.7771E-08  5.0864E-02  5.2525E-03  0.0000E+00 -2.8786E-01

0ITERATION NO.:   51    OBJECTIVE VALUE:  -398.107910075541        NO. OF FUNC. EVALS.:  20
 CUMULATIVE NO. OF FUNC. EVALS.:      810
 NPARAMETR:  1.1199E+00  1.1482E+00  3.5864E+08  1.4443E+00  5.4339E-01  1.0000E-02  1.5825E+01
 PARAMETER:  2.1118E-01  2.3699E-01  1.9634E+01  4.6460E-01 -5.0487E-01 -5.6009E+00  2.8603E+00
 GRADIENT:  -7.3364E-02 -5.2528E-02 -2.9723E-08 -3.2404E-02  3.7934E-03  0.0000E+00 -5.1112E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      810
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0796E-02 -1.9705E-02  1.2605E-13
 SE:             2.6904E-02  1.2192E-02  8.3175E-14
 N:                     100         100         100

 P VAL.:         6.8820E-01  1.0603E-01  1.2964E-01

 ETASHRINKSD(%)  9.8674E+00  5.9156E+01  1.0000E+02
 ETASHRINKVR(%)  1.8761E+01  8.3317E+01  1.0000E+02
 EBVSHRINKSD(%)  9.0335E+00  6.0439E+01  1.0000E+02
 EBVSHRINKVR(%)  1.7251E+01  8.4349E+01  1.0000E+02
 RELATIVEINF(%)  7.0830E+01  1.3396E+01  0.0000E+00
 EPSSHRINKSD(%)  3.3017E+00
 EPSSHRINKVR(%)  6.4943E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -398.10791007554150     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       337.04291648819668     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:     6.39
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     1.79
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -398.108       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.12E+00  1.15E+00  3.04E+08  1.44E+00  5.46E-01  1.00E-02  1.58E+01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        5.30E+02
 
 TH 2
+       -4.39E+02  5.45E+02
 
 TH 3
+       -1.65E-13  5.71E-14  8.79E-29
 
 TH 4
+        4.26E+01 -4.64E+01 -1.88E-14  6.45E+01
 
 TH 5
+        1.84E+01 -5.28E+01  1.33E-14 -1.06E+01  1.19E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -3.06E+00 -4.63E+00  4.03E-15  6.35E-01  1.28E+00  0.00E+00  3.06E-01
 
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
+        3.55E+02
 
 TH 2
+       -1.52E+02  3.95E+02
 
 TH 3
+       -1.70E-13 -6.51E-14  6.42E-24
 
 TH 4
+        9.19E+00 -5.06E+01  5.83E-15  6.40E+01
 
 TH 5
+       -1.36E+01 -5.37E+01  5.30E-14 -5.37E+00  3.11E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -7.71E+00 -9.78E+00  9.94E-16  2.02E+00  3.52E+00  0.00E+00  1.92E+00
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        3.56E+02
 
 TH 2
+        1.18E+02  4.56E+02
 
 TH 3
+        2.79E-16  9.44E-16  6.31E-32
 
 TH 4
+       -3.82E+01 -8.71E+01  1.89E-16  7.07E+01
 
 TH 5
+       -4.25E+01 -7.06E+01 -4.66E-16  1.57E+01  3.25E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -1.38E+01 -2.90E+01  4.03E-17  8.48E+00  4.11E+00  0.00E+00  7.29E+00
 
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
 
 Elapsed finaloutput time in seconds:     5.24
 #CPUT: Total CPU Time in Seconds,        8.240
Stop Time:
Wed Sep 29 20:44:41 CDT 2021
