.class final Lorg/conscrypt/NativeSsl;
.super Ljava/lang/Object;
.source "NativeSsl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/NativeSsl$BioWrapper;
    }
.end annotation


# instance fields
.field private final aliasChooser:Lorg/conscrypt/SSLParametersImpl$AliasChooser;

.field private final handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

.field private localCertificates:[Ljava/security/cert/X509Certificate;

.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final parameters:Lorg/conscrypt/SSLParametersImpl;

.field private final pskCallbacks:Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;

.field private volatile ssl:J


# direct methods
.method private constructor <init>(JLorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lorg/conscrypt/SSLParametersImpl$AliasChooser;Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;)V
    .registers 8

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 68
    iput-wide p1, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    .line 69
    iput-object p3, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    .line 70
    iput-object p4, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    .line 71
    iput-object p5, p0, Lorg/conscrypt/NativeSsl;->aliasChooser:Lorg/conscrypt/SSLParametersImpl$AliasChooser;

    .line 72
    iput-object p6, p0, Lorg/conscrypt/NativeSsl;->pskCallbacks:Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;

    return-void
.end method

.method static synthetic access$100(Lorg/conscrypt/NativeSsl;)J
    .registers 3

    .line 56
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/conscrypt/NativeSsl;)Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .registers 1

    .line 56
    iget-object p0, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    return-object p0
.end method

.method private enablePSKKeyManagerIfRequested()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lorg/conscrypt/PSKKeyManager;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 437
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    const/4 v5, 0x1

    if-ge v4, v2, :cond_23

    aget-object v6, v1, v4

    if-eqz v6, :cond_20

    const-string v7, "PSK"

    .line 438
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v3, 0x1

    goto :goto_23

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_23
    :goto_23
    if-eqz v3, :cond_41

    .line 444
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->isClient()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 445
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, v5}, Lorg/conscrypt/NativeCrypto;->set_SSL_psk_client_callback_enabled(JLorg/conscrypt/NativeSsl;Z)V

    goto :goto_41

    .line 447
    :cond_31
    iget-wide v1, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0, v5}, Lorg/conscrypt/NativeCrypto;->set_SSL_psk_server_callback_enabled(JLorg/conscrypt/NativeSsl;Z)V

    .line 448
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->pskCallbacks:Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v1, v0}, Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseServerPSKIdentityHint(Lorg/conscrypt/PSKKeyManager;)Ljava/lang/String;

    move-result-object v0

    .line 449
    iget-wide v1, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0, v0}, Lorg/conscrypt/NativeCrypto;->SSL_use_psk_identity_hint(JLorg/conscrypt/NativeSsl;Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method

.method private isClient()Z
    .registers 2

    .line 615
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method static newInstance(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lorg/conscrypt/SSLParametersImpl$AliasChooser;Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;)Lorg/conscrypt/NativeSsl;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object v0

    .line 79
    iget-wide v1, v0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v1, v2, v0}, Lorg/conscrypt/NativeCrypto;->SSL_new(JLorg/conscrypt/AbstractSessionContext;)J

    move-result-wide v4

    .line 80
    new-instance v0, Lorg/conscrypt/NativeSsl;

    move-object v3, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lorg/conscrypt/NativeSsl;-><init>(JLorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lorg/conscrypt/SSLParametersImpl$AliasChooser;Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;)V

    return-object v0
.end method

