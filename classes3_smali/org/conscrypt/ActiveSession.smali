.class final Lorg/conscrypt/ActiveSession;
.super Ljava/lang/Object;
.source "ActiveSession.java"

# interfaces
.implements Lorg/conscrypt/ConscryptSession;


# instance fields
.field private creationTime:J

.field private id:[B

.field private lastAccessedTime:J

.field private localCertificates:[Ljava/security/cert/X509Certificate;

.field private volatile peerCertificateChain:[Ljavax/security/cert/X509Certificate;

.field private peerCertificateOcspData:[B

.field private peerCertificates:[Ljava/security/cert/X509Certificate;

.field private peerHost:Ljava/lang/String;

.field private peerPort:I

.field private peerTlsSctData:[B

.field private protocol:Ljava/lang/String;

.field private sessionContext:Lorg/conscrypt/AbstractSessionContext;

.field private final ssl:Lorg/conscrypt/NativeSsl;


# direct methods
.method constructor <init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lorg/conscrypt/ActiveSession;->peerPort:I

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lorg/conscrypt/ActiveSession;->lastAccessedTime:J

    const-string v0, "ssl"

    .line 50
    invoke-static {p1, v0}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/conscrypt/NativeSsl;

    iput-object p1, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    const-string p1, "sessionContext"

    .line 51
    invoke-static {p2, p1}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/conscrypt/AbstractSessionContext;

    iput-object p1, p0, Lorg/conscrypt/ActiveSession;->sessionContext:Lorg/conscrypt/AbstractSessionContext;

    return-void
.end method

.method private checkPeerCertificatesPresent()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-eqz v0, :cond_8

    return-void

    .line 322
    :cond_8
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private configurePeer(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V
    .registers 4

    .line 287
    iput-object p1, p0, Lorg/conscrypt/ActiveSession;->peerHost:Ljava/lang/String;

    .line 288
    iput p2, p0, Lorg/conscrypt/ActiveSession;->peerPort:I

    .line 289
    iput-object p3, p0, Lorg/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 290
    iget-object p1, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter p1

    .line 291
    :try_start_9
    iget-object p2, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {p2}, Lorg/conscrypt/NativeSsl;->getPeerCertificateOcspData()[B

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ActiveSession;->peerCertificateOcspData:[B

    .line 292
    iget-object p2, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {p2}, Lorg/conscrypt/NativeSsl;->getPeerTlsSctData()[B

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ActiveSession;->peerTlsSctData:[B

    .line 293
    monitor-exit p1

    return-void

    :catchall_1b
    move-exception p2

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw p2
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .registers 2

    const/16 v0, 0x4000

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 3

    .line 240
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    .line 242
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    if-nez v1, :cond_e

    const-string v1, "SSL_NULL_WITH_NULL_NULL"

    :cond_e
    return-object v1

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getCreationTime()J
    .registers 6

    .line 71
    iget-wide v0, p0, Lorg/conscrypt/ActiveSession;->creationTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_18

    .line 72
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 73
    :try_start_b
    iget-object v1, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/conscrypt/ActiveSession;->creationTime:J

    .line 74
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v1

    .line 76
    :cond_18
    :goto_18
    iget-wide v0, p0, Lorg/conscrypt/ActiveSession;->creationTime:J

    return-wide v0
.end method

.method public getId()[B
    .registers 3

    .line 56
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->id:[B

    if-nez v0, :cond_14

    .line 57
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 58
    :try_start_7
    iget-object v1, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->getSessionId()[B

    move-result-object v1

    iput-object v1, p0, Lorg/conscrypt/ActiveSession;->id:[B

    .line 59
    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1

    .line 61
    :cond_14
    :goto_14
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->id:[B

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_21

    :cond_1f
    sget-object v0, Lorg/conscrypt/EmptyArray;->BYTE:[B

    :goto_21
    return-object v0
.end method

.method public getLastAccessedTime()J
    .registers 6

    .line 89
    iget-wide v0, p0, Lorg/conscrypt/ActiveSession;->lastAccessedTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    invoke-virtual {p0}, Lorg/conscrypt/ActiveSession;->getCreationTime()J

    move-result-wide v0

    :cond_c
    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 3

    .line 186
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_14

    .line 187
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 188
    :try_start_7
    iget-object v1, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->getLocalCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lorg/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 189
    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1

    .line 191
    :cond_14
    :goto_14
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_20

    :cond_1a
    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    :goto_20
    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .line 227
    invoke-virtual {p0}, Lorg/conscrypt/ActiveSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_13

    .line 228
    array-length v1, v0

    if-lez v1, :cond_13

    const/4 v1, 0x0

    .line 229
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPacketBufferSize()I
    .registers 2

    const/16 v0, 0x4145

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Lorg/conscrypt/ActiveSession;->checkPeerCertificatesPresent()V

    .line 211
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    if-nez v0, :cond_f

    .line 214
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->toCertificateChain([Ljava/security/cert/X509Certificate;)[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ActiveSession;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    :cond_f
    return-object v0
.end method

.method public bridge synthetic getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lorg/conscrypt/ActiveSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lorg/conscrypt/ActiveSession;->checkPeerCertificatesPresent()V

    .line 180
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    .line 260
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .registers 2

    .line 265
    iget v0, p0, Lorg/conscrypt/ActiveSession;->peerPort:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Lorg/conscrypt/ActiveSession;->checkPeerCertificatesPresent()V

    .line 222
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPeerSignedCertificateTimestamp()[B
    .registers 2

    .line 124
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->peerTlsSctData:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_6
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 3

    .line 248
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->protocol:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 250
    iget-object v1, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 251
    :try_start_7
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 252
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_11

    .line 253
    iput-object v0, p0, Lorg/conscrypt/ActiveSession;->protocol:Ljava/lang/String;

    goto :goto_14

    :catchall_11
    move-exception v0

    .line 252
    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :goto_14
    return-object v0
.end method

.method public getRequestedServerName()Ljava/lang/String;
    .registers 3

    .line 132
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-object v1, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->getRequestedServerName()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 134
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 66
    invoke-virtual {p0}, Lorg/conscrypt/ActiveSession;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->sessionContext:Lorg/conscrypt/AbstractSessionContext;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getStatusResponses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->peerCertificateOcspData:[B

    if-nez v0, :cond_9

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 113
    :cond_9
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 161
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "All calls to this method should be intercepted by ProvidedSessionDecorator."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueNames()[Ljava/lang/String;
    .registers 3

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All calls to this method should be intercepted by ProvidedSessionDecorator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invalidate()V
    .registers 5

    .line 139
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 140
    :try_start_3
    iget-object v1, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/conscrypt/NativeSsl;->setTimeout(J)V

    .line 141
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public isValid()Z
    .registers 8

    .line 146
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-object v1, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->getTime()J

    move-result-wide v1

    .line 148
    iget-object v3, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v3}, Lorg/conscrypt/NativeSsl;->getTimeout()J

    move-result-wide v3

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v3, v5, v1

    if-gez v3, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    monitor-exit v0

    return v1

    :catchall_1d
    move-exception v1

    .line 150
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method onPeerCertificateAvailable(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    const/4 v1, 0x0

    .line 302
    :try_start_4
    iput-object v1, p0, Lorg/conscrypt/ActiveSession;->id:[B

    .line 303
    iget-object v1, p0, Lorg/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_12

    .line 304
    iget-object v1, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->getLocalCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lorg/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 306
    :cond_12
    iget-object v1, p0, Lorg/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_1f

    .line 312
    iget-object v1, p0, Lorg/conscrypt/ActiveSession;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lorg/conscrypt/ActiveSession;->configurePeer(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V

    .line 314
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw p1
.end method

.method onPeerCertificatesReceived(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V
    .registers 4

    .line 283
    invoke-direct {p0, p1, p2, p3}, Lorg/conscrypt/ActiveSession;->configurePeer(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 155
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "All calls to this method should be intercepted by ProvidedSessionDecorator."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeValue(Ljava/lang/String;)V
    .registers 3

    .line 167
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "All calls to this method should be intercepted by ProvidedSessionDecorator."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setLastAccessedTime(J)V
    .registers 3

    .line 93
    iput-wide p1, p0, Lorg/conscrypt/ActiveSession;->lastAccessedTime:J

    return-void
.end method
