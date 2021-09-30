Wed Sep 29 14:02:13 CDT 2021
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
$DATA ../../../../data/spa/S1/dat10.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m10.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1655.47948307534        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6630E+02  2.9770E+01 -2.8668E+00  5.4192E+01 -6.3814E-01  3.1201E+01  1.5470E+01  9.2840E+00  1.7562E+01  1.3406E+01
            -1.4387E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1658.45466556797        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.7892E-01  9.9525E-01  1.0379E+00  1.0196E+00  1.0043E+00  1.0748E+00  9.2879E-01  9.4815E-01  9.4220E-01  9.4042E-01
             1.0564E+00
 PARAMETER:  7.8697E-02  9.5239E-02  1.3724E-01  1.1946E-01  1.0428E-01  1.7215E-01  2.6129E-02  4.6758E-02  4.0466E-02  3.8569E-02
             1.5488E-01
 GRADIENT:  -3.2028E+00  1.7110E+01  9.5139E+00  4.0421E+00 -1.1934E+01  9.0897E+00  5.8765E+00  3.6560E+00 -1.8848E+00  1.4357E+00
             4.6552E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1660.31986026579        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      349
 NPARAMETR:  9.7254E-01  8.7608E-01  1.0177E+00  1.0969E+00  9.5853E-01  1.0594E+00  7.3379E-01  7.6360E-01  9.3030E-01  9.8064E-01
             1.0290E+00
 PARAMETER:  7.2152E-02 -3.2298E-02  1.1754E-01  1.9247E-01  5.7645E-02  1.5772E-01 -2.0953E-01 -1.6972E-01  2.7755E-02  8.0454E-02
             1.2856E-01
 GRADIENT:  -1.4966E+01  1.5795E+01 -3.9333E+00  2.3785E+01  3.4183E+00  3.3790E+00  5.5185E-01  1.6322E+00 -6.9206E+00  3.7829E+00
            -4.8722E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1661.18471670171        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      527
 NPARAMETR:  9.8088E-01  7.6528E-01  9.9133E-01  1.1520E+00  8.9005E-01  1.0480E+00  6.9671E-01  6.1995E-01  9.1912E-01  9.4676E-01
             1.0436E+00
 PARAMETER:  8.0696E-02 -1.6752E-01  9.1292E-02  2.4148E-01 -1.6479E-02  1.4684E-01 -2.6138E-01 -3.7812E-01  1.5658E-02  4.5287E-02
             1.4264E-01
 GRADIENT:   2.9394E+00  8.8965E+00  7.4579E+00  5.5587E+00 -1.2979E+01 -5.9815E-01  4.7459E-01 -3.2248E-01  1.3582E+00  5.4405E-01
             1.1868E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1661.96104616568        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      704
 NPARAMETR:  9.7483E-01  5.0221E-01  1.0835E+00  1.3122E+00  8.4366E-01  1.0483E+00  4.0259E-01  6.8380E-01  8.3851E-01  9.6481E-01
             1.0347E+00
 PARAMETER:  7.4512E-02 -5.8874E-01  1.8016E-01  3.7171E-01 -7.0007E-02  1.4719E-01 -8.0983E-01 -2.8009E-01 -7.6132E-02  6.4172E-02
             1.3416E-01
 GRADIENT:  -1.7625E+00  4.3748E+00  9.6718E+00  2.7364E+00 -1.5710E+01  7.6345E-01  2.6377E-01 -5.5097E-02  2.5121E+00  2.6985E+00
            -1.2826E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1662.21919387082        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      884             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7446E-01  3.7890E-01  1.0818E+00  1.3798E+00  8.1424E-01  1.0453E+00  1.5739E-01  6.9295E-01  7.9125E-01  9.3658E-01
             1.0392E+00
 PARAMETER:  7.4132E-02 -8.7048E-01  1.7867E-01  4.2194E-01 -1.0550E-01  1.4427E-01 -1.7490E+00 -2.6680E-01 -1.3414E-01  3.4480E-02
             1.3845E-01
 GRADIENT:   3.8014E+02  4.1420E+01  2.7543E+00  5.0120E+02  1.2012E+01  6.9855E+01  2.1896E-01  7.0216E-01  8.7608E+00  5.4740E-01
             1.7528E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1662.23526403440        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1061
 NPARAMETR:  9.7355E-01  3.7266E-01  1.0828E+00  1.3876E+00  8.1253E-01  1.0446E+00  5.7451E-02  6.8007E-01  7.8873E-01  9.4194E-01
             1.0380E+00
 PARAMETER:  7.3198E-02 -8.8709E-01  1.7958E-01  4.2759E-01 -1.0761E-01  1.4359E-01 -2.7568E+00 -2.8556E-01 -1.3733E-01  4.0181E-02
             1.3725E-01
 GRADIENT:  -2.8148E-01  5.9736E-01 -4.4853E-01 -1.4374E+00  1.8429E+00 -4.0998E-02  4.0427E-03 -2.0028E-02  3.6715E-01  1.5986E-01
            -8.4142E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1662.24220361847        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1244
 NPARAMETR:  9.7416E-01  3.6534E-01  1.0836E+00  1.3900E+00  8.0979E-01  1.0451E+00  1.3949E-02  6.8147E-01  7.8538E-01  9.3964E-01
             1.0382E+00
 PARAMETER:  7.3822E-02 -9.0692E-01  1.8033E-01  4.2930E-01 -1.1098E-01  1.4413E-01 -4.1724E+00 -2.8350E-01 -1.4159E-01  3.7747E-02
             1.3747E-01
 GRADIENT:   1.2792E+00  1.1242E-01  1.0420E+00 -6.2580E+00  2.3223E-01  2.2700E-01  3.0785E-04 -6.5853E-02  3.9202E-02  6.3022E-02
            -4.6425E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1662.24319954686        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1429             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7420E-01  3.6515E-01  1.0822E+00  1.3905E+00  8.0843E-01  1.0453E+00  1.0000E-02  6.8040E-01  7.8504E-01  9.3821E-01
             1.0380E+00
 PARAMETER:  7.3857E-02 -9.0745E-01  1.7903E-01  4.2965E-01 -1.1266E-01  1.4432E-01 -5.0986E+00 -2.8507E-01 -1.4202E-01  3.6216E-02
             1.3734E-01
 GRADIENT:   3.8048E+02  4.1977E+01  6.4278E+00  5.2510E+02  7.6542E+00  6.9994E+01  0.0000E+00  2.4316E-01  8.6145E+00  6.7533E-01
             9.6081E-01

