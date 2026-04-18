.class public Lorg/conscrypt/OpenSSLX509CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "OpenSSLX509CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;,
        Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    }
.end annotation


# static fields
.field private static final PKCS7_MARKER:[B

.field private static final PUSHBACK_SIZE:I = 0x40


# instance fields
.field private certificateParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser<",
            "Lorg/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private crlParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser<",
            "Lorg/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 41
    fill-array-data v0, :array_a

    sput-object v0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B

    return-void

    :array_a
    .array-data 1
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x42t
        0x45t
        0x47t
        0x49t
        0x4et
        0x20t
        0x50t
        0x4bt
        0x43t
        0x53t
        0x37t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 273
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    .line 219
    new-instance v0, Lorg/conscrypt/OpenSSLX509CertificateFactory$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/OpenSSLX509CertificateFactory$1;-><init>(Lorg/conscrypt/OpenSSLX509CertificateFactory;)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;

    .line 246
    new-instance v0, Lorg/conscrypt/OpenSSLX509CertificateFactory$2;

    invoke-direct {v0, p0}, Lorg/conscrypt/OpenSSLX509CertificateFactory$2;-><init>(Lorg/conscrypt/OpenSSLX509CertificateFactory;)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;

    return-void
.end method

.method static synthetic access$000()[B
    .registers 1

    .line 40
    sget-object v0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B

    return-object v0
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 297
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {v0, p1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/CRL;
    :try_end_8
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    .line 299
    new-instance v0, Ljava/security/cert/CRLException;

    invoke-direct {v0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    if-nez p1, :cond_7

    .line 306
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 310
    :cond_7
    :try_start_7
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {v0, p1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItems(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1
    :try_end_d
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_7 .. :try_end_d} :catch_e

    return-object p1

    :catch_e
    move-exception p1

    .line 312
    new-instance v0, Ljava/security/cert/CRLException;

    invoke-direct {v0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 323
    invoke-static {p1}, Lorg/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object p1

    return-object p1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 329
    invoke-static {p1, p2}, Lorg/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object p1

    return-object p1
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 336
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 337
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 339
    instance-of v3, v2, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_22

    .line 343
    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 340
    :cond_22
    new-instance p1, Ljava/security/cert/CertificateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate not X.509 type at index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 346
    :cond_39
    new-instance p1, Lorg/conscrypt/OpenSSLX509CertPath;

    invoke-direct {p1, v0}, Lorg/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 278
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {v0, p1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/Certificate;
    :try_end_8
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    .line 280
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 288
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {v0, p1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItems(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1
    :try_end_6
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 290
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 318
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertPath;->getEncodingsIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
