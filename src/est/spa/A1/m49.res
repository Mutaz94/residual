Sat Sep 18 09:16:41 CDT 2021
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
$DATA ../../../../data/spa/A1/dat49.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER
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

$OMEGA  0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX
$SIGMA  1 FIX ;        [P]
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
 RAW OUTPUT FILE (FILE): m49.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -888.960682679994        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.5918E+02 -4.8470E+01  5.5101E+01 -7.0784E+01  6.5657E+01 -2.0976E+00 -4.7527E+01 -2.2609E+02 -9.0066E+01 -1.4170E+01
            -1.0891E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1484.84158581080        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.7740E-01  1.1391E+00  1.0918E+00  9.3702E-01  1.0986E+00  9.9173E-01  1.7705E+00  7.3739E-01  1.2191E+00  9.8060E-01
             1.4745E+00
 PARAMETER:  7.7139E-02  2.3026E-01  1.8783E-01  3.4954E-02  1.9404E-01  9.1696E-02  6.7128E-01 -2.0464E-01  2.9810E-01  8.0412E-02
             4.8835E-01
 GRADIENT:   8.0804E+01  1.3203E+01  1.1849E+01 -9.5503E+00  2.2006E+01 -5.9575E+00  3.7990E+01 -3.6841E+00  1.8619E+01 -3.9969E+00
            -3.1006E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1489.15990727459        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  9.5444E-01  8.2406E-01  8.1318E-01  1.1230E+00  8.1533E-01  9.9322E-01  2.0781E+00  3.4253E-01  1.0412E+00  6.1238E-01
             1.7060E+00
 PARAMETER:  5.3373E-02 -9.3513E-02 -1.0680E-01  2.1601E-01 -1.0416E-01  9.3199E-02  8.3144E-01 -9.7138E-01  1.4039E-01 -3.9040E-01
             6.3416E-01
 GRADIENT:   1.6468E+01  3.8085E+00 -1.8053E+01  3.5046E+01  3.1006E+01 -3.9042E+00  2.1642E+01 -2.3461E-01  2.1227E+01 -3.0997E+00
             3.5563E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1494.61985183354        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      225
 NPARAMETR:  9.4689E-01  1.0839E+00  7.1038E-01  9.4378E-01  8.5611E-01  1.0040E+00  1.4912E+00  4.8975E-01  1.0119E+00  6.8540E-01
             1.5630E+00
 PARAMETER:  4.5429E-02  1.8052E-01 -2.4196E-01  4.2134E-02 -5.5360E-02  1.0401E-01  4.9961E-01 -6.1386E-01  1.1181E-01 -2.7775E-01
             5.4664E-01
 GRADIENT:  -4.7267E-02  7.6321E-01  1.0658E+00 -6.3641E-01 -1.7760E+00 -2.8366E-01 -1.3602E-01  5.8587E-01 -1.8703E-01  8.5191E-03
             2.8292E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1494.62413416891        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      295
 NPARAMETR:  9.4690E-01  1.0843E+00  6.9085E-01  9.4148E-01  8.4611E-01  1.0053E+00  1.4917E+00  4.7054E-01  1.0108E+00  6.6926E-01
             1.5628E+00
 PARAMETER:  4.5437E-02  1.8093E-01 -2.6983E-01  3.9698E-02 -6.7103E-02  1.0528E-01  4.9990E-01 -6.5387E-01  1.1071E-01 -3.0158E-01
             5.4645E-01
 GRADIENT:  -3.8241E-01 -1.9672E-01 -1.2489E+00  1.1233E+00  1.1381E+00  1.2634E-01  9.1939E-02  6.9809E-01  2.0720E-01  5.9166E-02
             3.0906E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1494.64777827834        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      368
 NPARAMETR:  9.4686E-01  1.0999E+00  6.3552E-01  9.2536E-01  8.2101E-01  1.0084E+00  1.4746E+00  3.5922E-01  1.0118E+00  6.3207E-01
             1.5571E+00
 PARAMETER:  4.5391E-02  1.9524E-01 -3.5331E-01  2.2423E-02 -9.7225E-02  1.0832E-01  4.8840E-01 -9.2383E-01  1.1171E-01 -3.5876E-01
             5.4285E-01
 GRADIENT:  -1.2262E+00 -6.7343E-01 -3.2032E+00  2.5832E+00  3.2356E+00  1.0985E+00  2.3617E-01  5.1556E-01  7.1376E-01  5.4406E-02
             2.0297E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1494.78578149239        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      441
 NPARAMETR:  9.4754E-01  1.0974E+00  6.2091E-01  9.2325E-01  8.1105E-01  1.0049E+00  1.4781E+00  1.0348E-01  1.0052E+00  6.4199E-01
             1.5514E+00
 PARAMETER:  4.6113E-02  1.9298E-01 -3.7657E-01  2.0148E-02 -1.0943E-01  1.0486E-01  4.9078E-01 -2.1683E+00  1.0516E-01 -3.4318E-01
             5.3915E-01
 GRADIENT:   2.0283E-01 -1.0311E-01  1.8875E-01 -6.7834E-01 -4.7133E-01 -2.8330E-01  1.7785E-01  2.2713E-02 -3.2574E-02  2.0507E-01
             3.7372E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1494.89370700962        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      600
 NPARAMETR:  9.5488E-01  1.1052E+00  6.3998E-01  9.2568E-01  8.2612E-01  1.0120E+00  1.4851E+00  5.5911E-02  1.0124E+00  6.6336E-01
             1.5538E+00
 PARAMETER:  5.3831E-02  2.0006E-01 -3.4632E-01  2.2769E-02 -9.1020E-02  1.1198E-01  4.9551E-01 -2.7840E+00  1.1237E-01 -3.1044E-01
             5.4071E-01
 GRADIENT:   2.8754E-01  1.2609E-01  1.3728E-01  1.3623E-01 -6.2049E-02  8.4506E-02 -1.8903E-02  2.2108E-03  1.9766E-02 -6.5648E-02
            -2.1269E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1494.89509668847        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      775
 NPARAMETR:  9.5477E-01  1.1083E+00  6.3732E-01  9.2336E-01  8.2606E-01  1.0117E+00  1.4817E+00  1.0000E-02  1.0131E+00  6.6291E-01
             1.5544E+00
 PARAMETER:  5.3714E-02  2.0284E-01 -3.5048E-01  2.0268E-02 -9.1094E-02  1.1166E-01  4.9321E-01 -4.5365E+00  1.1297E-01 -3.1112E-01
             5.4107E-01
 GRADIENT:  -1.9964E-02 -4.7025E-02  1.4021E-02 -1.1196E-01 -2.3425E-02 -4.2907E-02  5.0970E-04  0.0000E+00 -1.4364E-02  1.1517E-02
             9.9845E-03

