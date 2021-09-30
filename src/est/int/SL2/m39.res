Wed Sep 29 03:06:46 CDT 2021
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
$DATA ../../../../data/int/SL2/dat39.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      999
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

 TOT. NO. OF OBS RECS:      899
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
 RAW OUTPUT FILE (FILE): m39.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1462.30771702035        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5449E+02  4.9910E+01  2.8483E+02  8.7434E+01  4.7516E+01  5.4947E+01 -3.1256E+01 -2.9660E+02 -3.5538E+01 -1.5693E+00
            -4.4037E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2893.97787257165        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0467E+00  1.2951E+00  8.5993E-01  8.7796E-01  1.1892E+00  8.9872E-01  9.1443E-01  9.4112E-01  9.0174E-01  9.5273E-01
             2.0390E+00
 PARAMETER:  1.4561E-01  3.5855E-01 -5.0907E-02 -3.0154E-02  2.7330E-01 -6.7843E-03  1.0544E-02  3.9315E-02 -3.4332E-03  5.1577E-02
             8.1244E-01
 GRADIENT:   2.8146E+02  8.7928E+01 -1.9026E+01  5.3504E+01  2.5982E+01 -2.0543E+01  1.1856E+01  1.2179E+00 -1.8955E+01 -3.3986E+01
            -3.4238E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2922.88850652223        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0427E+00  1.3834E+00  8.0890E-01  8.2122E-01  1.3087E+00  1.0791E+00  6.4233E-01  9.7866E-02  1.1163E+00  1.2004E+00
             2.2285E+00
 PARAMETER:  1.4181E-01  4.2458E-01 -1.1208E-01 -9.6967E-02  3.6901E-01  1.7611E-01 -3.4266E-01 -2.2242E+00  2.1006E-01  2.8267E-01
             9.0131E-01
 GRADIENT:   2.0532E+02  2.0195E+01 -4.4277E+01  5.3153E+01  8.1353E+01  5.2570E+01  1.2226E+00  1.9022E-02  6.5949E+00 -1.9139E+00
            -9.8853E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2941.00025509887        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      274
 NPARAMETR:  1.0093E+00  1.6864E+00  9.7978E-01  6.8246E-01  1.5584E+00  9.7103E-01  5.2151E-01  4.1948E-02  1.3123E+00  1.3304E+00
             2.3669E+00
 PARAMETER:  1.0925E-01  6.2259E-01  7.9572E-02 -2.8206E-01  5.4369E-01  7.0605E-02 -5.5104E-01 -3.0713E+00  3.7177E-01  3.8551E-01
             9.6159E-01
 GRADIENT:   1.5859E+01  9.0012E+01  2.0667E+00  7.9450E+01 -5.8639E+00  7.0717E+00 -8.9867E+00 -3.0434E-04 -7.8370E+00 -8.3543E+00
             4.9158E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2955.19013142385        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      450
 NPARAMETR:  1.0008E+00  2.1168E+00  8.6245E-01  3.6719E-01  1.9639E+00  9.5006E-01  6.0819E-01  3.5751E-02  1.7730E+00  1.5081E+00
             2.2938E+00
 PARAMETER:  1.0079E-01  8.4989E-01 -4.7983E-02 -9.0187E-01  7.7491E-01  4.8770E-02 -3.9726E-01 -3.2312E+00  6.7268E-01  5.1082E-01
             9.3020E-01
 GRADIENT:   1.2027E-02  5.1222E+01  5.0598E+00  1.8049E+01 -5.3830E-01 -9.1425E-01  1.1046E+00 -4.0256E-04 -1.1157E+00 -5.8147E+00
             5.8341E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2959.46664397572        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      625
 NPARAMETR:  9.9890E-01  2.4088E+00  3.3821E-01  1.4837E-01  2.1549E+00  9.5255E-01  6.0203E-01  1.0000E-02  2.8309E+00  1.6350E+00
             2.2693E+00
 PARAMETER:  9.8901E-02  9.7912E-01 -9.8410E-01 -1.8080E+00  8.6774E-01  5.1392E-02 -4.0745E-01 -5.5997E+00  1.1406E+00  5.9165E-01
             9.1946E-01
 GRADIENT:  -3.4088E+00  2.9910E+00  2.2822E+00 -9.0320E-01 -2.1192E+00 -1.6827E-01  3.5432E+00  0.0000E+00  2.0571E+00 -2.6930E+00
             1.8445E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2959.64268374439        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      801
 NPARAMETR:  1.0007E+00  2.4364E+00  2.5249E-01  1.2818E-01  2.1736E+00  9.5309E-01  5.9688E-01  1.0000E-02  2.8058E+00  1.6678E+00
             2.2697E+00
 PARAMETER:  1.0072E-01  9.9053E-01 -1.2764E+00 -1.9543E+00  8.7638E-01  5.1957E-02 -4.1604E-01 -6.1923E+00  1.1317E+00  6.1150E-01
             9.1964E-01
 GRADIENT:   1.5479E+00 -7.5715E+00  8.9012E-01 -2.4686E+00 -1.2485E+00  1.6758E-01 -6.0943E-01  0.0000E+00 -7.9806E-01  8.9513E-02
             9.2152E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2959.81064264741        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      983
 NPARAMETR:  1.0010E+00  2.4120E+00  2.4572E-01  1.4562E-01  2.1441E+00  9.5307E-01  6.0526E-01  1.0000E-02  2.5318E+00  1.6573E+00
             2.2708E+00
 PARAMETER:  1.0098E-01  9.8047E-01 -1.3035E+00 -1.8268E+00  8.6274E-01  5.1933E-02 -4.0210E-01 -6.1259E+00  1.0289E+00  6.0521E-01
             9.2012E-01
 GRADIENT:   1.4342E+00 -1.0416E+01  5.0834E-02 -1.1284E+00 -8.0179E-01  1.3433E-01  2.1908E-01  0.0000E+00 -2.9266E-01  2.8111E-01
             3.4666E-01

