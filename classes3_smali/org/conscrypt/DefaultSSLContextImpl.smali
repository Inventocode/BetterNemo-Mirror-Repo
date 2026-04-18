.class public final Lorg/conscrypt/DefaultSSLContextImpl;
.super Lorg/conscrypt/OpenSSLContextImpl;
.source "DefaultSSLContextImpl.java"


# static fields
.field private static KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

.field private static TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLContextImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 127
    new-instance p1, Ljava/security/KeyManagementException;

    const-string p2, "Do not init() the default SSLContext "

    invoke-direct {p1, p2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    sget-object v0, Lorg/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "javax.net.ssl.keyStore"

    .line 67
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    const-string v2, "javax.net.ssl.keyStorePassword"

    .line 71
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    move-object v2, v1

    goto :goto_1d

    .line 72
    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 74
    :goto_1d
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 77
    :try_start_25
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_4a

    .line 78
    :try_start_2f
    invoke-virtual {v3, v4, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_47

    .line 81
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 85
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v3, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 88
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    return-object v0

    :catchall_47
    move-exception v0

    move-object v1, v4

    goto :goto_4b

    :catchall_4a
    move-exception v0

    :goto_4b
    if-eqz v1, :cond_50

    .line 81
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_50
    throw v0
.end method

.method getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    sget-object v0, Lorg/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "javax.net.ssl.trustStore"

    .line 99
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    const-string v2, "javax.net.ssl.trustStorePassword"

    .line 103
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    move-object v2, v1

    goto :goto_1d

    .line 104
    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 107
    :goto_1d
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 110
    :try_start_25
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_4a

    .line 111
    :try_start_2f
    invoke-virtual {v3, v4, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_47

    .line 114
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 117
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 120
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    return-object v0

    :catchall_47
    move-exception v0

    move-object v1, v4

    goto :goto_4b

    :catchall_4a
    move-exception v0

    :goto_4b
    if-eqz v1, :cond_50

    .line 114
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_50
    throw v0
.end method
