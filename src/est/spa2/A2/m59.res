Thu Sep 30 05:49:36 CDT 2021
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
$DATA ../../../../data/spa2/A2/dat59.csv ignore=@
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
Current Date:       30 SEP 2021
Days until program expires : 199
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m59.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1286.06640413114        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.3877E+02  1.0150E+02  1.7876E+02  6.4575E+01  1.8137E+02  3.0043E+01 -4.6168E+01 -1.6681E+02 -9.7171E+00 -8.2937E+01
            -2.0997E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1991.37296956283        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0346E+00  1.0157E+00  9.9204E-01  1.0044E+00  9.5933E-01  9.6086E-01  7.7951E-01  8.9964E-01  8.9114E-01  7.0776E-01
             2.2571E+00
 PARAMETER:  1.3398E-01  1.1561E-01  9.2007E-02  1.0436E-01  5.8484E-02  6.0072E-02 -1.4909E-01 -5.7602E-03 -1.5254E-02 -2.4565E-01
             9.1408E-01
 GRADIENT:   4.1362E+01  1.1168E+01  3.5524E+01 -4.3313E+01  2.0093E+01 -2.8533E+01 -1.3623E+01 -7.5967E+00 -3.5053E+01 -3.1068E+01
            -8.7604E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2000.39487052855        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0300E+00  7.6404E-01  7.3777E-01  1.1808E+00  7.1402E-01  9.7649E-01  4.5894E-01  4.3192E-01  8.6798E-01  9.0182E-01
             2.1550E+00
 PARAMETER:  1.2954E-01 -1.6914E-01 -2.0413E-01  2.6621E-01 -2.3684E-01  7.6207E-02 -6.7884E-01 -7.3952E-01 -4.1591E-02 -3.3364E-03
             8.6781E-01
 GRADIENT:   3.3049E+01  5.6205E+01  2.1998E+01  1.3640E+02  2.3516E+01 -2.4299E+01 -7.3204E+00  9.5229E-01 -4.9635E+01 -7.7331E+00
            -1.1485E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2007.38880733453        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      273
 NPARAMETR:  1.0271E+00  8.0806E-01  6.5595E-01  1.1362E+00  7.1162E-01  9.9273E-01  5.2615E-01  3.7221E-01  9.3084E-01  9.0603E-01
             2.1958E+00
 PARAMETER:  1.2675E-01 -1.1312E-01 -3.2167E-01  2.2768E-01 -2.4021E-01  9.2706E-02 -5.4216E-01 -8.8831E-01  2.8332E-02  1.3165E-03
             8.8654E-01
 GRADIENT:  -9.7119E+01  1.5700E+01 -2.2751E+01  4.7451E+01  5.5166E+01 -3.1120E+01 -7.4048E+00  1.4615E+00 -3.1813E+01 -3.1388E+00
            -8.5034E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2038.61904988379        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      454
 NPARAMETR:  1.0688E+00  5.2652E-01  4.5587E-01  1.2139E+00  4.4459E-01  1.0341E+00  7.8358E-01  9.4457E-02  1.0050E+00  8.2932E-01
             2.1152E+00
 PARAMETER:  1.6650E-01 -5.4146E-01 -6.8554E-01  2.9383E-01 -7.1061E-01  1.3352E-01 -1.4388E-01 -2.2596E+00  1.0495E-01 -8.7152E-02
             8.4917E-01
 GRADIENT:  -2.3340E+00  4.7053E+01  6.4388E+01  5.1014E+01 -7.6193E+01 -9.1779E+00 -1.2363E+01  1.2677E-01 -2.0138E+01  9.0584E+00
            -2.3296E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2048.89380725325        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      629
 NPARAMETR:  1.0693E+00  4.4850E-01  3.5060E-01  1.1628E+00  3.7522E-01  1.0629E+00  1.0381E+00  6.6744E-02  1.0760E+00  7.0876E-01
             2.1029E+00
 PARAMETER:  1.6696E-01 -7.0184E-01 -9.4812E-01  2.5084E-01 -8.8025E-01  1.6104E-01  1.3738E-01 -2.6069E+00  1.7327E-01 -2.4424E-01
             8.4334E-01
 GRADIENT:  -7.8333E-01  3.8530E+00 -1.5521E+00  2.2226E+00  1.0308E+00 -6.1678E-01  8.0259E-02  3.6342E-02  1.7685E+00  1.3934E+00
            -4.0446E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2048.97011871258        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      810
 NPARAMETR:  1.0705E+00  4.3944E-01  3.4550E-01  1.1605E+00  3.6914E-01  1.0651E+00  1.0393E+00  3.5689E-02  1.0700E+00  7.0107E-01
             2.1107E+00
 PARAMETER:  1.6808E-01 -7.2226E-01 -9.6275E-01  2.4884E-01 -8.9658E-01  1.6309E-01  1.3858E-01 -3.2329E+00  1.6767E-01 -2.5515E-01
             8.4703E-01
 GRADIENT:   1.0357E+00  8.8048E-01  1.4177E+00 -7.7038E-01 -2.5588E+00  9.6082E-02  1.7275E-02  8.8036E-03  6.8200E-02 -2.1172E-01
            -2.2004E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2048.97442825378        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      986
 NPARAMETR:  1.0698E+00  4.3920E-01  3.4545E-01  1.1610E+00  3.6934E-01  1.0648E+00  1.0383E+00  1.0000E-02  1.0698E+00  7.0223E-01
             2.1111E+00
 PARAMETER:  1.6744E-01 -7.2281E-01 -9.6291E-01  2.4927E-01 -8.9604E-01  1.6280E-01  1.3761E-01 -4.5494E+00  1.6747E-01 -2.5349E-01
             8.4719E-01
 GRADIENT:  -2.2126E-01 -5.6847E-02 -5.9706E-02 -5.2540E-03 -9.2929E-02 -2.1618E-02 -7.6235E-03  9.9670E-06 -6.5478E-03  3.0071E-02
             4.7634E-03

