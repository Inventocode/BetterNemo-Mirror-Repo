.class abstract Lorg/conscrypt/AbstractSessionContext;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# static fields
.field private static final DEFAULT_SESSION_TIMEOUT_SECONDS:I = 0x7080


# instance fields
.field private volatile maximumSize:I

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/conscrypt/ByteArray;",
            "Lorg/conscrypt/NativeSslSession;",
            ">;"
        }
    .end annotation
.end field

.field final sslCtxNativePointer:J

.field private volatile timeout:I


# direct methods
.method constructor <init>(I)V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7080

    .line 40
    iput v0, p0, Lorg/conscrypt/AbstractSessionContext;->timeout:I

    .line 42
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->SSL_CTX_new()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    .line 44
    new-instance v0, Lorg/conscrypt/AbstractSessionContext$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/AbstractSessionContext$1;-><init>(Lorg/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    .line 67
    iput p1, p0, Lorg/conscrypt/AbstractSessionContext;->maximumSize:I

    return-void
.end method

.method static synthetic access$000(Lorg/conscrypt/AbstractSessionContext;)I
    .registers 1

    .line 31
    iget p0, p0, Lorg/conscrypt/AbstractSessionContext;->maximumSize:I

    return p0
.end method

.method private trimToSize()V
    .registers 5

    .line 291
    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    .line 292
    :try_start_3
    iget-object v1, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 293
    iget v2, p0, Lorg/conscrypt/AbstractSessionContext;->maximumSize:I

    if-le v1, v2, :cond_2c

    .line 294
    iget v2, p0, Lorg/conscrypt/AbstractSessionContext;->maximumSize:I

    sub-int/2addr v1, v2

    .line 295
    iget-object v2, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_2c

    .line 297
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/NativeSslSession;

    .line 298
    invoke-virtual {p0, v1}, Lorg/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V

    .line 299
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v1, v3

    goto :goto_1a

    .line 302
    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method


# virtual methods
.method final cacheSession(Lorg/conscrypt/NativeSslSession;)V
    .registers 5

    .line 203
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getId()[B

    move-result-object v0

    if-eqz v0, :cond_32

    .line 204
    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_32

    .line 208
    :cond_a
    iget-object v1, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 209
    :try_start_d
    new-instance v2, Lorg/conscrypt/ByteArray;

    invoke-direct {v2, v0}, Lorg/conscrypt/ByteArray;-><init>([B)V

    .line 210
    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 211
    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/NativeSslSession;

    invoke-virtual {p0, v0}, Lorg/conscrypt/AbstractSessionContext;->removeSession(Lorg/conscrypt/NativeSslSession;)V

    .line 214
    :cond_25
    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractSessionContext;->onBeforeAddSession(Lorg/conscrypt/NativeSslSession;)V

    .line 216
    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    monitor-exit v1

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    :goto_32
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 193
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_CTX_free(JLorg/conscrypt/AbstractSessionContext;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 195
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getIds()Ljava/util/Enumeration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    .line 79
    :try_start_3
    iget-object v1, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lorg/conscrypt/NativeSslSession;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 81
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_24

    .line 82
    new-instance v0, Lorg/conscrypt/AbstractSessionContext$2;

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/AbstractSessionContext$2;-><init>(Lorg/conscrypt/AbstractSessionContext;Ljava/util/Iterator;)V

    return-object v0

    :catchall_24
    move-exception v1

    .line 81
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public final getSession([B)Ljavax/net/ssl/SSLSession;
    .registers 4

    const-string v0, "sessionId"

    .line 120
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    new-instance v0, Lorg/conscrypt/ByteArray;

    invoke-direct {v0, p1}, Lorg/conscrypt/ByteArray;-><init>([B)V

    .line 124
    iget-object p1, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter p1

    .line 125
    :try_start_d
    iget-object v1, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/NativeSslSession;

    .line 126
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_25

    if-eqz v0, :cond_23

    .line 127
    invoke-virtual {v0}, Lorg/conscrypt/NativeSslSession;->isValid()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 128
    invoke-virtual {v0}, Lorg/conscrypt/NativeSslSession;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    return-object p1

    :cond_23
    const/4 p1, 0x0

    return-object p1

    :catchall_25
    move-exception v0

    .line 126
    :try_start_26
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public final getSessionCacheSize()I
    .registers 2

    .line 135
    iget v0, p0, Lorg/conscrypt/AbstractSessionContext;->maximumSize:I

    return v0
.end method

.method final getSessionFromCache([B)Lorg/conscrypt/NativeSslSession;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 248
    :cond_4
    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    .line 249
    :try_start_7
    iget-object v1, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    new-instance v2, Lorg/conscrypt/ByteArray;

    invoke-direct {v2, p1}, Lorg/conscrypt/ByteArray;-><init>([B)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/NativeSslSession;

    .line 250
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_2c

    if-eqz v1, :cond_27

    .line 251
    invoke-virtual {v1}, Lorg/conscrypt/NativeSslSession;->isValid()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 252
    invoke-virtual {v1}, Lorg/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 253
    invoke-virtual {p0, v1}, Lorg/conscrypt/AbstractSessionContext;->removeSession(Lorg/conscrypt/NativeSslSession;)V

    :cond_26
    return-object v1

    .line 261
    :cond_27
    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractSessionContext;->getSessionFromPersistentCache([B)Lorg/conscrypt/NativeSslSession;

    move-result-object p1

    return-object p1

    :catchall_2c
    move-exception p1

    .line 250
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method abstract getSessionFromPersistentCache([B)Lorg/conscrypt/NativeSslSession;
.end method

.method public final getSessionTimeout()I
    .registers 2

    .line 140
    iget v0, p0, Lorg/conscrypt/AbstractSessionContext;->timeout:I

    return v0
.end method

.method abstract onBeforeAddSession(Lorg/conscrypt/NativeSslSession;)V
.end method

.method abstract onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V
.end method

.method final removeSession(Lorg/conscrypt/NativeSslSession;)V
    .registers 4

    .line 224
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getId()[B

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 225
    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_1f

    .line 229
    :cond_a
    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V

    .line 231
    new-instance p1, Lorg/conscrypt/ByteArray;

    invoke-direct {p1, v0}, Lorg/conscrypt/ByteArray;-><init>([B)V

    .line 232
    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    .line 233
    :try_start_15
    iget-object v1, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw p1

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final setSessionCacheSize(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_c

    .line 181
    iget v0, p0, Lorg/conscrypt/AbstractSessionContext;->maximumSize:I

    .line 182
    iput p1, p0, Lorg/conscrypt/AbstractSessionContext;->maximumSize:I

    if-ge p1, v0, :cond_b

    .line 186
    invoke-direct {p0}, Lorg/conscrypt/AbstractSessionContext;->trimToSize()V

    :cond_b
    return-void

    .line 178
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSessionTimeout(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_40

    .line 149
    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    .line 151
    :try_start_5
    iput p1, p0, Lorg/conscrypt/AbstractSessionContext;->timeout:I

    if-lez p1, :cond_10

    .line 156
    iget-wide v1, p0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    int-to-long v3, p1

    invoke-static {v1, v2, p0, v3, v4}, Lorg/conscrypt/NativeCrypto;->SSL_CTX_set_timeout(JLorg/conscrypt/AbstractSessionContext;J)J

    goto :goto_18

    .line 158
    :cond_10
    iget-wide v1, p0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    const-wide/32 v3, 0x7fffffff

    invoke-static {v1, v2, p0, v3, v4}, Lorg/conscrypt/NativeCrypto;->SSL_CTX_set_timeout(JLorg/conscrypt/AbstractSessionContext;J)J

    .line 161
    :goto_18
    iget-object p1, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 162
    :cond_22
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 163
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/NativeSslSession;

    .line 166
    invoke-virtual {v1}, Lorg/conscrypt/NativeSslSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_22

    .line 168
    invoke-virtual {p0, v1}, Lorg/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V

    .line 169
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    .line 172
    :cond_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3d

    throw p1

    .line 146
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "seconds < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
