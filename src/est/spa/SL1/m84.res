Sat Sep 18 11:55:16 CDT 2021
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
$DATA ../../../../data/spa/SL1/dat84.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m84.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1698.00551113473        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:  -5.1127E+01 -5.9357E+01 -3.5141E+01 -5.7162E+01  2.0837E+01  4.2687E+01 -1.0707E+01  1.2474E+01 -1.2812E+01  9.0030E+00
            -1.2153E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1705.89906880643        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0589E+00  1.0664E+00  1.2515E+00  9.8119E-01  1.1123E+00  8.3818E-01  1.0974E+00  8.6403E-01  1.0921E+00  9.6160E-01
             1.0772E+00
 PARAMETER:  1.5722E-01  1.6425E-01  3.2436E-01  8.1009E-02  2.0647E-01 -7.6524E-02  1.9292E-01 -4.6152E-02  1.8806E-01  6.0846E-02
             1.7433E-01
 GRADIENT:   1.0775E+02 -1.5761E+01  1.9038E+01 -4.0609E+01  5.7989E-01 -1.8072E+01  4.1317E+00 -2.2149E+00  4.0939E+00 -1.5668E+01
             5.7866E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1708.13794942878        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  1.0485E+00  8.8717E-01  1.2272E+00  1.1204E+00  1.0502E+00  8.4619E-01  1.0676E+00  4.7441E-01  1.0385E+00  1.0652E+00
             1.0812E+00
 PARAMETER:  1.4734E-01 -1.9715E-02  3.0471E-01  2.1368E-01  1.4901E-01 -6.7013E-02  1.6537E-01 -6.4569E-01  1.3781E-01  1.6312E-01
             1.7804E-01
 GRADIENT:   7.4577E+01 -7.7384E+00  2.4524E+00  8.0295E+00  1.4108E+01 -1.2624E+01 -2.0511E+00 -9.5987E-01  7.9967E+00 -4.6729E+00
             6.4005E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1709.16346085151        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      233
 NPARAMETR:  1.0312E+00  1.0075E+00  1.0535E+00  1.0346E+00  1.0222E+00  8.7080E-01  1.1620E+00  4.5167E-01  1.0150E+00  1.0226E+00
             1.0436E+00
 PARAMETER:  1.3068E-01  1.0743E-01  1.5213E-01  1.3402E-01  1.2194E-01 -3.8341E-02  2.5013E-01 -6.9480E-01  1.1490E-01  1.2238E-01
             1.4266E-01
 GRADIENT:   1.7600E+01 -6.9085E+00 -4.0647E+00 -3.3623E+00  9.1143E+00 -2.3263E+00  1.3070E+00  3.5351E-01  1.4186E-01  5.9742E-01
            -1.1475E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1709.54026437007        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      412
 NPARAMETR:  1.0441E+00  9.8962E-01  1.0407E+00  1.0578E+00  9.9965E-01  8.8041E-01  1.1706E+00  3.5882E-01  1.0099E+00  1.0118E+00
             1.0505E+00
 PARAMETER:  1.4317E-01  8.9566E-02  1.3990E-01  1.5615E-01  9.9651E-02 -2.7364E-02  2.5755E-01 -9.2494E-01  1.0984E-01  1.1178E-01
             1.4924E-01
 GRADIENT:   1.2616E+00  1.5311E+00 -8.4912E-01  3.6936E+00  4.1875E-01 -3.0605E-01 -4.5968E-02  1.3498E-01  4.6393E-01 -7.1837E-02
             4.7503E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1709.58732322609        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      588
 NPARAMETR:  1.0449E+00  1.0409E+00  9.9457E-01  1.0235E+00  1.0005E+00  8.8147E-01  1.1445E+00  1.6198E-01  1.0262E+00  1.0118E+00
             1.0510E+00
 PARAMETER:  1.4390E-01  1.4006E-01  9.4554E-02  1.2321E-01  1.0045E-01 -2.6160E-02  2.3499E-01 -1.7203E+00  1.2586E-01  1.1177E-01
             1.4972E-01
 GRADIENT:   1.7382E+00  2.4597E+00 -2.5640E-01  3.0793E+00 -1.6108E+00 -9.1603E-02  2.2786E-01  3.6649E-02 -2.7664E-04  6.0500E-01
             4.1853E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1709.60781843002        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      764
 NPARAMETR:  1.0444E+00  1.0821E+00  9.8223E-01  9.9478E-01  1.0158E+00  8.8196E-01  1.1075E+00  5.6607E-02  1.0494E+00  1.0143E+00
             1.0513E+00
 PARAMETER:  1.4349E-01  1.7886E-01  8.2071E-02  9.4767E-02  1.1564E-01 -2.5614E-02  2.0214E-01 -2.7716E+00  1.4823E-01  1.1423E-01
             1.5003E-01
 GRADIENT:  -5.7095E-02 -1.3039E-01 -1.0965E-01  5.9779E-02  1.8498E-01  2.4897E-02 -1.9695E-01  3.8749E-03  9.5225E-02 -5.8766E-02
             3.0495E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1709.61084757721        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      939
 NPARAMETR:  1.0444E+00  1.0656E+00  9.8654E-01  1.0052E+00  1.0101E+00  8.8179E-01  1.1226E+00  1.0000E-02  1.0401E+00  1.0136E+00
             1.0512E+00
 PARAMETER:  1.4341E-01  1.6354E-01  8.6451E-02  1.0515E-01  1.1004E-01 -2.5797E-02  2.1569E-01 -4.5486E+00  1.3928E-01  1.1351E-01
             1.4989E-01
 GRADIENT:   5.2538E-04 -1.2583E-02 -4.4469E-03 -1.0912E-02  9.4680E-03  1.6116E-03 -1.9830E-03  0.0000E+00  3.4394E-03 -1.5109E-03
             2.4500E-03