0ITERATION NO.:   36    OBJECTIVE VALUE:  -2048.97442825378        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1008
 NPARAMETR:  1.0698E+00  4.3920E-01  3.4545E-01  1.1610E+00  3.6934E-01  1.0648E+00  1.0383E+00  1.0000E-02  1.0698E+00  7.0223E-01
             2.1111E+00
 PARAMETER:  1.6744E-01 -7.2281E-01 -9.6291E-01  2.4927E-01 -8.9604E-01  1.6280E-01  1.3761E-01 -4.5494E+00  1.6747E-01 -2.5349E-01
             8.4719E-01
 GRADIENT:  -2.2126E-01 -5.6847E-02 -5.9706E-02 -5.2540E-03 -9.2929E-02 -2.1618E-02 -7.6235E-03  9.9670E-06 -6.5478E-03  3.0071E-02
             4.7634E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1008
 NO. OF SIG. DIGITS IN FINAL EST.:  3.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.7331E-04  4.5166E-03 -1.3992E-04 -5.1797E-03  8.3511E-04
 SE:             2.9588E-02  1.7564E-02  2.2736E-04  2.8188E-02  2.4184E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7376E-01  7.9706E-01  5.3827E-01  8.5421E-01  9.7245E-01

 ETASHRINKSD(%)  8.7544E-01  4.1159E+01  9.9238E+01  5.5656E+00  1.8982E+01
 ETASHRINKVR(%)  1.7432E+00  6.5377E+01  9.9994E+01  1.0821E+01  3.4361E+01
 EBVSHRINKSD(%)  1.1394E+00  4.0936E+01  9.9233E+01  5.0750E+00  1.9021E+01
 EBVSHRINKVR(%)  2.2658E+00  6.5114E+01  9.9994E+01  9.8925E+00  3.4424E+01
 RELATIVEINF(%)  9.7685E+01  7.3654E+00  6.2424E-04  7.6049E+01  4.0978E+00
 EPSSHRINKSD(%)  2.6783E+01
 EPSSHRINKVR(%)  4.6393E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2048.9744282537754     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -946.24818840816829     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.62
 Elapsed covariance  time in seconds:     8.78
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2048.974       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.07E+00  4.39E-01  3.45E-01  1.16E+00  3.69E-01  1.06E+00  1.04E+00  1.00E-02  1.07E+00  7.02E-01  2.11E+00
 


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
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         3.56E-02  6.49E-02  6.07E-02  4.77E-02  5.54E-02  6.96E-02  1.48E-01  2.30E-04  1.11E-01  7.15E-02  2.32E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.27E-03
 
 TH 2
+       -6.82E-04  4.21E-03
 
 TH 3
+       -8.72E-04  3.37E-03  3.68E-03
 
 TH 4
