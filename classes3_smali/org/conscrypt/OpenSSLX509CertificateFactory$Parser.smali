.class abstract Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;
.super Ljava/lang/Object;
.source "OpenSSLX509CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLX509CertificateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/conscrypt/OpenSSLX509CertificateFactory$1;)V
    .registers 2

    .line 68
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method generateItem(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    if-eqz p1, :cond_83

    .line 74
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 76
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 79
    :cond_10
    new-instance v1, Ljava/io/PushbackInputStream;

    const/16 v2, 0x40

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 81
    :try_start_17
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [B

    .line 83
    invoke-virtual {v1, v2}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_6f

    const/4 v4, 0x0

    .line 88
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 90
    aget-byte v5, v2, v4

    const/16 v6, 0x2d

    const/4 v7, 0x0

    if-ne v5, v6, :cond_54

    .line 91
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v5

    array-length v5, v5

    if-ne v3, v5, :cond_4f

    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 92
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    .line 93
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4b

    return-object v7

    .line 96
    :cond_4b
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    goto :goto_54

    .line 98
    :cond_4f
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_54
    :goto_54
    const/4 v3, 0x4

    .line 103
    aget-byte v2, v2, v3

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6a

    .line 104
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_65

    return-object v7

    .line 108
    :cond_65
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 110
    :cond_6a
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 86
    :cond_6f
    new-instance v1, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v2, "inStream is empty"

    invoke-direct {v1, v2}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_77} :catch_77

    :catch_77
    move-exception v1

    if-eqz v0, :cond_7d

    .line 115
    :try_start_7a
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7d

    .line 119
    :catch_7d
    :cond_7d
    new-instance p1, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {p1, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 71
    :cond_83
    new-instance p1, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v0, "inStream == null"

    invoke-direct {p1, v0}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method generateItems(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    if-eqz p1, :cond_88

    .line 129
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_d

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_7f

    return-object p1

    .line 136
    :cond_d
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    const/16 v1, 0x40

    if-eqz v0, :cond_18

    .line 138
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 142
    :cond_18
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 144
    :try_start_1d
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [B

    .line 146
    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_6b

    const/4 v5, 0x0

    .line 151
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 153
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v5

    array-length v5, v5

    if-ne v4, v5, :cond_44

    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 154
    invoke-virtual {p0, v2}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_44
    const/4 v4, 0x4

    .line 158
    aget-byte v3, v3, v4

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4f

    .line 159
    invoke-virtual {p0, v2}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_4e} :catch_73

    return-object p1

    .line 175
    :cond_4f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_54
    if-eqz v0, :cond_59

    .line 183
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 187
    :cond_59
    :try_start_59
    invoke-virtual {p0, v2}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v4

    .line 188
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_59 .. :try_end_60} :catch_61

    goto :goto_68

    :catch_61
    nop

    if-eqz v0, :cond_67

    .line 196
    :try_start_64
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_67

    :catch_67
    :cond_67
    const/4 v4, 0x0

    :goto_68
    if-nez v4, :cond_54

    return-object v3

    .line 149
    :cond_6b
    :try_start_6b
    new-instance v1, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v2, "inStream is empty"

    invoke-direct {v1, v2}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_73} :catch_73

    :catch_73
    move-exception v1

    if-eqz v0, :cond_79

    .line 164
    :try_start_76
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_79

    .line 168
    :catch_79
    :cond_79
    new-instance p1, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {p1, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_7f
    move-exception p1

    .line 133
    new-instance v0, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v1, "Problem reading input stream"

    invoke-direct {v0, v1, p1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 126
    :cond_88
    new-instance p1, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v0, "inStream == null"

    invoke-direct {p1, v0}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
