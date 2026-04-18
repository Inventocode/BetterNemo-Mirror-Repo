.class public Lorg/conscrypt/OAEPParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "OAEPParameters.java"


# static fields
.field private static final MGF1_OID:Ljava/lang/String; = "1.2.840.113549.1.1.8"

.field private static final NAME_TO_OID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OID_TO_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PSPECIFIED_OID:Ljava/lang/String; = "1.2.840.113549.1.1.9"


# instance fields
.field private spec:Ljavax/crypto/spec/OAEPParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    const-string v1, "1.3.14.3.2.26"

    const-string v2, "SHA-1"

    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "2.16.840.1.101.3.4.2.4"

    const-string v2, "SHA-224"

    .line 40
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "2.16.840.1.101.3.4.2.1"

    const-string v2, "SHA-256"

    .line 41
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "2.16.840.1.101.3.4.2.2"

    const-string v2, "SHA-384"

    .line 42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "2.16.840.1.101.3.4.2.3"

    const-string v2, "SHA-512"

    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    sget-object v2, Lorg/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    :cond_53
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 51
    sget-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    iput-object v0, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    return-void
.end method

.method private static getHashName(J)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_33

    .line 160
    :try_start_4
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_oid(J)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v1

    if-nez v1, :cond_11

    .line 162
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_null(J)V

    .line 164
    :cond_11
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    .line 165
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 168
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_31

    .line 170
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    return-object v0

    .line 166
    :cond_29
    :try_start_29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error reading ASN.1 encoding"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v0

    goto :goto_36

    :catchall_33
    move-exception v0

    const-wide/16 p0, 0x0

    .line 170
    :goto_36
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v0
.end method

.method static readHash(J)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    invoke-static {p0, p1, v0}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-wide/16 v0, 0x0

    .line 122
    :try_start_9
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v0

    .line 123
    invoke-static {v0, v1}, Lorg/conscrypt/OAEPParameters;->getHashName(J)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 125
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    return-object p0

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw p0

    :cond_1a
    const-string p0, "SHA-1"

    return-object p0
.end method

