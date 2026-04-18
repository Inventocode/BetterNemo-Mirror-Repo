.class public Lorg/conscrypt/KeyManagerFactoryImpl;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "KeyManagerFactoryImpl.java"


# instance fields
.field private keyStore:Ljava/security/KeyStore;

.field private pwd:[C


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 6

    .line 110
    iget-object v0, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    const/4 v1, 0x0

    .line 113
    new-instance v2, Lorg/conscrypt/KeyManagerImpl;

    iget-object v3, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    iget-object v4, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    invoke-direct {v2, v3, v4}, Lorg/conscrypt/KeyManagerImpl;-><init>(Ljava/security/KeyStore;[C)V

    aput-object v2, v0, v1

    return-object v0

    .line 111
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/KeyStore;[C)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    if-eqz p1, :cond_14

    .line 54
    iput-object p1, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-eqz p2, :cond_f

    .line 56
    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_75

    .line 58
    :cond_f
    sget-object p1, Lorg/conscrypt/EmptyArray;->CHAR:[C

    iput-object p1, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_75

    .line 61
    :cond_14
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    const-string p1, "javax.net.ssl.keyStore"

    .line 62
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6f

    const-string p2, "NONE"

    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6f

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_35

    goto :goto_6f

    :cond_35
    const-string p2, "javax.net.ssl.keyStorePassword"

    .line 73
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_42

    .line 75
    sget-object p2, Lorg/conscrypt/EmptyArray;->CHAR:[C

    iput-object p2, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_48

    .line 77
    :cond_42
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    .line 80
    :goto_48
    :try_start_48
    iget-object p2, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object p1, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    invoke-virtual {p2, v0, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_59} :catch_68
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_59} :catch_61
    .catch Ljava/security/cert/CertificateException; {:try_start_48 .. :try_end_59} :catch_5a

    goto :goto_75

    :catch_5a
    move-exception p1

    .line 86
    new-instance p2, Ljava/security/KeyStoreException;

    invoke-direct {p2, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_61
    move-exception p1

    .line 84
    new-instance p2, Ljava/security/KeyStoreException;

    invoke-direct {p2, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_68
    move-exception p1

    .line 82
    new-instance p2, Ljava/security/KeyStoreException;

    invoke-direct {p2, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 66
    :cond_6f
    :goto_6f
    :try_start_6f
    iget-object p1, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_75} :catch_7d
    .catch Ljava/security/cert/CertificateException; {:try_start_6f .. :try_end_75} :catch_76

    :goto_75
    return-void

    :catch_76
    move-exception p1

    .line 70
    new-instance p2, Ljava/security/KeyStoreException;

    invoke-direct {p2, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_7d
    move-exception p1

    .line 68
    new-instance p2, Ljava/security/KeyStoreException;

    invoke-direct {p2, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 100
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "ManagerFactoryParameters not supported"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
