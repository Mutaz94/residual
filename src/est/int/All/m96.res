Wed Sep 29 10:51:31 CDT 2021
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
$DATA ../../../../data/int/All/dat96.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m96.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   50468.5528433553        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   1.1875E+03  7.8763E+02 -1.4089E+03 -2.2209E+03 -3.4268E+03 -1.3680E+03 -9.9087E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -646.365331087760        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:       60
 NPARAMETR:  1.3037E+00  1.5291E+00  2.4754E+00  2.7619E+00  3.3792E+00  1.2112E+00  1.2754E+01
 PARAMETER:  3.6523E-01  5.2467E-01  1.0064E+00  1.1159E+00  1.3176E+00  2.9159E-01  2.6459E+00
 GRADIENT:   4.5051E+01  1.4646E+01  1.6378E+01  4.9190E+01  3.0132E+01  2.2237E+01  2.2097E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -657.391423421217        NO. OF FUNC. EVALS.: 124
 CUMULATIVE NO. OF FUNC. EVALS.:      184
 NPARAMETR:  1.2586E+00  1.4529E+00  2.3852E+00  2.7344E+00  3.6972E+00  8.0362E-01  1.2532E+01
 PARAMETER:  3.3004E-01  4.7359E-01  9.6928E-01  1.1059E+00  1.4076E+00 -1.1863E-01  2.6283E+00
 GRADIENT:   2.7733E+01 -8.7523E+00  6.4708E+00  2.5811E+01  1.2006E+01  1.0028E+01  1.6740E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -691.487234468608        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      302
 NPARAMETR:  9.9684E-01  1.5380E+00  2.4073E+00  1.9987E+00  3.5604E+00  3.2285E-01  1.1453E+01
 PARAMETER:  9.6831E-02  5.3046E-01  9.7851E-01  7.9250E-01  1.3699E+00 -1.0306E+00  2.5383E+00
 GRADIENT:   1.3018E+00  7.6285E+00  2.4777E+00 -7.6301E-01 -8.5747E+00  1.6100E+00  3.1757E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -692.968113438262        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      418
 NPARAMETR:  9.9218E-01  1.4530E+00  2.3957E+00  2.0112E+00  3.6208E+00  9.8902E-02  1.1202E+01
 PARAMETER:  9.2152E-02  4.7364E-01  9.7370E-01  7.9872E-01  1.3867E+00 -2.2136E+00  2.5161E+00
 GRADIENT:   4.0318E+00  9.9897E-02  2.1609E+00  1.3974E-01 -2.3948E+00  1.4930E-01  1.8343E-04

0ITERATION NO.:   25    OBJECTIVE VALUE:  -693.095614381949        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      534
 NPARAMETR:  9.8215E-01  1.4467E+00  2.3794E+00  2.0091E+00  3.6457E+00  1.0000E-02  1.1185E+01
 PARAMETER:  8.1991E-02  4.6926E-01  9.6686E-01  7.9770E-01  1.3935E+00 -4.6862E+00  2.5146E+00
 GRADIENT:  -1.2775E-02 -2.2644E-01 -1.9315E-01 -1.5826E-01  1.3280E-01  0.0000E+00 -1.9843E-01

0ITERATION NO.:   26    OBJECTIVE VALUE:  -693.095614381949        NO. OF FUNC. EVALS.:  20
 CUMULATIVE NO. OF FUNC. EVALS.:      554
 NPARAMETR:  9.8227E-01  1.4498E+00  2.3817E+00  2.0167E+00  3.6968E+00  1.0000E-02  1.1183E+01
 PARAMETER:  8.1991E-02  4.6926E-01  9.6686E-01  7.9770E-01  1.3935E+00 -4.6862E+00  2.5146E+00
 GRADIENT:  -2.6529E-02 -1.6956E-01 -1.7324E-01 -5.1933E-01 -2.5829E+00  0.0000E+00  1.7477E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      554
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.4114E-03 -6.3974E-03 -9.5627E-05
 SE:             2.7686E-02  2.9953E-02  9.7737E-05
 N:                     100         100         100

 P VAL.:         7.3390E-01  8.3087E-01  3.2787E-01

 ETASHRINKSD(%)  7.2498E+00  1.0000E-10  9.9673E+01
 ETASHRINKVR(%)  1.3974E+01  1.0000E-10  9.9999E+01
 EBVSHRINKSD(%)  8.5414E+00  1.3353E+00  9.9570E+01
 EBVSHRINKVR(%)  1.6353E+01  2.6528E+00  9.9998E+01
 RELATIVEINF(%)  8.3482E+01  9.6146E+01  1.8246E-03
 EPSSHRINKSD(%)  6.6131E+00
 EPSSHRINKVR(%)  1.2789E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -693.09561438194919     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       960.99374538646157     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:    11.17
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     4.44
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -693.096       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         9.82E-01  1.45E+00  2.38E+00  2.01E+00  3.65E+00  1.00E-02  1.12E+01
 


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
+        2.41E+02
 
 TH 2
+       -1.57E+01  1.58E+01
 
 TH 3
+        1.94E+01 -1.02E+01  5.09E+01
 
 TH 4
+       -1.89E+01 -1.45E+00 -2.40E+00  4.40E+01
 
 TH 5
+       -4.69E+00  4.99E+00  1.62E-01 -6.65E-01  1.90E+00
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -7.23E+00 -3.96E-01 -4.64E-01  6.95E-01 -1.82E-02  0.00E+00  5.90E-01
 
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
+        2.29E+02
 
 TH 2
+       -1.58E+00  3.86E+01
 
 TH 3
+       -1.61E+00 -4.20E+00  3.26E+01
 
 TH 4
+       -2.50E+00 -3.41E-01  5.60E-01  3.53E+01
 
 TH 5
+        1.12E+00  2.07E-01  4.31E-02 -6.02E-01  1.43E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -8.73E+00 -2.36E+00  2.90E-02  8.61E-01  3.76E-01  0.00E+00  7.05E+00
 
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
+        2.41E+02
 
 TH 2
+        4.72E+01  3.94E+01
 
 TH 3
+       -1.20E+01 -2.49E+00  2.17E+01
 
 TH 4
+        9.64E+00  4.17E-01  1.31E+00  3.11E+01
 
 TH 5
+       -7.02E+00  2.39E+01  1.36E+00  2.45E+00  2.83E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -3.32E+01 -1.54E+01 -1.84E-01  1.59E+01  1.02E+01  0.00E+00  1.37E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.02
 #CPUT: Total CPU Time in Seconds,       15.721
Stop Time:
Wed Sep 29 10:51:48 CDT 2021
