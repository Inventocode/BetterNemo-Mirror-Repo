.class public final Lcom/codemao/toolssdk/func/ToolsMediaPlayer;
.super Ljava/lang/Object;
.source "ToolsMediaPlayer.kt"

# interfaces
.implements Lcom/codemao/toolssdk/func/IMediaPlayer;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnsafeOptInUsageError"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/func/ToolsMediaPlayer$Companion;,
        Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToolsMediaPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToolsMediaPlayer.kt\ncom/codemao/toolssdk/func/ToolsMediaPlayer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,307:1\n1549#2:308\n1620#2,3:309\n1549#2:312\n1620#2,3:313\n1549#2:316\n1620#2,3:317\n*S KotlinDebug\n*F\n+ 1 ToolsMediaPlayer.kt\ncom/codemao/toolssdk/func/ToolsMediaPlayer\n*L\n218#1:308\n218#1:309,3\n231#1:312\n231#1:313,3\n233#1:316\n233#1:317,3\n*E\n"
.end annotation


# instance fields
.field private cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

.field private final cachePath:Ljava/lang/String;

.field private final cacheSize:J

.field private final context:Landroid/content/Context;

.field private exoListener:Lcom/google/android/exoplayer2/Player$Listener;

.field private player:Lcom/google/android/exoplayer2/Player;

.field private stateListener:Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "cachePath"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->context:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->cachePath:Ljava/lang/String;

    .line 27
    iput-wide p4, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->cacheSize:J

    .line 55
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->initPlayer()Lcom/google/android/exoplayer2/Player;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_6

    const-string p2, "temp"

    :cond_6
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_27

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/media_cache/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_27
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2f

    const-wide/32 p4, 0x2800000

    :cond_2f
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static final synthetic access$getPlayer$p(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;)Lcom/google/android/exoplayer2/Player;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method public static final synthetic access$getStateListener$p(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;)Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->stateListener:Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;

    return-object p0
.end method

.method private final getCache()Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    .registers 6

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 263
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->cachePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;

    iget-wide v3, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->cacheSize:J

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    .line 265
    new-instance v3, Lcom/google/android/exoplayer2/database/StandaloneDatabaseProvider;

    iget-object v4, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/database/StandaloneDatabaseProvider;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    :cond_1e
    iput-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 267
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-object v0

    :catch_24
    move-exception v0

    .line 269
    iget-object v1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->stateListener:Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;

    if-eqz v1, :cond_30

    const/16 v2, 0x9

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;->onStateChange(ILjava/lang/String;)V

    .line 270
    :cond_30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private final getMediaSourceFactory()Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .registers 4

    .line 276
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->getCache()Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 277
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    iget-object v2, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    .line 278
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setUpstreamDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object v0

    const-string v1, "Factory().setCache(it).s…reamFactory\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 282
    new-instance v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v1

    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method private final initPlayer()Lcom/google/android/exoplayer2/Player;
    .registers 6

    .line 59
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_46

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    iget-object v1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    iget-object v1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->cachePath:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    if-nez v1, :cond_26

    .line 63
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->getMediaSourceFactory()Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSourceFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    goto :goto_35

    .line 67
    :cond_26
    new-instance v1, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    iget-object v4, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSourceFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 70
    :cond_35
    :goto_35
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    const-string v1, "builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    .line 73
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 75
    iput-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    .line 77
    :cond_46
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic startPlay$default(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;Ljava/lang/String;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    const/4 p2, 0x1

    .line 148
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->startPlay(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;)V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->exoListener:Lcom/google/android/exoplayer2/Player$Listener;

    if-eqz v0, :cond_b

    .line 82
    iget-object v1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v1, :cond_b

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    :cond_b
    if-nez p1, :cond_e

    return-void

    .line 87
    :cond_e
    iput-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->stateListener:Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;

    .line 88
    iget-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->exoListener:Lcom/google/android/exoplayer2/Player$Listener;

    if-eqz p1, :cond_1b

    .line 89
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1b

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 91
    :cond_1b
    new-instance p1, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$addListener$3;

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$addListener$3;-><init>(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->exoListener:Lcom/google/android/exoplayer2/Player$Listener;

    .line 140
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_2c

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    :cond_2c
    return-void
.end method

.method public final deleteCacheFile()V
    .registers 3

    .line 289
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->cachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_16

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_16

    :catch_16
    :cond_16
    return-void
.end method

.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->stateListener:Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;

    return-void
.end method

.method public final getCurrentPosition()J
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method

.method public getCurrentPositionCompose()J
    .registers 3

    .line 252
    invoke-virtual {p0}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDuration()J
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method

.method public getDurationCompose()J
    .registers 3

    .line 243
    invoke-virtual {p0}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPlaying()Z
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public final prepare()V
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->prepare()V

    :cond_7
    return-void
.end method

.method public release()V
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    .line 257
    :cond_7
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->release()V

    :cond_e
    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public final resetMediaItem(Ljava/lang/String;)V
    .registers 9

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file:///android_asset/"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 211
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "file:///android_asset/"

    const-string v3, "asset:///"

    move-object v1, p1

    .line 212
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 214
    :cond_1c
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_2b

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    :cond_2b
    return-void
.end method

.method public start()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 159
    invoke-static {p0, v0, v1, v2, v0}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->startPlay$default(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final startPlay(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p1, :cond_5

    .line 150
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->resetMediaItem(Ljava/lang/String;)V

    :cond_5
    if-eqz p2, :cond_e

    .line 153
    iget-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 155
    :cond_e
    iget-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->play()V

    :cond_15
    return-void
.end method

.method public stop()V
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    :cond_7
    return-void
.end method
