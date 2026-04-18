.class Lorg/conscrypt/KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "KeyManagerImpl.java"


# instance fields
.field private final hash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/security/KeyStore;[C)V
    .registers 8

    .line 58
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    .line 62
    :try_start_a
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_e
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_e} :catch_46

    .line 66
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 67
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    :try_start_1a
    const-class v2, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1, v1, v2}, Ljava/security/KeyStore;->entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2
    :try_end_20
    .catch Ljava/security/KeyStoreException; {:try_start_1a .. :try_end_20} :catch_44
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1a .. :try_end_20} :catch_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_20} :catch_44

    if-eqz v2, :cond_e

    .line 72
    :try_start_22
    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v2, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 73
    invoke-virtual {p1, v1, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;
    :try_end_2d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_22 .. :try_end_2d} :catch_2e
    .catch Ljava/security/KeyStoreException; {:try_start_22 .. :try_end_2d} :catch_44
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_22 .. :try_end_2d} :catch_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_2d} :catch_44

    goto :goto_3e

    .line 77
    :catch_2e
    :try_start_2e
    invoke-virtual {p1, v1, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    .line 78
    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 79
    new-instance v4, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-direct {v4, v2, v3}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    move-object v2, v4

    .line 81
    :goto_3e
    iget-object v3, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/security/KeyStoreException; {:try_start_2e .. :try_end_43} :catch_44
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_2e .. :try_end_43} :catch_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2e .. :try_end_43} :catch_44

    goto :goto_e

    :catch_44
    nop

    goto :goto_e

    :catch_46
    :cond_46
    return-void
.end method

.method private chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v0, :cond_cd

    .line 158
    array-length v3, v0

    if-nez v3, :cond_b

    goto/16 :goto_cd

    :cond_b
    if-nez v1, :cond_f

    const/4 v3, 0x0

    goto :goto_13

    .line 161
    :cond_f
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 162
    :goto_13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, p0

    .line 163
    iget-object v6, v5, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 165
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v7}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v7

    const/4 v9, 0x0

    .line 166
    aget-object v10, v7, v9

    .line 167
    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-interface {v11}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    .line 168
    instance-of v12, v10, Ljava/security/cert/X509Certificate;

    if-eqz v12, :cond_5c

    .line 169
    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    goto :goto_5d

    :cond_5c
    const/4 v10, 0x0

    .line 171
    :goto_5d
    array-length v12, v0

    const/4 v13, 0x0

    :goto_5f
    if-ge v13, v12, :cond_24

    aget-object v14, v0, v13

    if-nez v14, :cond_66

    goto :goto_b4

    :cond_66
    const/16 v15, 0x5f

    .line 177
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/4 v2, -0x1

    if-ne v15, v2, :cond_71

    const/4 v2, 0x0

    goto :goto_7b

    :cond_71
    add-int/lit8 v2, v15, 0x1

    .line 181
    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v14, v9, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 185
    :goto_7b
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_82

    goto :goto_b4

    :cond_82
    if-eqz v2, :cond_8d

    if-eqz v10, :cond_8d

    .line 196
    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8d

    goto :goto_b4

    :cond_8d
    if-eqz v1, :cond_b1

    .line 200
    array-length v2, v1

    if-nez v2, :cond_93

    goto :goto_b1

    .line 205
    :cond_93
    array-length v2, v7

    const/4 v14, 0x0

    :goto_95
    if-ge v14, v2, :cond_b4

    aget-object v15, v7, v14

    .line 206
    instance-of v9, v15, Ljava/security/cert/X509Certificate;

    if-nez v9, :cond_9e

    goto :goto_ad

    .line 210
    :cond_9e
    check-cast v15, Ljava/security/cert/X509Certificate;

    .line 219
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    .line 220
    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad

    .line 221
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ad
    :goto_ad
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_95

    .line 201
    :cond_b1
    :goto_b1
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b4
    :goto_b4
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x0

    goto :goto_5f

    .line 226
    :cond_b8
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cb

    .line 227
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_cb
    const/4 v0, 0x0

    return-object v0

    :cond_cd
    :goto_cd
    move-object/from16 v5, p0

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 4

    .line 95
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_b

    :cond_8
    const/4 p2, 0x0

    .line 96
    aget-object p1, p1, p2

    :goto_b
    return-object p1
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 4

    .line 147
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_b

    :cond_8
    const/4 p2, 0x0

    .line 148
    aget-object p1, p1, p2

    :goto_b
    return-object p1
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 5

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    .line 153
    invoke-direct {p0, p3, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_10

    .line 154
    :cond_e
    aget-object p1, p1, v0

    :goto_10
    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 5

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    .line 101
    invoke-direct {p0, p3, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_10

    .line 102
    :cond_e
    aget-object p1, p1, v0

    :goto_10
    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 110
    :cond_4
    iget-object v1, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 111
    iget-object v1, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object p1

    const/4 v1, 0x0

    .line 112
    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_2e

    .line 113
    array-length v0, p1

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 114
    :goto_22
    array-length v2, p1

    if-ge v1, v2, :cond_2e

    .line 115
    aget-object v2, p1, v1

    check-cast v2, Ljava/security/cert/X509Certificate;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_2e
    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 126
    invoke-direct {p0, v0, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 139
    :cond_4
    iget-object v1, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 140
    iget-object v0, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    :cond_19
    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 131
    invoke-direct {p0, v0, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
