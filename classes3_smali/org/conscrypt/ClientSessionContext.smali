.class public final Lorg/conscrypt/ClientSessionContext;
.super Lorg/conscrypt/AbstractSessionContext;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ClientSessionContext$HostAndPort;
    }
.end annotation


# instance fields
.field private persistentCache:Lorg/conscrypt/SSLClientSessionCache;

.field private final sessionsByHostAndPort:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/conscrypt/ClientSessionContext$HostAndPort;",
            "Ljava/util/List<",
            "Lorg/conscrypt/NativeSslSession;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    .line 45
    invoke-direct {p0, v0}, Lorg/conscrypt/AbstractSessionContext;-><init>(I)V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    return-void
.end method

.method private getSession(Ljava/lang/String;I)Lorg/conscrypt/NativeSslSession;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 122
    :cond_4
    new-instance v1, Lorg/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v1, p1, p2}, Lorg/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 124
    iget-object v2, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v2

    .line 125
    :try_start_c
    iget-object v3, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_24

    .line 126
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_24

    const/4 v4, 0x0

    .line 127
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/conscrypt/NativeSslSession;

    goto :goto_25

    :cond_24
    move-object v3, v0

    .line 129
    :goto_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_4a

    if-eqz v3, :cond_2f

    .line 130
    invoke-virtual {v3}, Lorg/conscrypt/NativeSslSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2f

    return-object v3

    .line 137
    :cond_2f
    iget-object v2, p0, Lorg/conscrypt/ClientSessionContext;->persistentCache:Lorg/conscrypt/SSLClientSessionCache;

    if-eqz v2, :cond_49

    .line 138
    invoke-interface {v2, p1, p2}, Lorg/conscrypt/SSLClientSessionCache;->getSessionData(Ljava/lang/String;I)[B

    move-result-object v2

    if-eqz v2, :cond_49

    .line 140
    invoke-static {p0, v2, p1, p2}, Lorg/conscrypt/NativeSslSession;->newInstance(Lorg/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lorg/conscrypt/NativeSslSession;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 141
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->isValid()Z

    move-result p2

    if-eqz p2, :cond_49

    .line 142
    invoke-direct {p0, v1, p1}, Lorg/conscrypt/ClientSessionContext;->putSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V

    return-object p1

    :cond_49
    return-object v0

    :catchall_4a
    move-exception p1

    .line 129
    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method private putSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V
    .registers 8

    .line 152
    iget-object v0, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object v1, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_17

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v2, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_43

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/conscrypt/NativeSslSession;

    invoke-virtual {v3}, Lorg/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v3

    invoke-virtual {p2}, Lorg/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v4

    if-eq v3, v4, :cond_43

    .line 162
    :goto_2e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 163
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/conscrypt/NativeSslSession;

    invoke-virtual {p0, v3}, Lorg/conscrypt/AbstractSessionContext;->removeSession(Lorg/conscrypt/NativeSslSession;)V

    goto :goto_2e

    .line 167
    :cond_3e
    iget-object v2, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_43
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method private removeSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V
    .registers 5

    .line 174
    iget-object v0, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1b

    .line 177
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 179
    iget-object p2, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method


# virtual methods
.method declared-synchronized getCachedSession(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/NativeSslSession;
    .registers 11

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 62
    monitor-exit p0

    return-object v0

    .line 65
    :cond_6
    :try_start_6
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/ClientSessionContext;->getSession(Ljava/lang/String;I)Lorg/conscrypt/NativeSslSession;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_54

    if-nez p1, :cond_e

    .line 67
    monitor-exit p0

    return-object v0

    .line 70
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getProtocol()Ljava/lang/String;

    move-result-object p2

    .line 72
    iget-object v1, p3, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_17
    const/4 v5, 0x1

    if-ge v4, v2, :cond_27

    aget-object v6, v1, v4

    .line 73
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_54

    if-eqz v6, :cond_24

    const/4 p2, 0x1

    goto :goto_28

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_27
    const/4 p2, 0x0

    :goto_28
    if-nez p2, :cond_2c

    .line 79
    monitor-exit p0

    return-object v0

    .line 82
    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getCipherSuite()Ljava/lang/String;

    move-result-object p2

    .line 84
    invoke-virtual {p3}, Lorg/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p3

    array-length v1, p3

    const/4 v2, 0x0

    :goto_36
    if-ge v2, v1, :cond_45

    aget-object v4, p3, v2

    .line 85
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_54

    if-eqz v4, :cond_42

    const/4 v3, 0x1

    goto :goto_45

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_45
    :goto_45
    if-nez v3, :cond_49

    .line 91
    monitor-exit p0

    return-object v0

    .line 94
    :cond_49
    :try_start_49
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 95
    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractSessionContext;->removeSession(Lorg/conscrypt/NativeSslSession;)V
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_54

    .line 97
    :cond_52
    monitor-exit p0

    return-object p1

    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getSessionFromPersistentCache([B)Lorg/conscrypt/NativeSslSession;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method onBeforeAddSession(Lorg/conscrypt/NativeSslSession;)V
    .registers 5

    .line 187
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getPeerPort()I

    move-result v1

    if-nez v0, :cond_b

    return-void

    .line 193
    :cond_b
    new-instance v2, Lorg/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v2, v0, v1}, Lorg/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 194
    invoke-direct {p0, v2, p1}, Lorg/conscrypt/ClientSessionContext;->putSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V

    .line 197
    iget-object v0, p0, Lorg/conscrypt/ClientSessionContext;->persistentCache:Lorg/conscrypt/SSLClientSessionCache;

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 198
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->toBytes()[B

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 200
    iget-object v1, p0, Lorg/conscrypt/ClientSessionContext;->persistentCache:Lorg/conscrypt/SSLClientSessionCache;

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/conscrypt/SSLClientSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    :cond_2c
    return-void
.end method

.method onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V
    .registers 5

    .line 207
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 211
    :cond_7
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getPeerPort()I

    move-result v1

    .line 212
    new-instance v2, Lorg/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v2, v0, v1}, Lorg/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 213
    invoke-direct {p0, v2, p1}, Lorg/conscrypt/ClientSessionContext;->removeSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V

    return-void
.end method

.method public setPersistentCache(Lorg/conscrypt/SSLClientSessionCache;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lorg/conscrypt/ClientSessionContext;->persistentCache:Lorg/conscrypt/SSLClientSessionCache;

    return-void
.end method

.method size()I
    .registers 5

    .line 102
    iget-object v0, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object v1, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 104
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_e

    .line 106
    :cond_20
    monitor-exit v0

    return v2

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method
