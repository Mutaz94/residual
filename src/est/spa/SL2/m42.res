Wed Sep 29 15:49:02 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat42.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m42.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1700.62526226081        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0007E+02  6.4433E+01 -3.1549E+01  1.5363E+02  7.8458E+01  5.1606E+01  1.0255E+01  3.7601E+00  9.3131E+00 -6.8526E-01
            -1.5408E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1707.49703424523        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0444E+00  8.4459E-01  9.6254E-01  1.0292E+00  8.6889E-01  9.9542E-01  8.0840E-01  9.1708E-01  9.7775E-01  8.2225E-01
             1.0303E+00
 PARAMETER:  1.4343E-01 -6.8898E-02  6.1817E-02  1.2878E-01 -4.0543E-02  9.5413E-02 -1.1270E-01  1.3435E-02  7.7498E-02 -9.5710E-02
             1.2981E-01
 GRADIENT:  -1.1170E+01 -2.0777E+01  3.7114E+00 -4.3084E+01  1.2576E+01 -1.2630E+00 -2.2338E+00 -1.0128E+00 -3.0468E+00 -1.1140E+01
            -6.5579E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1708.16203110391        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  1.0410E+00  7.0919E-01  9.7178E-01  1.1397E+00  8.1629E-01  1.0024E+00  7.5901E-01  7.9215E-01  9.3613E-01  8.8530E-01
             1.0112E+00
 PARAMETER:  1.4021E-01 -2.4363E-01  7.1377E-02  2.3075E-01 -1.0298E-01  1.0242E-01 -1.7574E-01 -1.3301E-01  3.3994E-02 -2.1829E-02
             1.1116E-01
 GRADIENT:  -1.6199E+01  9.5142E+00  7.3337E+00  1.0049E+01 -1.5788E+01  1.7442E+00 -1.7871E+00 -1.7836E+00 -8.4018E-01 -2.1612E+00
            -1.3376E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1708.81684264010        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      547
 NPARAMETR:  1.0490E+00  7.0096E-01  9.7482E-01  1.1439E+00  8.2102E-01  9.9646E-01  1.0033E+00  8.0381E-01  9.0344E-01  8.7190E-01
             1.0446E+00
 PARAMETER:  1.4783E-01 -2.5530E-01  7.4503E-02  2.3443E-01 -9.7211E-02  9.6449E-02  1.0329E-01 -1.1839E-01 -1.5509E-03 -3.7086E-02
             1.4365E-01
 GRADIENT:   6.2315E-01  2.3133E+00  1.9273E-01  3.9585E+00 -4.8422E-01 -2.2340E-01 -6.4882E-02 -1.7501E-01 -3.3413E-01 -2.7245E-01
             8.5550E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1708.81865482998        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      723
 NPARAMETR:  1.0482E+00  6.8170E-01  9.8825E-01  1.1560E+00  8.1999E-01  9.9677E-01  1.0098E+00  8.1316E-01  8.9747E-01  8.7796E-01
             1.0414E+00
 PARAMETER:  1.4706E-01 -2.8316E-01  8.8177E-02  2.4500E-01 -9.8466E-02  9.6762E-02  1.0973E-01 -1.0683E-01 -8.1762E-03 -3.0153E-02
             1.4059E-01
 GRADIENT:  -3.3772E-01  2.5464E+00  8.9629E-01  3.3514E+00 -2.1523E+00  1.8746E-02  4.9354E-02 -1.2908E-01 -3.6535E-01  2.1373E-01
            -2.9656E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1708.81905058896        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      903
 NPARAMETR:  1.0477E+00  6.6314E-01  1.0025E+00  1.1680E+00  8.1992E-01  9.9669E-01  1.0096E+00  8.2388E-01  8.9250E-01  8.8309E-01
             1.0401E+00
 PARAMETER:  1.4657E-01 -3.1076E-01  1.0247E-01  2.5526E-01 -9.8546E-02  9.6686E-02  1.0952E-01 -9.3725E-02 -1.3730E-02 -2.4324E-02
             1.3934E-01
 GRADIENT:  -7.1403E-01  2.6497E+00  1.2220E+00  3.1269E+00 -2.9018E+00  1.1477E-01  9.4783E-02 -1.0773E-01 -3.6848E-01  4.2859E-01
            -7.6686E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1708.81952279522        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1083
 NPARAMETR:  1.0471E+00  6.4107E-01  1.0193E+00  1.1821E+00  8.1990E-01  9.9652E-01  1.0078E+00  8.3679E-01  8.8671E-01  8.8867E-01
             1.0390E+00
 PARAMETER:  1.4604E-01 -3.4461E-01  1.1910E-01  2.6732E-01 -9.8575E-02  9.6510E-02  1.0778E-01 -7.8187E-02 -2.0232E-02 -1.8029E-02
             1.3824E-01
 GRADIENT:  -1.0466E+00  2.7313E+00  1.5381E+00  2.9322E+00 -3.5944E+00  1.9684E-01  1.3637E-01 -8.7707E-02 -3.5209E-01  6.1745E-01
            -1.1825E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1708.81979292757        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1263
 NPARAMETR:  1.0467E+00  6.2300E-01  1.0327E+00  1.1937E+00  8.1977E-01  9.9635E-01  1.0061E+00  8.4715E-01  8.8195E-01  8.9285E-01
             1.0382E+00
 PARAMETER:  1.4561E-01 -3.7321E-01  1.3215E-01  2.7704E-01 -9.8737E-02  9.6343E-02  1.0605E-01 -6.5880E-02 -2.5620E-02 -1.3335E-02
             1.3746E-01
 GRADIENT:  -1.2859E+00  2.7656E+00  1.7675E+00  2.7643E+00 -4.0851E+00  2.5561E-01  1.6593E-01 -7.1980E-02 -3.3179E-01  7.5115E-01
            -1.4812E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1708.81994333943        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1443
 NPARAMETR:  1.0463E+00  6.0804E-01  1.0434E+00  1.2032E+00  8.1955E-01  9.9620E-01  1.0047E+00  8.5551E-01  8.7796E-01  8.9603E-01
             1.0376E+00
 PARAMETER:  1.4527E-01 -3.9751E-01  1.4250E-01  2.8499E-01 -9.9006E-02  9.6194E-02  1.0465E-01 -5.6054E-02 -3.0159E-02 -9.7812E-03
             1.3687E-01
 GRADIENT:  -1.4636E+00  2.7685E+00  1.9326E+00  2.6058E+00 -4.4362E+00  3.0002E-01  1.8771E-01 -5.9033E-02 -3.1314E-01  8.5008E-01
            -1.7052E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1708.83635252444        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1628             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0482E+00  5.9198E-01  1.0485E+00  1.2086E+00  8.2138E-01  9.9577E-01  9.8159E-01  8.6258E-01  8.7566E-01  8.9297E-01
             1.0414E+00
 PARAMETER:  1.4711E-01 -4.2428E-01  1.4734E-01  2.8950E-01 -9.6765E-02  9.5763E-02  8.1413E-02 -4.7825E-02 -3.2778E-02 -1.3203E-02
             1.4054E-01
 GRADIENT:   6.8104E+02  6.7891E+01  2.8045E-01  3.5964E+02  1.4479E+01  4.2988E+01  1.2755E+00  2.8931E-01  1.0089E+01  3.7243E-01
             9.3197E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1708.85041260726        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1806
 NPARAMETR:  1.0487E+00  5.9313E-01  1.0510E+00  1.2098E+00  8.2013E-01  9.9547E-01  9.6714E-01  8.6555E-01  8.7790E-01  8.9404E-01
             1.0421E+00
 PARAMETER:  1.4756E-01 -4.2235E-01  1.4979E-01  2.9048E-01 -9.8291E-02  9.5461E-02  6.6593E-02 -4.4387E-02 -3.0222E-02 -1.2010E-02
             1.4120E-01
 GRADIENT:   4.2366E+00  3.2643E-02 -4.8322E-01 -2.4511E+00  2.1399E-01  1.3109E-01  2.8791E-02  4.0637E-02 -4.6528E-02  3.6155E-02
             4.7239E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1708.85070083931        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1987
 NPARAMETR:  1.0486E+00  5.9246E-01  1.0518E+00  1.2098E+00  8.2026E-01  9.9541E-01  9.6247E-01  8.6672E-01  8.7854E-01  8.9440E-01
             1.0420E+00
 PARAMETER:  1.4744E-01 -4.2347E-01  1.5050E-01  2.9044E-01 -9.8139E-02  9.5395E-02  6.1749E-02 -4.3034E-02 -2.9491E-02 -1.1597E-02
             1.4118E-01
 GRADIENT:   3.9964E+00 -2.6272E-01 -4.8062E-01 -3.3726E+00  2.1232E-01  1.1231E-01  3.1388E-02  6.1355E-02  8.7278E-02  4.9244E-02
             6.4457E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1708.85103935324        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     2168
 NPARAMETR:  1.0486E+00  5.9238E-01  1.0524E+00  1.2100E+00  8.2034E-01  9.9540E-01  9.5940E-01  8.6676E-01  8.7860E-01  8.9464E-01
             1.0420E+00
 PARAMETER:  1.4742E-01 -4.2361E-01  1.5110E-01  2.9065E-01 -9.8042E-02  9.5386E-02  5.8551E-02 -4.2993E-02 -2.9424E-02 -1.1329E-02
             1.4114E-01
 GRADIENT:   3.9817E+00 -5.8162E-02 -2.5292E-01 -3.0098E+00 -1.4062E-01  1.0932E-01  1.3521E-02  2.3112E-02  3.3484E-02  2.4130E-02
             2.5248E-02

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1708.85125242209        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     2352             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0486E+00  5.9227E-01  1.0532E+00  1.2102E+00  8.2054E-01  9.9539E-01  9.5634E-01  8.6678E-01  8.7864E-01  8.9476E-01
             1.0420E+00
 PARAMETER:  1.4742E-01 -4.2380E-01  1.5182E-01  2.9081E-01 -9.7787E-02  9.5377E-02  5.5363E-02 -4.2975E-02 -2.9385E-02 -1.1199E-02
             1.4110E-01
 GRADIENT:   6.8271E+02  7.0202E+01  3.6512E+00  3.6356E+02  8.3132E+00  4.2771E+01  1.1624E+00  1.4971E-01  1.0511E+01  6.2131E-01
             1.1063E+00

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1708.85133250283        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     2531
 NPARAMETR:  1.0485E+00  5.9217E-01  1.0538E+00  1.2104E+00  8.2069E-01  9.9538E-01  9.5393E-01  8.6696E-01  8.7863E-01  8.9495E-01
             1.0419E+00
 PARAMETER:  1.4741E-01 -4.2396E-01  1.5238E-01  2.9094E-01 -9.7610E-02  9.5370E-02  5.2833E-02 -4.2764E-02 -2.9393E-02 -1.0984E-02
             1.4107E-01
 GRADIENT:   3.9686E+00  1.5618E-01  4.8102E-02 -2.6905E+00 -4.6540E-01  1.0630E-01 -1.8970E-02 -5.3961E-02 -8.8810E-02 -7.5925E-02
            -4.9228E-02

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1708.85156185666        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     2715             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0485E+00  5.9186E-01  1.0541E+00  1.2105E+00  8.2092E-01  9.9538E-01  9.5548E-01  8.6814E-01  8.7879E-01  8.9531E-01
             1.0420E+00
 PARAMETER:  1.4740E-01 -4.2448E-01  1.5271E-01  2.9100E-01 -9.7326E-02  9.5367E-02  5.4453E-02 -4.1402E-02 -2.9205E-02 -1.0588E-02
             1.4112E-01
 GRADIENT:   6.8266E+02  7.0153E+01  3.5479E+00  3.6380E+02  8.4799E+00  4.2771E+01  1.1727E+00  1.8404E-01  1.0582E+01  6.6529E-01
             1.1390E+00

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1708.85164912727        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:     2879             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0485E+00  5.9158E-01  1.0546E+00  1.2106E+00  8.2115E-01  9.9537E-01  9.5573E-01  8.6908E-01  8.7891E-01  8.9569E-01
             1.0420E+00
 PARAMETER:  1.4740E-01 -4.2496E-01  1.5317E-01  2.9111E-01 -9.7050E-02  9.5362E-02  5.4720E-02 -4.0320E-02 -2.9078E-02 -1.0160E-02
             1.4116E-01
 GRADIENT:   6.8260E+02  7.0072E+01  3.4100E+00  3.6388E+02  8.6706E+00  4.2770E+01  1.1877E+00  2.2188E-01  1.0655E+01  7.1591E-01
             1.1783E+00

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1708.85179661601        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     3064
 NPARAMETR:  1.0485E+00  5.9148E-01  1.0550E+00  1.2107E+00  8.2125E-01  9.9537E-01  9.5431E-01  8.6908E-01  8.7890E-01  8.9582E-01
             1.0420E+00
 PARAMETER:  1.4739E-01 -4.2513E-01  1.5354E-01  2.9120E-01 -9.6932E-02  9.5357E-02  5.3229E-02 -4.0323E-02 -2.9080E-02 -1.0013E-02
             1.4114E-01
 GRADIENT:   3.9801E+00 -8.0759E-02 -2.6339E-01 -3.0517E+00 -2.1987E-02  1.0947E-01  1.6423E-02  2.2344E-02  8.1676E-02  2.3473E-02
             3.1103E-02

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1708.85195791182        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     3248             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0485E+00  5.9137E-01  1.0557E+00  1.2109E+00  8.2138E-01  9.9536E-01  9.5104E-01  8.6908E-01  8.7877E-01  8.9584E-01
             1.0419E+00
 PARAMETER:  1.4738E-01 -4.2531E-01  1.5422E-01  2.9138E-01 -9.6771E-02  9.5349E-02  4.9805E-02 -4.0316E-02 -2.9229E-02 -9.9889E-03
             1.4108E-01
 GRADIENT:   6.8269E+02  7.0338E+01  3.7451E+00  3.6457E+02  8.3079E+00  4.2778E+01  1.1435E+00  1.4498E-01  1.0513E+01  6.1665E-01
             1.0979E+00

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1708.85206188775        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     3429
 NPARAMETR:  1.0485E+00  5.9120E-01  1.0560E+00  1.2110E+00  8.2149E-01  9.9536E-01  9.5067E-01  8.6941E-01  8.7881E-01  8.9604E-01
             1.0419E+00
 PARAMETER:  1.4738E-01 -4.2560E-01  1.5450E-01  2.9146E-01 -9.6632E-02  9.5345E-02  4.9409E-02 -3.9945E-02 -2.9182E-02 -9.7662E-03
             1.4109E-01
 GRADIENT:   3.9734E+00  5.4345E-02 -7.3053E-02 -2.8712E+00 -2.2480E-01  1.0770E-01 -6.0196E-03 -2.4755E-02 -2.1561E-02 -4.0430E-02
            -1.8085E-02

