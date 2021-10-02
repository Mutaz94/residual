Fri Oct  1 19:47:40 CDT 2021
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
$DATA ../../../../data/SD3/SL3/dat6.csv ignore=@
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

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:        1 OCT 2021
Days until program expires : 198
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
 NO. OF DATA RECS IN DATA SET:      698
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

 TOT. NO. OF OBS RECS:      598
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
 RAW OUTPUT FILE (FILE): m6.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1116.85076953387        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3411E+02 -5.2460E+01 -1.2799E+02  1.4074E+02  2.1929E+02  5.6583E+01 -1.4257E+01 -1.3069E+01 -4.6250E+01 -3.1179E+01
            -2.6333E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1984.25413389909        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  1.0136E+00  1.0734E+00  1.1702E+00  9.6977E-01  9.7280E-01  9.0416E-01  8.6722E-01  9.4663E-01  9.4471E-01  9.3181E-01
             2.2096E+00
 PARAMETER:  1.1346E-01  1.7084E-01  2.5720E-01  6.9308E-02  7.2428E-02 -7.4982E-04 -4.2459E-02  4.5158E-02  4.3119E-02  2.9375E-02
             8.9279E-01
 GRADIENT:   9.8743E+01 -2.3543E+01 -1.3422E+01 -1.7027E+01  2.7216E+01 -1.5671E+01  4.3466E+00  1.9529E+00 -8.5925E+00 -1.3312E+01
            -9.5499E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1991.14800462614        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  1.0093E+00  1.3034E+00  1.3936E+00  8.8818E-01  1.1528E+00  9.3425E-01  4.6281E-01  8.2110E-01  1.2247E+00  1.3309E+00
             2.1924E+00
 PARAMETER:  1.0931E-01  3.6501E-01  4.3188E-01 -1.8577E-02  2.4223E-01  3.1988E-02 -6.7044E-01 -9.7116E-02  3.0269E-01  3.8588E-01
             8.8501E-01
 GRADIENT:   8.4746E+01  9.0938E+01 -7.0206E+00  6.6223E+01  1.1757E+01 -2.9479E+00  4.6318E+00  7.5542E-01  6.2354E+00  1.9953E+01
            -9.4235E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1994.22134609524        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  9.8652E-01  1.1600E+00  1.4400E+00  9.3993E-01  1.0764E+00  9.3735E-01  4.1450E-01  9.2875E-01  1.1223E+00  1.1982E+00
             2.3300E+00
 PARAMETER:  8.6431E-02  2.4840E-01  4.6461E-01  3.8052E-02  1.7360E-01  3.5301E-02 -7.8069E-01  2.6083E-02  2.1539E-01  2.8079E-01
             9.4588E-01
 GRADIENT:   9.1494E+00  1.2436E+01 -3.5943E+00  1.1412E+01  4.9976E-01 -2.5672E+00  2.6393E+00  9.4627E-01  3.9340E+00  5.6747E+00
            -1.2139E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1994.27596513585        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      301
 NPARAMETR:  9.8374E-01  1.1230E+00  1.5616E+00  9.6039E-01  1.0857E+00  9.4098E-01  3.3086E-01  1.0138E+00  1.1050E+00  1.1922E+00
             2.3521E+00
 PARAMETER:  8.3603E-02  2.1601E-01  5.4573E-01  5.9586E-02  1.8220E-01  3.9163E-02 -1.0061E+00  1.1373E-01  1.9988E-01  2.7578E-01
             9.5531E-01
 GRADIENT:   1.7128E+00  3.7936E+00 -1.3069E+00  3.5516E+00 -9.9614E-01 -1.2183E+00  1.7034E+00  5.7964E-01  2.3359E+00  2.8112E+00
            -7.2107E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1994.28439950013        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  9.8276E-01  1.1007E+00  1.6427E+00  9.7342E-01  1.0937E+00  9.4271E-01  2.4398E-01  1.0512E+00  1.0989E+00  1.1937E+00
             2.3580E+00
 PARAMETER:  8.2609E-02  1.9592E-01  5.9634E-01  7.3062E-02  1.8953E-01  4.1006E-02 -1.3107E+00  1.4992E-01  1.9428E-01  2.7704E-01
             9.5781E-01
 GRADIENT:  -4.2533E-01 -6.8079E-02 -3.4850E-01  4.6065E-01 -8.3703E-01 -5.1711E-01  1.0148E+00  3.1082E-01  1.4749E+00  1.3135E+00
             1.9224E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1994.29263843083        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      441
 NPARAMETR:  9.8241E-01  1.0881E+00  1.6908E+00  9.8084E-01  1.0990E+00  9.4359E-01  1.6201E-01  1.0657E+00  1.0967E+00  1.1962E+00
             2.3592E+00
 PARAMETER:  8.2249E-02  1.8445E-01  6.2519E-01  8.0657E-02  1.9438E-01  4.1936E-02 -1.7201E+00  1.6362E-01  1.9226E-01  2.7919E-01
             9.5833E-01
 GRADIENT:  -9.8730E-01 -1.6831E+00  3.3446E-02 -7.8873E-01 -3.7518E-01 -1.3842E-01  5.2239E-01  1.3622E-01  8.5059E-01  4.6703E-01
             2.1557E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1996.68544435703        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:      579
 NPARAMETR:  1.0187E+00  1.1125E+00  1.9254E+00  9.8150E-01  1.1763E+00  9.6995E-01  9.6920E-02  1.0794E+00  1.1207E+00  1.2297E+00
             2.4093E+00
 PARAMETER:  1.1848E-01  2.0660E-01  7.5515E-01  8.1325E-02  2.6235E-01  6.9492E-02 -2.2339E+00  1.7638E-01  2.1394E-01  3.0676E-01
             9.7936E-01
 GRADIENT:   2.2741E+00 -1.5926E+01 -2.9466E+00 -1.1184E+00  6.6683E+00  3.1881E+00  5.6732E-02 -1.8185E-01  2.1366E+00 -3.1791E+00
             1.3551E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1999.09748987136        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      754
 NPARAMETR:  1.0185E+00  1.4745E+00  1.4709E+00  7.4324E-01  1.2245E+00  9.6418E-01  2.9685E-01  9.9731E-01  1.4502E+00  1.2861E+00
             2.3615E+00
 PARAMETER:  1.1838E-01  4.8831E-01  4.8591E-01 -1.9674E-01  3.0251E-01  6.3527E-02 -1.1145E+00  9.7303E-02  4.7170E-01  3.5163E-01
             9.5931E-01
 GRADIENT:   8.4100E-01  1.5708E+01  5.8834E+00  1.2427E+01 -2.0053E+01  1.0040E-01  7.6736E-01  2.8478E-02  5.0271E+00 -6.8103E-01
            -5.2343E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2000.11228814614        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      931
 NPARAMETR:  1.0180E+00  1.6852E+00  1.1155E+00  5.9682E-01  1.2911E+00  9.6372E-01  3.1619E-01  6.0018E-01  1.6752E+00  1.3276E+00
             2.3594E+00
 PARAMETER:  1.1785E-01  6.2186E-01  2.0930E-01 -4.1614E-01  3.5550E-01  6.3042E-02 -1.0514E+00 -4.1053E-01  6.1593E-01  3.8335E-01
             9.5841E-01
 GRADIENT:  -2.5491E+00  1.5214E+01 -3.1818E+00  9.6959E+00  4.5153E+00 -6.8397E-01 -1.0708E+00  3.2280E-01 -3.2316E+00  4.7480E-01
            -5.4803E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2000.35961038065        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1110
 NPARAMETR:  1.0193E+00  1.7804E+00  1.0568E+00  5.2253E-01  1.3249E+00  9.6541E-01  3.4201E-01  3.6144E-01  1.8553E+00  1.3440E+00
             2.3673E+00
 PARAMETER:  1.1916E-01  6.7684E-01  1.5525E-01 -5.4907E-01  3.8133E-01  6.4800E-02 -9.7291E-01 -9.1765E-01  7.1806E-01  3.9565E-01
             9.6176E-01
 GRADIENT:   9.5633E-01  1.1378E+00  3.2610E-02  3.2922E-01 -4.5334E-01  2.7214E-02 -1.8737E-02  8.4881E-02  9.2509E-02  3.0143E-01
            -4.2026E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2000.40238385077        NO. OF FUNC. EVALS.: 141
 CUMULATIVE NO. OF FUNC. EVALS.:     1251
 NPARAMETR:  1.0182E+00  1.7767E+00  1.0537E+00  5.2431E-01  1.3227E+00  9.6475E-01  3.3983E-01  2.4352E-02  1.8497E+00  1.3438E+00
             2.3675E+00
 PARAMETER:  1.1806E-01  6.7477E-01  1.5226E-01 -5.4568E-01  3.7967E-01  6.4112E-02 -9.7932E-01 -3.6152E+00  7.1503E-01  3.9553E-01
             9.6182E-01
 GRADIENT:   9.4578E+01  1.8173E+02  4.1812E-01  1.9956E+01  1.2252E+01  8.8313E+00  2.6643E+00  6.4303E-04  7.8869E+00  2.4960E+00
             1.0964E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2000.40290731960        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:     1328
 NPARAMETR:  1.0173E+00  1.7708E+00  1.0541E+00  5.2745E-01  1.3185E+00  9.6391E-01  3.3677E-01  1.0753E-02  1.8411E+00  1.3428E+00
             2.3663E+00
 PARAMETER:  1.1710E-01  6.7141E-01  1.5267E-01 -5.3971E-01  3.7650E-01  6.3243E-02 -9.8837E-01 -4.4325E+00  7.1035E-01  3.9478E-01
             9.6134E-01
 GRADIENT:   9.1799E+01  1.7922E+02  3.5631E-01  1.9482E+01  1.1630E+01  8.5506E+00  2.5517E+00  1.4221E-04  7.7106E+00  2.5231E+00
             1.0494E+01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2000.40718524853        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     1491             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0195E+00  1.7729E+00  1.0507E+00  5.2643E-01  1.3209E+00  9.6542E-01  3.4252E-01  1.0000E-02  1.8443E+00  1.3419E+00
             2.3682E+00
 PARAMETER:  1.1936E-01  6.7259E-01  1.4944E-01 -5.4163E-01  3.7832E-01  6.4805E-02 -9.7144E-01 -4.6415E+00  7.1207E-01  3.9407E-01
             9.6213E-01
 GRADIENT:   9.8692E+01  1.7726E+02  8.5884E-02  1.9445E+01  1.3041E+01  9.0795E+00  2.8712E+00  0.0000E+00  8.2689E+00  2.5132E+00
             1.1553E+01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2000.40809683449        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     1657
 NPARAMETR:  1.0190E+00  1.7730E+00  1.0509E+00  5.2699E-01  1.3206E+00  9.6532E-01  3.4206E-01  1.0000E-02  1.8415E+00  1.3418E+00
             2.3683E+00
 PARAMETER:  1.1880E-01  6.7267E-01  1.4964E-01 -5.4057E-01  3.7810E-01  6.4707E-02 -9.7277E-01 -4.6415E+00  7.1059E-01  3.9400E-01
             9.6219E-01
 GRADIENT:   1.7282E-01 -6.7412E-01 -1.1628E-01 -6.0291E-02  2.7036E-01  6.9645E-03 -1.7759E-02  0.0000E+00  6.5766E-02  3.6102E-02
             5.1881E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1657
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.4765E-03 -3.9102E-02 -6.5463E-05  1.5616E-02 -1.8419E-02
 SE:             2.9431E-02  1.2495E-02  5.6349E-05  2.4752E-02  2.5671E-02
 N:                     100         100         100         100         100

 P VAL.:         9.3294E-01  1.7519E-03  2.4534E-01  5.2811E-01  4.7306E-01

 ETASHRINKSD(%)  1.4030E+00  5.8140E+01  9.9811E+01  1.7079E+01  1.3999E+01
 ETASHRINKVR(%)  2.7864E+00  8.2477E+01  1.0000E+02  3.1241E+01  2.6038E+01
 EBVSHRINKSD(%)  1.7055E+00  5.9801E+01  9.9816E+01  1.5993E+01  1.2595E+01
 EBVSHRINKVR(%)  3.3820E+00  8.3840E+01  1.0000E+02  2.9429E+01  2.3603E+01
 RELATIVEINF(%)  9.6355E+01  2.1983E+00  1.5400E-04  1.1700E+01  2.8433E+01
 EPSSHRINKSD(%)  2.3382E+01
 EPSSHRINKVR(%)  4.1297E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          598
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1099.0504857127885     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2000.4080968344867     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -901.35761112169826     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.95
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2000.408       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.77E+00  1.05E+00  5.27E-01  1.32E+00  9.65E-01  3.42E-01  1.00E-02  1.84E+00  1.34E+00  2.37E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.997
Stop Time:
Fri Oct  1 19:48:06 CDT 2021
