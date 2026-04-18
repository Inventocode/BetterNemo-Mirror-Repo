.class public Lorg/conscrypt/PSSParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "PSSParameters.java"


# instance fields
.field private spec:Ljava/security/spec/PSSParameterSpec;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 33
    sget-object v0, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    iput-object v0, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 118
    :try_start_2
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->asn1_write_init()J

    move-result-wide v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_5f
    .catchall {:try_start_2 .. :try_end_6} :catchall_5a

    .line 119
    :try_start_6
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_55
    .catchall {:try_start_6 .. :try_end_a} :catchall_50

    .line 120
    :try_start_a
    iget-object v6, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    .line 121
    invoke-virtual {v7}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v7

    check-cast v7, Ljava/security/spec/MGF1ParameterSpec;

    .line 120
    invoke-static {v4, v5, v6, v7}, Lorg/conscrypt/OAEPParameters;->writeHashAndMgfHash(JLjava/lang/String;Ljava/security/spec/MGF1ParameterSpec;)V

    .line 123
    iget-object v6, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v6
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_21} :catch_4e
    .catchall {:try_start_a .. :try_end_21} :catchall_67

    const/16 v7, 0x14

    if-eq v6, v7, :cond_43

    const/4 v6, 0x2

    .line 126
    :try_start_26
    invoke-static {v4, v5, v6}, Lorg/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v0

    .line 127
    iget-object v6, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v0, v1, v6, v7}, Lorg/conscrypt/NativeCrypto;->asn1_write_uint64(JJ)V
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_3b

    .line 129
    :try_start_34
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 130
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    goto :goto_43

    :catchall_3b
    move-exception v6

    .line 129
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 130
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw v6

    .line 134
    :cond_43
    :goto_43
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_finish(J)[B

    move-result-object v0
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_47} :catch_4e
    .catchall {:try_start_34 .. :try_end_47} :catchall_67

    .line 139
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 140
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    return-object v0

    :catch_4e
    move-exception v0

    goto :goto_63

    :catchall_50
    move-exception v4

    move-wide v8, v0

    move-object v0, v4

    move-wide v4, v8

    goto :goto_68

    :catch_55
    move-exception v4

    move-wide v8, v0

    move-object v0, v4

    move-wide v4, v8

    goto :goto_63

    :catchall_5a
    move-exception v2

    move-wide v4, v0

    move-object v0, v2

    move-wide v2, v4

    goto :goto_68

    :catch_5f
    move-exception v2

    move-wide v4, v0

    move-object v0, v2

    move-wide v2, v4

    .line 136
    :goto_63
    :try_start_63
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_cleanup(J)V

    .line 137
    throw v0
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v0

    .line 139
    :goto_68
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 140
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2a

    const-string v0, "ASN.1"

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2a

    .line 149
    :cond_13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lorg/conscrypt/PSSParameters;->engineGetEncoded()[B

    move-result-object p1

    return-object p1
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 106
    const-class v0, Ljava/security/spec/PSSParameterSpec;

    if-ne p1, v0, :cond_9

    .line 107
    iget-object p1, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    return-object p1

    .line 109
    :cond_9
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 40
    instance-of v0, p1, Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_9

    .line 41
    check-cast p1, Ljava/security/spec/PSSParameterSpec;

    iput-object p1, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    return-void

    .line 43
    :cond_9
    new-instance p1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v0, "Only PSSParameterSpec is supported"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInit([B)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 52
    :try_start_2
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_init([B)J

    move-result-wide v2
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_89

    .line 53
    :try_start_6
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v4
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_87

    const/16 p1, 0x14

    .line 55
    :try_start_c
    invoke-static {v4, v5}, Lorg/conscrypt/OAEPParameters;->readHash(J)Ljava/lang/String;

    move-result-object v7

    .line 56
    invoke-static {v4, v5}, Lorg/conscrypt/OAEPParameters;->readMgfHash(J)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    .line 57
    invoke-static {v4, v5, v8}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v8
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_84

    if-eqz v8, :cond_31

    .line 60
    :try_start_1b
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v8
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_2c

    .line 61
    :try_start_1f
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_read_uint64(J)J

    move-result-wide v10
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_29

    long-to-int p1, v10

    .line 63
    :try_start_24
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    move v10, p1

    goto :goto_33

    :catchall_29
    move-exception p1

    move-wide v0, v8

    goto :goto_2d

    :catchall_2c
    move-exception p1

    :goto_2d
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw p1

    :cond_31
    const/16 v10, 0x14

    :goto_33
    const/4 p1, 0x3

    .line 66
    invoke-static {v4, v5, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result p1
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_84

    const-string v8, "Error reading ASN.1 encoding"

    if-eqz p1, :cond_5b

    .line 70
    :try_start_3c
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v0

    .line 71
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_uint64(J)J

    move-result-wide v11
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_56

    long-to-int p1, v11

    int-to-long v11, p1

    .line 73
    :try_start_46
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    const-wide/16 v0, 0x1

    cmp-long p1, v11, v0

    if-nez p1, :cond_50

    goto :goto_5b

    .line 77
    :cond_50
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_56
    move-exception p1

    .line 73
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw p1

    .line 81
    :cond_5b
    :goto_5b
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 82
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 85
    new-instance p1, Ljava/security/spec/PSSParameterSpec;

    const-string v8, "MGF1"

    new-instance v9, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v9, v6}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    iput-object p1, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;
    :try_end_77
    .catchall {:try_start_46 .. :try_end_77} :catchall_84

    .line 88
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 89
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    return-void

    .line 83
    :cond_7e
    :try_start_7e
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_84

    :catchall_84
    move-exception p1

    move-wide v0, v4

    goto :goto_8b

    :catchall_87
    move-exception p1

    goto :goto_8b

    :catchall_89
    move-exception p1

    move-wide v2, v0

    .line 88
    :goto_8b
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 89
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw p1
.end method

.method protected engineInit([BLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_2a

    const-string v0, "ASN.1"

    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2a

    .line 98
    :cond_13
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_2a
    :goto_2a
    invoke-virtual {p0, p1}, Lorg/conscrypt/PSSParameters;->engineInit([B)V

    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .registers 2

    const-string v0, "Conscrypt PSS AlgorithmParameters"

    return-object v0
.end method
