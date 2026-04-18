.class final Lorg/conscrypt/SessionSnapshot;
.super Ljava/lang/Object;
.source "SessionSnapshot.java"

# interfaces
.implements Lorg/conscrypt/ConscryptSession;


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final creationTime:J

.field private final id:[B

.field private final lastAccessedTime:J

.field private final peerHost:Ljava/lang/String;

.field private final peerPort:I

.field private final peerTlsSctData:[B

.field private final protocol:Ljava/lang/String;

.field private final requestedServerName:Ljava/lang/String;

.field private final sessionContext:Ljavax/net/ssl/SSLSessionContext;

.field private final statusResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/conscrypt/ConscryptSession;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/SessionSnapshot;->sessionContext:Ljavax/net/ssl/SSLSessionContext;

    .line 46
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/SessionSnapshot;->id:[B

    .line 47
    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getRequestedServerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/SessionSnapshot;->requestedServerName:Ljava/lang/String;

    .line 48
    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/SessionSnapshot;->statusResponses:Ljava/util/List;

    .line 49
    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/SessionSnapshot;->peerTlsSctData:[B

    .line 50
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCreationTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/conscrypt/SessionSnapshot;->creationTime:J

    .line 51
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getLastAccessedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/conscrypt/SessionSnapshot;->lastAccessedTime:J

    .line 52
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/SessionSnapshot;->cipherSuite:Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/SessionSnapshot;->protocol:Ljava/lang/String;

    .line 54
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/SessionSnapshot;->peerHost:Ljava/lang/String;

    .line 55
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result p1

    iput p1, p0, Lorg/conscrypt/SessionSnapshot;->peerPort:I

    return-void
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .registers 2

    const/16 v0, 0x4000

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lorg/conscrypt/SessionSnapshot;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()J
    .registers 3

    .line 89
    iget-wide v0, p0, Lorg/conscrypt/SessionSnapshot;->creationTime:J

    return-wide v0
.end method

.method public getId()[B
    .registers 2

    .line 79
    iget-object v0, p0, Lorg/conscrypt/SessionSnapshot;->id:[B

    return-object v0
.end method

.method public getLastAccessedTime()J
    .registers 3

    .line 94
    iget-wide v0, p0, Lorg/conscrypt/SessionSnapshot;->lastAccessedTime:J

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPacketBufferSize()I
    .registers 2

    const/16 v0, 0x4145

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/conscrypt/SessionSnapshot;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 133
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Lorg/conscrypt/SessionSnapshot;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .registers 2

    .line 174
    iget v0, p0, Lorg/conscrypt/SessionSnapshot;->peerPort:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPeerSignedCertificateTimestamp()[B
    .registers 2

    .line 74
    iget-object v0, p0, Lorg/conscrypt/SessionSnapshot;->peerTlsSctData:[B

    if-eqz v0, :cond_b

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lorg/conscrypt/SessionSnapshot;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedServerName()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lorg/conscrypt/SessionSnapshot;->requestedServerName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 84
    iget-object v0, p0, Lorg/conscrypt/SessionSnapshot;->sessionContext:Ljavax/net/ssl/SSLSessionContext;

    return-object v0
.end method

.method public getStatusResponses()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/conscrypt/SessionSnapshot;->statusResponses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    iget-object v1, p0, Lorg/conscrypt/SessionSnapshot;->statusResponses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 67
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 115
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "All calls to this method should be intercepted by ProvidedSessionDecorator."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueNames()[Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All calls to this method should be intercepted by ProvidedSessionDecorator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invalidate()V
    .registers 1

    return-void
.end method

.method public isValid()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 109
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "All calls to this method should be intercepted by ProvidedSessionDecorator."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeValue(Ljava/lang/String;)V
    .registers 3

    .line 121
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "All calls to this method should be intercepted by ProvidedSessionDecorator."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