0ITERATION NO.:  100    OBJECTIVE VALUE:  -1708.85220527564        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     3613             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0485E+00  5.9089E-01  1.0565E+00  1.2112E+00  8.2168E-01  9.9535E-01  9.5125E-01  8.7040E-01  8.7890E-01  8.9636E-01
             1.0420E+00
 PARAMETER:  1.4737E-01 -4.2612E-01  1.5494E-01  2.9158E-01 -9.6402E-02  9.5340E-02  5.0020E-02 -3.8808E-02 -2.9080E-02 -9.4092E-03
             1.4111E-01
 GRADIENT:   6.8262E+02  7.0249E+01  3.5929E+00  3.6480E+02  8.5231E+00  4.2777E+01  1.1625E+00  1.9145E-01  1.0612E+01  6.7995E-01
             1.1443E+00

0ITERATION NO.:  105    OBJECTIVE VALUE:  -1708.85226024250        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     3796
 NPARAMETR:  1.0485E+00  5.9063E-01  1.0568E+00  1.2113E+00  8.2183E-01  9.9535E-01  9.5156E-01  8.7099E-01  8.7897E-01  8.9661E-01
             1.0420E+00
 PARAMETER:  1.4737E-01 -4.2656E-01  1.5528E-01  2.9168E-01 -9.6220E-02  9.5335E-02  5.0347E-02 -3.8127E-02 -2.9001E-02 -9.1353E-03
             1.4114E-01
 GRADIENT:   3.9816E+00 -1.1524E-01 -2.9439E-01 -3.1332E+00  7.1661E-02  1.1024E-01  2.2533E-02  3.6286E-02  1.1357E-01  3.9097E-02
             4.2428E-02

