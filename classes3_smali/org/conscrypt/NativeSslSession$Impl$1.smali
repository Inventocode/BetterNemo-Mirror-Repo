.class Lorg/conscrypt/NativeSslSession$Impl$1;
.super Ljava/lang/Object;
.source "NativeSslSession.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/conscrypt/NativeSslSession$Impl;->toSSLSession()Ljavax/net/ssl/SSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/conscrypt/NativeSslSession$Impl;


# direct methods
.method constructor <init>(Lorg/conscrypt/NativeSslSession$Impl;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .registers 2

    .line 463
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 365
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSslSession$Impl;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .registers 3

    .line 385
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-static {v0}, Lorg/conscrypt/NativeSslSession$Impl;->access$300(Lorg/conscrypt/NativeSslSession$Impl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()[B
    .registers 2

    .line 360
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSslSession$Impl;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .registers 2

    .line 402
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 437
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .line 453
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPacketBufferSize()I
    .registers 2

    .line 458
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 443
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 432
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    .line 375
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSslSession$Impl;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPort()I
    .registers 2

    .line 380
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSslSession$Impl;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 448
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .line 370
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSslSession$Impl;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 397
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 417
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getValueNames()[Ljava/lang/String;
    .registers 2

    .line 427
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public invalidate()V
    .registers 2

    .line 407
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isValid()Z
    .registers 2

    .line 390
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSslSession$Impl;->isValid()Z

    move-result v0

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 412
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeValue(Ljava/lang/String;)V
    .registers 2

    .line 422
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
