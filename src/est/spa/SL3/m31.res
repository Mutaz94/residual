Wed Sep 29 16:30:31 CDT 2021
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
$DATA ../../../../data/spa/SL3/dat31.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1593.94002852630        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7671E+02 -1.9014E+01 -5.6660E+01  6.1678E+01  1.2952E+02  3.7834E+01  6.3504E+00  8.6144E+00  5.6406E+00 -1.3182E+01
            -9.6553E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1606.39690052752        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  9.7215E-01  9.7761E-01  1.0277E+00  9.8674E-01  9.2998E-01  9.1066E-01  9.3401E-01  9.3211E-01  9.8145E-01  9.3060E-01
             1.2367E+00
 PARAMETER:  7.1751E-02  7.7356E-02  1.2733E-01  8.6656E-02  2.7405E-02  6.4127E-03  3.1733E-02  2.9694E-02  8.1279E-02  2.8071E-02
             3.1241E-01
 GRADIENT:   2.6759E+02 -2.6332E+01 -9.0880E+00 -2.2279E+01  3.2094E+01 -9.7638E+00  2.7699E+00  5.6792E+00 -1.9904E+00 -4.3015E+00
             9.8425E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1610.16260381912        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      243
 NPARAMETR:  9.7395E-01  9.2477E-01  1.0777E+00  1.0487E+00  9.1602E-01  9.8069E-01  8.2501E-01  7.2949E-01  1.0189E+00  1.0223E+00
             1.2768E+00
 PARAMETER:  7.3609E-02  2.1793E-02  1.7479E-01  1.4758E-01  1.2282E-02  8.0500E-02 -9.2361E-02 -2.1541E-01  1.1870E-01  1.2204E-01
             3.4432E-01
 GRADIENT:  -8.5739E-01 -1.4805E+01  2.9638E-01 -2.4473E+01 -1.3711E+00 -5.7631E+00  1.9032E+00  1.9500E+00  4.3921E+00  3.8698E+00
             2.2942E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1611.54527313907        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      419
 NPARAMETR:  9.7886E-01  8.8765E-01  9.3817E-01  1.0793E+00  8.4227E-01  1.0009E+00  9.7925E-01  4.1991E-01  9.5244E-01  9.4813E-01
             1.2029E+00
 PARAMETER:  7.8636E-02 -1.9177E-02  3.6173E-02  1.7634E-01 -7.1654E-02  1.0091E-01  7.9032E-02 -7.6772E-01  5.1269E-02  4.6739E-02
             2.8477E-01
 GRADIENT:   9.2082E+00 -2.5924E-01  2.5385E+00 -2.0254E+00 -1.0525E+00  1.3037E+00 -1.6303E-01  2.4574E-01 -8.8011E-01 -1.5828E+00
            -2.4446E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1611.74792148682        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      594
 NPARAMETR:  9.7542E-01  9.8421E-01  8.6521E-01  1.0186E+00  8.4864E-01  9.9526E-01  9.2355E-01  2.5735E-01  9.9578E-01  9.4505E-01
             1.2055E+00
 PARAMETER:  7.5109E-02  8.4085E-02 -4.4782E-02  1.1846E-01 -6.4117E-02  9.5248E-02  2.0475E-02 -1.2573E+00  9.5772E-02  4.3482E-02
             2.8691E-01
 GRADIENT:  -7.2788E-01  1.2143E+00 -1.0037E+00  4.3307E+00  1.7318E+00 -1.2191E+00 -4.9352E-01  1.3394E-01 -2.0022E-01 -3.4639E-01
            -1.0696E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1611.83640109426        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      769
 NPARAMETR:  9.7625E-01  1.0998E+00  8.1429E-01  9.4086E-01  8.7428E-01  9.9800E-01  8.6750E-01  1.0347E-01  1.0552E+00  9.4712E-01
             1.2087E+00
 PARAMETER:  7.5963E-02  1.9517E-01 -1.0544E-01  3.9041E-02 -3.4359E-02  9.8002E-02 -4.2140E-02 -2.1684E+00  1.5372E-01  4.5675E-02
             2.8953E-01
 GRADIENT:  -3.7348E-03 -9.6552E-01 -2.1471E-01 -8.6715E-01  6.5362E-01 -2.7201E-01 -7.0829E-02  2.4405E-02  9.0436E-02 -2.5005E-02
            -1.2086E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1611.84820750733        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      949
 NPARAMETR:  9.7608E-01  1.0885E+00  8.1187E-01  9.4794E-01  8.6811E-01  9.9805E-01  8.7829E-01  3.1243E-02  1.0456E+00  9.4173E-01
             1.2086E+00
 PARAMETER:  7.5787E-02  1.8479E-01 -1.0842E-01  4.6533E-02 -4.1436E-02  9.8052E-02 -2.9784E-02 -3.3660E+00  1.4460E-01  3.9960E-02
             2.8945E-01
 GRADIENT:  -4.3689E-01 -8.5277E-01 -4.2312E-01 -5.0068E-01  1.0967E+00 -2.6847E-01 -1.3751E-01  2.2606E-03 -2.0511E-01 -2.2576E-01
            -1.3826E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1611.85063698668        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1124
 NPARAMETR:  9.7625E-01  1.0785E+00  8.1446E-01  9.5470E-01  8.6436E-01  9.9873E-01  8.8583E-01  1.0000E-02  1.0404E+00  9.4147E-01
             1.2088E+00
 PARAMETER:  7.5959E-02  1.7556E-01 -1.0523E-01  5.3646E-02 -4.5765E-02  9.8727E-02 -2.1230E-02 -4.6829E+00  1.3964E-01  3.9684E-02
             2.8961E-01
 GRADIENT:  -8.6780E-03 -3.4698E-02 -1.4186E-02 -1.9383E-02  2.7945E-02 -1.7709E-03  1.2842E-03  0.0000E+00  6.2402E-03  1.0598E-03
             6.4366E-03

