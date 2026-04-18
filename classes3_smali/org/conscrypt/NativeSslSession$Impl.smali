.class final Lorg/conscrypt/NativeSslSession$Impl;
.super Lorg/conscrypt/NativeSslSession;
.source "NativeSslSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/NativeSslSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Impl"
.end annotation


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final context:Lorg/conscrypt/AbstractSessionContext;

.field private final host:Ljava/lang/String;

.field private final peerCertificates:[Ljava/security/cert/X509Certificate;

.field private final peerOcspStapledResponse:[B

.field private final peerSignedCertificateTimestamp:[B

.field private final port:I

.field private final protocol:Ljava/lang/String;

.field private final ref:Lorg/conscrypt/NativeRef$SSL_SESSION;


# direct methods
.method private constructor <init>(Lorg/conscrypt/AbstractSessionContext;Lorg/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[B)V
    .registers 8

    .line 232
    invoke-direct {p0}, Lorg/conscrypt/NativeSslSession;-><init>()V

    .line 233
    iput-object p1, p0, Lorg/conscrypt/NativeSslSession$Impl;->context:Lorg/conscrypt/AbstractSessionContext;

    .line 234
    iput-object p3, p0, Lorg/conscrypt/NativeSslSession$Impl;->host:Ljava/lang/String;

    .line 235
    iput p4, p0, Lorg/conscrypt/NativeSslSession$Impl;->port:I

    .line 236
    iput-object p5, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 237
    iput-object p6, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    .line 238
    iput-object p7, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerSignedCertificateTimestamp:[B

    .line 239
    iget-wide p3, p2, Lorg/conscrypt/NativeRef;->address:J

    invoke-static {p3, p4}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_get_version(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/NativeSslSession$Impl;->protocol:Ljava/lang/String;

    .line 240
    iget-wide p3, p2, Lorg/conscrypt/NativeRef;->address:J

    .line 241
    invoke-static {p3, p4}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_cipher(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->cipherSuiteToJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/NativeSslSession$Impl;->cipherSuite:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lorg/conscrypt/NativeSslSession$Impl;->ref:Lorg/conscrypt/NativeRef$SSL_SESSION;

    return-void
.end method

.method synthetic constructor <init>(Lorg/conscrypt/AbstractSessionContext;Lorg/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLorg/conscrypt/NativeSslSession$1;)V
    .registers 9

    .line 217
    invoke-direct/range {p0 .. p7}, Lorg/conscrypt/NativeSslSession$Impl;-><init>(Lorg/conscrypt/AbstractSessionContext;Lorg/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[B)V

    return-void
.end method

.method static synthetic access$300(Lorg/conscrypt/NativeSslSession$Impl;)J
    .registers 3

    .line 217
    invoke-direct {p0}, Lorg/conscrypt/NativeSslSession$Impl;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getCreationTime()J
    .registers 3

    .line 251
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->ref:Lorg/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lorg/conscrypt/NativeRef;->address:J

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_get_time(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 277
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method getId()[B
    .registers 3

    .line 247
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->ref:Lorg/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lorg/conscrypt/NativeRef;->address:J

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_session_id(J)[B

    move-result-object v0

    return-object v0
.end method

.method getPeerHost()Ljava/lang/String;
    .registers 2

    .line 287
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->host:Ljava/lang/String;

    return-object v0
.end method

.method getPeerOcspStapledResponse()[B
    .registers 2

    .line 297
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    return-object v0
.end method

.method getPeerPort()I
    .registers 2

    .line 292
    iget v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->port:I

    return v0
.end method

.method getPeerSignedCertificateTimestamp()[B
    .registers 2

    .line 302
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerSignedCertificateTimestamp:[B

    return-object v0
.end method

.method getProtocol()Ljava/lang/String;
    .registers 2

    .line 282
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method isSingleUse()Z
    .registers 3

    .line 267
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->ref:Lorg/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lorg/conscrypt/NativeRef;->address:J

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_should_be_single_use(J)Z

    move-result v0

    return v0
.end method

.method isValid()Z
    .registers 7

    .line 256
    invoke-direct {p0}, Lorg/conscrypt/NativeSslSession$Impl;->getCreationTime()J

    move-result-wide v0

    .line 258
    iget-object v2, p0, Lorg/conscrypt/NativeSslSession$Impl;->context:Lorg/conscrypt/AbstractSessionContext;

    .line 259
    invoke-virtual {v2}, Lorg/conscrypt/AbstractSessionContext;->getSessionTimeout()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lorg/conscrypt/NativeSslSession$Impl;->ref:Lorg/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v4, v4, Lorg/conscrypt/NativeRef;->address:J

    .line 260
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_get_timeout(J)J

    move-result-wide v4

    .line 259
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 258
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v2, v4, v0

    if-gez v2, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return v0
.end method

.method offerToResume(Lorg/conscrypt/NativeSsl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->ref:Lorg/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lorg/conscrypt/NativeRef;->address:J

    invoke-virtual {p1, v0, v1}, Lorg/conscrypt/NativeSsl;->offerToResumeSession(J)V

    return-void
.end method

.method toBytes()[B
    .registers 10

    const/4 v0, 0x0

    .line 308
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 309
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 311
    sget-object v3, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lorg/conscrypt/SSLUtils$SessionType;

    iget v3, v3, Lorg/conscrypt/SSLUtils$SessionType;->value:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 314
    iget-object v3, p0, Lorg/conscrypt/NativeSslSession$Impl;->ref:Lorg/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v3, v3, Lorg/conscrypt/NativeRef;->address:J

    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->i2d_SSL_SESSION(J)[B

    move-result-object v3

    .line 315
    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 316
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 319
    iget-object v3, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 321
    iget-object v3, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2c
    if-ge v6, v4, :cond_3e

    aget-object v7, v3, v6

    .line 322
    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    .line 323
    array-length v8, v7

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 324
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 327
    :cond_3e
    iget-object v3, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    if-eqz v3, :cond_52

    const/4 v3, 0x1

    .line 328
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 329
    iget-object v3, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 330
    iget-object v3, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_55

    .line 332
    :cond_52
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 335
    :goto_55
    iget-object v3, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerSignedCertificateTimestamp:[B

    if-eqz v3, :cond_63

    .line 336
    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 337
    iget-object v3, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerSignedCertificateTimestamp:[B

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_66

    .line 339
    :cond_63
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 344
    :goto_66
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6a} :catch_70
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_6a} :catch_6b

    return-object v0

    :catch_6b
    move-exception v1

    .line 350
    invoke-static {v1}, Lorg/conscrypt/NativeSslSession;->access$200(Ljava/lang/Throwable;)V

    return-object v0

    :catch_70
    move-exception v1

    .line 347
    invoke-static {}, Lorg/conscrypt/NativeSslSession;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Failed to convert saved SSL Session: "

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method toSSLSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 357
    new-instance v0, Lorg/conscrypt/NativeSslSession$Impl$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/NativeSslSession$Impl$1;-><init>(Lorg/conscrypt/NativeSslSession$Impl;)V

    return-object v0
.end method