0ITERATION NO.:   43    OBJECTIVE VALUE:  -1662.24341840795        NO. OF FUNC. EVALS.:  90
 CUMULATIVE NO. OF FUNC. EVALS.:     1519
 NPARAMETR:  9.7380E-01  3.6443E-01  1.0813E+00  1.3912E+00  8.0883E-01  1.0449E+00  1.0000E-02  6.8234E-01  7.8513E-01  9.3832E-01
             1.0382E+00
 PARAMETER:  7.3452E-02 -9.0943E-01  1.7816E-01  4.3016E-01 -1.1217E-01  1.4388E-01 -5.0986E+00 -2.8222E-01 -1.4191E-01  3.6332E-02
             1.3747E-01
 GRADIENT:   5.1756E-01  3.1462E-01 -3.3308E-02 -4.2631E+00  1.1485E+00  1.2053E-01  0.0000E+00  6.0524E-02  3.8042E-02  4.9202E-02
             3.7323E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1519
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.4819E-04 -1.4877E-04 -2.0096E-02 -5.5853E-03 -2.4971E-02
 SE:             2.9860E-02  7.3152E-05  1.3048E-02  2.9108E-02  2.3483E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8268E-01  4.1974E-02  1.2351E-01  8.4784E-01  2.8762E-01

 ETASHRINKSD(%)  1.0000E-10  9.9755E+01  5.6287E+01  2.4842E+00  2.1329E+01
 ETASHRINKVR(%)  1.0000E-10  9.9999E+01  8.0892E+01  4.9067E+00  3.8108E+01
 EBVSHRINKSD(%)  4.0843E-01  9.9768E+01  5.8718E+01  2.8241E+00  1.9155E+01
 EBVSHRINKVR(%)  8.1519E-01  9.9999E+01  8.2958E+01  5.5685E+00  3.4640E+01
 RELATIVEINF(%)  9.7716E+01  2.9023E-05  2.7486E+00  6.9720E+00  6.0685E+00
 EPSSHRINKSD(%)  4.3609E+01
 EPSSHRINKVR(%)  6.8201E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1662.2434184079470     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -927.09259184420887     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.02
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.49
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1662.243       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.74E-01  3.64E-01  1.08E+00  1.39E+00  8.09E-01  1.04E+00  1.00E-02  6.82E-01  7.85E-01  9.38E-01  1.04E+00
 


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
+        1.06E+03
 
 TH 2
+       -2.76E+01  4.69E+02
 
 TH 3
+        5.71E+00  1.43E+02  3.64E+02
 
 TH 4
+       -1.15E+01  5.34E+02 -4.24E+01  8.80E+02
 
 TH 5
+        3.91E+00 -3.95E+02 -5.90E+02 -6.05E+01  1.27E+03
 
 TH 6
+        1.07E+00 -3.44E+00  1.44E+00 -2.65E+00 -2.82E-01  1.80E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        1.62E-01 -7.43E+00 -4.75E+01 -4.83E+00  8.83E+00  8.21E-02  0.00E+00  2.88E+01
 
 TH 9
+        3.06E+00 -1.06E+02  7.49E+00 -2.66E+00 -1.05E-01 -1.31E+00  0.00E+00 -1.64E+00  2.89E+02
 
 TH10
+        2.11E-01  9.76E+00 -1.27E+01 -1.07E+00 -8.27E+01  1.11E-01  0.00E+00  2.76E+01  2.70E+00  9.74E+01
 
 TH11
+       -7.57E+00 -1.31E+01 -2.46E+01 -9.12E+00  3.31E+00  2.71E+00  0.00E+00  1.22E+01  1.29E+01  1.89E+01  1.98E+02
 
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
 #CPUT: Total CPU Time in Seconds,       24.551
Stop Time:
Wed Sep 29 14:02:39 CDT 2021