+       -5.21E-04  1.26E-03  1.73E-03  2.27E-03
 
 TH 5
+       -7.18E-04  3.32E-03  3.25E-03  1.38E-03  3.07E-03
 
 TH 6
+        3.30E-04 -7.93E-04 -9.93E-04 -2.88E-04 -7.67E-04  4.85E-03
 
 TH 7
+       -6.57E-04  2.23E-03  3.09E-03  8.60E-04  2.87E-03 -1.31E-03  2.18E-02
 
 TH 8
+       -2.18E-06  9.51E-06  7.43E-06  4.95E-06  7.70E-06 -3.33E-06 -7.52E-07  5.27E-08
 
 TH 9
+        8.93E-04 -3.12E-03 -2.35E-03 -2.01E-03 -2.51E-03  8.27E-04  5.56E-04 -2.27E-05  1.24E-02
 
 TH10
+        1.62E-04  6.74E-04  8.16E-04  2.67E-04  8.93E-04 -9.28E-05 -7.45E-04  8.88E-06 -2.31E-03  5.12E-03
 
 TH11
+        3.05E-03 -9.87E-03 -8.65E-03 -5.22E-03 -8.27E-03  2.47E-03  1.39E-04 -4.46E-05  2.00E-02 -5.15E-03  5.39E-02
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        3.56E-02
 
 TH 2
+       -2.95E-01  6.49E-02
 
 TH 3
+       -4.04E-01  8.57E-01  6.07E-02
 
 TH 4
+       -3.07E-01  4.08E-01  5.97E-01  4.77E-02
 
 TH 5
+       -3.64E-01  9.24E-01  9.68E-01  5.21E-01  5.54E-02
 
 TH 6
+        1.33E-01 -1.76E-01 -2.35E-01 -8.66E-02 -1.99E-01  6.96E-02
 
 TH 7
+       -1.25E-01  2.33E-01  3.45E-01  1.22E-01  3.51E-01 -1.27E-01  1.48E-01
 
 TH 8
+       -2.66E-01  6.39E-01  5.33E-01  4.52E-01  6.06E-01 -2.08E-01 -2.22E-02  2.30E-04
 
 TH 9
+        2.25E-01 -4.32E-01 -3.47E-01 -3.79E-01 -4.07E-01  1.07E-01  3.38E-02 -8.88E-01  1.11E-01
 
 TH10
+        6.37E-02  1.45E-01  1.88E-01  7.81E-02  2.26E-01 -1.86E-02 -7.05E-02  5.41E-01 -2.90E-01  7.15E-02
 
 TH11
+        3.69E-01 -6.55E-01 -6.13E-01 -4.71E-01 -6.43E-01  1.52E-01  4.06E-03 -8.37E-01  7.75E-01 -3.10E-01  2.32E-01
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.19E+03
 
 TH 2
+       -7.32E+02  4.40E+03
 
 TH 3
+        7.30E+02 -2.48E+02  8.52E+03
 
 TH 4
+       -2.38E+02  1.08E+03 -1.74E+03  1.26E+03
 
 TH 5
+       -6.44E+01 -3.76E+03 -8.96E+03  7.16E+02  1.42E+04
 
 TH 6
+        1.00E+02 -3.98E+02  6.34E+02 -2.49E+02 -3.71E+02  3.25E+02
 
 TH 7
+        1.71E+01  4.23E+01  1.10E+02 -1.32E+01 -2.91E+02  2.37E+01  6.61E+01
 
 TH 8
+        3.33E+05 -1.29E+06  1.05E+06 -5.70E+05 -2.69E+05  2.87E+05  4.19E+04  8.53E+08
 
 TH 9
+        3.89E+02 -1.50E+03  7.87E+02 -5.44E+02  3.71E+01  3.11E+02  5.38E+01  9.81E+05  1.37E+03
 
 TH10
+       -4.68E+02  1.64E+03 -9.38E+02  6.58E+02 -2.75E+02 -3.03E+02 -2.07E+01 -8.99E+05 -1.02E+03  1.21E+03
 
 TH11
+       -3.56E+01  1.89E+00  1.94E+02 -3.21E+01 -1.17E+02  2.06E+01 -1.00E+01  5.96E+04 -2.64E+01 -3.84E+01  8.55E+01
 
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
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       26.497
Stop Time:
Thu Sep 30 05:50:04 CDT 2021