0ITERATION NO.:   37    OBJECTIVE VALUE:  -1709.61084805964        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      996
 NPARAMETR:  1.0444E+00  1.0653E+00  9.8665E-01  1.0054E+00  1.0100E+00  8.8179E-01  1.1229E+00  1.0000E-02  1.0399E+00  1.0136E+00
             1.0511E+00
 PARAMETER:  1.4341E-01  1.6324E-01  8.6557E-02  1.0535E-01  1.0994E-01 -2.5803E-02  2.1591E-01 -4.5453E+00  1.3911E-01  1.1350E-01
             1.4988E-01
 GRADIENT:   4.3725E-05 -3.0937E-03  1.1557E-03 -4.6343E-03  7.7437E-04  2.8764E-04 -7.1862E-04  0.0000E+00  5.1288E-04 -1.3655E-03
            -3.3451E-04

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      996
 NO. OF SIG. DIGITS IN FINAL EST.:  3.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -4.7777E-04 -1.0788E-02 -3.4040E-04  2.1024E-03 -2.4916E-02
 SE:             2.9784E-02  1.9337E-02  1.5249E-04  2.4612E-02  2.3439E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8720E-01  5.7691E-01  2.5593E-02  9.3192E-01  2.8776E-01

 ETASHRINKSD(%)  2.2151E-01  3.5219E+01  9.9489E+01  1.7548E+01  2.1477E+01
 ETASHRINKVR(%)  4.4252E-01  5.8034E+01  9.9997E+01  3.2017E+01  3.8342E+01
 EBVSHRINKSD(%)  5.9015E-01  3.4642E+01  9.9527E+01  1.7978E+01  1.9631E+01
 EBVSHRINKVR(%)  1.1768E+00  5.7283E+01  9.9998E+01  3.2724E+01  3.5409E+01
 RELATIVEINF(%)  9.8166E+01  1.7960E+00  3.3543E-04  3.4630E+00  7.8043E+00
 EPSSHRINKSD(%)  4.2458E+01
 EPSSHRINKVR(%)  6.6889E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1709.6108480596438     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -974.46002149590561     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.17
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.80
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1709.611       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  1.07E+00  9.87E-01  1.01E+00  1.01E+00  8.82E-01  1.12E+00  1.00E-02  1.04E+00  1.01E+00  1.05E+00
 


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
+        1.30E+03
 
 TH 2
+       -8.02E+00  3.50E+02
 
 TH 3
+        1.77E+01  1.34E+02  2.73E+02
 
 TH 4
+       -1.25E+01  3.27E+02 -1.30E+02  6.89E+02
 
 TH 5
+       -6.97E+00 -2.38E+02 -3.49E+02  1.51E+02  6.82E+02
 
 TH 6
+        3.44E+00 -1.08E+00  2.62E+00 -2.49E+00  3.26E+00  2.51E+02
 
 TH 7
+        4.04E-01  1.76E+01  1.04E+01 -6.28E+00 -1.28E+01  1.27E+00  3.56E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.46E+00 -2.06E+01 -1.96E+01  2.52E+01  4.08E+00  1.84E-01  2.05E+01  0.00E+00  9.21E+01
 
 TH10
+        1.26E+00 -1.97E+00 -2.68E+01 -1.36E+01 -4.95E+01 -1.60E+00  7.18E+00  0.00E+00  6.05E+00  8.58E+01
 
 TH11
+       -1.05E+01 -1.69E+01 -3.75E+01 -6.37E+00  7.57E+00  3.61E+00  6.22E+00  0.00E+00  5.49E+00  2.18E+01  2.02E+02
 
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
 #CPUT: Total CPU Time in Seconds,       17.040
Stop Time:
Sat Sep 18 11:55:35 CDT 2021