0ITERATION NO.:   36    OBJECTIVE VALUE:  -1611.85063698668        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1146
 NPARAMETR:  9.7625E-01  1.0785E+00  8.1446E-01  9.5470E-01  8.6436E-01  9.9873E-01  8.8583E-01  1.0000E-02  1.0404E+00  9.4147E-01
             1.2088E+00
 PARAMETER:  7.5959E-02  1.7556E-01 -1.0523E-01  5.3646E-02 -4.5765E-02  9.8727E-02 -2.1230E-02 -4.6829E+00  1.3964E-01  3.9684E-02
             2.8961E-01
 GRADIENT:  -8.6780E-03 -3.4698E-02 -1.4186E-02 -1.9383E-02  2.7945E-02 -1.7709E-03  1.2842E-03  0.0000E+00  6.2402E-03  1.0598E-03
             6.4366E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1146
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.2205E-04 -1.6737E-02 -2.8924E-04  4.1399E-03 -2.2127E-02
 SE:             2.9757E-02  1.7778E-02  1.4983E-04  2.5259E-02  2.3866E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8868E-01  3.4648E-01  5.3555E-02  8.6981E-01  3.5385E-01

 ETASHRINKSD(%)  3.0955E-01  4.0443E+01  9.9498E+01  1.5380E+01  2.0047E+01
 ETASHRINKVR(%)  6.1815E-01  6.4529E+01  9.9997E+01  2.8395E+01  3.6075E+01
 EBVSHRINKSD(%)  6.2700E-01  4.0124E+01  9.9529E+01  1.5499E+01  1.8962E+01
 EBVSHRINKVR(%)  1.2501E+00  6.4148E+01  9.9998E+01  2.8595E+01  3.4329E+01
 RELATIVEINF(%)  9.8437E+01  1.1593E+00  2.4671E-04  3.1479E+00  6.0106E+00
 EPSSHRINKSD(%)  4.2171E+01
 EPSSHRINKVR(%)  6.6558E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1611.8506369866770     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -876.69981042293887     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.65
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.68
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1611.851       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.76E-01  1.08E+00  8.14E-01  9.55E-01  8.64E-01  9.99E-01  8.86E-01  1.00E-02  1.04E+00  9.41E-01  1.21E+00
 


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
+        1.15E+03
 
 TH 2
+       -9.94E+00  4.57E+02
 
 TH 3
+        1.33E+01  2.06E+02  3.97E+02
 
 TH 4
+       -1.66E+01  4.01E+02 -1.46E+02  8.06E+02
 
 TH 5
+       -2.88E+00 -3.97E+02 -5.59E+02  1.60E+02  1.10E+03
 
 TH 6
+        1.47E+00 -1.62E+00  3.41E+00 -4.80E+00 -1.73E+00  1.95E+02
 
 TH 7
+        1.14E+00  8.90E+00  8.69E+00 -7.90E+00 -1.64E+01 -9.81E-02  3.50E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.76E+00 -2.68E+01 -1.56E+01  2.83E+01  6.36E-01 -5.48E-01  2.43E+01  0.00E+00  9.72E+01
 
 TH10
+       -1.27E+00 -3.19E+00 -4.18E+01 -1.20E+01 -5.15E+01 -1.23E-01  1.76E+01  0.00E+00  3.50E+00  9.59E+01
 
 TH11
+       -9.27E+00 -1.79E+01 -3.06E+01 -4.07E+00  7.37E+00  2.80E+00  5.75E+00  0.00E+00  8.93E+00  2.17E+01  1.51E+02
 
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
 #CPUT: Total CPU Time in Seconds,       19.352
Stop Time:
Wed Sep 29 16:30:52 CDT 2021