0ITERATION NO.:  110    OBJECTIVE VALUE:  -1708.85241083112        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     3982             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0485E+00  5.9056E-01  1.0575E+00  1.2115E+00  8.2190E-01  9.9534E-01  9.4727E-01  8.7064E-01  8.7878E-01  8.9663E-01
             1.0419E+00
 PARAMETER:  1.4736E-01 -4.2669E-01  1.5592E-01  2.9188E-01 -9.6133E-02  9.5326E-02  4.5825E-02 -3.8528E-02 -2.9217E-02 -9.1087E-03
             1.4107E-01
 GRADIENT:   6.8265E+02  7.0455E+01  3.8179E+00  3.6550E+02  8.2791E+00  4.2783E+01  1.1282E+00  1.4084E-01  1.0506E+01  6.1937E-01
             1.0942E+00

0ITERATION NO.:  115    OBJECTIVE VALUE:  -1708.85251833267        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     4161
 NPARAMETR:  1.0485E+00  5.9036E-01  1.0578E+00  1.2116E+00  8.2200E-01  9.9533E-01  9.4766E-01  8.7105E-01  8.7881E-01  8.9676E-01
             1.0419E+00
 PARAMETER:  1.4735E-01 -4.2702E-01  1.5617E-01  2.9196E-01 -9.6012E-02  9.5322E-02  4.6238E-02 -3.8060E-02 -2.9182E-02 -8.9687E-03
             1.4108E-01
 GRADIENT:   3.9725E+00  6.9324E-02 -4.5119E-02 -2.8725E+00 -2.1961E-01  1.0762E-01 -5.6036E-03 -2.4046E-02 -1.9581E-02 -3.7170E-02
            -2.1444E-02

