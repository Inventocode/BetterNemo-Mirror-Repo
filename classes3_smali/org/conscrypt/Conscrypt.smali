.class public final Lorg/conscrypt/Conscrypt;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/Conscrypt$ProviderBuilder;,
        Lorg/conscrypt/Conscrypt$Version;
    }
.end annotation


# static fields
.field private static final VERSION:Lorg/conscrypt/Conscrypt$Version;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "-1"

    const/4 v1, -0x1

    .line 80
    :try_start_3
    const-class v2, Lorg/conscrypt/Conscrypt;

    const-string v3, "conscrypt.properties"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 82
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 83
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "org.conscrypt.version.major"

    .line 84
    invoke-virtual {v3, v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1f} :catch_38

    :try_start_1f
    const-string v4, "org.conscrypt.version.minor"

    .line 85
    invoke-virtual {v3, v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_39

    :try_start_29
    const-string v5, "org.conscrypt.version.patch"

    .line 86
    invoke-virtual {v3, v5, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_33} :catch_3a

    move v1, v2

    goto :goto_3c

    :cond_35
    const/4 v0, -0x1

    const/4 v4, -0x1

    goto :goto_3c

    :catch_38
    const/4 v2, -0x1

    :catch_39
    const/4 v4, -0x1

    :catch_3a
    move v1, v2

    const/4 v0, -0x1

    :goto_3c
    const/4 v2, 0x0

    if-ltz v1, :cond_4b

    if-ltz v4, :cond_4b

    if-ltz v0, :cond_4b

    .line 91
    new-instance v3, Lorg/conscrypt/Conscrypt$Version;

    invoke-direct {v3, v1, v4, v0, v2}, Lorg/conscrypt/Conscrypt$Version;-><init>(IIILorg/conscrypt/Conscrypt$1;)V

    sput-object v3, Lorg/conscrypt/Conscrypt;->VERSION:Lorg/conscrypt/Conscrypt$Version;

    goto :goto_4d

    .line 93
    :cond_4b
    sput-object v2, Lorg/conscrypt/Conscrypt;->VERSION:Lorg/conscrypt/Conscrypt$Version;

    :goto_4d
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAvailability()V
    .registers 0

    .line 111
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->checkAvailability()V

    return-void
.end method

.method public static exportKeyingMaterial(Ljavax/net/ssl/SSLEngine;Ljava/lang/String;[BI)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 708
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/AbstractConscryptEngine;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static exportKeyingMaterial(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;[BI)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 464
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/AbstractConscryptSocket;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 1

    .line 681
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 1

    .line 401
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationProtocols(Ljavax/net/ssl/SSLEngine;)[Ljava/lang/String;
    .registers 1

    .line 659
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptEngine;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationProtocols(Ljavax/net/ssl/SSLSocket;)[Ljava/lang/String;
    .registers 1

    .line 437
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChannelId(Ljavax/net/ssl/SSLEngine;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 574
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptEngine;->getChannelId()[B

    move-result-object p0

    return-object p0
.end method

.method public static getChannelId(Ljavax/net/ssl/SSLSocket;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 373
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getChannelId()[B

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getDefaultHostnameVerifier(Ljavax/net/ssl/TrustManager;)Lorg/conscrypt/ConscryptHostnameVerifier;
    .registers 2

    const-class p0, Lorg/conscrypt/Conscrypt;

    monitor-enter p0

    .line 743
    :try_start_3
    invoke-static {}, Lorg/conscrypt/TrustManagerImpl;->getDefaultHostnameVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 194
    invoke-static {}, Lorg/conscrypt/Conscrypt;->checkAvailability()V

    .line 195
    invoke-static {}, Lorg/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHostname(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 1

    .line 532
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHostname(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 1

    .line 327
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHostnameOrIP(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 1

    .line 335
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHostnameVerifier(Ljavax/net/ssl/TrustManager;)Lorg/conscrypt/ConscryptHostnameVerifier;
    .registers 1

    .line 767
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/TrustManager;)Lorg/conscrypt/TrustManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/TrustManagerImpl;->getHostnameVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;

    move-result-object p0

    return-object p0
.end method

.method public static getTlsUnique(Ljavax/net/ssl/SSLEngine;)[B
    .registers 1

    .line 690
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptEngine;->getTlsUnique()[B

    move-result-object p0

    return-object p0
.end method

.method public static getTlsUnique(Ljavax/net/ssl/SSLSocket;)[B
    .registers 1

    .line 446
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getTlsUnique()[B

    move-result-object p0

    return-object p0
.end method

.method public static isAvailable()Z
    .registers 1

    .line 50
    :try_start_0
    invoke-static {}, Lorg/conscrypt/Conscrypt;->checkAvailability()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    const/4 v0, 0x1

    return v0

    :catchall_5
    const/4 v0, 0x0

    return v0
.end method

.method public static isConscrypt(Ljava/security/Provider;)Z
    .registers 1

    .line 118
    instance-of p0, p0, Lorg/conscrypt/OpenSSLProvider;

    return p0
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLContext;)Z
    .registers 1

    .line 202
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object p0

    instance-of p0, p0, Lorg/conscrypt/OpenSSLProvider;

    return p0
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLEngine;)Z
    .registers 1

    .line 471
    instance-of p0, p0, Lorg/conscrypt/AbstractConscryptEngine;

    return p0
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Z
    .registers 1

    .line 275
    instance-of p0, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;

    return p0
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLSocket;)Z
    .registers 1

    .line 298
    instance-of p0, p0, Lorg/conscrypt/AbstractConscryptSocket;

    return p0
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z
    .registers 1

    .line 242
    instance-of p0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;

    return p0
.end method

.method public static isConscrypt(Ljavax/net/ssl/TrustManager;)Z
    .registers 1

    .line 716
    instance-of p0, p0, Lorg/conscrypt/TrustManagerImpl;

    return p0
.end method

.method public static maxEncryptedPacketLength()I
    .registers 1

    const/16 v0, 0x4145

    return v0
.end method

.method public static maxSealOverhead(Ljavax/net/ssl/SSLEngine;)I
    .registers 1

    .line 539
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptEngine;->maxSealOverhead()I

    move-result p0

    return p0
.end method

.method public static newPreferredSSLContextSpi()Ljavax/net/ssl/SSLContextSpi;
    .registers 1

    .line 209
    invoke-static {}, Lorg/conscrypt/Conscrypt;->checkAvailability()V

    .line 210
    invoke-static {}, Lorg/conscrypt/OpenSSLContextImpl;->getPreferred()Lorg/conscrypt/OpenSSLContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public static newProvider()Ljava/security/Provider;
    .registers 1

    .line 125
    invoke-static {}, Lorg/conscrypt/Conscrypt;->checkAvailability()V

    .line 126
    new-instance v0, Lorg/conscrypt/OpenSSLProvider;

    invoke-direct {v0}, Lorg/conscrypt/OpenSSLProvider;-><init>()V

    return-object v0
.end method

.method public static newProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    invoke-static {}, Lorg/conscrypt/Conscrypt;->checkAvailability()V

    .line 137
    new-instance v0, Lorg/conscrypt/OpenSSLProvider;

    invoke-static {}, Lorg/conscrypt/Platform;->provideTrustManagerByDefault()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static newProviderBuilder()Lorg/conscrypt/Conscrypt$ProviderBuilder;
    .registers 2

    .line 179
    new-instance v0, Lorg/conscrypt/Conscrypt$ProviderBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/conscrypt/Conscrypt$ProviderBuilder;-><init>(Lorg/conscrypt/Conscrypt$1;)V

    return-object v0
.end method

.method public static setApplicationProtocolSelector(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/ApplicationProtocolSelector;)V
    .registers 2

    .line 671
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelector;)V

    return-void
.end method

.method public static setApplicationProtocolSelector(Ljavax/net/ssl/SSLSocket;Lorg/conscrypt/ApplicationProtocolSelector;)V
    .registers 2

    .line 413
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelector;)V

    return-void
.end method

.method public static setApplicationProtocols(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;)V
    .registers 2

    .line 648
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setApplicationProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public static setApplicationProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)V
    .registers 2

    .line 426
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setApplicationProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public static setBufferAllocator(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/BufferAllocator;)V
    .registers 2

    .line 489
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setBufferAllocator(Lorg/conscrypt/BufferAllocator;)V

    return-void
.end method

.method public static setBufferAllocator(Ljavax/net/ssl/SSLSocket;Lorg/conscrypt/BufferAllocator;)V
    .registers 3

    .line 500
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    .line 501
    instance-of v0, p0, Lorg/conscrypt/ConscryptEngineSocket;

    if-eqz v0, :cond_d

    .line 502
    check-cast p0, Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {p0, p1}, Lorg/conscrypt/ConscryptEngineSocket;->setBufferAllocator(Lorg/conscrypt/BufferAllocator;)V

    :cond_d
    return-void
.end method

.method public static setChannelIdEnabled(Ljavax/net/ssl/SSLEngine;Z)V
    .registers 2

    .line 560
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setChannelIdEnabled(Z)V

    return-void
.end method

.method public static setChannelIdEnabled(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 2

    .line 359
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setChannelIdEnabled(Z)V

    return-void
.end method

.method public static setChannelIdPrivateKey(Ljavax/net/ssl/SSLEngine;Ljava/security/PrivateKey;)V
    .registers 2

    .line 591
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public static setChannelIdPrivateKey(Ljavax/net/ssl/SSLSocket;Ljava/security/PrivateKey;)V
    .registers 2

    .line 391
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public static setClientSessionCache(Ljavax/net/ssl/SSLContext;Lorg/conscrypt/SSLClientSessionCache;)V
    .registers 4

    .line 217
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object p0

    .line 218
    instance-of v0, p0, Lorg/conscrypt/ClientSessionContext;

    if-eqz v0, :cond_e

    .line 222
    check-cast p0, Lorg/conscrypt/ClientSessionContext;

    invoke-virtual {p0, p1}, Lorg/conscrypt/ClientSessionContext;->setPersistentCache(Lorg/conscrypt/SSLClientSessionCache;)V

    return-void

    .line 219
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a conscrypt client context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setDefaultBufferAllocator(Lorg/conscrypt/BufferAllocator;)V
    .registers 1

    .line 512
    invoke-static {p0}, Lorg/conscrypt/ConscryptEngine;->setDefaultBufferAllocator(Lorg/conscrypt/BufferAllocator;)V

    return-void
.end method

.method public static declared-synchronized setDefaultHostnameVerifier(Lorg/conscrypt/ConscryptHostnameVerifier;)V
    .registers 2

    const-class v0, Lorg/conscrypt/Conscrypt;

    monitor-enter v0

    .line 734
    :try_start_3
    invoke-static {p0}, Lorg/conscrypt/TrustManagerImpl;->setDefaultHostnameVerifier(Lorg/conscrypt/ConscryptHostnameVerifier;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 735
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setHandshakeListener(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/HandshakeListener;)V
    .registers 2

    .line 546
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setHandshakeListener(Lorg/conscrypt/HandshakeListener;)V

    return-void
.end method

.method public static setHostname(Ljavax/net/ssl/SSLEngine;Ljava/lang/String;)V
    .registers 2

    .line 523
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setHostname(Ljava/lang/String;)V

    return-void
.end method

.method public static setHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 2

    .line 318
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setHostname(Ljava/lang/String;)V

    return-void
.end method

.method public static setHostnameVerifier(Ljavax/net/ssl/TrustManager;Lorg/conscrypt/ConscryptHostnameVerifier;)V
    .registers 2

    .line 755
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/TrustManager;)Lorg/conscrypt/TrustManagerImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/TrustManagerImpl;->setHostnameVerifier(Lorg/conscrypt/ConscryptHostnameVerifier;)V

    return-void
.end method

.method public static setServerSessionCache(Ljavax/net/ssl/SSLContext;Lorg/conscrypt/SSLServerSessionCache;)V
    .registers 4

    .line 229
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object p0

    .line 230
    instance-of v0, p0, Lorg/conscrypt/ServerSessionContext;

    if-eqz v0, :cond_e

    .line 234
    check-cast p0, Lorg/conscrypt/ServerSessionContext;

    invoke-virtual {p0, p1}, Lorg/conscrypt/ServerSessionContext;->setPersistentCache(Lorg/conscrypt/SSLServerSessionCache;)V

    return-void

    .line 231
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a conscrypt client context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setUseEngineSocket(Ljavax/net/ssl/SSLServerSocketFactory;Z)V
    .registers 2

    .line 291
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->setUseEngineSocket(Z)V

    return-void
.end method

.method public static setUseEngineSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .registers 2

    .line 267
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Lorg/conscrypt/OpenSSLSocketFactoryImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->setUseEngineSocket(Z)V

    return-void
.end method

.method public static setUseEngineSocketByDefault(Z)V
    .registers 1

    .line 258
    invoke-static {p0}, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->setUseEngineSocketByDefault(Z)V

    .line 259
    invoke-static {p0}, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->setUseEngineSocketByDefault(Z)V

    return-void
.end method

.method public static setUseSessionTickets(Ljavax/net/ssl/SSLEngine;Z)V
    .registers 2

    .line 635
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setUseSessionTickets(Z)V

    return-void
.end method

.method public static setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 2

    .line 345
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setUseSessionTickets(Z)V

    return-void
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;
    .registers 4

    .line 475
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 479
    check-cast p0, Lorg/conscrypt/AbstractConscryptEngine;

    return-object p0

    .line 476
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a conscrypt engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;
    .registers 4

    .line 302
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 306
    check-cast p0, Lorg/conscrypt/AbstractConscryptSocket;

    return-object p0

    .line 303
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a conscrypt socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;
    .registers 4

    .line 279
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 283
    check-cast p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;

    return-object p0

    .line 280
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a conscrypt server socket factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Lorg/conscrypt/OpenSSLSocketFactoryImpl;
    .registers 4

    .line 246
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 250
    check-cast p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;

    return-object p0

    .line 247
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a conscrypt socket factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toConscrypt(Ljavax/net/ssl/TrustManager;)Lorg/conscrypt/TrustManagerImpl;
    .registers 4

    .line 720
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/TrustManager;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 724
    check-cast p0, Lorg/conscrypt/TrustManagerImpl;

    return-object p0

    .line 721
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Conscrypt trust manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unwrap(Ljavax/net/ssl/SSLEngine;[Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 624
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/conscrypt/AbstractConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p0

    return-object p0
.end method

.method public static unwrap(Ljavax/net/ssl/SSLEngine;[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/conscrypt/AbstractConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p0

    return-object p0
.end method

.method public static version()Lorg/conscrypt/Conscrypt$Version;
    .registers 1

    .line 102
    sget-object v0, Lorg/conscrypt/Conscrypt;->VERSION:Lorg/conscrypt/Conscrypt$Version;

    return-object v0
.end method
