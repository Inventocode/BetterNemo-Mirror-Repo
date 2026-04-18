.class public final Lorg/conscrypt/OpenSSLX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "OpenSSLX509Certificate.java"


# static fields
.field private static final serialVersionUID:J = 0x1ba5daf1d5fc5de0L


# instance fields
.field private final transient mContext:J

.field private transient mHashCode:Ljava/lang/Integer;

.field private final notAfter:Ljava/util/Date;

.field private final notBefore:Ljava/util/Date;


# direct methods
.method constructor <init>(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 68
    iput-wide p1, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 71
    invoke-static {p1, p2, p0}, Lorg/conscrypt/NativeCrypto;->X509_get_notBefore(JLorg/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/conscrypt/OpenSSLX509Certificate;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notBefore:Ljava/util/Date;

    .line 72
    invoke-static {p1, p2, p0}, Lorg/conscrypt/NativeCrypto;->X509_get_notAfter(JLorg/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/conscrypt/OpenSSLX509Certificate;->toDate(J)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notAfter:Ljava/util/Date;

    return-void
.end method

.method private constructor <init>(JLjava/util/Date;Ljava/util/Date;)V
    .registers 5

    .line 76
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 77
    iput-wide p1, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 78
    iput-object p3, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notBefore:Ljava/util/Date;

    .line 79
    iput-object p4, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notAfter:Ljava/util/Date;

    return-void
.end method

.method private static alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 517
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 518
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1e

    .line 519
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 522
    :cond_1e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static fromCertificate(Ljava/security/cert/Certificate;)Lorg/conscrypt/OpenSSLX509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 191
    instance-of v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_7

    .line 192
    check-cast p0, Lorg/conscrypt/OpenSSLX509Certificate;

    return-object p0

    .line 193
    :cond_7
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_14

    .line 194
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lorg/conscrypt/OpenSSLX509Certificate;

    move-result-object p0

    return-object p0

    .line 196
    :cond_14
    new-instance p0, Ljava/security/cert/CertificateEncodingException;

    const-string v0, "Only X.509 certificates are supported"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lorg/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 119
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 123
    :try_start_6
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lorg/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_3b
    .catchall {:try_start_6 .. :try_end_e} :catchall_39

    .line 127
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    if-nez p0, :cond_18

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 134
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 136
    :goto_1f
    array-length v2, p0

    if-ge v1, v2, :cond_38

    .line 137
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2b

    goto :goto_35

    .line 140
    :cond_2b
    new-instance v2, Lorg/conscrypt/OpenSSLX509Certificate;

    aget-wide v3, p0, v1

    invoke-direct {v2, v3, v4}, Lorg/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_38
    return-object v0

    :catchall_39
    move-exception p0

    goto :goto_42

    :catch_3b
    move-exception p0

    .line 125
    :try_start_3c
    new-instance v1, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v1, p0}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_39

    .line 127
    :goto_42
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw p0
.end method

.method public static fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lorg/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 166
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 170
    :try_start_6
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lorg/conscrypt/NativeCrypto;->PEM_read_bio_PKCS7(JI)[J

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_34
    .catchall {:try_start_6 .. :try_end_e} :catchall_32

    .line 175
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 180
    :goto_18
    array-length v2, p0

    if-ge v1, v2, :cond_31

    .line 181
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_24

    goto :goto_2e

    .line 184
    :cond_24
    new-instance v2, Lorg/conscrypt/OpenSSLX509Certificate;

    aget-wide v3, p0, v1

    invoke-direct {v2, v3, v4}, Lorg/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_31
    return-object v0

    :catchall_32
    move-exception p0

    goto :goto_3b

    :catch_34
    move-exception p0

    .line 173
    :try_start_35
    new-instance v1, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v1, p0}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_32

    .line 175
    :goto_3b
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw p0
.end method

.method public static fromX509Der([B)Lorg/conscrypt/OpenSSLX509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 110
    :try_start_0
    new-instance v0, Lorg/conscrypt/OpenSSLX509Certificate;

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->d2i_X509([B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_9
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception p0

    .line 112
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static fromX509DerInputStream(Ljava/io/InputStream;)Lorg/conscrypt/OpenSSLX509Certificate;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 92
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 95
    :try_start_6
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->d2i_X509_bio(J)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_24
    .catchall {:try_start_6 .. :try_end_e} :catchall_22

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_19

    const/4 p0, 0x0

    .line 103
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    return-object p0

    .line 99
    :cond_19
    :try_start_19
    new-instance p0, Lorg/conscrypt/OpenSSLX509Certificate;

    invoke-direct {p0, v1, v2}, Lorg/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_24
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22

    .line 103
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    return-object p0

    :catchall_22
    move-exception p0

    goto :goto_2b

    :catch_24
    move-exception p0

    .line 101
    :try_start_25
    new-instance v1, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v1, p0}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 103
    :goto_2b
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw p0
.end method

.method public static fromX509PemInputStream(Ljava/io/InputStream;)Lorg/conscrypt/OpenSSLX509Certificate;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 148
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 151
    :try_start_6
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->PEM_read_bio_X509(J)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_24
    .catchall {:try_start_6 .. :try_end_e} :catchall_22

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_19

    const/4 p0, 0x0

    .line 159
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    return-object p0

    .line 155
    :cond_19
    :try_start_19
    new-instance p0, Lorg/conscrypt/OpenSSLX509Certificate;

    invoke-direct {p0, v1, v2}, Lorg/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_24
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22

    .line 159
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    return-object p0

    :catchall_22
    move-exception p0

    goto :goto_2b

    :catch_24
    move-exception p0

    .line 157
    :try_start_25
    new-instance v1, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v1, p0}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 159
    :goto_2b
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw p0
.end method

.method private static toDate(J)Ljava/util/Date;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    const-string v0, "UTC"

    .line 83
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 85
    invoke-static {p0, p1, v0}, Lorg/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 86
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    if-nez p2, :cond_b

    .line 394
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_13

    .line 396
    :cond_b
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    .line 399
    :goto_13
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 400
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    .line 401
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSignature()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-eqz p1, :cond_28

    return-void

    .line 402
    :cond_28
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "signature did not verify"

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyOpenSSL(Lorg/conscrypt/OpenSSLKey;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 381
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object p1

    invoke-static {v0, v1, p0, p1}, Lorg/conscrypt/NativeCrypto;->X509_verify(JLorg/conscrypt/OpenSSLX509Certificate;Lorg/conscrypt/NativeRef$EVP_PKEY;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_10
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    .line 385
    :catch_a
    new-instance p1, Ljava/security/SignatureException;

    invoke-direct {p1}, Ljava/security/SignatureException;-><init>()V

    throw p1

    :catch_10
    move-exception p1

    .line 383
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLX509Certificate;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    const-string v1, ")"

    const-string v2, " (compared to "

    if-gtz v0, :cond_45

    .line 262
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-ltz v0, :cond_19

    return-void

    .line 263
    :cond_19
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate expired at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_45
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate not valid until "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 539
    instance-of v0, p1, Lorg/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_16

    .line 540
    move-object v6, p1

    check-cast v6, Lorg/conscrypt/OpenSSLX509Certificate;

    .line 542
    iget-wide v1, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    iget-wide v4, v6, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lorg/conscrypt/NativeCrypto;->X509_cmp(JLorg/conscrypt/OpenSSLX509Certificate;JLorg/conscrypt/OpenSSLX509Certificate;)I

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1

    .line 545
    :cond_16
    invoke-super {p0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 583
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    .line 584
    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_free(JLorg/conscrypt/OpenSSLX509Certificate;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_f

    .line 587
    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBasicConstraints()I
    .registers 5

    .line 360
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_ex_flags(JLorg/conscrypt/OpenSSLX509Certificate;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const/4 v1, -0x1

    if-nez v0, :cond_c

    return v1

    .line 364
    :cond_c
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_ex_pathlen(JLorg/conscrypt/OpenSSLX509Certificate;)I

    move-result v0

    if-ne v0, v1, :cond_17

    const v0, 0x7fffffff

    :cond_17
    return v0
.end method

.method public getContext()J
    .registers 3

    .line 564
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    return-wide v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v2, 0x1

    .line 203
    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->get_X509_ext_oids(JLorg/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v0

    .line 210
    array-length v1, v0

    if-nez v1, :cond_16

    iget-wide v1, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v3, 0x0

    .line 211
    invoke-static {v1, v2, p0, v3}, Lorg/conscrypt/NativeCrypto;->get_X509_ext_oids(JLorg/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getEncoded()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 374
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->i2d_X509(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 504
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_ex_xkusage(JLorg/conscrypt/OpenSSLX509Certificate;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 509
    :cond_a
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 4

    .line 221
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0, p1}, Lorg/conscrypt/NativeCrypto;->X509_get_ext_oid(JLorg/conscrypt/OpenSSLX509Certificate;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 533
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JLorg/conscrypt/OpenSSLX509Certificate;I)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 2

    .line 280
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 3

    .line 334
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_issuerUID(JLorg/conscrypt/OpenSSLX509Certificate;)[Z

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .line 492
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_get_issuer_name(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    .line 493
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public getKeyUsage()[Z
    .registers 5

    .line 344
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_ex_kusage(JLorg/conscrypt/OpenSSLX509Certificate;)[Z

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 349
    :cond_a
    array-length v1, v0

    const/16 v2, 0x9

    if-lt v1, v2, :cond_10

    return-object v0

    :cond_10
    new-array v1, v2, [Z

    .line 354
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v2, 0x0

    .line 227
    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->get_X509_ext_oids(JLorg/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v0

    .line 234
    array-length v1, v0

    if-nez v1, :cond_16

    iget-wide v1, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v3, 0x1

    .line 235
    invoke-static {v1, v2, p0, v3}, Lorg/conscrypt/NativeCrypto;->get_X509_ext_oids(JLorg/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    const/4 v0, 0x0

    return-object v0

    .line 240
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 2

    .line 295
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notAfter:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 2

    .line 290
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notBefore:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 5

    .line 467
    :try_start_0
    new-instance v0, Lorg/conscrypt/OpenSSLKey;

    iget-wide v1, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v1, v2, p0}, Lorg/conscrypt/NativeCrypto;->X509_get_pubkey(JLorg/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V

    .line 468
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 474
    :catch_10
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_pubkey_oid(JLorg/conscrypt/OpenSSLX509Certificate;)Ljava/lang/String;

    move-result-object v0

    .line 475
    iget-wide v1, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v1, v2, p0}, Lorg/conscrypt/NativeCrypto;->i2d_X509_PUBKEY(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v1

    .line 477
    :try_start_1c
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 478
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1c .. :try_end_29} :catch_2a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1c .. :try_end_29} :catch_2a

    return-object v0

    .line 487
    :catch_2a
    new-instance v2, Lorg/conscrypt/X509PublicKey;

    invoke-direct {v2, v0, v1}, Lorg/conscrypt/X509PublicKey;-><init>(Ljava/lang/String;[B)V

    return-object v2
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 4

    .line 275
    new-instance v0, Ljava/math/BigInteger;

    iget-wide v1, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v1, v2, p0}, Lorg/conscrypt/NativeCrypto;->X509_get_serialNumber(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 3

    .line 310
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Lorg/conscrypt/OidData;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    return-object v1

    .line 315
    :cond_b
    invoke-static {v0}, Lorg/conscrypt/Platform;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    return-object v1

    :cond_12
    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 3

    .line 324
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_sig_alg_oid(JLorg/conscrypt/OpenSSLX509Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 3

    .line 329
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_sig_alg_parameter(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .registers 3

    .line 305
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_signature(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 527
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JLorg/conscrypt/OpenSSLX509Certificate;I)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 2

    .line 285
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .registers 3

    .line 339
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_subjectUID(JLorg/conscrypt/OpenSSLX509Certificate;)[Z

    move-result-object v0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .line 498
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_get_subject_name(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    .line 499
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public getTBSCertificate()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 300
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_cert_info_enc(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 3

    .line 270
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_get_version(JLorg/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v0

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 3

    .line 245
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_ex_flags(JLorg/conscrypt/OpenSSLX509Certificate;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 550
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 551
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 553
    :cond_9
    invoke-super {p0}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    .line 554
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    .line 453
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 454
    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v10

    .line 456
    :try_start_9
    iget-wide v3, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide v1, v10

    move-object v5, p0

    invoke-static/range {v1 .. v9}, Lorg/conscrypt/NativeCrypto;->X509_print_ex(JJLorg/conscrypt/OpenSSLX509Certificate;JJ)V

    .line 457
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1c

    .line 459
    invoke-static {v10, v11}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    return-object v0

    :catchall_1c
    move-exception v0

    invoke-static {v10, v11}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    throw v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 409
    instance-of v0, p1, Lorg/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_e

    .line 410
    check-cast p1, Lorg/conscrypt/OpenSSLKeyHolder;

    invoke-interface {p1}, Lorg/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    .line 411
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLX509Certificate;->verifyOpenSSL(Lorg/conscrypt/OpenSSLKey;)V

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 415
    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 422
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 431
    instance-of v0, p1, Lorg/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_12

    instance-of v0, p2, Lorg/conscrypt/OpenSSLProvider;

    if-eqz v0, :cond_12

    .line 432
    check-cast p1, Lorg/conscrypt/OpenSSLKeyHolder;

    invoke-interface {p1}, Lorg/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    .line 433
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLX509Certificate;->verifyOpenSSL(Lorg/conscrypt/OpenSSLKey;)V

    return-void

    :cond_12
    if-nez p2, :cond_1d

    .line 439
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_25

    .line 441
    :cond_1d
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p2

    .line 444
    :goto_25
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 445
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    .line 446
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSignature()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-eqz p1, :cond_3a

    return-void

    .line 447
    :cond_3a
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "signature did not verify"

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withDeletedExtension(Ljava/lang/String;)Lorg/conscrypt/OpenSSLX509Certificate;
    .registers 7

    .line 575
    new-instance v0, Lorg/conscrypt/OpenSSLX509Certificate;

    iget-wide v1, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v1, v2, p0}, Lorg/conscrypt/NativeCrypto;->X509_dup(JLorg/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notBefore:Ljava/util/Date;

    iget-object v4, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notAfter:Ljava/util/Date;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/conscrypt/OpenSSLX509Certificate;-><init>(JLjava/util/Date;Ljava/util/Date;)V

    .line 576
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v1

    invoke-static {v1, v2, v0, p1}, Lorg/conscrypt/NativeCrypto;->X509_delete_ext(JLorg/conscrypt/OpenSSLX509Certificate;Ljava/lang/String;)V

    return-object v0
.end method
