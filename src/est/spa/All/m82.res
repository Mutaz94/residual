Sat Sep 18 15:59:26 CDT 2021
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
$DATA ../../../../data/spa/All/dat82.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m82.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   16380.9056525822        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   4.8583E+01  1.8091E+02 -3.8134E+02  7.2186E+01 -1.0482E+03  1.8957E+02 -3.4091E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -534.993777634862        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:       60
 NPARAMETR:  1.2770E+00  1.1514E+00  2.6542E+00  3.8686E-01  2.3683E-01  4.7748E-01  1.5505E+01
 PARAMETER:  3.4455E-01  2.4095E-01  1.0761E+00 -8.4969E-01 -1.3404E+00 -6.3924E-01  2.8411E+00
 GRADIENT:   4.7810E+01 -1.0137E+02  1.0248E-01  1.6004E+01  1.7039E+01  7.7607E-01  1.0883E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -548.718971030241        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      112
 NPARAMETR:  1.1791E+00  1.1888E+00  7.2597E+00  3.6388E-01  1.3055E-01  2.3079E+00  1.4608E+01
 PARAMETER:  2.6475E-01  2.7292E-01  2.0823E+00 -9.1093E-01 -1.9360E+00  9.3635E-01  2.7816E+00
 GRADIENT:  -2.3240E+01  2.4757E+01 -7.7223E-01  5.4130E-01  1.0347E+00 -5.4544E-01  3.9937E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -550.842855036381        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:      162
 NPARAMETR:  1.1428E+00  1.1192E+00  1.8072E+01  3.5525E-01  1.0030E-01  4.2772E+00  1.3756E+01
 PARAMETER:  2.3348E-01  2.1262E-01  2.9944E+00 -9.3493E-01 -2.1996E+00  1.5533E+00  2.7215E+00
 GRADIENT:   3.8990E-01  2.9076E+00  6.4869E-03 -3.0952E-01 -1.7806E-01 -5.8001E-01 -3.6632E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -550.942997676449        NO. OF FUNC. EVALS.:  53
 CUMULATIVE NO. OF FUNC. EVALS.:      215
 NPARAMETR:  1.1402E+00  1.1159E+00  2.7181E+01  3.5514E-01  1.0118E-01  5.3653E+00  1.3779E+01
 PARAMETER:  2.3120E-01  2.0968E-01  3.4025E+00 -9.3523E-01 -2.1908E+00  1.7800E+00  2.7231E+00
 GRADIENT:  -4.3856E-01 -4.5914E-01  2.0134E-01 -2.5649E-02  6.9740E-02 -4.9036E-01 -2.5792E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -550.961010712246        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      307
 NPARAMETR:  1.1451E+00  1.1212E+00  2.9430E+01  3.5665E-01  1.0265E-01  5.6112E+00  1.3846E+01
 PARAMETER:  2.3546E-01  2.1444E-01  3.4820E+00 -9.3101E-01 -2.1764E+00  1.8248E+00  2.7280E+00
 GRADIENT:  -6.0965E-02  1.5291E-01  4.1852E-04  1.7721E-02  4.6826E-03  4.8131E-03 -1.9350E-01

0ITERATION NO.:   26    OBJECTIVE VALUE:  -550.961010712246        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      321
 NPARAMETR:  1.1451E+00  1.1212E+00  2.9430E+01  3.5665E-01  1.0265E-01  5.6112E+00  1.3846E+01
 PARAMETER:  2.3546E-01  2.1444E-01  3.4820E+00 -9.3101E-01 -2.1764E+00  1.8248E+00  2.7280E+00
 GRADIENT:  -6.0965E-02  1.5291E-01  4.1852E-04  1.7721E-02  4.6826E-03  4.8131E-03 -1.9350E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      321
 NO. OF SIG. DIGITS IN FINAL EST.:  3.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.9530E-02 -3.9146E-02 -2.9746E-02
 SE:             8.4597E-02  2.6747E-02  1.1476E-02
 N:                     100         100         100

 P VAL.:         6.4031E-01  1.4330E-01  9.5449E-03

 ETASHRINKSD(%)  1.0377E+01  7.1665E+01  8.7842E+01
 ETASHRINKVR(%)  1.9678E+01  9.1971E+01  9.8522E+01
 EBVSHRINKSD(%)  1.0161E+01  7.2637E+01  9.2470E+01
 EBVSHRINKVR(%)  1.9290E+01  9.2513E+01  9.9433E+01
 RELATIVEINF(%)  3.3720E+01  3.3195E+00  2.7017E-01
 EPSSHRINKSD(%)  3.9525E+00
 EPSSHRINKVR(%)  7.7487E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -550.96101071224632     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       184.18981585149186     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:     2.73
 Elapsed covariance  time in seconds:     2.19
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -550.961       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.15E+00  1.12E+00  2.94E+01  3.57E-01  1.03E-01  5.61E+00  1.38E+01
 


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
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         8.57E-02  8.75E-02  8.51E+00  3.48E-02  1.11E-01  6.76E-01  1.68E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 


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
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        7.35E-03
 
 TH 2
+        6.38E-03  7.66E-03
 
 TH 3
+       -5.29E-01 -3.89E-01  7.25E+01
 
 TH 4
+        1.55E-04  8.66E-04  1.53E-01  1.21E-03
 
 TH 5
+        9.01E-04  3.90E-03  1.93E-01  2.31E-03  1.24E-02
 
 TH 6
+       -3.40E-02 -2.86E-02  4.96E+00  1.08E-02 -9.33E-03  4.57E-01
 
 TH 7
+        7.92E-02  4.61E-02 -9.20E+00 -1.77E-02 -1.10E-01 -1.88E-01  2.84E+00
 
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
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        8.57E-02
 
 TH 2
+        8.50E-01  8.75E-02
 
 TH 3
+       -7.25E-01 -5.23E-01  8.51E+00
 
 TH 4
+        5.17E-02  2.84E-01  5.15E-01  3.48E-02
 
 TH 5
+        9.44E-02  4.00E-01  2.03E-01  5.94E-01  1.11E-01
 
 TH 6
+       -5.87E-01 -4.83E-01  8.62E-01  4.57E-01 -1.24E-01  6.76E-01
 
 TH 7
+        5.48E-01  3.13E-01 -6.41E-01 -3.01E-01 -5.85E-01 -1.65E-01  1.68E+00
 
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
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        2.20E+04
 
 TH 2
+        1.89E+04  1.88E+04
 
 TH 3
+       -7.36E+03 -6.82E+03  2.58E+03
 
 TH 4
+       -1.88E+04 -1.70E+04  6.34E+03  1.95E+04
 
 TH 5
+       -1.56E+04 -1.48E+04  5.51E+03  1.29E+04  1.22E+04
 
 TH 6
+        7.44E+04  6.89E+04 -2.61E+04 -6.43E+04 -5.57E+04  2.64E+05
 
 TH 7
+       -2.06E+04 -1.90E+04  7.21E+03  1.77E+04  1.54E+04 -7.28E+04  2.01E+04
 
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
 #CPUT: Total CPU Time in Seconds,        4.990
Stop Time:
Sat Sep 18 15:59:32 CDT 2021