0ITERATION NO.:  120    OBJECTIVE VALUE:  -1708.85264235416        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     4345             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0485E+00  5.9002E-01  1.0582E+00  1.2118E+00  8.2216E-01  9.9533E-01  9.4819E-01  8.7198E-01  8.7890E-01  8.9706E-01
             1.0420E+00
 PARAMETER:  1.4735E-01 -4.2760E-01  1.5654E-01  2.9208E-01 -9.5816E-02  9.5317E-02  4.6798E-02 -3.6994E-02 -2.9088E-02 -8.6361E-03
             1.4111E-01
 GRADIENT:   6.8257E+02  7.0331E+01  3.6302E+00  3.6571E+02  8.5482E+00  4.2780E+01  1.1525E+00  1.9400E-01  1.0624E+01  6.8306E-01
             1.1454E+00

0ITERATION NO.:  125    OBJECTIVE VALUE:  -1708.85267718480        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     4528
 NPARAMETR:  1.0485E+00  5.8974E-01  1.0585E+00  1.2119E+00  8.2229E-01  9.9532E-01  9.4872E-01  8.7252E-01  8.7895E-01  8.9728E-01
             1.0420E+00
 PARAMETER:  1.4734E-01 -4.2807E-01  1.5683E-01  2.9219E-01 -9.5661E-02  9.5313E-02  4.7355E-02 -3.6367E-02 -2.9022E-02 -8.3914E-03
             1.4114E-01
 GRADIENT:   3.9802E+00 -1.2029E-01 -2.9368E-01 -3.1648E+00  1.1566E-01  1.0985E-01  2.2870E-02  3.9000E-02  1.1892E-01  4.1823E-02
             4.3908E-02