.method static readMgfHash(J)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 133
    invoke-static {p0, p1, v0}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v0

    if-eqz v0, :cond_47

    const-wide/16 v0, 0x0

    .line 137
    :try_start_9
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_3e

    .line 138
    :try_start_d
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v0

    .line 139
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_oid(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.2.840.113549.1.1.8"

    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_3c

    const-string v3, "Error reading ASN.1 encoding"

    if-eqz v2, :cond_36

    .line 143
    :try_start_1f
    invoke-static {v0, v1}, Lorg/conscrypt/OAEPParameters;->getHashName(J)Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v4
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_3c

    if-eqz v4, :cond_30

    .line 149
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 150
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    return-object v2

    .line 145
    :cond_30
    :try_start_30
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_36
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v2

    goto :goto_40

    :catchall_3e
    move-exception v2

    move-wide p0, v0

    .line 149
    :goto_40
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 150
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v2

    :cond_47
    const-string p0, "SHA-1"

    return-object p0
.end method

.method private static writeAlgorithmIdentifier(JLjava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_a

    .line 277
    :try_start_4
    invoke-static {p0, p1, p2}, Lorg/conscrypt/NativeCrypto;->asn1_write_oid(JLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    return-wide p0

    :catch_8
    move-exception p2

    goto :goto_d

    :catch_a
    move-exception p2

    const-wide/16 p0, 0x0

    .line 279
    :goto_d
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 280
    throw p2
.end method

.method static writeHashAndMgfHash(JLjava/lang/String;Ljava/security/spec/MGF1ParameterSpec;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SHA-1"

    .line 230
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_39

    const/4 v1, 0x0

    .line 234
    :try_start_b
    invoke-static {p0, p1, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v4
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_2d

    .line 235
    :try_start_f
    sget-object v1, Lorg/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    .line 236
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 235
    invoke-static {v4, v5, p2}, Lorg/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v6
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_2b

    .line 237
    :try_start_1b
    invoke-static {v6, v7}, Lorg/conscrypt/NativeCrypto;->asn1_write_null(J)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_28

    .line 239
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 240
    invoke-static {v6, v7}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 241
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    goto :goto_39

    :catchall_28
    move-exception p2

    move-wide v2, v6

    goto :goto_2f

    :catchall_2b
    move-exception p2

    goto :goto_2f

    :catchall_2d
    move-exception p2

    move-wide v4, v2

    .line 239
    :goto_2f
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 240
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 241
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw p2

    .line 244
    :cond_39
    :goto_39
    invoke-virtual {p3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_83

    const/4 p2, 0x1

    .line 249
    :try_start_44
    invoke-static {p0, p1, p2}, Lorg/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_73

    :try_start_48
    const-string p2, "1.2.840.113549.1.1.8"

    .line 250
    invoke-static {v0, v1, p2}, Lorg/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v4
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_70

    .line 251
    :try_start_4e
    sget-object p2, Lorg/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    .line 252
    invoke-virtual {p3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 251
    invoke-static {v4, v5, p2}, Lorg/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v2

    .line 253
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_null(J)V
    :try_end_61
    .catchall {:try_start_4e .. :try_end_61} :catchall_6e

    .line 255
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 256
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 257
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 258
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    goto :goto_83

    :catchall_6e
    move-exception p2

    goto :goto_76

    :catchall_70
    move-exception p2

    move-wide v4, v2

    goto :goto_76

    :catchall_73
    move-exception p2

    move-wide v0, v2

    move-wide v4, v0

    .line 255
    :goto_76
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 256
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 257
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 258
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw p2

    :cond_83
    :goto_83
    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 190
    :try_start_2
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->asn1_write_init()J

    move-result-wide v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_70
    .catchall {:try_start_2 .. :try_end_6} :catchall_6b

    .line 191
    :try_start_6
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_66
    .catchall {:try_start_6 .. :try_end_a} :catchall_61

    .line 192
    :try_start_a
    iget-object v6, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 193
    invoke-virtual {v7}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v7

    check-cast v7, Ljava/security/spec/MGF1ParameterSpec;

    .line 192
    invoke-static {v4, v5, v6, v7}, Lorg/conscrypt/OAEPParameters;->writeHashAndMgfHash(JLjava/lang/String;Ljava/security/spec/MGF1ParameterSpec;)V

    .line 194
    iget-object v6, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v6

    check-cast v6, Ljavax/crypto/spec/PSource$PSpecified;

    .line 196
    invoke-virtual {v6}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v7

    array-length v7, v7
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_28} :catch_5f
    .catchall {:try_start_a .. :try_end_28} :catchall_78

    if-eqz v7, :cond_54

    const/4 v7, 0x2

    .line 200
    :try_start_2b
    invoke-static {v4, v5, v7}, Lorg/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v7
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_48

    :try_start_2f
    const-string v9, "1.2.840.113549.1.1.9"

    .line 201
    invoke-static {v7, v8, v9}, Lorg/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v0

    .line 202
    invoke-virtual {v6}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v6

    invoke-static {v0, v1, v6}, Lorg/conscrypt/NativeCrypto;->asn1_write_octetstring(J[B)V
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_46

    .line 204
    :try_start_3c
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 205
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 206
    invoke-static {v7, v8}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    goto :goto_54

    :catchall_46
    move-exception v6

    goto :goto_4a

    :catchall_48
    move-exception v6

    move-wide v7, v0

    .line 204
    :goto_4a
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 205
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 206
    invoke-static {v7, v8}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw v6

    .line 209
    :cond_54
    :goto_54
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_finish(J)[B

    move-result-object v0
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_58} :catch_5f
    .catchall {:try_start_3c .. :try_end_58} :catchall_78

    .line 214
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 215
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    return-object v0

    :catch_5f
    move-exception v0

    goto :goto_74

    :catchall_61
    move-exception v4

    move-wide v10, v0

    move-object v0, v4

    move-wide v4, v10

    goto :goto_79

    :catch_66
    move-exception v4

    move-wide v10, v0

    move-object v0, v4

    move-wide v4, v10

    goto :goto_74

    :catchall_6b
    move-exception v2

    move-wide v4, v0

    move-object v0, v2

    move-wide v2, v4

    goto :goto_79

    :catch_70
    move-exception v2

    move-wide v4, v0

    move-object v0, v2

    move-wide v2, v4

    .line 211
    :goto_74
    :try_start_74
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_cleanup(J)V

    .line 212
    throw v0
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception v0

    .line 214
    :goto_79
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 215
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

    if-eqz p1, :cond_22

    const-string v0, "ASN.1"

    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_22

    .line 224
    :cond_b
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

    .line 222
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lorg/conscrypt/OAEPParameters;->engineGetEncoded()[B

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

    .line 178
    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    if-ne p1, v0, :cond_9

    .line 179
    iget-object p1, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    return-object p1

    .line 181
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

    .line 58
    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_9

    .line 59
    check-cast p1, Ljavax/crypto/spec/OAEPParameterSpec;

    iput-object p1, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    return-void

    .line 61
    :cond_9
    new-instance p1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v0, "Only OAEPParameterSpec is supported"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInit([B)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 70
    :try_start_2
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_init([B)J

    move-result-wide v2
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8a

    .line 71
    :try_start_6
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v4
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_88

    .line 72
    :try_start_a
    sget-object p1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    .line 73
    invoke-static {v4, v5}, Lorg/conscrypt/OAEPParameters;->readHash(J)Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-static {v4, v5}, Lorg/conscrypt/OAEPParameters;->readMgfHash(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    .line 75
    invoke-static {v4, v5, v8}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v8
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_85

    const-string v9, "Error reading ASN.1 encoding"

    if-eqz v8, :cond_5e

    .line 79
    :try_start_1d
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v10
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_55

    .line 80
    :try_start_21
    invoke-static {v10, v11}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v0

    .line 81
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_oid(J)Ljava/lang/String;

    move-result-object p1

    const-string v8, "1.2.840.113549.1.1.9"

    .line 82
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 85
    new-instance p1, Ljavax/crypto/spec/PSource$PSpecified;

    .line 86
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_octetstring(J)[B

    move-result-object v8

    invoke-direct {p1, v8}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    .line 87
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v8
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_53

    if-eqz v8, :cond_47

    .line 91
    :try_start_40
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 92
    invoke-static {v10, v11}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_85

    goto :goto_5e

    .line 88
    :cond_47
    :try_start_47
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_4d
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception p1

    goto :goto_57

    :catchall_55
    move-exception p1

    move-wide v10, v0

    .line 91
    :goto_57
    :try_start_57
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 92
    invoke-static {v10, v11}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw p1

    .line 96
    :cond_5e
    :goto_5e
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 97
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 100
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v1, "MGF1"

    new-instance v8, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v8, v7}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v1, v8, p1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    iput-object v0, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_78
    .catchall {:try_start_57 .. :try_end_78} :catchall_85

    .line 103
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 104
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    return-void

    .line 98
    :cond_7f
    :try_start_7f
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_85

    :catchall_85
    move-exception p1

    move-wide v0, v4

    goto :goto_8c

    :catchall_88
    move-exception p1

    goto :goto_8c

    :catchall_8a
    move-exception p1

    move-wide v2, v0

    .line 103
    :goto_8c
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 104
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

    if-eqz p2, :cond_22

    const-string v0, "ASN.1"

    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_22

    .line 113
    :cond_b
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

    .line 111
    :cond_22
    :goto_22
    invoke-virtual {p0, p1}, Lorg/conscrypt/OAEPParameters;->engineInit([B)V

    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .registers 2

    const-string v0, "Conscrypt OAEP AlgorithmParameters"

    return-object v0
.end method