0ITERATION NO.:   42    OBJECTIVE VALUE:  -1494.89510796342        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      832
 NPARAMETR:  9.5478E-01  1.1080E+00  6.3742E-01  9.2366E-01  8.2593E-01  1.0119E+00  1.4821E+00  1.0000E-02  1.0130E+00  6.6270E-01
             1.5544E+00
 PARAMETER:  5.3726E-02  2.0254E-01 -3.5032E-01  2.0588E-02 -9.1240E-02  1.1181E-01  4.9348E-01 -4.5523E+00  1.1295E-01 -3.1143E-01
             5.4107E-01
 GRADIENT:   6.0916E-03  7.9352E-03  3.0110E-03  9.1689E-03  4.5703E-03  1.6499E-02  1.3699E-03  0.0000E+00  5.0612E-03 -3.6396E-03
            -7.5877E-04

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      832
 NO. OF SIG. DIGITS IN FINAL EST.:  3.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.4651E-04  3.6550E-03 -3.6200E-04 -8.1264E-03 -1.0126E-02
 SE:             2.9641E-02  2.4558E-02  1.5206E-04  2.2803E-02  1.7371E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9067E-01  8.8169E-01  1.7279E-02  7.2156E-01  5.5995E-01

 ETASHRINKSD(%)  6.9888E-01  1.7726E+01  9.9491E+01  2.3606E+01  4.1805E+01
 ETASHRINKVR(%)  1.3929E+00  3.2310E+01  9.9997E+01  4.1640E+01  6.6133E+01
 EBVSHRINKSD(%)  9.8434E-01  1.6693E+01  9.9527E+01  2.3914E+01  4.2382E+01
 EBVSHRINKVR(%)  1.9590E+00  3.0600E+01  9.9998E+01  4.2109E+01  6.6802E+01
 RELATIVEINF(%)  9.7850E+01  7.9106E+00  2.2406E-04  6.6699E+00  3.1021E+00
 EPSSHRINKSD(%)  3.9288E+01
 EPSSHRINKVR(%)  6.3141E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1494.8951079634217     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -759.74428139968347     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:     8.21
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.02
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1494.895       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.55E-01  1.11E+00  6.37E-01  9.24E-01  8.26E-01  1.01E+00  1.48E+00  1.00E-02  1.01E+00  6.63E-01  1.55E+00
 


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
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.19E+03
 
 TH 2