.method private setCertificateValidation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 474
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->isClient()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 477
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 478
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    const/4 v3, 0x3

    invoke-static {v0, v1, p0, v3}, Lorg/conscrypt/NativeCrypto;->SSL_set_verify(JLorg/conscrypt/NativeSsl;I)V

    :goto_16
    const/4 v1, 0x1

    goto :goto_2b

    .line 482
    :cond_18
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 483
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->SSL_set_verify(JLorg/conscrypt/NativeSsl;I)V

    goto :goto_16

    .line 487
    :cond_26
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_set_verify(JLorg/conscrypt/NativeSsl;I)V

    :goto_2b
    if-eqz v1, :cond_4f

    .line 492
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 493
    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 494
    array-length v1, v0

    if-eqz v1, :cond_4f

    .line 497
    :try_start_3c
    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->encodeSubjectX509Principals([Ljava/security/cert/X509Certificate;)[[B

    move-result-object v0
    :try_end_40
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3c .. :try_end_40} :catch_46

    .line 501
    iget-wide v1, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0, v0}, Lorg/conscrypt/NativeCrypto;->SSL_set_client_CA_list(JLorg/conscrypt/NativeSsl;[[B)V

    goto :goto_4f

    :catch_46
    move-exception v0

    .line 499
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "Problem encoding principals"

    invoke-direct {v1, v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4f
    :goto_4f
    return-void
.end method

.method private setTlsChannelId(Lorg/conscrypt/OpenSSLKey;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-boolean v1, v0, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    if-nez v1, :cond_7

    return-void

    .line 460
    :cond_7
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_19

    .line 465
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object p1

    invoke-static {v0, v1, p0, p1}, Lorg/conscrypt/NativeCrypto;->SSL_set1_tls_channel_id(JLorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeRef$EVP_PKEY;)V

    goto :goto_26

    .line 463
    :cond_19
    new-instance p1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v0, "Invalid TLS channel ID key specified"

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 468
    :cond_21
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_enable_tls_channel_id(JLorg/conscrypt/NativeSsl;)V

    :goto_26
    return-void
.end method


# virtual methods
.method chooseClientCertificate([B[I[[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 213
    invoke-static {p1, p2}, Lorg/conscrypt/SSLUtils;->getSupportedClientKeyTypes([B[I)Ljava/util/Set;

    move-result-object p1

    .line 214
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 p2, 0x0

    if-nez p3, :cond_15

    move-object v0, p2

    goto :goto_28

    .line 220
    :cond_15
    array-length v0, p3

    new-array v0, v0, [Ljavax/security/auth/x500/X500Principal;

    const/4 v1, 0x0

    .line 221
    :goto_19
    array-length v2, p3

    if-ge v1, v2, :cond_28

    .line 222
    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    aget-object v3, p3, v1

    invoke-direct {v2, v3}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 225
    :cond_28
    :goto_28
    iget-object p3, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {p3}, Lorg/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object p3

    if-eqz p3, :cond_36

    .line 227
    iget-object p2, p0, Lorg/conscrypt/NativeSsl;->aliasChooser:Lorg/conscrypt/SSLParametersImpl$AliasChooser;

    invoke-interface {p2, p3, v0, p1}, Lorg/conscrypt/SSLParametersImpl$AliasChooser;->chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 229
    :cond_36
    invoke-virtual {p0, p2}, Lorg/conscrypt/NativeSsl;->setCertificate(Ljava/lang/String;)V

    return-void
.end method

.method clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .registers 11

    .line 149
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lorg/conscrypt/PSKKeyManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 154
    :cond_a
    iget-object v2, p0, Lorg/conscrypt/NativeSsl;->pskCallbacks:Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v2, v0, p1}, Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseClientPSKIdentity(Lorg/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    .line 159
    sget-object v2, Lorg/conscrypt/EmptyArray;->BYTE:[B

    const-string v3, ""

    goto :goto_2a

    .line 160
    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 161
    sget-object v3, Lorg/conscrypt/EmptyArray;->BYTE:[B

    :goto_1f
    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_2a

    :cond_23
    :try_start_23
    const-string v3, "UTF-8"

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_29} :catch_53

    goto :goto_1f

    .line 169
    :goto_2a
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    array-length v5, p2

    if-le v4, v5, :cond_31

    return v1

    .line 173
    :cond_31
    array-length v4, v2

    if-lez v4, :cond_38

    .line 174
    array-length v4, v2

    invoke-static {v2, v1, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    :cond_38
    array-length v2, v2

    aput-byte v1, p2, v2

    .line 178
    iget-object p2, p0, Lorg/conscrypt/NativeSsl;->pskCallbacks:Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {p2, v0, p1, v3}, Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lorg/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 179
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    if-nez p1, :cond_48

    return v1

    .line 182
    :cond_48
    array-length p2, p1

    array-length v0, p3

    if-le p2, v0, :cond_4d

    return v1

    .line 186
    :cond_4d
    array-length p2, p1

    invoke-static {p1, v1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    array-length p1, p1

    return p1

    :catch_53
    move-exception p1

    .line 166
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "UTF-8 encoding not supported"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method close()V
    .registers 5

    .line 590
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 592
    :try_start_9
    invoke-virtual {p0}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 593
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    const-wide/16 v2, 0x0

    .line 594
    iput-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    .line 595
    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_free(JLorg/conscrypt/NativeSsl;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_22

    .line 598
    :cond_18
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_22
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method doHandshake()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 395
    :try_start_9
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->ENGINE_SSL_do_handshake(JLorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1b

    .line 397
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method doHandshake(Ljava/io/FileDescriptor;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 383
    :try_start_9
    invoke-virtual {p0}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2b

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 386
    iget-wide v1, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v5, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lorg/conscrypt/NativeCrypto;->SSL_do_handshake(JLorg/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;I)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_33

    .line 388
    iget-object p1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 384
    :cond_2b
    :try_start_2b
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Socket is closed"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p1

    .line 388
    iget-object p2, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const-string v0, "Label is null"

    .line 134
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "US-ASCII"

    .line 136
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 137
    iget-wide v1, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    move-object v3, p0

    move-object v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lorg/conscrypt/NativeCrypto;->SSL_export_keying_material(JLorg/conscrypt/NativeSsl;[B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method protected final finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 621
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/NativeSsl;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 623
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method forceRead()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 567
    :try_start_9
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->ENGINE_SSL_force_read(JLorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1a

    .line 569
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method getApplicationProtocol()[B
    .registers 3

    .line 611
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->getApplicationProtocol(JLorg/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method getCipherSuite()Ljava/lang/String;
    .registers 3

    .line 112
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_current_cipher(JLorg/conscrypt/NativeSsl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->cipherSuiteToJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getError(I)I
    .registers 4

    .line 607
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, p1}, Lorg/conscrypt/NativeCrypto;->SSL_get_error(JLorg/conscrypt/NativeSsl;I)I

    move-result p1

    return p1
.end method

.method getLocalCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 121
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method getMaxSealOverhead()I
    .registers 3

    .line 586
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_max_seal_overhead(JLorg/conscrypt/NativeSsl;)I

    move-result v0

    return v0
.end method

.method getPeerCertificateOcspData()[B
    .registers 3

    .line 125
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_ocsp_response(JLorg/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 116
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get0_peer_certificates(JLorg/conscrypt/NativeSsl;)[[B

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    .line 117
    :cond_a
    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method getPeerTlsSctData()[B
    .registers 3

    .line 141
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_signed_cert_timestamp_list(JLorg/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method getPendingReadableBytes()I
    .registers 3

    .line 574
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 576
    :try_start_9
    invoke-virtual {p0}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 577
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_pending_readable_bytes(JLorg/conscrypt/NativeSsl;)I

    move-result v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_21

    .line 581
    :goto_15
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_15

    :catchall_21
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method getRequestedServerName()Ljava/lang/String;
    .registers 3

    .line 274
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_servername(JLorg/conscrypt/NativeSsl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSessionId()[B
    .registers 3

    .line 96
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_session_id(JLorg/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method getTime()J
    .registers 3

    .line 100
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_time(JLorg/conscrypt/NativeSsl;)J

    move-result-wide v0

    return-wide v0
.end method

.method getTimeout()J
    .registers 3

    .line 104
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_timeout(JLorg/conscrypt/NativeSsl;)J

    move-result-wide v0

    return-wide v0
.end method

.method getTlsChannelId()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 278
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_tls_channel_id(JLorg/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method getTlsUnique()[B
    .registers 3

    .line 129
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_tls_unique(JLorg/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method getVersion()Ljava/lang/String;
    .registers 3

    .line 270
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_version(JLorg/conscrypt/NativeSsl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initialize(Ljava/lang/String;Lorg/conscrypt/OpenSSLKey;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 284
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JLorg/conscrypt/NativeSsl;Z)V

    .line 290
    :cond_e
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->SSL_accept_renegotiations(JLorg/conscrypt/NativeSsl;)V

    .line 292
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->isClient()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 293
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->SSL_set_connect_state(JLorg/conscrypt/NativeSsl;)V

    .line 296
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->SSL_enable_ocsp_stapling(JLorg/conscrypt/NativeSsl;)V

    .line 297
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->isCTVerificationEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 298
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->SSL_enable_signed_cert_timestamps(JLorg/conscrypt/NativeSsl;)V

    goto :goto_43

    .line 301
    :cond_31
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->SSL_set_accept_state(JLorg/conscrypt/NativeSsl;)V

    .line 304
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getOCSPResponse()[B

    move-result-object v0

    if-eqz v0, :cond_43

    .line 305
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->SSL_enable_ocsp_stapling(JLorg/conscrypt/NativeSsl;)V

    .line 309
    :cond_43
    :goto_43
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-boolean v0, v0, Lorg/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    if-nez v0, :cond_53

    goto :goto_5b

    .line 310
    :cond_53
    new-instance p1, Ljavax/net/ssl/SSLHandshakeException;

    const-string p2, "No enabled protocols; SSLv3 is no longer supported and was filtered from the list"

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_5b
    :goto_5b
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v0, v0, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v2, v3, p0, v0}, Lorg/conscrypt/NativeCrypto;->setEnabledProtocols(JLorg/conscrypt/NativeSsl;[Ljava/lang/String;)V

    .line 315
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v4, v0, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    iget-object v0, v0, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v2, v3, p0, v4, v0}, Lorg/conscrypt/NativeCrypto;->setEnabledCipherSuites(JLorg/conscrypt/NativeSsl;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v0, v0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    array-length v0, v0

    if-lez v0, :cond_83

    .line 319
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->isClient()Z

    move-result v0

    iget-object v4, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v4, v4, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    invoke-static {v2, v3, p0, v0, v4}, Lorg/conscrypt/NativeCrypto;->setApplicationProtocols(JLorg/conscrypt/NativeSsl;Z[B)V

    .line 321
    :cond_83
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->isClient()Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v0, v0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    if-eqz v0, :cond_98

    .line 322
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v0, v0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-static {v2, v3, p0, v0}, Lorg/conscrypt/NativeCrypto;->setApplicationProtocolSelector(JLorg/conscrypt/NativeSsl;Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 327
    :cond_98
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->isClient()Z

    move-result v0

    if-nez v0, :cond_109

    .line 328
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 329
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_ciphers(JLorg/conscrypt/NativeSsl;)[J

    move-result-object v2

    array-length v3, v2

    :goto_aa
    if-ge v1, v3, :cond_ba

    aget-wide v4, v2, v1

    .line 330
    invoke-static {v4, v5}, Lorg/conscrypt/SSLUtils;->getServerX509KeyType(J)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b7

    .line 332
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b7
    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    .line 335
    :cond_ba
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v1

    if-eqz v1, :cond_e3

    .line 337
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 339
    :try_start_d2
    iget-object v3, p0, Lorg/conscrypt/NativeSsl;->aliasChooser:Lorg/conscrypt/SSLParametersImpl$AliasChooser;

    invoke-interface {v3, v1, v2}, Lorg/conscrypt/SSLParametersImpl$AliasChooser;->chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/conscrypt/NativeSsl;->setCertificate(Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_d2 .. :try_end_db} :catch_dc

    goto :goto_c6

    :catch_dc
    move-exception p1

    .line 341
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 346
    :cond_e3
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    const-wide/32 v2, 0x400000

    invoke-static {v0, v1, p0, v2, v3}, Lorg/conscrypt/NativeCrypto;->SSL_set_options(JLorg/conscrypt/NativeSsl;J)J

    .line 348
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v0, v0, Lorg/conscrypt/SSLParametersImpl;->sctExtension:[B

    if-eqz v0, :cond_fa

    .line 349
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v2, v2, Lorg/conscrypt/SSLParametersImpl;->sctExtension:[B

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->SSL_set_signed_cert_timestamp_list(JLorg/conscrypt/NativeSsl;[B)V

    .line 352
    :cond_fa
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v0, v0, Lorg/conscrypt/SSLParametersImpl;->ocspResponse:[B

    if-eqz v0, :cond_109

    .line 353
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v2, v2, Lorg/conscrypt/SSLParametersImpl;->ocspResponse:[B

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->SSL_set_ocsp_response(JLorg/conscrypt/NativeSsl;[B)V

    .line 357
    :cond_109
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->enablePSKKeyManagerIfRequested()V

    .line 359
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-boolean v0, v0, Lorg/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    const-wide/16 v1, 0x4000

    if-eqz v0, :cond_11a

    .line 360
    iget-wide v3, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v3, v4, p0, v1, v2}, Lorg/conscrypt/NativeCrypto;->SSL_clear_options(JLorg/conscrypt/NativeSsl;J)J

    goto :goto_127

    .line 362
    :cond_11a
    iget-wide v3, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-wide v5, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    .line 363
    invoke-static {v5, v6, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_options(JLorg/conscrypt/NativeSsl;)J

    move-result-wide v5

    or-long v0, v5, v1

    .line 362
    invoke-static {v3, v4, p0, v0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_set_options(JLorg/conscrypt/NativeSsl;J)J

    .line 366
    :goto_127
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v0

    if-eqz v0, :cond_13a

    invoke-static {p1}, Lorg/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 367
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, p1}, Lorg/conscrypt/NativeCrypto;->SSL_set_tlsext_host_name(JLorg/conscrypt/NativeSsl;Ljava/lang/String;)V

    .line 372
    :cond_13a
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    const-wide/16 v2, 0x100

    invoke-static {v0, v1, p0, v2, v3}, Lorg/conscrypt/NativeCrypto;->SSL_set_mode(JLorg/conscrypt/NativeSsl;J)J

    .line 374
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->setCertificateValidation()V

    .line 375
    invoke-direct {p0, p2}, Lorg/conscrypt/NativeSsl;->setTlsChannelId(Lorg/conscrypt/OpenSSLKey;)V

    return-void
.end method

.method interrupt()V
    .registers 3

    .line 508
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_interrupt(JLorg/conscrypt/NativeSsl;)V

    return-void
.end method

.method isClosed()Z
    .registers 6

    .line 603
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method newBio()Lorg/conscrypt/NativeSsl$BioWrapper;
    .registers 3

    .line 85
    :try_start_0
    new-instance v0, Lorg/conscrypt/NativeSsl$BioWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/NativeSsl$BioWrapper;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeSsl$1;)V
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method offerToResumeSession(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 92
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/conscrypt/NativeCrypto;->SSL_set_session(JLorg/conscrypt/NativeSsl;J)V

    return-void
.end method

.method read(Ljava/io/FileDescriptor;[BIII)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 406
    :try_start_9
    invoke-virtual {p0}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2f

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 409
    iget-wide v1, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v5, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .line 410
    invoke-static/range {v1 .. v9}, Lorg/conscrypt/NativeCrypto;->SSL_read(JLorg/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)I

    move-result p1
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_37

    .line 412
    iget-object p2, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 407
    :cond_2f
    :try_start_2f
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Socket is closed"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p1

    .line 412
    iget-object p2, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method readDirectByteBuffer(JI)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 547
    :try_start_9
    iget-wide v1, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v7, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    invoke-static/range {v1 .. v7}, Lorg/conscrypt/NativeCrypto;->ENGINE_SSL_read_direct(JLorg/conscrypt/NativeSsl;JILorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result p1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1e

    .line 550
    iget-object p2, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_1e
    move-exception p1

    iget-object p2, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 7

    .line 195
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lorg/conscrypt/PSKKeyManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 199
    :cond_a
    iget-object v2, p0, Lorg/conscrypt/NativeSsl;->pskCallbacks:Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v2, v0, p1, p2}, Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lorg/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 200
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    if-nez p1, :cond_17

    return v1

    .line 203
    :cond_17
    array-length p2, p1

    array-length v0, p3

    if-le p2, v0, :cond_1c

    return v1

    .line 206
    :cond_1c
    array-length p2, p1

    invoke-static {p1, v1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    array-length p1, p1

    return p1
.end method

.method setCertificate(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 236
    :cond_3
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 240
    :cond_c
    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    if-nez v1, :cond_13

    return-void

    .line 244
    :cond_13
    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-nez p1, :cond_1c

    return-void

    .line 248
    :cond_1c
    array-length v0, p1

    const/4 v2, 0x0

    if-lez v0, :cond_27

    .line 249
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    .line 252
    :goto_28
    new-array v3, v0, [[B

    :goto_2a
    if-ge v2, v0, :cond_39

    .line 254
    iget-object v4, p0, Lorg/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 260
    :cond_39
    :try_start_39
    invoke-static {v1, p1}, Lorg/conscrypt/OpenSSLKey;->fromPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1
    :try_end_3d
    .catch Ljava/security/InvalidKeyException; {:try_start_39 .. :try_end_3d} :catch_47

    .line 266
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object p1

    invoke-static {v0, v1, p0, v3, p1}, Lorg/conscrypt/NativeCrypto;->setLocalCertsAndPrivateKey(JLorg/conscrypt/NativeSsl;[[BLorg/conscrypt/NativeRef$EVP_PKEY;)V

    return-void

    :catch_47
    move-exception p1

    .line 262
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method setTimeout(J)V
    .registers 5

    .line 108
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/conscrypt/NativeCrypto;->SSL_set_timeout(JLorg/conscrypt/NativeSsl;J)J

    return-void
.end method

.method shutdown()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 519
    :try_start_9
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->ENGINE_SSL_shutdown(JLorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1a

    .line 521
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method shutdown(Ljava/io/FileDescriptor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, p1, v2}, Lorg/conscrypt/NativeCrypto;->SSL_shutdown(JLorg/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V

    return-void
.end method

.method wasShutdownReceived()Z
    .registers 3

    .line 526
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 528
    :try_start_9
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_shutdown(JLorg/conscrypt/NativeSsl;)I

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_20

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 530
    :goto_16
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_20
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method wasShutdownSent()Z
    .registers 3

    .line 535
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 537
    :try_start_9
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_shutdown(JLorg/conscrypt/NativeSsl;)I

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1f

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 539
    :goto_15
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method write(Ljava/io/FileDescriptor;[BIII)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 421
    :try_start_9
    invoke-virtual {p0}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2e

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 424
    iget-wide v1, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v5, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .line 425
    invoke-static/range {v1 .. v9}, Lorg/conscrypt/NativeCrypto;->SSL_write(JLorg/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)V
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_36

    .line 427
    iget-object p1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 422
    :cond_2e
    :try_start_2e
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Socket is closed"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p1

    .line 427
    iget-object p2, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method writeDirectByteBuffer(JI)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 557
    :try_start_9
    iget-wide v1, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v7, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    invoke-static/range {v1 .. v7}, Lorg/conscrypt/NativeCrypto;->ENGINE_SSL_write_direct(JLorg/conscrypt/NativeSsl;JILorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result p1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1e

    .line 560
    iget-object p2, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_1e
    move-exception p1

    iget-object p2, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
