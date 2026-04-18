.class final Lorg/conscrypt/SSLNullSession;
.super Ljava/lang/Object;
.source "SSLNullSession.java"

# interfaces
.implements Lorg/conscrypt/ConscryptSession;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/SSLNullSession$DefaultHolder;
    }
.end annotation


# static fields
.field static final INVALID_CIPHER:Ljava/lang/String; = "SSL_NULL_WITH_NULL_NULL"


# instance fields
.field private creationTime:J

.field private lastAccessedTime:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/conscrypt/SSLNullSession;->creationTime:J

    .line 55
    iput-wide v0, p0, Lorg/conscrypt/SSLNullSession;->lastAccessedTime:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/conscrypt/SSLNullSession$1;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lorg/conscrypt/SSLNullSession;-><init>()V

    return-void
.end method

.method static getNullSession()Lorg/conscrypt/ConscryptSession;
    .registers 1

    .line 50
    sget-object v0, Lorg/conscrypt/SSLNullSession$DefaultHolder;->NULL_SESSION:Lorg/conscrypt/SSLNullSession;

    return-object v0
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .registers 2

    const/16 v0, 0x4000

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    const-string v0, "SSL_NULL_WITH_NULL_NULL"

    return-object v0
.end method

.method public getCreationTime()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lorg/conscrypt/SSLNullSession;->creationTime:J

    return-wide v0
.end method

.method public getId()[B
    .registers 2

    .line 90
    sget-object v0, Lorg/conscrypt/EmptyArray;->BYTE:[B

    return-object v0
.end method

.method public getLastAccessedTime()J
    .registers 3

    .line 95
    iget-wide v0, p0, Lorg/conscrypt/SSLNullSession;->lastAccessedTime:J

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

    .line 116
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

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

    .line 35
    invoke-virtual {p0}, Lorg/conscrypt/SSLNullSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

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

    .line 121
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPeerPort()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPeerSignedCertificateTimestamp()[B
    .registers 2

    .line 70
    sget-object v0, Lorg/conscrypt/EmptyArray;->BYTE:[B

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    const-string v0, "NONE"

    return-object v0
.end method

.method public getRequestedServerName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    const/4 v0, 0x0

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

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 151
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "All calls to this method should be intercepted by ProvidedSessionDecorator."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueNames()[Ljava/lang/String;
    .registers 3

    .line 157
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

    .line 172
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "All calls to this method should be intercepted by ProvidedSessionDecorator."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeValue(Ljava/lang/String;)V
    .registers 3

    .line 178
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "All calls to this method should be intercepted by ProvidedSessionDecorator."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
