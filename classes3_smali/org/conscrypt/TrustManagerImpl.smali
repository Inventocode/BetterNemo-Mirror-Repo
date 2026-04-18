.class public final Lorg/conscrypt/TrustManagerImpl;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "TrustManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;,
        Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;,
        Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;
    }
.end annotation


# static fields
.field private static final TRUST_ANCHOR_COMPARATOR:Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;

.field private static defaultHostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final blacklist:Lorg/conscrypt/CertBlacklist;

.field private ctEnabledOverride:Z

.field private ctPolicy:Lorg/conscrypt/ct/CTPolicy;

.field private ctVerifier:Lorg/conscrypt/ct/CTVerifier;

.field private final err:Ljava/lang/Exception;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private hostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

.field private final intermediateIndex:Lorg/conscrypt/TrustedCertificateIndex;

.field private pinManager:Lorg/conscrypt/CertPinManager;

.field private final rootKeyStore:Ljava/security/KeyStore;

.field private final trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

.field private final trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

.field private final validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 88
    const-class v0, Lorg/conscrypt/TrustManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/TrustManagerImpl;->logger:Ljava/util/logging/Logger;

    .line 93
    new-instance v0, Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;-><init>(Lorg/conscrypt/TrustManagerImpl$1;)V

    sput-object v0, Lorg/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 3

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, v0}, Lorg/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;)V
    .registers 4

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, p2, v0}, Lorg/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;)V
    .registers 5

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;Lorg/conscrypt/CertBlacklist;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;Lorg/conscrypt/CertBlacklist;)V
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 168
    invoke-direct/range {v0 .. v7}, Lorg/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;Lorg/conscrypt/CertBlacklist;Lorg/conscrypt/ct/CTLogStore;Lorg/conscrypt/ct/CTVerifier;Lorg/conscrypt/ct/CTPolicy;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;Lorg/conscrypt/CertBlacklist;Lorg/conscrypt/ct/CTLogStore;Lorg/conscrypt/ct/CTVerifier;Lorg/conscrypt/ct/CTPolicy;)V
    .registers 13

    .line 176
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    const/4 p6, 0x0

    :try_start_4
    const-string v0, "PKIX"

    .line 185
    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_72

    :try_start_a
    const-string v1, "X509"

    .line 186
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_6a

    :try_start_10
    const-string v2, "AndroidCAStore"

    .line 189
    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 190
    invoke-static {}, Lorg/conscrypt/Platform;->supportsConscryptCertStore()Z

    move-result v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_62

    if-eqz v2, :cond_3d

    if-eqz p3, :cond_25

    goto :goto_29

    .line 193
    :cond_25
    :try_start_25
    invoke-static {}, Lorg/conscrypt/Platform;->newDefaultCertStore()Lorg/conscrypt/ConscryptCertStore;

    move-result-object p3
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_3a

    .line 195
    :goto_29
    :try_start_29
    new-instance v2, Lorg/conscrypt/TrustedCertificateIndex;

    invoke-direct {v2}, Lorg/conscrypt/TrustedCertificateIndex;-><init>()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_32

    move-object v3, v2

    move-object v2, p3

    move-object p3, p6

    goto :goto_4e

    :catch_32
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p3

    move-object p3, p6

    goto/16 :goto_79

    :catch_3a
    move-exception v2

    move-object p3, p6

    goto :goto_65

    .line 199
    :cond_3d
    :try_start_3d
    invoke-static {p1}, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_5a

    .line 200
    :try_start_41
    new-instance v2, Lorg/conscrypt/TrustedCertificateIndex;

    .line 201
    invoke-static {p1}, Lorg/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/conscrypt/TrustedCertificateIndex;-><init>(Ljava/util/Set;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_52

    move-object v3, v2

    move-object v2, p3

    move-object p3, p1

    move-object p1, p6

    :goto_4e
    move-object v4, v3

    move-object v3, p6

    move-object p6, v4

    goto :goto_7d

    :catch_52
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p3

    move-object p3, p1

    move-object p1, p6

    goto :goto_79

    :catch_5a
    move-exception v2

    move-object p1, p6

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p3

    move-object p3, p1

    goto :goto_79

    :catch_62
    move-exception v2

    move-object p1, p6

    move-object p3, p1

    :goto_65
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p3

    goto :goto_79

    :catch_6a
    move-exception v2

    move-object p1, p6

    move-object p3, p1

    move-object v1, v0

    move-object v3, v2

    move-object v0, p3

    move-object v2, v0

    goto :goto_79

    :catch_72
    move-exception v2

    move-object p1, p6

    move-object p3, p1

    move-object v0, p3

    move-object v1, v0

    move-object v3, v2

    move-object v2, v1

    :goto_79
    move-object v4, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    :goto_7d
    if-nez p4, :cond_83

    .line 209
    invoke-static {}, Lorg/conscrypt/Platform;->newDefaultBlacklist()Lorg/conscrypt/CertBlacklist;

    move-result-object p4

    :cond_83
    if-nez p5, :cond_89

    .line 212
    invoke-static {}, Lorg/conscrypt/Platform;->newDefaultLogStore()Lorg/conscrypt/ct/CTLogStore;

    move-result-object p5

    :cond_89
    if-nez p7, :cond_8f

    .line 216
    invoke-static {p5}, Lorg/conscrypt/Platform;->newDefaultPolicy(Lorg/conscrypt/ct/CTLogStore;)Lorg/conscrypt/ct/CTPolicy;

    move-result-object p7

    .line 219
    :cond_8f
    iput-object p2, p0, Lorg/conscrypt/TrustManagerImpl;->pinManager:Lorg/conscrypt/CertPinManager;

    .line 220
    iput-object p1, p0, Lorg/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    .line 221
    iput-object v2, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

    .line 222
    iput-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    .line 223
    iput-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    .line 224
    iput-object p6, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    .line 225
    new-instance p1, Lorg/conscrypt/TrustedCertificateIndex;

    invoke-direct {p1}, Lorg/conscrypt/TrustedCertificateIndex;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/TrustManagerImpl;->intermediateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    .line 226
    iput-object p3, p0, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    .line 227
    iput-object v3, p0, Lorg/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    .line 228
    iput-object p4, p0, Lorg/conscrypt/TrustManagerImpl;->blacklist:Lorg/conscrypt/CertBlacklist;

    .line 229
    new-instance p1, Lorg/conscrypt/ct/CTVerifier;

    invoke-direct {p1, p5}, Lorg/conscrypt/ct/CTVerifier;-><init>(Lorg/conscrypt/ct/CTLogStore;)V

    iput-object p1, p0, Lorg/conscrypt/TrustManagerImpl;->ctVerifier:Lorg/conscrypt/ct/CTVerifier;

    .line 230
    iput-object p7, p0, Lorg/conscrypt/TrustManagerImpl;->ctPolicy:Lorg/conscrypt/ct/CTPolicy;

    return-void
.end method

.method private static acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .registers 4

    .line 244
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 246
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_9

    .line 249
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 252
    :cond_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;
    :try_end_2d
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method private checkBlacklist(Ljava/security/cert/X509Certificate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->blacklist:Lorg/conscrypt/CertBlacklist;

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/conscrypt/CertBlacklist;->isPublicKeyBlackListed(Ljava/security/PublicKey;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_26

    .line 724
    :cond_f
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate blacklisted by public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    return-void
.end method

.method private checkCT(Ljava/lang/String;Ljava/util/List;[B[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->ctVerifier:Lorg/conscrypt/ct/CTVerifier;

    .line 731
    invoke-virtual {v0, p2, p4, p3}, Lorg/conscrypt/ct/CTVerifier;->verifySignedCertificateTimestamps(Ljava/util/List;[B[B)Lorg/conscrypt/ct/CTVerificationResult;

    move-result-object p3

    .line 733
    iget-object p4, p0, Lorg/conscrypt/TrustManagerImpl;->ctPolicy:Lorg/conscrypt/ct/CTPolicy;

    .line 734
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/security/cert/X509Certificate;

    .line 733
    invoke-interface {p4, p3, p1, p2}, Lorg/conscrypt/ct/CTPolicy;->doesResultConformToPolicy(Lorg/conscrypt/ct/CTVerificationResult;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return-void

    .line 735
    :cond_1b
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Certificate chain does not conform to required transparency policy."

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLSession;",
            "Ljavax/net/ssl/SSLParameters;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_13

    .line 398
    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-direct {p0, p3}, Lorg/conscrypt/TrustManagerImpl;->getOcspDataFromSession(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v1

    .line 400
    invoke-direct {p0, p3}, Lorg/conscrypt/TrustManagerImpl;->getTlsSctDataFromSession(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v2

    move-object v8, v0

    move-object v5, v1

    move-object v6, v2

    goto :goto_16

    :cond_13
    move-object v5, v0

    move-object v6, v5

    move-object v8, v6

    :goto_16
    if-eqz p3, :cond_39

    if-eqz p4, :cond_39

    .line 404
    invoke-virtual {p4}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object p4

    const-string v0, "HTTPS"

    .line 405
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_39

    .line 406
    invoke-direct {p0}, Lorg/conscrypt/TrustManagerImpl;->getHttpsVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;

    move-result-object p4

    .line 407
    invoke-interface {p4, v8, p3}, Lorg/conscrypt/ConscryptHostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p3

    if-eqz p3, :cond_31

    goto :goto_39

    .line 408
    :cond_31
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "No subjectAltNames on the certificate match"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    :goto_39
    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move v9, p5

    .line 412
    invoke-direct/range {v3 .. v9}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_4d

    .line 472
    array-length v0, p1

    if-eqz v0, :cond_4d

    if-eqz p4, :cond_4d

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_4d

    .line 475
    iget-object p4, p0, Lorg/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    if-nez p4, :cond_45

    .line 478
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 479
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 480
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 p4, 0x0

    .line 484
    aget-object p4, p1, p4

    .line 485
    invoke-direct {p0, p4}, Lorg/conscrypt/TrustManagerImpl;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 487
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 490
    :cond_34
    invoke-virtual {v6, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :goto_37
    invoke-interface {v8, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    .line 493
    invoke-direct/range {v0 .. v8}, Lorg/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 476
    :cond_45
    new-instance p1, Ljava/security/cert/CertificateException;

    iget-object p2, p0, Lorg/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 473
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null or zero-length parameter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    move-object v8, p0

    move-object v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    .line 526
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_1b

    .line 527
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    goto :goto_2a

    .line 529
    :cond_1b
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    :goto_2a
    move-object v6, v0

    .line 533
    invoke-direct {p0, v6}, Lorg/conscrypt/TrustManagerImpl;->checkBlacklist(Ljava/security/cert/X509Certificate;)V

    .line 536
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 537
    invoke-direct/range {v1 .. v7}, Lorg/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 546
    :cond_4e
    invoke-direct {p0, v6}, Lorg/conscrypt/TrustManagerImpl;->findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    const/4 v7, 0x0

    .line 548
    invoke-static {v0}, Lorg/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, v10

    :goto_5d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/TrustAnchor;

    .line 549
    invoke-virtual {v11}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v12

    .line 551
    invoke-interface {v4, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_74

    goto :goto_5d

    .line 555
    :cond_74
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 556
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    :try_start_7a
    invoke-direct/range {p0 .. p8}, Lorg/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_7e
    .catch Ljava/security/cert/CertificateException; {:try_start_7a .. :try_end_7e} :catch_7f

    return-object v0

    :catch_7f
    move-exception v0

    .line 564
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 565
    invoke-interface {v4, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_5d

    .line 571
    :cond_8d
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a8

    if-nez v7, :cond_a7

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 573
    invoke-direct/range {v1 .. v7}, Lorg/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 578
    :cond_a7
    throw v0

    :cond_a8
    const/4 v7, 0x1

    .line 583
    :goto_a9
    array-length v9, v1

    if-ge v7, v9, :cond_100

    .line 584
    aget-object v9, v1, v7

    .line 586
    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b5

    goto :goto_fd

    .line 589
    :cond_b5
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_fd

    .line 593
    :try_start_c3
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 594
    invoke-static {v9}, Lorg/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_c9
    .catch Ljava/security/cert/CertificateException; {:try_start_c3 .. :try_end_c9} :catch_e1

    .line 600
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    :try_start_cf
    invoke-direct/range {p0 .. p8}, Lorg/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_d3
    .catch Ljava/security/cert/CertificateException; {:try_start_cf .. :try_end_d3} :catch_d4

    return-object v0

    :catch_d4
    move-exception v0

    .line 609
    invoke-interface {v4, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 610
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_fd

    :catch_e1
    move-exception v0

    .line 596
    new-instance v11, Ljava/security/cert/CertificateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unacceptable certificate: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v11

    :cond_fd
    :goto_fd
    add-int/lit8 v7, v7, 0x1

    goto :goto_a9

    .line 615
    :cond_100
    iget-object v7, v8, Lorg/conscrypt/TrustManagerImpl;->intermediateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    .line 616
    invoke-virtual {v7, v6}, Lorg/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v6

    .line 617
    invoke-static {v6}, Lorg/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/TrustAnchor;

    .line 618
    invoke-virtual {v7}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 620
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_125

    goto :goto_10e

    .line 623
    :cond_125
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 624
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :try_start_12b
    invoke-direct/range {p0 .. p8}, Lorg/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_12f
    .catch Ljava/security/cert/CertificateException; {:try_start_12b .. :try_end_12f} :catch_130

    return-object v0

    :catch_130
    move-exception v0

    .line 632
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 633
    invoke-interface {v4, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_10e

    :cond_13d
    if-eqz v0, :cond_140

    .line 638
    throw v0

    .line 643
    :cond_140
    iget-object v0, v8, Lorg/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 644
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const/4 v3, -0x1

    const-string v4, "Trust anchor for certification path not found."

    invoke-direct {v2, v4, v10, v0, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    .line 918
    invoke-virtual {v0, p1}, Lorg/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    .line 919
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

    if-nez v1, :cond_11

    goto :goto_3f

    .line 922
    :cond_11
    invoke-interface {v1, p1}, Lorg/conscrypt/ConscryptCertStore;->findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object p1

    .line 923
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    return-object v0

    .line 926
    :cond_1c
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 927
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 928
    iget-object v2, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v2, v1}, Lorg/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3f
    :goto_3f
    return-object v0
.end method

.method private findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 4

    .line 939
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0, p1}, Lorg/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 943
    :cond_9
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    .line 950
    :cond_f
    invoke-interface {v0, p1}, Lorg/conscrypt/ConscryptCertStore;->getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 958
    new-instance v0, Ljava/security/cert/TrustAnchor;

    invoke-direct {v0, p1, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    return-object v0

    :cond_1b
    return-object v1
.end method

.method static declared-synchronized getDefaultHostnameVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;
    .registers 2

    const-class v0, Lorg/conscrypt/TrustManagerImpl;

    monitor-enter v0

    .line 983
    :try_start_3
    sget-object v1, Lorg/conscrypt/TrustManagerImpl;->defaultHostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 285
    :cond_7
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "Not in handshake; no session available"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getHttpsVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;
    .registers 2

    .line 1014
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->hostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

    if-eqz v0, :cond_5

    return-object v0

    .line 1017
    :cond_5
    invoke-static {}, Lorg/conscrypt/TrustManagerImpl;->getDefaultHostnameVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    .line 1021
    :cond_c
    sget-object v0, Lorg/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;->INSTANCE:Lorg/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;

    return-object v0
.end method

.method private getOcspDataFromSession(Ljavax/net/ssl/SSLSession;)[B
    .registers 7

    .line 417
    instance-of v0, p1, Lorg/conscrypt/ConscryptSession;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 418
    check-cast p1, Lorg/conscrypt/ConscryptSession;

    .line 419
    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getStatusResponses()Ljava/util/List;

    move-result-object p1

    goto :goto_36

    .line 423
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getStatusResponses"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    .line 424
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v2, [Ljava/lang/Object;

    .line 425
    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 426
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_35

    .line 427
    check-cast p1, Ljava/util/List;
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_29} :catch_35
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_29} :catch_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_29} :catch_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_29} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_29} :catch_2a

    goto :goto_36

    :catch_2a
    move-exception p1

    .line 434
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_35
    :cond_35
    move-object p1, v1

    :goto_36
    if-eqz p1, :cond_46

    .line 438
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_46

    .line 442
    :cond_3f
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_46
    :goto_46
    return-object v1
.end method

.method private getTlsSctDataFromSession(Ljavax/net/ssl/SSLSession;)[B
    .registers 7

    .line 446
    instance-of v0, p1, Lorg/conscrypt/ConscryptSession;

    if-eqz v0, :cond_b

    .line 447
    check-cast p1, Lorg/conscrypt/ConscryptSession;

    .line 448
    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object p1

    return-object p1

    :cond_b
    const/4 v0, 0x0

    .line 453
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPeerSignedCertificateTimestamp"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 454
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 455
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 456
    instance-of v1, p1, [B

    if-eqz v1, :cond_36

    .line 457
    check-cast p1, [B
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_29} :catch_36
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_29} :catch_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_29} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_29} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_29} :catch_2b

    move-object v0, p1

    goto :goto_36

    :catch_2b
    move-exception p1

    .line 464
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_36
    :cond_36
    :goto_36
    return-object v0
.end method

.method static declared-synchronized setDefaultHostnameVerifier(Lorg/conscrypt/ConscryptHostnameVerifier;)V
    .registers 2

    const-class v0, Lorg/conscrypt/TrustManagerImpl;

    monitor-enter v0

    .line 974
    :try_start_3
    sput-object p0, Lorg/conscrypt/TrustManagerImpl;->defaultHostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 975
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setOcspResponses(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V
    .registers 9

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 749
    new-instance v1, Ljava/util/ArrayList;

    .line 750
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 751
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    .line 752
    instance-of v4, v3, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v4, :cond_11

    .line 753
    move-object v0, v3

    check-cast v0, Ljava/security/cert/PKIXRevocationChecker;

    :cond_24
    if-nez v0, :cond_3c

    .line 762
    :try_start_26
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidator;->getRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXRevocationChecker;
    :try_end_2e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_26 .. :try_end_2e} :catch_3b

    .line 767
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    sget-object v2, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXRevocationChecker;->setOptions(Ljava/util/Set;)V

    goto :goto_3c

    :catch_3b
    return-void

    .line 777
    :cond_3c
    :goto_3c
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/security/cert/PKIXRevocationChecker;->setOcspResponses(Ljava/util/Map;)V

    .line 778
    invoke-virtual {p1, v1}, Ljava/security/cert/PKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    return-void
.end method

.method private static sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 787
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    return-object p0

    .line 790
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 791
    sget-object p0, Lorg/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 260
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget-object v3, p0, v2

    .line 261
    new-instance v4, Ljava/security/cert/TrustAnchor;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    return-object v0
.end method

.method private verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/lang/String;",
            "Z[B[B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "Chain validation failed"

    .line 656
    :try_start_2
    iget-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v1

    .line 659
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_b4

    .line 664
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 665
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 666
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/TrustAnchor;

    .line 667
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 670
    :cond_2f
    iget-object v4, p0, Lorg/conscrypt/TrustManagerImpl;->pinManager:Lorg/conscrypt/CertPinManager;

    if-eqz v4, :cond_36

    .line 671
    invoke-interface {v4, p3, v2}, Lorg/conscrypt/CertPinManager;->checkChainPinning(Ljava/lang/String;Ljava/util/List;)V

    .line 674
    :cond_36
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 675
    invoke-direct {p0, v5}, Lorg/conscrypt/TrustManagerImpl;->checkBlacklist(Ljava/security/cert/X509Certificate;)V

    goto :goto_3a

    :cond_4a
    if-nez p4, :cond_5b

    .line 679
    iget-boolean v4, p0, Lorg/conscrypt/TrustManagerImpl;->ctEnabledOverride:Z

    if-nez v4, :cond_58

    if-eqz p3, :cond_5b

    .line 681
    invoke-static {p3}, Lorg/conscrypt/Platform;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 682
    :cond_58
    invoke-direct {p0, p3, v2, p5, p6}, Lorg/conscrypt/TrustManagerImpl;->checkCT(Ljava/lang/String;Ljava/util/List;[B[B)V

    .line 685
    :cond_5b
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_62

    return-object v2

    .line 690
    :cond_62
    invoke-static {p1}, Lorg/conscrypt/ChainStrengthAnalyzer;->check(Ljava/util/List;)V
    :try_end_65
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_65} :catch_c2

    .line 694
    :try_start_65
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    const/4 p6, 0x0

    .line 696
    invoke-interface {p2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 697
    new-instance p2, Ljava/security/cert/PKIXParameters;

    invoke-direct {p2, p3}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 698
    invoke-virtual {p2, p6}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 699
    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    .line 700
    invoke-direct {p0, p2, p3, p5}, Lorg/conscrypt/TrustManagerImpl;->setOcspResponses(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V

    .line 701
    new-instance p5, Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;

    invoke-direct {p5, p4, p3, v3}, Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;Lorg/conscrypt/TrustManagerImpl$1;)V

    invoke-virtual {p2, p5}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    .line 703
    iget-object p3, p0, Lorg/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {p3, v1, p2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_90
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_65 .. :try_end_90} :catch_ad
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_65 .. :try_end_90} :catch_a6
    .catch Ljava/security/cert/CertificateException; {:try_start_65 .. :try_end_90} :catch_c2

    const/4 p2, 0x1

    .line 712
    :goto_91
    :try_start_91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_a5

    .line 713
    iget-object p3, p0, Lorg/conscrypt/TrustManagerImpl;->intermediateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/security/cert/X509Certificate;

    invoke-virtual {p3, p4}, Lorg/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    add-int/lit8 p2, p2, 0x1

    goto :goto_91

    :cond_a5
    return-object v2

    :catch_a6
    move-exception p1

    .line 707
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_ad
    move-exception p1

    .line 705
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 660
    :cond_b4
    new-instance p1, Ljava/security/cert/CertificateException;

    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    const-string p3, "Trust anchor for certification path not found."

    const/4 p4, -0x1

    invoke-direct {p2, p3, v3, v1, p4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_c2
    .catch Ljava/security/cert/CertificateException; {:try_start_91 .. :try_end_c2} :catch_c2

    :catch_c2
    move-exception p1

    .line 717
    sget-object p2, Lorg/conscrypt/TrustManagerImpl;->logger:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Rejected candidate cert chain due to error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 718
    throw p1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 277
    invoke-direct/range {v0 .. v6}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 269
    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 295
    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 296
    check-cast p3, Ljavax/net/ssl/SSLSocket;

    .line 297
    invoke-static {p3}, Lorg/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 298
    invoke-virtual {p3}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p3

    move-object v6, p3

    move-object v5, v1

    goto :goto_14

    :cond_12
    move-object v5, v1

    move-object v6, v5

    :goto_14
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 300
    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 306
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 310
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    return-void

    .line 308
    :cond_12
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Not in handshake; no session available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 324
    invoke-direct/range {v0 .. v6}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLSession;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 380
    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 316
    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 369
    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 965
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method getHostnameVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;
    .registers 2

    .line 1001
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->hostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

    return-object v0
.end method

.method public getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 337
    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 338
    check-cast p3, Ljavax/net/ssl/SSLSocket;

    .line 339
    invoke-static {p3}, Lorg/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 340
    invoke-virtual {p3}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p3

    move-object v6, p3

    move-object v5, v1

    goto :goto_14

    :cond_12
    move-object v5, v1

    move-object v6, v5

    :goto_14
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 342
    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLEngine;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 352
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 356
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 354
    :cond_13
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Not in handshake; no session available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleTrustStorageUpdate()V
    .registers 3

    .line 384
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_a

    .line 385
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0}, Lorg/conscrypt/TrustedCertificateIndex;->reset()V

    goto :goto_13

    .line 387
    :cond_a
    iget-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    invoke-static {v0}, Lorg/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/conscrypt/TrustedCertificateIndex;->reset(Ljava/util/Set;)V

    :goto_13
    return-void
.end method

.method public setCTEnabledOverride(Z)V
    .registers 2

    .line 1025
    iput-boolean p1, p0, Lorg/conscrypt/TrustManagerImpl;->ctEnabledOverride:Z

    return-void
.end method

.method public setCTPolicy(Lorg/conscrypt/ct/CTPolicy;)V
    .registers 2

    .line 1035
    iput-object p1, p0, Lorg/conscrypt/TrustManagerImpl;->ctPolicy:Lorg/conscrypt/ct/CTPolicy;

    return-void
.end method

.method public setCTVerifier(Lorg/conscrypt/ct/CTVerifier;)V
    .registers 2

    .line 1030
    iput-object p1, p0, Lorg/conscrypt/TrustManagerImpl;->ctVerifier:Lorg/conscrypt/ct/CTVerifier;

    return-void
.end method

.method setHostnameVerifier(Lorg/conscrypt/ConscryptHostnameVerifier;)V
    .registers 2

    .line 992
    iput-object p1, p0, Lorg/conscrypt/TrustManagerImpl;->hostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

    return-void
.end method