+       -1.37E+01  2.78E+02
 
 TH 3
+        8.66E+01  1.93E+02  7.01E+02
 
 TH 4
+       -9.44E+01  2.05E+02 -4.61E+02  8.08E+02
 
 TH 5
+       -4.47E+01 -3.40E+02 -8.82E+02  4.71E+02  1.24E+03
 
 TH 6
+        6.81E+01  5.75E+01  6.06E+01  8.79E+00 -7.62E+01  1.55E+02
 
 TH 7
+       -2.00E-01 -7.18E-02 -1.11E+01  7.60E+00  5.40E+00  6.72E+00  1.37E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -1.50E+01  2.10E+00 -4.20E+01  3.83E+01  2.20E+01 -1.07E+01  2.68E+00  0.00E+00  1.07E+01
 
 TH10
+       -1.93E+01  8.72E-01 -2.26E+01  9.08E+00 -1.33E+01 -3.47E+00  4.02E+00  0.00E+00  1.28E+01  1.83E+01
 
 TH11
+       -3.49E+01 -2.07E+00 -5.88E+01  3.46E+01  6.96E+00 -1.22E+01  6.42E+00  0.00E+00  2.19E+01  2.96E+01  4.87E+01
 
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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.17E+03
 
 TH 2
+       -7.87E+00  2.94E+02
 
 TH 3
+        1.82E+01  1.91E+02  6.68E+02
 
 TH 4
+       -2.31E+01  1.84E+02 -3.80E+02  7.57E+02
 
 TH 5
+       -9.37E+00 -3.12E+02 -8.06E+02  4.39E+02  1.22E+03
 
 TH 6
+        2.03E+00 -1.40E+00  4.92E+00 -5.69E+00 -4.68E+00  1.87E+02
 
 TH 7
+        1.45E+00  2.30E+01 -2.15E+01 -1.55E+01  1.19E+01 -2.53E-01  4.48E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        3.28E+00 -1.27E+01 -3.20E+01  2.71E+01 -9.63E-01 -6.68E-01  1.05E+01  0.00E+00  7.61E+01
 
 TH10
+       -6.64E-01 -7.99E+00 -3.93E+01 -2.32E+01 -4.42E+01  1.29E+00  9.00E+00  0.00E+00  1.09E+01  5.98E+01
 
 TH11
+       -9.90E+00 -1.04E+01 -2.78E+01 -6.95E+00 -1.14E+01  2.52E+00  4.85E+00  0.00E+00  1.03E+01  2.34E+01  9.85E+01
 
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
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.17E+03
 
 TH 2
+        1.79E+01  2.86E+02
 
 TH 3
+        6.04E+01  1.94E+02  6.46E+02
 
 TH 4
+        5.18E+01  1.96E+02 -3.28E+02  7.36E+02
 
 TH 5
+        3.11E+01 -3.18E+02 -7.82E+02  4.05E+02  1.24E+03
 
 TH 6
+       -7.32E+01 -4.33E+01 -6.37E+01 -6.49E+01  8.23E+01  2.27E+02
 
 TH 7
+       -2.29E+01 -1.55E+00 -1.96E+01 -4.34E+01  1.13E+00  2.65E+01  3.22E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        5.29E+00 -2.80E+01 -3.24E+00 -2.84E+01 -1.93E+01  4.54E+00  1.15E+01  0.00E+00  4.80E+01
 
 TH10
+       -1.75E+00 -3.99E+00 -4.71E+01 -2.45E+01 -2.29E+01  2.68E+01  1.87E+01  0.00E+00  6.49E+00  4.82E+01
 
 TH11
+        8.02E+01 -4.99E+01 -7.50E+00 -8.34E+01 -4.98E+01  3.58E+01  1.47E+01  0.00E+00  3.70E+01  2.01E+01  1.91E+02
 
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
 #CPUT: Total CPU Time in Seconds,       14.300
Stop Time:
Sat Sep 18 09:16:57 CDT 2021