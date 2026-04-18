.class public final Lorg/conscrypt/TrustedCertificateIndex;
.super Ljava/lang/Object;
.source "TrustedCertificateIndex.java"


# instance fields
.field private final subjectToTrustAnchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List<",
            "Ljava/security/cert/TrustAnchor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    .line 46
    invoke-direct {p0, p1}, Lorg/conscrypt/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    return-void
.end method

.method private static findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/security/cert/TrustAnchor;"
        }
    .end annotation

    const-string v0, "X.509"

    .line 141
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    .line 142
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 145
    :try_start_16
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 147
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_25

    .line 149
    :cond_21
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 151
    :goto_25
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    return-object v1

    .line 156
    :cond_2c
    invoke-interface {v2}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 157
    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 158
    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 159
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 162
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_50} :catch_53

    if-eqz v2, :cond_a

    return-object v1

    :catch_53
    nop

    goto :goto_a

    :cond_55
    const/4 p0, 0x0

    return-object p0
.end method

.method private index(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 51
    invoke-virtual {p0, v0}, Lorg/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    goto :goto_4

    :cond_14
    return-void
.end method


# virtual methods
.method public findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v1

    .line 177
    :try_start_7
    iget-object v2, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_17

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 182
    :cond_17
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 183
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_47

    .line 186
    :try_start_2c
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 188
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    goto :goto_3b

    .line 190
    :cond_37
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    :goto_3b
    if-nez v4, :cond_3e

    goto :goto_20

    .line 195
    :cond_3e
    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 196
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_44} :catch_20
    .catchall {:try_start_2c .. :try_end_44} :catchall_47

    goto :goto_20

    .line 200
    :cond_45
    :try_start_45
    monitor-exit v1

    return-object v2

    :catchall_47
    move-exception p1

    .line 201
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 7

    .line 103
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v1

    .line 105
    :try_start_7
    iget-object v2, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 107
    monitor-exit v1

    return-object v2

    .line 110
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_3a

    .line 113
    :try_start_24
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 115
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    goto :goto_33

    .line 117
    :cond_2f
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 119
    :goto_33
    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_36} :catch_18
    .catchall {:try_start_24 .. :try_end_36} :catchall_3a

    .line 120
    :try_start_36
    monitor-exit v1

    return-object v3

    .line 124
    :cond_38
    monitor-exit v1

    return-object v2

    :catchall_3a
    move-exception p1

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 5

    .line 129
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v1

    .line 131
    :try_start_7
    iget-object v2, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_14

    const/4 p1, 0x0

    .line 133
    monitor-exit v1

    return-object p1

    .line 135
    :cond_14
    invoke-static {p1, v0}, Lorg/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_1a
    move-exception p1

    .line 136
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 4

    .line 56
    new-instance v0, Ljava/security/cert/TrustAnchor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 57
    invoke-virtual {p0, v0}, Lorg/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    return-object v0
.end method

.method public index(Ljava/security/cert/TrustAnchor;)V
    .registers 7

    .line 63
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 65
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    goto :goto_f

    .line 67
    :cond_b
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 70
    :goto_f
    iget-object v2, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v2

    .line 71
    :try_start_12
    iget-object v3, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_28

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    iget-object v0, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    :cond_28
    if-eqz v0, :cond_46

    .line 78
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/TrustAnchor;

    .line 79
    invoke-virtual {v4}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 80
    monitor-exit v2

    return-void

    .line 85
    :cond_46
    :goto_46
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    monitor-exit v2

    return-void

    :catchall_4b
    move-exception p1

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_12 .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method public reset()V
    .registers 3

    .line 90
    iget-object v0, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object v1, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 92
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public reset(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v0

    .line 97
    :try_start_3
    invoke-virtual {p0}, Lorg/conscrypt/TrustedCertificateIndex;->reset()V

    .line 98
    invoke-direct {p0, p1}, Lorg/conscrypt/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    .line 99
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method
