.class final Lorg/conscrypt/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Conscrypt"

.field private static m_getCurveName:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 70
    :try_start_0
    const-class v0, Ljava/security/spec/ECParameterSpec;

    const-string v1, "getCurveName"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/Platform;->m_getCurveName:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockGuardOnNetwork()V
    .registers 1

    .line 802
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    return-void
.end method

.method public static checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/AbstractConscryptSocket;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 402
    const-class v4, Ljava/net/Socket;

    const-string v0, "checkClientTrusted"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-class v5, Ljava/lang/String;

    .line 404
    invoke-virtual {p3}, Lorg/conscrypt/AbstractConscryptSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p3

    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    const-string v1, "checkClientTrusted"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 403
    invoke-static/range {v1 .. v6}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_26

    .line 405
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public static checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/ConscryptEngine;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 422
    const-class v4, Ljavax/net/ssl/SSLEngine;

    const-string v0, "checkClientTrusted"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-class v5, Ljava/lang/String;

    .line 424
    invoke-virtual {p3}, Lorg/conscrypt/AbstractConscryptEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p3

    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    const-string v1, "checkClientTrusted"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 423
    invoke-static/range {v1 .. v6}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_26

    .line 425
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public static checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/AbstractConscryptSocket;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 412
    const-class v4, Ljava/net/Socket;

    const-string v0, "checkServerTrusted"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-class v5, Ljava/lang/String;

    .line 414
    invoke-virtual {p3}, Lorg/conscrypt/AbstractConscryptSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p3

    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    const-string v1, "checkServerTrusted"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 413
    invoke-static/range {v1 .. v6}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_26

    .line 415
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public static checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/ConscryptEngine;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 432
    const-class v4, Ljavax/net/ssl/SSLEngine;

    const-string v0, "checkServerTrusted"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-class v5, Ljava/lang/String;

    .line 434
    invoke-virtual {p3}, Lorg/conscrypt/AbstractConscryptEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p3

    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    const-string v1, "checkServerTrusted"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 433
    invoke-static/range {v1 .. v6}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_26

    .line 435
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method private static checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/X509TrustManager;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 384
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/security/cert/X509Certificate;

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v0

    aput-object p3, p4, v5

    aput-object p5, p4, v4

    .line 386
    invoke-virtual {p0, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_23} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_23} :catch_3e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_23} :catch_24

    return v5

    :catch_24
    move-exception p0

    .line 391
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/security/cert/CertificateException;

    if-eqz p1, :cond_34

    .line 392
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/security/cert/CertificateException;

    throw p0

    .line 394
    :cond_34
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3e
    return v0
.end method

.method public static closeGuardClose(Ljava/lang/Object;)V
    .registers 3

    .line 780
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_7

    return-void

    .line 784
    :cond_7
    check-cast p0, Ldalvik/system/CloseGuard;

    .line 785
    invoke-virtual {p0}, Ldalvik/system/CloseGuard;->close()V

    return-void
.end method

.method public static closeGuardGet()Ldalvik/system/CloseGuard;
    .registers 2

    .line 763
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 767
    :cond_8
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    return-object v0
.end method

