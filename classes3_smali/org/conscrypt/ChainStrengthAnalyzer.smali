.class public final Lorg/conscrypt/ChainStrengthAnalyzer;
.super Ljava/lang/Object;
.source "ChainStrengthAnalyzer.java"


# static fields
.field private static final MIN_DSA_P_LEN_BITS:I = 0x400

.field private static final MIN_DSA_Q_LEN_BITS:I = 0xa0

.field private static final MIN_EC_FIELD_SIZE_BITS:I = 0xa0

.field private static final MIN_RSA_MODULUS_LEN_BITS:I = 0x400

.field private static final SIGNATURE_ALGORITHM_OID_BLACKLIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "1.2.840.113549.1.1.2"

    const-string v1, "1.2.840.113549.1.1.3"

    const-string v2, "1.2.840.113549.1.1.4"

    const-string v3, "1.2.840.113549.1.1.5"

    const-string v4, "1.2.840.10040.4.3"

    const-string v5, "1.2.840.10045.4.1"

    .line 39
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/ChainStrengthAnalyzer;->SIGNATURE_ALGORITHM_OID_BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final check(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 60
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 62
    :try_start_10
    invoke-static {v0}, Lorg/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_13
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception p0

    .line 64
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unacceptable certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_30
    return-void
.end method

.method public static final check([Ljava/security/cert/X509Certificate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 49
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_28

    aget-object v2, p0, v1

    .line 51
    :try_start_6
    invoke-static {v2}, Lorg/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_9
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_9} :catch_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_c
    move-exception p0

    .line 53
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unacceptable certificate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_28
    return-void
.end method

.method public static final checkCert(Ljava/security/cert/X509Certificate;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lorg/conscrypt/ChainStrengthAnalyzer;->checkKeyLength(Ljava/security/cert/X509Certificate;)V

    .line 72
    invoke-static {p0}, Lorg/conscrypt/ChainStrengthAnalyzer;->checkSignatureAlgorithm(Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method private static checkKeyLength(Ljava/security/cert/X509Certificate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    .line 77
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    const/16 v1, 0x400

    if-eqz v0, :cond_1f

    .line 78
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    if-lt p0, v1, :cond_17

    goto :goto_64

    .line 80
    :cond_17
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "RSA modulus is < 1024 bits"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_1f
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    const/16 v2, 0xa0

    if-eqz v0, :cond_42

    .line 84
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    .line 85
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result p0

    if-lt p0, v2, :cond_3a

    goto :goto_64

    .line 87
    :cond_3a
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "EC key field size is < 160 bits"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_42
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_6d

    .line 91
    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 92
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    if-lt v0, v1, :cond_65

    if-lt p0, v2, :cond_65

    :goto_64
    return-void

    .line 94
    :cond_65
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "DSA key length is < (1024, 160) bits"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :cond_6d
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejecting unknown key class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSignatureAlgorithm(Ljava/security/cert/X509Certificate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object p0

    .line 107
    sget-object v0, Lorg/conscrypt/ChainStrengthAnalyzer;->SIGNATURE_ALGORITHM_OID_BLACKLIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 108
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 109
    :cond_15
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature uses an insecure hash function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    return-void
.end method
