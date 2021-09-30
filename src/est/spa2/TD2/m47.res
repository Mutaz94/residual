Thu Sep 30 08:08:21 CDT 2021
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
$DATA ../../../../data/spa2/TD2/dat47.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m47.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2403.59500519753        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3940E+02 -4.5009E+01 -7.0086E-02 -6.8584E-02  8.2113E+01  6.0850E+01  2.9784E+00 -2.1693E+01 -3.2421E+01  4.7328E+00
            -7.7096E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2416.75270899276        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:      177
 NPARAMETR:  9.9015E-01  1.1008E+00  9.5757E-01  9.9010E-01  9.7987E-01  9.1802E-01  9.6806E-01  1.1106E+00  1.1735E+00  9.7064E-01
             1.0565E+00
 PARAMETER:  9.0099E-02  1.9604E-01  5.6641E-02  9.0047E-02  7.9668E-02  1.4466E-02  6.7542E-02  2.0493E-01  2.6001E-01  7.0200E-02
             1.5498E-01
 GRADIENT:   1.6837E+01 -5.3992E+00  1.3449E+00 -5.1291E+00 -1.2793E+01 -9.5983E+00  8.4650E+00 -8.7407E+00 -7.7534E-01 -1.5519E-01
            -7.7032E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2418.05828921386        NO. OF FUNC. EVALS.: 198
 CUMULATIVE NO. OF FUNC. EVALS.:      375             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7833E-01  1.1331E+00  9.5746E-01  9.8619E-01  1.0050E+00  9.4069E-01  8.5526E-01  1.1643E+00  1.1937E+00  1.0002E+00
             1.0495E+00
 PARAMETER:  7.8093E-02  2.2499E-01  5.6532E-02  8.6091E-02  1.0501E-01  3.8855E-02 -5.6354E-02  2.5212E-01  2.7709E-01  1.0022E-01
             1.4836E-01
 GRADIENT:   3.5098E+02  1.2716E+02 -1.7023E+00  7.0660E+01  2.1894E+01  3.7319E+01  5.1854E+00 -5.6422E+00  2.3113E+01 -3.6452E-01
            -1.1907E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2418.11742350470        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      532
 NPARAMETR:  9.7833E-01  1.1349E+00  9.5746E-01  9.8619E-01  1.0081E+00  9.4000E-01  8.2556E-01  1.1643E+00  1.2072E+00  1.0244E+00
             1.0495E+00
 PARAMETER:  7.8092E-02  2.2653E-01  5.6531E-02  8.6092E-02  1.0807E-01  3.8119E-02 -9.1690E-02  2.5212E-01  2.8833E-01  1.2406E-01
             1.4836E-01
 GRADIENT:  -1.4024E+01 -8.8704E-01 -5.9165E+00  1.7554E+01  4.2829E-01 -1.2079E-01  1.7181E-02 -7.0310E+00  3.8323E-02  1.5035E-01
            -1.3243E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2418.38958219840        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:      698
 NPARAMETR:  9.8414E-01  1.1356E+00  9.7261E-01  9.7279E-01  1.0083E+00  9.4024E-01  8.2483E-01  1.1733E+00  1.2074E+00  1.0231E+00
             1.0511E+00
 PARAMETER:  8.4011E-02  2.2713E-01  7.2224E-02  7.2414E-02  1.0828E-01  3.8381E-02 -9.2575E-02  2.5980E-01  2.8845E-01  1.2288E-01
             1.4984E-01
 GRADIENT:   9.7370E-01 -5.8363E+00  1.4946E+00 -1.0774E+00 -1.0077E+01  1.3941E-01 -1.6079E-01 -7.5585E+00 -2.7664E-01 -6.2839E-02
            -1.1681E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2418.72482901055        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      874
 NPARAMETR:  9.8370E-01  1.1949E+00  9.7804E-01  9.3885E-01  1.0535E+00  9.3989E-01  8.0208E-01  1.1734E+00  1.2411E+00  1.0579E+00
             1.0511E+00
 PARAMETER:  8.3562E-02  2.7809E-01  7.7792E-02  3.6902E-02  1.5214E-01  3.8006E-02 -1.2055E-01  2.5988E-01  3.1598E-01  1.5626E-01
             1.4980E-01
 GRADIENT:  -3.5674E-01  4.8873E-01  5.5398E-01  2.8066E-01  1.1977E-01 -5.0135E-02  5.0799E-02 -9.7870E+00 -8.6944E-02 -6.7362E-02
            -1.2185E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2419.04622687975        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:     1032
 NPARAMETR:  9.8397E-01  1.1940E+00  9.7551E-01  9.3893E-01  1.0521E+00  9.4002E-01  8.0060E-01  1.2157E+00  1.2419E+00  1.0578E+00
             1.0544E+00
 PARAMETER:  8.3835E-02  2.7732E-01  7.5201E-02  3.6988E-02  1.5080E-01  3.8148E-02 -1.2239E-01  2.9529E-01  3.1661E-01  1.5615E-01
             1.5293E-01
 GRADIENT:   3.6321E+02  1.6738E+02  8.0307E-01  5.0237E+01  3.0351E+01  3.6413E+01  5.2469E+00 -5.2435E+00  2.7145E+01  3.8423E+00
            -5.7708E+00

0ITERATION NO.:   33    OBJECTIVE VALUE:  -2419.06933457482        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:     1130
 NPARAMETR:  9.8393E-01  1.1941E+00  9.7610E-01  9.3894E-01  1.0522E+00  9.4000E-01  8.0023E-01  1.2193E+00  1.2418E+00  1.0575E+00
             1.0546E+00
 PARAMETER:  8.3799E-02  2.7736E-01  7.5813E-02  3.6998E-02  1.5084E-01  3.8120E-02 -1.2286E-01  2.9824E-01  3.1653E-01  1.5594E-01
             1.5313E-01
 GRADIENT:  -1.1140E+05  4.0156E+04 -5.5686E+04  1.1138E+05 -3.6927E+04 -8.9968E-02 -9.0667E+04  3.7180E+04 -3.5232E+04 -7.1438E+04
            -3.6393E+04

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1130
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.7985E-04 -3.2054E-02 -2.4026E-02  1.4646E-02 -3.0089E-02
 SE:             2.9877E-02  1.8218E-02  1.6885E-02  2.6921E-02  2.4200E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7384E-01  7.8503E-02  1.5476E-01  5.8643E-01  2.1374E-01

 ETASHRINKSD(%)  1.0000E-10  3.8966E+01  4.3434E+01  9.8097E+00  1.8926E+01
 ETASHRINKVR(%)  1.0000E-10  6.2749E+01  6.8003E+01  1.8657E+01  3.4271E+01
 EBVSHRINKSD(%)  3.9182E-01  3.9209E+01  4.8600E+01  9.9548E+00  1.7687E+01
 EBVSHRINKVR(%)  7.8210E-01  6.3045E+01  7.3580E+01  1.8919E+01  3.2246E+01
 RELATIVEINF(%)  9.9207E+01  9.6437E+00  1.7145E+01  3.0411E+01  2.1614E+01
 EPSSHRINKSD(%)  3.0204E+01
 EPSSHRINKVR(%)  5.1285E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2419.0693345748205     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1316.3430947292134     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.34
0S MATRIX UNOBTAINABLE
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     8.96
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2419.069       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.84E-01  1.19E+00  9.76E-01  9.39E-01  1.05E+00  9.40E-01  8.00E-01  1.22E+00  1.24E+00  1.06E+00  1.05E+00
 


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
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       31.365
Stop Time:
Thu Sep 30 08:08:54 CDT 2021