.method public static closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 771
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_7

    return-void

    .line 775
    :cond_7
    check-cast p0, Ldalvik/system/CloseGuard;

    .line 776
    invoke-virtual {p0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public static closeGuardWarnIfOpen(Ljava/lang/Object;)V
    .registers 3

    .line 789
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_7

    return-void

    .line 793
    :cond_7
    check-cast p0, Ldalvik/system/CloseGuard;

    .line 794
    invoke-virtual {p0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    return-void
.end method

.method static createEngineSocket(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 586
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_12

    .line 587
    new-instance v0, Lorg/conscrypt/Java8EngineSocket;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/Java8EngineSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 589
    :cond_12
    new-instance v0, Lorg/conscrypt/ConscryptEngineSocket;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/conscrypt/ConscryptEngineSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static createEngineSocket(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_c

    .line 570
    new-instance v0, Lorg/conscrypt/Java8EngineSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/Java8EngineSocket;-><init>(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 572
    :cond_c
    new-instance v0, Lorg/conscrypt/ConscryptEngineSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/ConscryptEngineSocket;-><init>(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static createEngineSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_12

    .line 596
    new-instance v0, Lorg/conscrypt/Java8EngineSocket;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/Java8EngineSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 598
    :cond_12
    new-instance v0, Lorg/conscrypt/ConscryptEngineSocket;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/conscrypt/ConscryptEngineSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static createEngineSocket(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_c

    .line 578
    new-instance v0, Lorg/conscrypt/Java8EngineSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/Java8EngineSocket;-><init>(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 580
    :cond_c
    new-instance v0, Lorg/conscrypt/ConscryptEngineSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/ConscryptEngineSocket;-><init>(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static createEngineSocket(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_12

    .line 604
    new-instance v0, Lorg/conscrypt/Java8EngineSocket;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/Java8EngineSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 606
    :cond_12
    new-instance v0, Lorg/conscrypt/ConscryptEngineSocket;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/conscrypt/ConscryptEngineSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static createEngineSocket(Lorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_c

    .line 562
    new-instance v0, Lorg/conscrypt/Java8EngineSocket;

    invoke-direct {v0, p0}, Lorg/conscrypt/Java8EngineSocket;-><init>(Lorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 564
    :cond_c
    new-instance v0, Lorg/conscrypt/ConscryptEngineSocket;

    invoke-direct {v0, p0}, Lorg/conscrypt/ConscryptEngineSocket;-><init>(Lorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static createFileDescriptorSocket(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_12

    .line 637
    new-instance v0, Lorg/conscrypt/Java8FileDescriptorSocket;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 640
    :cond_12
    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static createFileDescriptorSocket(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_c

    .line 620
    new-instance v0, Lorg/conscrypt/Java8FileDescriptorSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 622
    :cond_c
    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static createFileDescriptorSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_12

    .line 648
    new-instance v0, Lorg/conscrypt/Java8FileDescriptorSocket;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 651
    :cond_12
    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static createFileDescriptorSocket(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_c

    .line 628
    new-instance v0, Lorg/conscrypt/Java8FileDescriptorSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 630
    :cond_c
    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static createFileDescriptorSocket(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_12

    .line 658
    new-instance v0, Lorg/conscrypt/Java8FileDescriptorSocket;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 660
    :cond_12
    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static createFileDescriptorSocket(Lorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_c

    .line 612
    new-instance v0, Lorg/conscrypt/Java8FileDescriptorSocket;

    invoke-direct {v0, p0}, Lorg/conscrypt/Java8FileDescriptorSocket;-><init>(Lorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 614
    :cond_c
    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {v0, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;-><init>(Lorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public static fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/conscrypt/GCMParameters;
    .registers 7

    const-string v0, "GCMParameterSpec lacks expected methods"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "javax.crypto.spec.GCMParameterSpec"

    .line 682
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-object v2, v1

    :goto_b
    if-eqz v2, :cond_5d

    .line 687
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5d

    :try_start_17
    const-string v1, "getTLen"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 692
    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v4, "getIV"

    new-array v5, v3, [Ljava/lang/Class;

    .line 693
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    .line 694
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 695
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 697
    new-instance v2, Lorg/conscrypt/GCMParameters;

    invoke-direct {v2, v1, p0}, Lorg/conscrypt/GCMParameters;-><init>(I[B)V
    :try_end_41
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_41} :catch_56
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_41} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_41} :catch_42

    return-object v2

    :catch_42
    move-exception p0

    .line 703
    new-instance v0, Ljava/lang/RuntimeException;

    .line 704
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    const-string v1, "Could not fetch GCM parameters"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4f
    move-exception p0

    .line 701
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_56
    move-exception p0

    .line 699
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5d
    return-object v1
.end method

.method static fromGCMParameters(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "javax.crypto.spec.GCMParameterSpec"

    .line 717
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_10

    .line 724
    :try_start_b
    invoke-virtual {p0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0
    :try_end_f
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_b .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    :cond_10
    return-object v0
.end method

.method private static varargs getClass([Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 356
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    .line 358
    :try_start_6
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .registers 4

    .line 110
    sget-object v0, Lorg/conscrypt/Platform;->m_getCurveName:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const/4 v2, 0x0

    :try_start_7
    new-array v2, v2, [Ljava/lang/Object;

    .line 114
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    return-object v1
.end method

.method static getDefaultCertKeyStore()Ljava/security/KeyStore;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const-string v0, "AndroidCAStore"

    .line 968
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 970
    :try_start_7
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_19
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_a} :catch_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 976
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_12
    move-exception v0

    .line 974
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_19
    move-exception v0

    .line 972
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDefaultProviderName()Ljava/lang/String;
    .registers 1

    const-string v0, "Conscrypt"

    return-object v0
.end method

.method public static getEndpointIdentificationAlgorithm(Ljavax/net/ssl/SSLParameters;)Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    .registers 4

    .line 94
    :try_start_0
    const-class v0, Ljava/net/Socket;

    const-string v1, "impl"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 97
    const-class v0, Ljava/net/SocketImpl;

    const-string v2, "fd"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileDescriptor;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    move-exception p0

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get FileDescriptor from socket"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getFileDescriptorFromSSLSocket(Lorg/conscrypt/AbstractConscryptSocket;)Ljava/io/FileDescriptor;
    .registers 1

    .line 106
    invoke-static {p0}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static getHostStringFromInetSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 5

    .line 896
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_21

    .line 898
    :try_start_6
    const-class v0, Ljava/net/InetSocketAddress;

    const-string v1, "getHostString"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 899
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_19} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_21

    return-object p0

    :catch_1a
    move-exception p0

    .line 901
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_21
    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOriginalHostNameFromInetAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 7

    .line 865
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_45

    .line 867
    :try_start_6
    const-class v0, Ljava/net/InetAddress;

    const-string v1, "holder"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 868
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v3, "java.net.InetAddress$InetAddressHolder"

    .line 870
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getOriginalHostName"

    new-array v5, v2, [Ljava/lang/Class;

    .line 871
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 872
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 875
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3b

    .line 877
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_3a} :catch_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_3a} :catch_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_3a} :catch_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_3a} :catch_45

    return-object p0

    :cond_3b
    return-object v0

    :catch_3c
    move-exception p0

    .line 881
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to get originalHostName"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 888
    :catch_45
    :cond_45
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/AbstractConscryptSocket;)V
    .registers 5

    .line 301
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/Platform;->getSSLParametersFromImpl(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;)V

    .line 303
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_18

    .line 304
    invoke-static {p0, p1, p2}, Lorg/conscrypt/Platform;->setParametersSniHostname(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/AbstractConscryptSocket;)V
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_c} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_18

    :catch_d
    move-exception p0

    .line 309
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_18
    :cond_18
    :goto_18
    return-void
.end method

.method public static getSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)V
    .registers 5

    .line 328
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/Platform;->getSSLParametersFromImpl(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;)V

    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_18

    .line 331
    invoke-static {p0, p1, p2}, Lorg/conscrypt/Platform;->setParametersSniHostname(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)V
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_c} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_18

    :catch_d
    move-exception p0

    .line 336
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_18
    :cond_18
    :goto_18
    return-void
.end method

.method private static getSSLParametersFromImpl(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setEndpointIdentificationAlgorithm"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 291
    invoke-virtual {p1}, Lorg/conscrypt/SSLParametersImpl;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 290
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-string v3, "setUseCipherSuitesOrder"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 295
    invoke-virtual {p1}, Lorg/conscrypt/SSLParametersImpl;->getUseCipherSuitesOrder()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getSniHostnameFromParams(Ljavax/net/ssl/SSLParameters;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getServerNames"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 274
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_34

    .line 276
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SNIServerName;

    .line 277
    invoke-virtual {v0}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v1

    if-nez v1, :cond_1b

    .line 278
    check-cast v0, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {v0}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isCTVerificationRequired(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "conscrypt.ct.enable"

    .line 935
    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_78

    .line 936
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_78

    :cond_17
    const-string v1, "\\."

    .line 940
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 941
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 947
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, "conscrypt.ct.enforce"

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 948
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 950
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 953
    :cond_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    .line 956
    :cond_6a
    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_78

    .line 958
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_78
    :goto_78
    return v0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .registers 10

    :try_start_0
    const-string v0, "android.os.Process"

    .line 533
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 534
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "myUid"

    const/4 v4, 0x0

    .line 535
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    .line 536
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "android.util.EventLog"

    .line 538
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 539
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "writeEvent"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 540
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    const-class v7, [Ljava/lang/Object;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 541
    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    const v6, 0x534e4554

    .line 542
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "conscrypt"

    aput-object v7, v6, v1

    .line 543
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    aput-object p0, v6, v5

    aput-object v6, v4, v8

    .line 542
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_69

    :catch_69
    return-void
.end method

.method private static logStackTraceSnippet(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string v0, "Conscrypt"

    .line 215
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 p1, 0x0

    :goto_a
    const/4 v1, 0x2

    if-ge p1, v1, :cond_2d

    .line 217
    array-length v1, p0

    if-ge p1, v1, :cond_2d

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, p1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_2d
    return-void
.end method

.method static newDefaultBlacklist()Lorg/conscrypt/CertBlacklist;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static newDefaultCertStore()Lorg/conscrypt/ConscryptCertStore;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static newDefaultLogStore()Lorg/conscrypt/ct/CTLogStore;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static newDefaultPolicy(Lorg/conscrypt/ct/CTLogStore;)Lorg/conscrypt/ct/CTPolicy;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public static oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 812
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_5
    const-string v4, "org.apache.harmony.security.utils.AlgNameMapper"

    .line 813
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "map2AlgName"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v0, v6, v2

    .line 815
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 816
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v2

    .line 817
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_22} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_23

    return-object v4

    :catch_23
    :try_start_23
    const-string v4, "sun.security.x509.AlgorithmId"

    .line 831
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "get"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v0, v6, v2

    .line 832
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 833
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v5, "getName"

    new-array v6, v2, [Ljava/lang/Class;

    .line 834
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 835
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    .line 837
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 838
    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_51} :catch_53
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_51} :catch_52

    return-object v0

    :catch_52
    return-object p0

    :catch_53
    move-exception p0

    .line 840
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 841
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_69

    .line 843
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_63

    .line 844
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 846
    :cond_63
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 842
    :cond_69
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :catch_6c
    move-exception p0

    .line 819
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 820
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_82

    .line 822
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_7c

    .line 823
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 825
    :cond_7c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 821
    :cond_82
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method static provideTrustManagerByDefault()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V
    .registers 8

    .line 122
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setCurveName"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 123
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method

.method public static setEndpointIdentificationAlgorithm(Ljavax/net/ssl/SSLParameters;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private static setParametersSniHostname(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/AbstractConscryptSocket;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 317
    invoke-virtual {p1}, Lorg/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-virtual {p2}, Lorg/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/util/List;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setServerNames"

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 319
    new-instance v1, Ljavax/net/ssl/SNIHostName;

    .line 321
    invoke-virtual {p2}, Lorg/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    aput-object p2, v0, v3

    .line 319
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-void
.end method

.method private static setParametersSniHostname(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 344
    invoke-virtual {p1}, Lorg/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-virtual {p2}, Lorg/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 345
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/util/List;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setServerNames"

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 346
    new-instance v1, Ljavax/net/ssl/SNIHostName;

    .line 348
    invoke-virtual {p2}, Lorg/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    aput-object p2, v0, v3

    .line 346
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-void
.end method

.method public static setSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/AbstractConscryptSocket;)V
    .registers 4

    .line 236
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/Platform;->setSSLParametersOnImpl(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;)V

    .line 238
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_1e

    .line 239
    invoke-static {p0}, Lorg/conscrypt/Platform;->getSniHostnameFromParams(Ljavax/net/ssl/SSLParameters;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 241
    invoke-virtual {p2, p0}, Lorg/conscrypt/AbstractConscryptSocket;->setHostname(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1e

    :catch_13
    move-exception p0

    .line 247
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1e
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static setSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)V
    .registers 4

    .line 254
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/Platform;->setSSLParametersOnImpl(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;)V

    .line 256
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_1e

    .line 257
    invoke-static {p0}, Lorg/conscrypt/Platform;->getSniHostnameFromParams(Ljavax/net/ssl/SSLParameters;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 259
    invoke-virtual {p2, p0}, Lorg/conscrypt/ConscryptEngine;->setHostname(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1e

    :catch_13
    move-exception p0

    .line 265
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1e
    :cond_1e
    :goto_1e
    return-void
.end method

.method private static setSSLParametersOnImpl(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getEndpointIdentificationAlgorithm"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 227
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    invoke-virtual {p1, v0}, Lorg/conscrypt/SSLParametersImpl;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getUseCipherSuitesOrder"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 230
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lorg/conscrypt/SSLParametersImpl;->setUseCipherSuitesOrder(Z)V

    return-void
.end method

.method public static setSocketWriteTimeout(Ljava/net/Socket;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 133
    :try_start_0
    invoke-static {p0}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_ce

    .line 134
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_ce

    const-string v0, "android.system.StructTimeval"

    const-string v1, "libcore.io.StructTimeval"

    .line 138
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Lorg/conscrypt/Platform;->getClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_d6

    const-string v1, "Conscrypt"

    if-nez v0, :cond_22

    :try_start_1c
    const-string p0, "StructTimeval == null; not setting socket write timeout"

    .line 141
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    const-string v2, "fromMillis"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 145
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_38

    const-string p0, "fromMillis == null; not setting socket write timeout"

    .line 147
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_38
    new-array v4, v3, [Ljava/lang/Object;

    .line 151
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v6

    const/4 p1, 0x0

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "libcore.io.Libcore"

    .line 153
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "os"

    .line 159
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_59

    const-string p0, "os == null; not setting socket write timeout"

    .line 161
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_59
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_65

    const-string p0, "instance_os == null; not setting socket write timeout"

    .line 167
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_65
    const-string v4, "android.system.OsConstants"

    const-string v5, "libcore.io.OsConstants"

    .line 171
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-static {v4}, Lorg/conscrypt/Platform;->getClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_79

    const-string p0, "OsConstants == null; not setting socket write timeout"

    .line 174
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_79
    const-string v5, "SOL_SOCKET"

    .line 178
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-nez v5, :cond_87

    const-string p0, "SOL_SOCKET == null; not setting socket write timeout"

    .line 180
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_87
    const-string v7, "SO_SNDTIMEO"

    .line 184
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    if-nez v4, :cond_95

    const-string p0, "SO_SNDTIMEO == null; not setting socket write timeout"

    .line 186
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 190
    :cond_95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "setsockoptTimeval"

    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Ljava/io/FileDescriptor;

    aput-object v11, v10, v6

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v3

    const/4 v12, 0x2

    aput-object v11, v10, v12

    const/4 v11, 0x3

    aput-object v0, v10, v11

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_b8

    const-string p0, "setsockoptTimeval == null; not setting socket write timeout"

    .line 193
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b8
    new-array v1, v9, [Ljava/lang/Object;

    aput-object p0, v1, v6

    .line 197
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v1, v3

    .line 198
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v1, v12

    aput-object p2, v1, v11

    .line 197
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10a

    .line 136
    :cond_ce
    new-instance p0, Ljava/net/SocketException;

    const-string p1, "Socket closed"

    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_d6} :catch_d6

    :catch_d6
    move-exception p0

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not set socket write timeout: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/conscrypt/Platform;->logStackTraceSnippet(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :goto_ef
    if-eqz p0, :cond_10a

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caused by: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/conscrypt/Platform;->logStackTraceSnippet(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_ef

    :cond_10a
    :goto_10a
    return-void
.end method

.method public static setup()V
    .registers 0

    return-void
.end method

.method static supportsConscryptCertStore()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method static supportsX509ExtendedTrustManager()Z
    .registers 2

    .line 910
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "javax.crypto.spec.GCMParameterSpec"

    .line 739
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_40

    const/4 v2, 0x2

    :try_start_c
    new-array v3, v2, [Ljava/lang/Class;

    .line 746
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, [B

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 747
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_2c} :catch_3c
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_2c} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_2c} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_2c} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p0

    .line 752
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_40

    :catch_36
    move-exception p0

    goto :goto_3d

    :catch_38
    move-exception p0

    goto :goto_3d

    :catch_3a
    move-exception p0

    goto :goto_3d

    :catch_3c
    move-exception p0

    .line 750
    :goto_3d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    :goto_40
    return-object v0
.end method

.method static unwrapEngine(Ljavax/net/ssl/SSLEngine;)Ljavax/net/ssl/SSLEngine;
    .registers 1

    return-object p0
.end method

.method static wrapEngine(Lorg/conscrypt/ConscryptEngine;)Ljavax/net/ssl/SSLEngine;
    .registers 1

    return-object p0
.end method

.method public static wrapRsaKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;
    .registers 9

    const-string v0, "Conscrypt"

    .line 447
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-lt v1, v3, :cond_a

    return-object v2

    :cond_a
    :try_start_a
    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLRSAPrivateKey"

    .line 456
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_ce

    .line 464
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Private key is not an OpenSSLRSAPrivateKey instance, its class name is:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 468
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_33
    :try_start_33
    const-string v3, "getOpenSSLKey"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 479
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 480
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_40} :catch_b4

    :try_start_40
    new-array v5, v4, [Ljava/lang/Object;

    .line 483
    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_af

    .line 485
    :try_start_46
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    if-nez v5, :cond_64

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getOpenSSLKey on instance: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_63} :catch_b4

    return-object v2

    .line 502
    :cond_64
    :try_start_64
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v6, "getPkeyContext"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_70} :catch_99

    .line 508
    :try_start_70
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_b4

    :try_start_73
    new-array v3, v4, [Ljava/lang/Object;

    .line 511
    invoke-virtual {v1, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_94

    .line 513
    :try_start_7f
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-wide/16 v3, 0x0

    cmp-long v1, v5, v3

    if-nez v1, :cond_8e

    const-string v1, "getPkeyContext() returned null"

    .line 517
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 520
    :cond_8e
    new-instance v1, Lorg/conscrypt/OpenSSLKey;

    invoke-direct {v1, v5, v6}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v1

    :catchall_94
    move-exception v3

    .line 513
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    throw v3

    :catch_99
    move-exception v1

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No getPkeyContext() method on OpenSSLKey member:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catchall_af
    move-exception v3

    .line 485
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    throw v3
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_b4} :catch_b4

    :catch_b4
    move-exception v1

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during conversion of privatekey instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_ce
    move-exception p0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find system OpenSSLRSAPrivateKey class: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;
    .registers 3

    .line 857
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_c

    .line 858
    new-instance v0, Lorg/conscrypt/Java8ExtendedSSLSession;

    invoke-direct {v0, p0}, Lorg/conscrypt/Java8ExtendedSSLSession;-><init>(Lorg/conscrypt/ExternalSession;)V

    return-object v0

    :cond_c
    return-object p0
.end method

.method public static wrapSocketFactoryIfNeeded(Lorg/conscrypt/OpenSSLSocketFactoryImpl;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 3

    .line 667
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_c

    .line 668
    new-instance v0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketAdapterFactory;

    invoke-direct {v0, p0}, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketAdapterFactory;-><init>(Lorg/conscrypt/OpenSSLSocketFactoryImpl;)V

    return-object v0

    :cond_c
    const/16 v1, 0x16

    if-ge v0, v1, :cond_16

    .line 670
    new-instance v0, Lorg/conscrypt/KitKatPlatformOpenSSLSocketAdapterFactory;

    invoke-direct {v0, p0}, Lorg/conscrypt/KitKatPlatformOpenSSLSocketAdapterFactory;-><init>(Lorg/conscrypt/OpenSSLSocketFactoryImpl;)V

    return-object v0

    :cond_16
    return-object p0
.end method
