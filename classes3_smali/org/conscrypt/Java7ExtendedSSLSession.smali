.class Lorg/conscrypt/Java7ExtendedSSLSession;
.super Ljavax/net/ssl/ExtendedSSLSession;
.source "Java7ExtendedSSLSession.java"

# interfaces
.implements Lorg/conscrypt/ConscryptSession;


# static fields
.field private static final LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

.field private static final PEER_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;


# instance fields
.field protected final delegate:Lorg/conscrypt/ExternalSession;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-string v0, "SHA512withRSA"

    const-string v1, "SHA512withECDSA"

    const-string v2, "SHA384withRSA"

    const-string v3, "SHA384withECDSA"

    const-string v4, "SHA256withRSA"

    const-string v5, "SHA256withECDSA"

    const-string v6, "SHA224withRSA"

    const-string v7, "SHA224withECDSA"

    const-string v8, "SHA1withRSA"

    const-string v9, "SHA1withECDSA"

    .line 32
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/Java7ExtendedSSLSession;->LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    const-string v0, "SHA1withRSA"

    const-string v1, "SHA1withECDSA"

    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/Java7ExtendedSSLSession;->PEER_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/conscrypt/ExternalSession;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljavax/net/ssl/ExtendedSSLSession;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    return-void
.end method


# virtual methods
.method public final getApplicationBufferSize()I
    .registers 2

    .line 178
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getApplicationBufferSize()I

    move-result v0

    return v0
.end method

.method public final getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCreationTime()J
    .registers 3

    .line 87
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getId()[B
    .registers 2

    .line 77
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public final getLastAccessedTime()J
    .registers 3

    .line 92
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getLastAccessedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 133
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .line 148
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
    .registers 2

    .line 48
    sget-object v0, Lorg/conscrypt/Java7ExtendedSSLSession;->LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getPacketBufferSize()I
    .registers 2

    .line 173
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getPacketBufferSize()I

    move-result v0

    return v0
.end method

.method public final getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lorg/conscrypt/Java7ExtendedSSLSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

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

    .line 128
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerHost()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerPort()I
    .registers 2

    .line 168
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public final getPeerPrincipal()Ljava/security/Principal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerSignedCertificateTimestamp()[B
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v0

    return-object v0
.end method

.method public final getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .registers 2

    .line 54
    sget-object v0, Lorg/conscrypt/Java7ExtendedSSLSession;->PEER_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestedServerName()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getRequestedServerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 82
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final getStatusResponses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 112
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ExternalSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getValueNames()[Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->getValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invalidate()V
    .registers 2

    .line 97
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->invalidate()V

    return-void
.end method

.method public final isValid()Z
    .registers 2

    .line 102
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lorg/conscrypt/ExternalSession;->isValid()Z

    move-result v0

    return v0
.end method

.method public final putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 107
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0, p0, p1, p2}, Lorg/conscrypt/ExternalSession;->putValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeValue(Ljava/lang/String;)V
    .registers 3

    .line 117
    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0, p0, p1}, Lorg/conscrypt/ExternalSession;->removeValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    return-void
.end method
