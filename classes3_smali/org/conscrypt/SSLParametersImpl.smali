.class final Lorg/conscrypt/SSLParametersImpl;
.super Ljava/lang/Object;
.source "SSLParametersImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;,
        Lorg/conscrypt/SSLParametersImpl$AliasChooser;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static volatile defaultParameters:Lorg/conscrypt/SSLParametersImpl;

.field private static volatile defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private static volatile defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field applicationProtocolSelector:Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

.field applicationProtocols:[B

.field channelIdEnabled:Z

.field private final clientSessionContext:Lorg/conscrypt/ClientSessionContext;

.field private client_mode:Z

.field private ctVerificationEnabled:Z

.field private enable_session_creation:Z

.field enabledCipherSuites:[Ljava/lang/String;

.field enabledProtocols:[Ljava/lang/String;

.field private endpointIdentificationAlgorithm:Ljava/lang/String;

.field isEnabledProtocolsFiltered:Z

.field private need_client_auth:Z

.field ocspResponse:[B

.field private final pskKeyManager:Lorg/conscrypt/PSKKeyManager;

.field sctExtension:[B

.field private final serverSessionContext:Lorg/conscrypt/ServerSessionContext;

.field private useCipherSuitesOrder:Z

.field useSessionTickets:Z

.field private useSni:Ljava/lang/Boolean;

.field private want_client_auth:Z

.field private final x509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private final x509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 447
    sput-object v0, Lorg/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/conscrypt/ClientSessionContext;Lorg/conscrypt/ServerSessionContext;Ljavax/net/ssl/X509KeyManager;Lorg/conscrypt/PSKKeyManager;Ljavax/net/ssl/X509TrustManager;Lorg/conscrypt/SSLParametersImpl;)V
    .registers 9

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->client_mode:Z

    const/4 v1, 0x0

    .line 81
    iput-boolean v1, p0, Lorg/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 83
    iput-boolean v1, p0, Lorg/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 85
    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 98
    sget-object v0, Lorg/conscrypt/EmptyArray;->BYTE:[B

    iput-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 160
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    .line 161
    iput-object p2, p0, Lorg/conscrypt/SSLParametersImpl;->serverSessionContext:Lorg/conscrypt/ServerSessionContext;

    .line 162
    iput-object p3, p0, Lorg/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 163
    iput-object p4, p0, Lorg/conscrypt/SSLParametersImpl;->pskKeyManager:Lorg/conscrypt/PSKKeyManager;

    .line 164
    iput-object p5, p0, Lorg/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 167
    iget-object p1, p6, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    const/4 p2, 0x0

    if-nez p1, :cond_22

    move-object p1, p2

    goto :goto_28

    :cond_22
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_28
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 168
    iget-boolean p1, p6, Lorg/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    .line 170
    iget-object p1, p6, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    if-nez p1, :cond_34

    move-object p1, p2

    goto :goto_3a

    :cond_34
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_3a
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 171
    iget-boolean p1, p6, Lorg/conscrypt/SSLParametersImpl;->client_mode:Z

    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 172
    iget-boolean p1, p6, Lorg/conscrypt/SSLParametersImpl;->need_client_auth:Z

    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 173
    iget-boolean p1, p6, Lorg/conscrypt/SSLParametersImpl;->want_client_auth:Z

    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 174
    iget-boolean p1, p6, Lorg/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 175
    iget-object p1, p6, Lorg/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    .line 176
    iget-boolean p1, p6, Lorg/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    .line 177
    iget-boolean p1, p6, Lorg/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    .line 179
    iget-object p1, p6, Lorg/conscrypt/SSLParametersImpl;->sctExtension:[B

    if-nez p1, :cond_5e

    move-object p1, p2

    goto :goto_64

    :cond_5e
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_64
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->sctExtension:[B

    .line 181
    iget-object p1, p6, Lorg/conscrypt/SSLParametersImpl;->ocspResponse:[B

    if-nez p1, :cond_6c

    move-object p1, p2

    goto :goto_72

    :cond_6c
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_72
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->ocspResponse:[B

    .line 183
    iget-object p1, p6, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    if-nez p1, :cond_79

    goto :goto_80

    :cond_79
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, [B

    :goto_80
    iput-object p2, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 184
    iget-object p1, p6, Lorg/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 185
    iget-boolean p1, p6, Lorg/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    .line 186
    iget-object p1, p6, Lorg/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    .line 187
    iget-boolean p1, p6, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    return-void
.end method

.method constructor <init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/conscrypt/ClientSessionContext;Lorg/conscrypt/ServerSessionContext;[Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    .line 79
    iput-boolean p3, p0, Lorg/conscrypt/SSLParametersImpl;->client_mode:Z

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 83
    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 85
    iput-boolean p3, p0, Lorg/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 98
    sget-object v1, Lorg/conscrypt/EmptyArray;->BYTE:[B

    iput-object v1, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 121
    iput-object p5, p0, Lorg/conscrypt/SSLParametersImpl;->serverSessionContext:Lorg/conscrypt/ServerSessionContext;

    .line 122
    iput-object p4, p0, Lorg/conscrypt/SSLParametersImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    if-nez p1, :cond_21

    .line 126
    invoke-static {}, Lorg/conscrypt/SSLParametersImpl;->getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->pskKeyManager:Lorg/conscrypt/PSKKeyManager;

    goto :goto_2d

    .line 130
    :cond_21
    invoke-static {p1}, Lorg/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object p4

    iput-object p4, p0, Lorg/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 131
    invoke-static {p1}, Lorg/conscrypt/SSLParametersImpl;->findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lorg/conscrypt/PSKKeyManager;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->pskKeyManager:Lorg/conscrypt/PSKKeyManager;

    :goto_2d
    if-nez p2, :cond_36

    .line 136
    invoke-static {}, Lorg/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    goto :goto_3c

    .line 138
    :cond_36
    invoke-static {p2}, Lorg/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    :goto_3c
    if-nez p6, :cond_40

    .line 143
    sget-object p6, Lorg/conscrypt/NativeCrypto;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    .line 142
    :cond_40
    invoke-static {p6}, Lorg/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 144
    iget-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez p1, :cond_57

    iget-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz p1, :cond_55

    goto :goto_57

    :cond_55
    const/4 p1, 0x0

    goto :goto_58

    :cond_57
    :goto_57
    const/4 p1, 0x1

    .line 145
    :goto_58
    iget-object p2, p0, Lorg/conscrypt/SSLParametersImpl;->pskKeyManager:Lorg/conscrypt/PSKKeyManager;

    if-eqz p2, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 p3, 0x0

    .line 146
    :goto_5e
    invoke-static {p1, p3}, Lorg/conscrypt/SSLParametersImpl;->getDefaultCipherSuites(ZZ)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    return-void
.end method

.method private static createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 521
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 523
    invoke-virtual {v0, v1, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 524
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    .line 525
    invoke-static {v0}, Lorg/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v1

    if-eqz v1, :cond_17

    return-object v1

    .line 527
    :cond_17
    new-instance v1, Ljava/security/KeyManagementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No X509KeyManager among default KeyManagers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_32
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_32} :catch_40
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_32} :catch_39
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_32} :catch_32

    :catch_32
    move-exception v0

    .line 536
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_39
    move-exception v0

    .line 534
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_40
    move-exception v0

    .line 532
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 589
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 591
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 592
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 593
    invoke-static {v0}, Lorg/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    if-eqz v1, :cond_17

    return-object v1

    .line 595
    :cond_17
    new-instance v1, Ljava/security/KeyManagementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No X509TrustManager in among default TrustManagers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_32
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_32} :catch_39
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_32} :catch_32

    :catch_32
    move-exception v0

    .line 603
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_39
    move-exception v0

    .line 601
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static filterFromCipherSuites([Ljava/lang/String;Ljava/util/Set;)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_26

    .line 435
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_26

    .line 438
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 439
    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 440
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 441
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 444
    :cond_1e
    sget-object p0, Lorg/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :cond_26
    :goto_26
    return-object p0
.end method

.method private static filterFromProtocols([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 421
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    aget-object v0, p0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 422
    sget-object p0, Lorg/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 425
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    array-length v2, p0

    :goto_16
    if-ge v1, v2, :cond_26

    aget-object v3, p0, v1

    .line 427
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 428
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 431
    :cond_26
    sget-object p0, Lorg/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lorg/conscrypt/PSKKeyManager;
    .registers 5

    .line 561
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    aget-object v2, p0, v1

    .line 562
    instance-of v3, v2, Lorg/conscrypt/PSKKeyManager;

    if-eqz v3, :cond_d

    .line 563
    check-cast v2, Lorg/conscrypt/PSKKeyManager;

    return-object v2

    :cond_d
    if-eqz v2, :cond_14

    .line 566
    :try_start_f
    invoke-static {v2}, Lorg/conscrypt/DuckTypedPSKKeyManager;->getInstance(Ljava/lang/Object;)Lorg/conscrypt/DuckTypedPSKKeyManager;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .registers 5

    .line 546
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 547
    instance-of v3, v2, Ljavax/net/ssl/X509KeyManager;

    if-eqz v3, :cond_d

    .line 548
    check-cast v2, Ljavax/net/ssl/X509KeyManager;

    return-object v2

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .registers 5

    .line 614
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 615
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_d

    .line 616
    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    return-object v2

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method static getDefault()Lorg/conscrypt/SSLParametersImpl;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 191
    sget-object v0, Lorg/conscrypt/SSLParametersImpl;->defaultParameters:Lorg/conscrypt/SSLParametersImpl;

    if-nez v0, :cond_1a

    .line 194
    new-instance v0, Lorg/conscrypt/SSLParametersImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lorg/conscrypt/ClientSessionContext;

    invoke-direct {v5}, Lorg/conscrypt/ClientSessionContext;-><init>()V

    new-instance v6, Lorg/conscrypt/ServerSessionContext;

    invoke-direct {v6}, Lorg/conscrypt/ServerSessionContext;-><init>()V

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/conscrypt/ClientSessionContext;Lorg/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    sput-object v0, Lorg/conscrypt/SSLParametersImpl;->defaultParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 201
    :cond_1a
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/SSLParametersImpl;

    return-object v0
.end method

.method private static getDefaultCipherSuites(ZZ)[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    if-eqz p0, :cond_30

    if-eqz p1, :cond_1f

    const/4 p0, 0x3

    new-array p0, p0, [[Ljava/lang/String;

    .line 650
    sget-object p1, Lorg/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    aput-object p1, p0, v1

    sget-object p1, Lorg/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    aput-object p1, p0, v0

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p0}, Lorg/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    new-array p0, v2, [[Ljava/lang/String;

    .line 656
    sget-object p1, Lorg/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    aput-object p1, p0, v1

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lorg/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_30
    if-eqz p1, :cond_43

    new-array p0, v2, [[Ljava/lang/String;

    .line 662
    sget-object p1, Lorg/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    aput-object p1, p0, v1

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lorg/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 667
    :cond_43
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 512
    sget-object v0, Lorg/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v0, :cond_a

    .line 515
    invoke-static {}, Lorg/conscrypt/SSLParametersImpl;->createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    :cond_a
    return-object v0
.end method

.method static getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 578
    sget-object v0, Lorg/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_a

    .line 581
    invoke-static {}, Lorg/conscrypt/SSLParametersImpl;->createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    :cond_a
    return-object v0
.end method

.method private isSniEnabledByDefault()Z
    .registers 4

    const-string v0, "true"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "jsse.enableSNIExtension"

    .line 455
    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    :cond_10
    const-string v0, "false"

    .line 458
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    return v0

    .line 461
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Can only set \"jsse.enableSNIExtension\" to \"true\" or \"false\""

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_22} :catch_22

    :catch_22
    return v1
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 3

    .line 500
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .line 502
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method cloneWithTrustManager(Ljavax/net/ssl/X509TrustManager;)Lorg/conscrypt/SSLParametersImpl;
    .registers 10

    .line 507
    new-instance v7, Lorg/conscrypt/SSLParametersImpl;

    iget-object v1, p0, Lorg/conscrypt/SSLParametersImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    iget-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->serverSessionContext:Lorg/conscrypt/ServerSessionContext;

    iget-object v3, p0, Lorg/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    iget-object v4, p0, Lorg/conscrypt/SSLParametersImpl;->pskKeyManager:Lorg/conscrypt/PSKKeyManager;

    move-object v0, v7

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/conscrypt/SSLParametersImpl;-><init>(Lorg/conscrypt/ClientSessionContext;Lorg/conscrypt/ServerSessionContext;Ljavax/net/ssl/X509KeyManager;Lorg/conscrypt/PSKKeyManager;Ljavax/net/ssl/X509TrustManager;Lorg/conscrypt/SSLParametersImpl;)V

    return-object v7
.end method

.method getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 294
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->decodeProtocols([B)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getClientSessionContext()Lorg/conscrypt/ClientSessionContext;
    .registers 2

    .line 215
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    return-object v0
.end method

.method getEnableSessionCreation()Z
    .registers 2

    .line 368
    iget-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    return v0
.end method

.method getEnabledCipherSuites()[Ljava/lang/String;
    .registers 4

    .line 244
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "TLSv1.3"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    .line 245
    sget-object v2, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :cond_20
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 267
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getEndpointIdentificationAlgorithm()Ljava/lang/String;
    .registers 2

    .line 623
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method getNeedClientAuth()Z
    .registers 2

    .line 335
    iget-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->need_client_auth:Z

    return v0
.end method

.method getOCSPResponse()[B
    .registers 2

    .line 413
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->ocspResponse:[B

    return-object v0
.end method

.method getPSKKeyManager()Lorg/conscrypt/PSKKeyManager;
    .registers 2

    .line 230
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->pskKeyManager:Lorg/conscrypt/PSKKeyManager;

    return-object v0
.end method

.method getSessionContext()Lorg/conscrypt/AbstractSessionContext;
    .registers 2

    .line 208
    iget-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->serverSessionContext:Lorg/conscrypt/ServerSessionContext;

    :goto_9
    return-object v0
.end method

.method getUseCipherSuitesOrder()Z
    .registers 2

    .line 631
    iget-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    return v0
.end method

.method getUseClientMode()Z
    .registers 2

    .line 318
    iget-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->client_mode:Z

    return v0
.end method

.method getUseSni()Z
    .registers 2

    .line 388
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_d

    :cond_9
    invoke-direct {p0}, Lorg/conscrypt/SSLParametersImpl;->isSniEnabledByDefault()Z

    move-result v0

    :goto_d
    return v0
.end method

.method getWantClientAuth()Z
    .registers 2

    .line 352
    iget-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->want_client_auth:Z

    return v0
.end method

.method getX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 2

    .line 222
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .line 237
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method isCTVerificationEnabled(Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 680
    :cond_4
    iget-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 683
    :cond_a
    invoke-static {p1}, Lorg/conscrypt/Platform;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    return-void
.end method

.method setApplicationProtocols([Ljava/lang/String;)V
    .registers 2

    .line 290
    invoke-static {p1}, Lorg/conscrypt/SSLUtils;->encodeProtocols([Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    return-void
.end method

.method setCTVerificationEnabled(Z)V
    .registers 2

    .line 395
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    return-void
.end method

.method setEnableSessionCreation(Z)V
    .registers 2

    .line 360
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    return-void
.end method

.method setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3

    .line 258
    sget-object v0, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES_SET:Ljava/util/Set;

    .line 259
    invoke-static {p1, v0}, Lorg/conscrypt/SSLParametersImpl;->filterFromCipherSuites([Ljava/lang/String;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    return-void
.end method

.method setEnabledProtocols([Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1e

    const-string v0, "SSLv3"

    .line 279
    invoke-static {p1, v0}, Lorg/conscrypt/SSLParametersImpl;->filterFromProtocols([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 280
    array-length p1, p1

    array-length v1, v0

    if-eq p1, v1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    .line 281
    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    return-void

    .line 276
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .registers 2

    .line 627
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    return-void
.end method

.method setNeedClientAuth(Z)V
    .registers 2

    .line 325
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->need_client_auth:Z

    const/4 p1, 0x0

    .line 327
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->want_client_auth:Z

    return-void
.end method

.method setOCSPResponse([B)V
    .registers 2

    .line 409
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->ocspResponse:[B

    return-void
.end method

.method setSCTExtension([B)V
    .registers 2

    .line 402
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->sctExtension:[B

    return-void
.end method

.method setUseCipherSuitesOrder(Z)V
    .registers 2

    .line 635
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    return-void
.end method

.method setUseClientMode(Z)V
    .registers 2

    .line 310
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->client_mode:Z

    return-void
.end method

.method setUseSessionTickets(Z)V
    .registers 2

    .line 372
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    return-void
.end method

.method setUseSni(Z)V
    .registers 2

    .line 380
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    return-void
.end method

.method setWantClientAuth(Z)V
    .registers 2

    .line 342
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->want_client_auth:Z

    const/4 p1, 0x0

    .line 344
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->need_client_auth:Z

    return-void
.end method