0ITERATION NO.:  130    OBJECTIVE VALUE:  -1708.85281128222        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     4714             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0485E+00  5.8966E-01  1.0591E+00  1.2122E+00  8.2233E-01  9.9531E-01  9.4430E-01  8.7208E-01  8.7874E-01  8.9726E-01
             1.0419E+00
 PARAMETER:  1.4733E-01 -4.2822E-01  1.5744E-01  2.9240E-01 -9.5618E-02  9.5303E-02  4.2693E-02 -3.6871E-02 -2.9266E-02 -8.4069E-03
             1.4106E-01
 GRADIENT:   6.8259E+02  7.0548E+01  3.8713E+00  3.6646E+02  8.2767E+00  4.2785E+01  1.1172E+00  1.3943E-01  1.0512E+01  6.1812E-01
             1.0913E+00

0ITERATION NO.:  135    OBJECTIVE VALUE:  -1708.85291766299        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     4893
 NPARAMETR:  1.0485E+00  5.8945E-01  1.0594E+00  1.2123E+00  8.2241E-01  9.9531E-01  9.4490E-01  8.7248E-01  8.7878E-01  8.9738E-01
             1.0419E+00
 PARAMETER:  1.4733E-01 -4.2857E-01  1.5766E-01  2.9248E-01 -9.5515E-02  9.5300E-02  4.3324E-02 -3.6417E-02 -2.9226E-02 -8.2756E-03
             1.4107E-01
 GRADIENT:   3.9709E+00  7.5881E-02 -2.7064E-02 -2.8870E+00 -2.0748E-01  1.0748E-01 -5.6633E-03 -2.3905E-02 -1.5925E-02 -3.5748E-02
            -2.2184E-02