0ITERATION NO.:   39    OBJECTIVE VALUE:  -2959.81613157830        NO. OF FUNC. EVALS.: 130
 CUMULATIVE NO. OF FUNC. EVALS.:     1113
 NPARAMETR:  1.0006E+00  2.4143E+00  2.4793E-01  1.4708E-01  2.1446E+00  9.5290E-01  6.0470E-01  1.0000E-02  2.5176E+00  1.6557E+00
             2.2705E+00
 PARAMETER:  1.0061E-01  9.8142E-01 -1.2946E+00 -1.8168E+00  8.6294E-01  5.1755E-02 -4.0302E-01 -6.1259E+00  1.0233E+00  6.0425E-01
             9.2000E-01
 GRADIENT:   4.1852E-01 -1.4473E+00  1.4382E-01 -3.9448E-01 -4.1368E-01  2.4758E-02 -2.0102E-01  0.0000E+00 -4.8108E-01  7.9323E-02
            -2.9657E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1113
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2104E-03 -2.5747E-02 -3.6064E-05  3.6498E-02 -1.9982E-02
 SE:             2.9512E-02  2.6086E-02  2.1243E-05  1.6904E-02  2.6663E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6729E-01  3.2365E-01  8.9568E-02  3.0840E-02  4.5359E-01

 ETASHRINKSD(%)  1.1319E+00  1.2609E+01  9.9929E+01  4.3370E+01  1.0674E+01
 ETASHRINKVR(%)  2.2509E+00  2.3628E+01  1.0000E+02  6.7930E+01  2.0209E+01
 EBVSHRINKSD(%)  1.3149E+00  1.1014E+01  9.9916E+01  5.4803E+01  7.7731E+00
 EBVSHRINKVR(%)  2.6126E+00  2.0815E+01  1.0000E+02  7.9572E+01  1.4942E+01
 RELATIVEINF(%)  9.7344E+01  1.7119E+01  3.0952E-05  3.6909E+00  5.4091E+01
 EPSSHRINKSD(%)  1.6836E+01
 EPSSHRINKVR(%)  3.0837E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          899
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1652.2514827020016     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2959.8161315783004     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1307.5646488762989     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    29.17
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    13.57
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2959.816       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  2.41E+00  2.48E-01  1.47E-01  2.14E+00  9.53E-01  6.05E-01  1.00E-02  2.52E+00  1.66E+00  2.27E+00
 


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
+        1.19E+03
 
 TH 2
+       -1.27E+01  4.23E+02
 
 TH 3
+        1.12E+00  4.29E+01  1.22E+02
 
 TH 4
+       -2.48E+01  5.12E+02 -2.89E+02  1.90E+03
 
 TH 5
+       -2.12E+00 -2.18E+01 -2.14E+01  1.01E+02  7.50E+01
 
 TH 6
+        4.73E+00 -3.94E+00  4.97E-01 -9.26E+00 -8.16E-01  2.08E+02
 
 TH 7
+        5.49E+00 -1.67E+01  1.26E+01  2.09E+01 -4.01E+00  1.08E+00  3.44E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.56E-01 -2.13E+00 -1.85E+01  5.57E+01  3.93E-01 -1.84E-01  1.30E+01  0.00E+00  4.54E+00
 
 TH10
+        1.14E-01 -3.75E+00  2.50E+00  2.34E+01 -6.29E+00  5.50E-02  8.36E-01  0.00E+00  6.81E-01  4.96E+01
 
 TH11
+       -1.51E+01 -1.78E+01  5.99E-02 -5.35E-01  7.20E-01  2.17E+00  4.11E+00  0.00E+00  2.57E+00  4.91E+00  2.28E+02
 
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
 #CPUT: Total CPU Time in Seconds,       42.839
Stop Time:
Wed Sep 29 03:07:31 CDT 2021
