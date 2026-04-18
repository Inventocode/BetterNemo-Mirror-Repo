.class Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "TrustManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/TrustManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtendedKeyUsagePKIXCertPathChecker"
.end annotation


# static fields
.field private static final EKU_OID:Ljava/lang/String; = "2.5.29.37"

.field private static final EKU_anyExtendedKeyUsage:Ljava/lang/String; = "2.5.29.37.0"

.field private static final EKU_clientAuth:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final EKU_msSGC:Ljava/lang/String; = "1.3.6.1.4.1.311.10.3.3"

.field private static final EKU_nsSGC:Ljava/lang/String; = "2.16.840.1.113730.4.1"

.field private static final EKU_serverAuth:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final SUPPORTED_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clientAuth:Z

.field private final leaf:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 827
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "2.5.29.37"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 828
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->SUPPORTED_EXTENSIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(ZLjava/security/cert/X509Certificate;)V
    .registers 3

    .line 833
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 834
    iput-boolean p1, p0, Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->clientAuth:Z

    .line 835
    iput-object p2, p0, Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method synthetic constructor <init>(ZLjava/security/cert/X509Certificate;Lorg/conscrypt/TrustManagerImpl$1;)V
    .registers 4

    .line 817
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;)V

    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 857
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    if-eq p1, v0, :cond_5

    return-void

    .line 862
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object p1
    :try_end_9
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_9} :catch_60

    if-nez p1, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 873
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "2.5.29.37.0"

    .line 875
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    :goto_26
    const/4 v0, 0x1

    goto :goto_50

    .line 881
    :cond_28
    iget-boolean v3, p0, Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->clientAuth:Z

    if-eqz v3, :cond_35

    const-string v3, "1.3.6.1.5.5.7.3.2"

    .line 882
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_26

    :cond_35
    const-string v3, "1.3.6.1.5.5.7.3.1"

    .line 890
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_26

    :cond_3e
    const-string v3, "2.16.840.1.113730.4.1"

    .line 894
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    goto :goto_26

    :cond_47
    const-string v3, "1.3.6.1.4.1.311.10.3.3"

    .line 898
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_26

    :cond_50
    :goto_50
    if-eqz v0, :cond_58

    const-string p1, "2.5.29.37"

    .line 905
    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void

    .line 907
    :cond_58
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    const-string p2, "End-entity certificate does not have a valid extendedKeyUsage."

    invoke-direct {p1, p2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_60
    move-exception p1

    .line 865
    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 849
    sget-object v0, Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->SUPPORTED_EXTENSIONS:Ljava/util/Set;

    return-object v0
.end method

.method public init(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    return-void
.end method

.method public isForwardCheckingSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