0ITERATION NO.:  140    OBJECTIVE VALUE:  -1708.85299439570        NO. OF FUNC. EVALS.: 172
 CUMULATIVE NO. OF FUNC. EVALS.:     5065
 NPARAMETR:  1.0485E+00  5.8925E-01  1.0596E+00  1.2124E+00  8.2248E-01  9.9531E-01  9.4471E-01  8.7282E-01  8.7879E-01  8.9754E-01
             1.0419E+00
 PARAMETER:  1.4733E-01 -4.2890E-01  1.5787E-01  2.9257E-01 -9.5426E-02  9.5297E-02  4.3127E-02 -3.6029E-02 -2.9208E-02 -8.0976E-03
             1.4109E-01
 GRADIENT:   4.5299E-03  8.5523E-02 -7.0938E-02 -1.1316E-01 -1.3369E-01  6.2579E-04 -2.9108E-03 -1.2466E-02 -1.5951E-02 -1.9909E-02
            -7.2137E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     5065
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.9720E-04 -1.3787E-02 -2.4603E-02  2.7272E-04 -2.7362E-02
 SE:             2.9845E-02  1.0268E-02  1.4818E-02  2.7775E-02  2.2598E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9473E-01  1.7939E-01  9.6844E-02  9.9217E-01  2.2596E-01

 ETASHRINKSD(%)  1.4303E-02  6.5600E+01  5.0358E+01  6.9501E+00  2.4294E+01
 ETASHRINKVR(%)  2.8604E-02  8.8166E+01  7.5357E+01  1.3417E+01  4.2685E+01
 EBVSHRINKSD(%)  4.6174E-01  6.5965E+01  5.3553E+01  7.0134E+00  2.2256E+01
 EBVSHRINKVR(%)  9.2135E-01  8.8417E+01  7.8427E+01  1.3535E+01  3.9558E+01
 RELATIVEINF(%)  9.7226E+01  3.7820E-01  3.3778E+00  3.7708E+00  6.0421E+00
 EPSSHRINKSD(%)  4.4653E+01
 EPSSHRINKVR(%)  6.9367E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1708.8529943956955     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -973.70216783195735     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    68.48
 Elapsed covariance  time in seconds:     5.74
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1708.853       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  5.89E-01  1.06E+00  1.21E+00  8.22E-01  9.95E-01  9.45E-01  8.73E-01  8.79E-01  8.98E-01  1.04E+00
 


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
 
         1.25E-01  6.47E+00  4.80E+00  4.11E+00  9.82E-02  1.22E-01  5.49E+00  3.75E+00  1.51E+00  1.36E+00  6.92E-02
 


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
+        1.57E-02
 
 TH 2
+        7.85E-01  4.19E+01
 
 TH 3
+       -5.82E-01 -3.10E+01  2.30E+01
 
 TH 4
+       -4.98E-01 -2.66E+01  1.97E+01  1.69E+01
 
 TH 5
+       -7.42E-03 -3.83E-01  2.96E-01  2.44E-01  9.65E-03
 
 TH 6
