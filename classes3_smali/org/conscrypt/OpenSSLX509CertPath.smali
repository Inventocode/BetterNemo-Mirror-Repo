.class final Lorg/conscrypt/OpenSSLX509CertPath;
.super Ljava/security/cert/CertPath;
.source "OpenSSLX509CertPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
    }
.end annotation


# static fields
.field private static final ALL_ENCODINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENCODING:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

.field private static final PKCS7_MARKER:[B

.field private static final PUSHBACK_SIZE:I = 0x40

.field private static final serialVersionUID:J = -0x2d1724b280d2aac9L


# instance fields
.field private final mCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 41
    fill-array-data v0, :array_2c

    sput-object v0, Lorg/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 73
    sget-object v1, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    .line 75
    invoke-static {v1}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->access$000(Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    .line 76
    invoke-static {v2}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->access$000(Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 74
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    .line 79
    sput-object v1, Lorg/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    return-void

    nop

    :array_2c
    .array-data 1
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x42t
        0x45t
        0x47t
        0x49t
        0x4et
        0x20t
        0x50t
        0x4bt
        0x43t
        0x53t
        0x37t
    .end array-data
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    const-string v0, "X.509"

    .line 88
    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lorg/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    return-void
.end method

.method static fromEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 260
    sget-object v0, Lorg/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {p0, v0}, Lorg/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0

    .line 257
    :cond_9
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "inStream == null"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static fromEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p0, :cond_24

    .line 247
    invoke-static {p1}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->findByApiName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 252
    invoke-static {p0, v0}, Lorg/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0

    .line 249
    :cond_d
    new-instance p0, Ljava/security/cert/CertificateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :cond_24
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "inStream == null"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static fromEncoding(Ljava/io/InputStream;Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 231
    sget-object v0, Lorg/conscrypt/OpenSSLX509CertPath$1;->$SwitchMap$org$conscrypt$OpenSSLX509CertPath$Encoding:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 235
    invoke-static {p0}, Lorg/conscrypt/OpenSSLX509CertPath;->fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0

    .line 237
    :cond_13
    new-instance p0, Ljava/security/cert/CertificateEncodingException;

    const-string p1, "Unknown encoding"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 233
    :cond_1b
    invoke-static {p0}, Lorg/conscrypt/OpenSSLX509CertPath;->fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0
.end method

.method private static fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p0, :cond_59

    .line 189
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_63

    if-nez v0, :cond_9

    goto :goto_59

    .line 196
    :cond_9
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    const/16 v1, 0x40

    if-eqz v0, :cond_14

    .line 198
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 202
    :cond_14
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p0, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 204
    :try_start_19
    sget-object v1, Lorg/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    array-length v3, v1

    new-array v3, v3, [B

    .line 206
    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_45

    const/4 v5, 0x0

    .line 211
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 213
    array-length v5, v1

    if-ne v4, v5, :cond_3b

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 214
    new-instance v1, Lorg/conscrypt/OpenSSLX509CertPath;

    invoke-static {v2}, Lorg/conscrypt/OpenSSLX509Certificate;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v1

    .line 217
    :cond_3b
    new-instance v1, Lorg/conscrypt/OpenSSLX509CertPath;

    invoke-static {v2}, Lorg/conscrypt/OpenSSLX509Certificate;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v1

    .line 209
    :cond_45
    new-instance v1, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v2, "inStream is empty"

    invoke-direct {v1, v2}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception v1

    if-eqz v0, :cond_53

    .line 221
    :try_start_50
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_53

    .line 225
    :catch_53
    :cond_53
    new-instance p0, Ljava/security/cert/CertificateException;

    invoke-direct {p0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 190
    :cond_59
    :goto_59
    :try_start_59
    new-instance p0, Lorg/conscrypt/OpenSSLX509CertPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_62} :catch_63

    return-object p0

    :catch_63
    move-exception p0

    .line 193
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Problem reading input stream"

    invoke-direct {v0, v1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 145
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 147
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v3, 0x40

    .line 149
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 154
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->ASN1_seq_unpack_X509_bio(J)[J

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_57
    .catchall {:try_start_11 .. :try_end_19} :catchall_55

    .line 164
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    if-nez p0, :cond_28

    .line 168
    new-instance p0, Lorg/conscrypt/OpenSSLX509CertPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object p0

    .line 171
    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    array-length v2, p0

    sub-int/2addr v2, v1

    :goto_30
    if-ltz v2, :cond_4f

    .line 174
    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3b

    goto :goto_45

    .line 178
    :cond_3b
    :try_start_3b
    new-instance v1, Lorg/conscrypt/OpenSSLX509Certificate;

    aget-wide v3, p0, v2

    invoke-direct {v1, v3, v4}, Lorg/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_3b .. :try_end_45} :catch_48

    :goto_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_30

    :catch_48
    move-exception p0

    .line 180
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 184
    :cond_4f
    new-instance p0, Lorg/conscrypt/OpenSSLX509CertPath;

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_55
    move-exception p0

    goto :goto_63

    :catch_57
    move-exception v1

    if-eqz v2, :cond_5d

    .line 158
    :try_start_5a
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_55

    .line 162
    :catch_5d
    :cond_5d
    :try_start_5d
    new-instance p0, Ljava/security/cert/CertificateException;

    invoke-direct {p0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_55

    .line 164
    :goto_63
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw p0
.end method

.method private getEncoded(Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lorg/conscrypt/OpenSSLX509Certificate;

    .line 100
    new-array v2, v0, [J

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    :goto_d
    if-ltz v0, :cond_37

    .line 103
    iget-object v5, p0, Lorg/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 105
    instance-of v6, v5, Lorg/conscrypt/OpenSSLX509Certificate;

    if-eqz v6, :cond_20

    .line 106
    check-cast v5, Lorg/conscrypt/OpenSSLX509Certificate;

    aput-object v5, v1, v0

    goto :goto_2a

    .line 108
    :cond_20
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lorg/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lorg/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    aput-object v5, v1, v0

    .line 111
    :goto_2a
    aget-object v5, v1, v0

    invoke-virtual {v5}, Lorg/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v5

    aput-wide v5, v2, v0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 114
    :cond_37
    sget-object v0, Lorg/conscrypt/OpenSSLX509CertPath$1;->$SwitchMap$org$conscrypt$OpenSSLX509CertPath$Encoding:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_51

    const/4 v0, 0x2

    if-ne p1, v0, :cond_49

    .line 118
    invoke-static {v2}, Lorg/conscrypt/NativeCrypto;->i2d_PKCS7([J)[B

    move-result-object p1

    return-object p1

    .line 120
    :cond_49
    new-instance p1, Ljava/security/cert/CertificateEncodingException;

    const-string v0, "Unknown encoding"

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_51
    invoke-static {v2}, Lorg/conscrypt/NativeCrypto;->ASN1_seq_pack_X509([J)[B

    move-result-object p1

    return-object p1
.end method

.method static getEncodingsIterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object v0, Lorg/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 126
    sget-object v0, Lorg/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLX509CertPath;->getEncoded(Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 131
    invoke-static {p1}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->findByApiName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 136
    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLX509CertPath;->getEncoded(Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)[B

    move-result-object p1

    return-object p1

    .line 133
    :cond_b
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncodings()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertPath;->getEncodingsIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
