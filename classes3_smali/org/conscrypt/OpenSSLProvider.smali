.class public final Lorg/conscrypt/OpenSSLProvider;
.super Ljava/security/Provider;
.source "OpenSSLProvider.java"


# static fields
.field private static final PREFIX:Ljava/lang/String;

.field private static final STANDARD_EC_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.ECPrivateKey"

.field private static final STANDARD_RSA_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.RSAPrivateKey"

.field private static final STANDARD_RSA_PUBLIC_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.RSAPublicKey"

.field private static final serialVersionUID:J = 0x29969a845b3fb130L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/conscrypt/OpenSSLProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-static {}, Lorg/conscrypt/Platform;->getDefaultProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 51
    invoke-static {}, Lorg/conscrypt/Platform;->provideTrustManagerByDefault()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .registers 12

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    const-string v2, "Android\'s OpenSSL-backed security provider"

    .line 55
    invoke-direct {p0, p1, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 58
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->checkAvailability()V

    .line 61
    invoke-static {}, Lorg/conscrypt/Platform;->setup()V

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLContextImpl"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$TLSv13"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SSLContext.SSL"

    .line 67
    invoke-virtual {p0, v2, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SSLContext.TLS"

    .line 68
    invoke-virtual {p0, v2, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$TLSv1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSLContext.TLSv1"

    invoke-virtual {p0, v3, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$TLSv11"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSLContext.TLSv1.1"

    invoke-virtual {p0, v3, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$TLSv12"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SSLContext.TLSv1.2"

    invoke-virtual {p0, v2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SSLContext.TLSv1.3"

    .line 72
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DefaultSSLContextImpl"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SSLContext.Default"

    invoke-virtual {p0, v1, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_ac

    .line 76
    const-class p1, Lorg/conscrypt/TrustManagerFactoryImpl;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TrustManagerFactory.PKIX"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.TrustManagerFactory.X509"

    const-string p2, "PKIX"

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_ac
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "IvParameters$AES"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlgorithmParameters.AES"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.2"

    const-string p2, "AES"

    .line 82
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.22"

    const-string p2, "AES"

    .line 83
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.42"

    const-string p2, "AES"

    .line 84
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "IvParameters$ChaCha20"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlgorithmParameters.ChaCha20"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "IvParameters$DESEDE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlgorithmParameters.DESEDE"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.TDEA"

    const-string p2, "DESEDE"

    .line 89
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.1.2.840.113549.3.7"

    const-string p2, "DESEDE"

    .line 90
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "GCMParameters"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlgorithmParameters.GCM"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.6"

    const-string p2, "GCM"

    .line 93
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.26"

    const-string p2, "GCM"

    .line 94
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.46"

    const-string p2, "GCM"

    .line 95
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OAEPParameters"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlgorithmParameters.OAEP"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PSSParameters"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlgorithmParameters.PSS"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ECParameters"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlgorithmParameters.EC"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OpenSSLMessageDigestJDK$SHA1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageDigest.SHA-1"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.SHA1"

    const-string p2, "SHA-1"

    .line 102
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.SHA"

    const-string p2, "SHA-1"

    .line 103
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.1.3.14.3.2.26"

    const-string p2, "SHA-1"

    .line 104
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OpenSSLMessageDigestJDK$SHA224"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageDigest.SHA-224"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.SHA224"

    const-string p2, "SHA-224"

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.4"

    const-string p2, "SHA-224"

    .line 108
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OpenSSLMessageDigestJDK$SHA256"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageDigest.SHA-256"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.SHA256"

    const-string p2, "SHA-256"

    .line 111
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.1"

    const-string p2, "SHA-256"

    .line 112
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OpenSSLMessageDigestJDK$SHA384"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageDigest.SHA-384"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.SHA384"

    const-string p2, "SHA-384"

    .line 115
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.2"

    const-string p2, "SHA-384"

    .line 116
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OpenSSLMessageDigestJDK$SHA512"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageDigest.SHA-512"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.SHA512"

    const-string p2, "SHA-512"

    .line 119
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.3"

    const-string p2, "SHA-512"

    .line 120
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OpenSSLMessageDigestJDK$MD5"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageDigest.MD5"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.1.2.840.113549.2.5"

    const-string p2, "MD5"

    .line 124
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "KeyGeneratorImpl$ARC4"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyGenerator.ARC4"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.RC4"

    const-string p2, "ARC4"

    .line 128
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.2.840.113549.3.4"

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyGeneratorImpl$AES"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyGenerator.AES"

    invoke-virtual {p0, v1, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyGeneratorImpl$ChaCha20"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyGenerator.ChaCha20"

    invoke-virtual {p0, v1, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyGeneratorImpl$DESEDE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyGenerator.DESEDE"

    invoke-virtual {p0, v1, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.TDEA"

    const-string v1, "DESEDE"

    .line 136
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyGeneratorImpl$HmacMD5"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyGenerator.HmacMD5"

    invoke-virtual {p0, v1, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.3.6.1.5.5.8.1.1"

    const-string v1, "HmacMD5"

    .line 139
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC-MD5"

    .line 140
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC/MD5"

    .line 141
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KeyGeneratorImpl$HmacSHA1"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KeyGenerator.HmacSHA1"

    invoke-virtual {p0, v2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.2.840.113549.2.7"

    const-string v2, "HmacSHA1"

    .line 144
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.3.6.1.5.5.8.1.2"

    .line 145
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC-SHA1"

    .line 146
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC/SHA1"

    .line 147
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "KeyGeneratorImpl$HmacSHA224"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "KeyGenerator.HmacSHA224"

    invoke-virtual {p0, v3, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.2.840.113549.2.8"

    const-string v3, "HmacSHA224"

    .line 150
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC-SHA224"

    .line 151
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC/SHA224"

    .line 152
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "KeyGeneratorImpl$HmacSHA256"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "KeyGenerator.HmacSHA256"

    invoke-virtual {p0, v4, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.2.840.113549.2.9"

    const-string v4, "HmacSHA256"

    .line 155
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.2.16.840.1.101.3.4.2.1"

    .line 156
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC-SHA256"

    .line 157
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC/SHA256"

    .line 158
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "KeyGeneratorImpl$HmacSHA384"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "KeyGenerator.HmacSHA384"

    invoke-virtual {p0, v5, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.2.840.113549.2.10"

    const-string v5, "HmacSHA384"

    .line 161
    invoke-virtual {p0, p1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC-SHA384"

    .line 162
    invoke-virtual {p0, p1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC/SHA384"

    .line 163
    invoke-virtual {p0, p1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "KeyGeneratorImpl$HmacSHA512"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "KeyGenerator.HmacSHA512"

    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.2.840.113549.2.11"

    const-string v6, "HmacSHA512"

    .line 166
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC-SHA512"

    .line 167
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC/SHA512"

    .line 168
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "OpenSSLRSAKeyPairGenerator"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v7, "KeyPairGenerator.RSA"

    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.1"

    const-string v7, "RSA"

    .line 172
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.7"

    .line 173
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyPairGenerator.2.5.8.1.1"

    .line 174
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "OpenSSLECKeyPairGenerator"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v8, "KeyPairGenerator.EC"

    invoke-virtual {p0, v8, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyPairGenerator.1.2.840.10045.2.1"

    const-string v8, "EC"

    .line 177
    invoke-virtual {p0, p1, v8}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyPairGenerator.1.3.133.16.840.63.0.2"

    const-string v8, "EC"

    .line 178
    invoke-virtual {p0, p1, v8}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "OpenSSLRSAKeyFactory"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v8, "KeyFactory.RSA"

    invoke-virtual {p0, v8, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.1"

    .line 182
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.7"

    .line 183
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyFactory.2.5.8.1.1"

    .line 184
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "OpenSSLECKeyFactory"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v7, "KeyFactory.EC"

    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyFactory.1.2.840.10045.2.1"

    const-string v7, "EC"

    .line 187
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyFactory.1.3.133.16.840.63.0.2"

    const-string v7, "EC"

    .line 188
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "DESEDESecretKeyFactory"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v7, "SecretKeyFactory.DESEDE"

    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.SecretKeyFactory.TDEA"

    const-string v7, "DESEDE"

    .line 192
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLECDHKeyAgreement"

    .line 195
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLProvider;->putECDHKeyAgreementImplClass(Ljava/lang/String;)V

    const-string p1, "MD5withRSA"

    const-string v7, "OpenSSLSignature$MD5RSA"

    .line 198
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Signature.MD5withRSAEncryption"

    .line 199
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.MD5/RSA"

    .line 200
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    .line 201
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.4"

    .line 202
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    .line 203
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA1withRSA"

    const-string v7, "OpenSSLSignature$SHA1RSA"

    .line 205
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Signature.SHA1withRSAEncryption"

    .line 206
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.SHA1/RSA"

    .line 207
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.SHA-1/RSA"

    .line 208
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    .line 209
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.5"

    .line 210
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    .line 211
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    .line 212
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.3.14.3.2.29"

    .line 213
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.OID.1.3.14.3.2.29"

    .line 214
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA224withRSA"

    const-string v7, "OpenSSLSignature$SHA224RSA"

    .line 216
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Signature.SHA224withRSAEncryption"

    .line 217
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.SHA224/RSA"

    .line 218
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.2.840.113549.1.1.14"

    .line 219
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.14"

    .line 220
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.1"

    .line 221
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.14"

    .line 223
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA256withRSA"

    const-string v7, "OpenSSLSignature$SHA256RSA"

    .line 226
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Signature.SHA256withRSAEncryption"

    .line 227
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.SHA256/RSA"

    .line 228
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    .line 229
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.11"

    .line 230
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    .line 231
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    .line 233
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA384withRSA"

    const-string v7, "OpenSSLSignature$SHA384RSA"

    .line 236
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Signature.SHA384withRSAEncryption"

    .line 237
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.SHA384/RSA"

    .line 238
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    .line 239
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.12"

    .line 240
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.113549.1.1.1"

    .line 241
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA512withRSA"

    const-string v7, "OpenSSLSignature$SHA512RSA"

    .line 244
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Signature.SHA512withRSAEncryption"

    .line 245
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.SHA512/RSA"

    .line 246
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    .line 247
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.13"

    .line 248
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.113549.1.1.1"

    .line 249
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLSignatureRawRSA"

    .line 252
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLProvider;->putRAWRSASignatureImplClass(Ljava/lang/String;)V

    const-string p1, "NONEwithECDSA"

    const-string v7, "OpenSSLSignatureRawECDSA"

    .line 254
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SHA1withECDSA"

    const-string v7, "OpenSSLSignature$SHA1ECDSA"

    .line 256
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Signature.ECDSA"

    .line 257
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.ECDSAwithSHA1"

    .line 258
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.2.840.10045.4.1"

    .line 260
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10045.2.1"

    .line 261
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA224withECDSA"

    const-string v7, "OpenSSLSignature$SHA224ECDSA"

    .line 264
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Signature.SHA224/ECDSA"

    .line 265
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.2.840.10045.4.3.1"

    .line 267
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.1"

    .line 268
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.10045.2.1"

    .line 269
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA256withECDSA"

    const-string v7, "OpenSSLSignature$SHA256ECDSA"

    .line 272
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Signature.SHA256/ECDSA"

    .line 273
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    .line 275
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.2"

    .line 276
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    .line 277
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA384withECDSA"

    const-string v7, "OpenSSLSignature$SHA384ECDSA"

    .line 279
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Signature.SHA384/ECDSA"

    .line 280
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.2.840.10045.4.3.3"

    .line 282
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.3"

    .line 283
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.10045.2.1"

    .line 284
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA512withECDSA"

    const-string v7, "OpenSSLSignature$SHA512ECDSA"

    .line 286
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Signature.SHA512/ECDSA"

    .line 287
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.1.2.840.10045.4.3.4"

    .line 289
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.4"

    .line 290
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.10045.2.1"

    .line 291
    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA1withRSA/PSS"

    const-string v7, "OpenSSLSignature$SHA1RSAPSS"

    .line 293
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Signature.SHA1withRSAandMGF1"

    const-string v7, "SHA1withRSA/PSS"

    .line 294
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA224withRSA/PSS"

    const-string v7, "OpenSSLSignature$SHA224RSAPSS"

    .line 296
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Signature.SHA224withRSAandMGF1"

    const-string v7, "SHA224withRSA/PSS"

    .line 297
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA256withRSA/PSS"

    const-string v7, "OpenSSLSignature$SHA256RSAPSS"

    .line 299
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Signature.SHA256withRSAandMGF1"

    const-string v7, "SHA256withRSA/PSS"

    .line 300
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA384withRSA/PSS"

    const-string v7, "OpenSSLSignature$SHA384RSAPSS"

    .line 302
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Signature.SHA384withRSAandMGF1"

    const-string v7, "SHA384withRSA/PSS"

    .line 303
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA512withRSA/PSS"

    const-string v7, "OpenSSLSignature$SHA512RSAPSS"

    .line 305
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Signature.SHA512withRSAandMGF1"

    const-string v7, "SHA512withRSA/PSS"

    .line 306
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "OpenSSLRandom"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v7, "SecureRandom.SHA1PRNG"

    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v7, "Software"

    .line 315
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/NoPadding"

    const-string v7, "OpenSSLCipherRSA$Raw"

    .line 318
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/NoPadding"

    const-string v7, "RSA/ECB/NoPadding"

    .line 319
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/PKCS1Padding"

    const-string v7, "OpenSSLCipherRSA$PKCS1"

    .line 320
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    const-string v7, "RSA/ECB/PKCS1Padding"

    .line 321
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/OAEPPadding"

    const-string v7, "OpenSSLCipherRSA$OAEP$SHA1"

    .line 323
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/OAEPPadding"

    const-string v7, "RSA/ECB/OAEPPadding"

    .line 324
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    const-string v7, "OpenSSLCipherRSA$OAEP$SHA1"

    .line 325
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-1AndMGF1Padding"

    const-string v7, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    .line 326
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    const-string v7, "OpenSSLCipherRSA$OAEP$SHA224"

    .line 328
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-224AndMGF1Padding"

    const-string v7, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    .line 330
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    const-string v7, "OpenSSLCipherRSA$OAEP$SHA256"

    .line 332
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-256AndMGF1Padding"

    const-string v7, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 334
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    const-string v7, "OpenSSLCipherRSA$OAEP$SHA384"

    .line 336
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-384AndMGF1Padding"

    const-string v7, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    .line 338
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    const-string v7, "OpenSSLCipherRSA$OAEP$SHA512"

    .line 340
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-512AndMGF1Padding"

    const-string v7, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    .line 342
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES/ECB/NoPadding"

    const-string v7, "OpenSSLEvpCipherAES$AES$ECB$NoPadding"

    .line 358
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES/ECB/PKCS5Padding"

    const-string v7, "OpenSSLEvpCipherAES$AES$ECB$PKCS5Padding"

    .line 360
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.AES/ECB/PKCS7Padding"

    const-string v7, "AES/ECB/PKCS5Padding"

    .line 362
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES/CBC/NoPadding"

    const-string v7, "OpenSSLEvpCipherAES$AES$CBC$NoPadding"

    .line 363
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES/CBC/PKCS5Padding"

    const-string v7, "OpenSSLEvpCipherAES$AES$CBC$PKCS5Padding"

    .line 365
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.AES/CBC/PKCS7Padding"

    const-string v7, "AES/CBC/PKCS5Padding"

    .line 367
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES/CTR/NoPadding"

    const-string v7, "OpenSSLEvpCipherAES$AES$CTR"

    .line 368
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_128/ECB/NoPadding"

    const-string v7, "OpenSSLEvpCipherAES$AES_128$ECB$NoPadding"

    .line 370
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_128/ECB/PKCS5Padding"

    const-string v7, "OpenSSLEvpCipherAES$AES_128$ECB$PKCS5Padding"

    .line 372
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.AES_128/ECB/PKCS7Padding"

    const-string v7, "AES_128/ECB/PKCS5Padding"

    .line 374
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES_128/CBC/NoPadding"

    const-string v7, "OpenSSLEvpCipherAES$AES_128$CBC$NoPadding"

    .line 375
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_128/CBC/PKCS5Padding"

    const-string v7, "OpenSSLEvpCipherAES$AES_128$CBC$PKCS5Padding"

    .line 377
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.AES_128/CBC/PKCS7Padding"

    const-string v7, "AES_128/CBC/PKCS5Padding"

    .line 379
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA1AndAES_128"

    const-string v7, "AES_128/CBC/PKCS5PADDING"

    .line 381
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA224AndAES_128"

    .line 382
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA256AndAES_128"

    .line 383
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA384AndAES_128"

    .line 384
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA512AndAES_128"

    .line 385
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES_256/ECB/NoPadding"

    const-string v7, "OpenSSLEvpCipherAES$AES_256$ECB$NoPadding"

    .line 387
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_256/ECB/PKCS5Padding"

    const-string v7, "OpenSSLEvpCipherAES$AES_256$ECB$PKCS5Padding"

    .line 389
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.AES_256/ECB/PKCS7Padding"

    const-string v7, "AES_256/ECB/PKCS5Padding"

    .line 391
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES_256/CBC/NoPadding"

    const-string v7, "OpenSSLEvpCipherAES$AES_256$CBC$NoPadding"

    .line 392
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_256/CBC/PKCS5Padding"

    const-string v7, "OpenSSLEvpCipherAES$AES_256$CBC$PKCS5Padding"

    .line 394
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.AES_256/CBC/PKCS7Padding"

    const-string v7, "AES_256/CBC/PKCS5Padding"

    .line 396
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA1AndAES_256"

    const-string v7, "AES_256/CBC/PKCS5PADDING"

    .line 398
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA224AndAES_256"

    .line 399
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA256AndAES_256"

    .line 400
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA384AndAES_256"

    .line 401
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA512AndAES_256"

    .line 402
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "DESEDE/CBC/NoPadding"

    const-string v7, "OpenSSLEvpCipherDESEDE$CBC$NoPadding"

    .line 404
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DESEDE/CBC/PKCS5Padding"

    const-string v7, "OpenSSLEvpCipherDESEDE$CBC$PKCS5Padding"

    .line 406
    invoke-direct {p0, p1, v7}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.DESEDE/CBC/PKCS7Padding"

    const-string v7, "DESEDE/CBC/PKCS5Padding"

    .line 408
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLEvpCipherARC4"

    .line 410
    invoke-direct {p0, p2, p1}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.ARCFOUR"

    .line 411
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.RC4"

    .line 412
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.1.2.840.113549.3.4"

    .line 413
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.OID.1.2.840.113549.3.4"

    .line 414
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES/GCM/NoPadding"

    const-string p2, "OpenSSLAeadCipherAES$GCM"

    .line 416
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Alg.Alias.Cipher.GCM"

    .line 417
    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.6"

    .line 418
    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.26"

    .line 419
    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.46"

    .line 420
    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES_128/GCM/NoPadding"

    const-string p2, "OpenSSLAeadCipherAES$GCM$AES_128"

    .line 421
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_256/GCM/NoPadding"

    const-string p2, "OpenSSLAeadCipherAES$GCM$AES_256"

    .line 423
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES/GCM-SIV/NoPadding"

    const-string p2, "OpenSSLAeadCipherAES$GCM_SIV"

    .line 426
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_128/GCM-SIV/NoPadding"

    const-string p2, "OpenSSLAeadCipherAES$GCM_SIV$AES_128"

    .line 427
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_256/GCM-SIV/NoPadding"

    const-string p2, "OpenSSLAeadCipherAES$GCM_SIV$AES_256"

    .line 429
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ChaCha20"

    const-string p2, "OpenSSLCipherChaCha20"

    .line 432
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ChaCha20/Poly1305/NoPadding"

    const-string p2, "OpenSSLAeadCipherChaCha20"

    .line 434
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.ChaCha20-Poly1305"

    const-string p2, "ChaCha20/Poly1305/NoPadding"

    .line 436
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLMac$HmacMD5"

    .line 440
    invoke-direct {p0, v1, p1}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Mac.1.3.6.1.5.5.8.1.1"

    .line 441
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC-MD5"

    .line 442
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC/MD5"

    .line 443
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLMac$HmacSHA1"

    .line 449
    invoke-direct {p0, v2, p1}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Mac.1.2.840.113549.2.7"

    .line 450
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.1.3.6.1.5.5.8.1.2"

    .line 451
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC-SHA1"

    .line 452
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC/SHA1"

    .line 453
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLMac$HmacSHA224"

    .line 456
    invoke-direct {p0, v3, p1}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Mac.1.2.840.113549.2.8"

    .line 457
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC-SHA224"

    .line 458
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC/SHA224"

    .line 459
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.PBEWITHHMACSHA224"

    .line 460
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLMac$HmacSHA256"

    .line 463
    invoke-direct {p0, v4, p1}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Mac.1.2.840.113549.2.9"

    .line 464
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.2.16.840.1.101.3.4.2.1"

    .line 465
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC-SHA256"

    .line 466
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC/SHA256"

    .line 467
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.PBEWITHHMACSHA256"

    .line 468
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLMac$HmacSHA384"

    .line 471
    invoke-direct {p0, v5, p1}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Mac.1.2.840.113549.2.10"

    .line 472
    invoke-virtual {p0, p1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC-SHA384"

    .line 473
    invoke-virtual {p0, p1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC/SHA384"

    .line 474
    invoke-virtual {p0, p1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.PBEWITHHMACSHA384"

    .line 475
    invoke-virtual {p0, p1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLMac$HmacSHA512"

    .line 478
    invoke-direct {p0, v6, p1}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Mac.1.2.840.113549.2.11"

    .line 479
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC-SHA512"

    .line 480
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC/SHA512"

    .line 481
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.PBEWITHHMACSHA512"

    .line 482
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OpenSSLX509CertificateFactory"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CertificateFactory.X509"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.CertificateFactory.X.509"

    const-string p2, "X509"

    .line 487
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putECDHKeyAgreementImplClass(Ljava/lang/String;)V
    .registers 5

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLKeyHolder|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.security.interfaces.ECPrivateKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyAgreement.ECDH"

    const-string v2, "PKCS#8"

    invoke-direct {p0, v1, p1, v0, v2}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 586
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_19

    .line 588
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " SupportedKeyClasses"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    if-eqz p4, :cond_2f

    .line 591
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SupportedKeyFormats"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    return-void
.end method

.method private putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLKeyHolder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mac."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "RAW"

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putRAWRSASignatureImplClass(Ljava/lang/String;)V
    .registers 5

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLRSAPrivateKey|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLRSAPublicKey|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Signature.NONEwithRSA"

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v0, v2}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLRSAPrivateKey|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLRSAPublicKey|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cipher."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLKeyHolder|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "java.security.interfaces.ECPrivateKey"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PKCS#8|X.509"

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "RAW"

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