+        1.25E-02  6.72E-01 -5.01E-01 -4.26E-01 -7.49E-03  1.48E-02
 
 TH 7
+        6.64E-01  3.53E+01 -2.62E+01 -2.24E+01 -3.39E-01  5.67E-01  3.01E+01
 
 TH 8
+       -4.53E-01 -2.42E+01  1.79E+01  1.53E+01  2.29E-01 -3.93E-01 -2.04E+01  1.40E+01
 
 TH 9
+        1.83E-01  9.78E+00 -7.24E+00 -6.21E+00 -8.95E-02  1.56E-01  8.22E+00 -5.65E+00  2.29E+00
 
 TH10
+       -1.65E-01 -8.74E+00  6.50E+00  5.55E+00  8.78E-02 -1.42E-01 -7.42E+00  5.04E+00 -2.04E+00  1.85E+00
 
 TH11
+        1.77E-04  1.92E-02 -1.48E-02 -1.25E-02 -8.16E-04  7.72E-04  7.70E-03 -1.19E-02  4.39E-03 -4.81E-03  4.78E-03
 
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
+        1.25E-01
 
 TH 2
+        9.68E-01  6.47E+00
 
 TH 3
+       -9.69E-01 -9.99E-01  4.80E+00
 
 TH 4
+       -9.68E-01 -1.00E+00  9.99E-01  4.11E+00
 
 TH 5
+       -6.03E-01 -6.03E-01  6.29E-01  6.05E-01  9.82E-02
 
 TH 6
+        8.22E-01  8.54E-01 -8.59E-01 -8.54E-01 -6.27E-01  1.22E-01
 
 TH 7
+        9.66E-01  9.95E-01 -9.96E-01 -9.95E-01 -6.28E-01  8.50E-01  5.49E+00
 
 TH 8
+       -9.66E-01 -9.97E-01  9.98E-01  9.97E-01  6.23E-01 -8.63E-01 -9.92E-01  3.75E+00
 
 TH 9
+        9.68E-01  9.98E-01 -9.98E-01 -9.98E-01 -6.02E-01  8.50E-01  9.91E-01 -9.96E-01  1.51E+00
 
 TH10
+       -9.65E-01 -9.93E-01  9.95E-01  9.93E-01  6.57E-01 -8.57E-01 -9.94E-01  9.89E-01 -9.91E-01  1.36E+00
 
 TH11
+        2.04E-02  4.28E-02 -4.45E-02 -4.38E-02 -1.20E-01  9.18E-02  2.03E-02 -4.58E-02  4.19E-02 -5.11E-02  6.92E-02
 
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
+        1.07E+03
 
 TH 2
+        5.23E+01  4.53E+02
 
 TH 3
+       -1.75E+01  1.38E+02  3.46E+02
 
 TH 4
+        9.71E+01  5.33E+02 -1.32E+02  9.74E+02
 
 TH 5
+        1.14E+01 -3.87E+02 -5.79E+02  6.58E+01  1.40E+03
 
 TH 6
+        2.30E+01 -5.83E+00  3.50E+01 -4.02E+01 -3.18E+01  3.02E+02
 
 TH 7
+       -4.57E+00 -4.88E+00  6.33E+00 -3.80E+00 -5.93E+00  7.28E+00  6.47E+00
 
 TH 8
+        8.59E+00  1.68E+00 -3.79E+01  2.39E+01  1.47E+01  1.71E+01  1.45E+00  2.49E+01
 
 TH 9
+       -3.69E+01 -2.86E+01 -1.27E+01  4.63E+01  3.15E+01  3.89E+01  1.82E+01  1.70E+01  2.04E+02
 
 TH10
+        3.20E+01  2.41E+01 -2.69E+01  3.18E+01 -8.87E+01  2.24E+01  8.58E+00  2.71E+01  2.04E+01  1.05E+02
 
 TH11
+        4.21E+01 -7.01E+00 -4.90E+01  6.16E+01  1.06E+02 -1.08E+01  1.23E+01  9.28E+00  4.26E+01  2.37E+01  2.52E+02
 
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
 #CPUT: Total CPU Time in Seconds,       74.262
Stop Time:
Wed Sep 29 15:50:18 CDT 2021
