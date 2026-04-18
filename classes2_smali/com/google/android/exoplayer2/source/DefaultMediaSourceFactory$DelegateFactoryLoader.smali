.class final Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelegateFactoryLoader"
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private drmHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

.field private drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

.field private final extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final mediaSourceFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/source/MediaSourceFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceFactorySuppliers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/source/MediaSourceFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private userAgent:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$IlmOOqWLChyzy_fdcHu6gKh-0_c(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$3(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zys7Fcgje0BjJDyMiyzrPubbrc8(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$2(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c8x7rtBlOYszlPM2-g-aORHqJt8(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$1(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gdERsPgH7r-Wu2Z9VR9CHROGEdY(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$4()Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k3rc5Z4CUbRPrN3p_fi-hs-vF0s(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$0(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .registers 3

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 482
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 483
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    .line 484
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    .line 485
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    return-void
.end method

.method private ensureAllSuppliersAreLoaded()V
    .registers 2

    const/4 v0, 0x0

    .line 580
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x1

    .line 581
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x2

    .line 582
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x3

    .line 583
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x4

    .line 584
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    return-void
.end method

.method private synthetic lambda$maybeLoadSupplier$0(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .registers 3

    .line 601
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$maybeLoadSupplier$1(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .registers 3

    .line 608
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$maybeLoadSupplier$2(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .registers 3

    .line 614
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$maybeLoadSupplier$3(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .registers 1

    .line 620
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$000(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$maybeLoadSupplier$4()Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .registers 4

    .line 624
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method private maybeLoadSupplier(I)Lcom/google/common/base/Supplier;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/source/MediaSourceFactory;",
            ">;"
        }
    .end annotation

    .line 589
    const-class v0, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 590
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Supplier;

    return-object p1

    :cond_1b
    const/4 v1, 0x0

    if-eqz p1, :cond_5e

    const/4 v2, 0x1

    if-eq p1, v2, :cond_50

    const/4 v2, 0x2

    if-eq p1, v2, :cond_42

    const/4 v2, 0x3

    if-eq p1, v2, :cond_32

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2b

    goto :goto_6c

    .line 623
    :cond_2b
    :try_start_2b
    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;)V

    move-object v1, v0

    goto :goto_6c

    .line 618
    :cond_32
    const-class v2, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;

    sget v3, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->$r8$clinit:I

    .line 619
    invoke-virtual {v2, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 620
    new-instance v2, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Class;)V

    goto :goto_6b

    :catch_40
    nop

    goto :goto_6c

    .line 612
    :cond_42
    const-class v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    sget v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->$r8$clinit:I

    .line 613
    invoke-virtual {v2, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 614
    new-instance v2, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Ljava/lang/Class;)V

    goto :goto_6b

    .line 605
    :cond_50
    const-class v2, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    sget v3, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->$r8$clinit:I

    .line 607
    invoke-virtual {v2, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 608
    new-instance v2, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Ljava/lang/Class;)V

    goto :goto_6b

    .line 599
    :cond_5e
    const-class v2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    sget v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->$r8$clinit:I

    .line 600
    invoke-virtual {v2, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 601
    new-instance v2, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Ljava/lang/Class;)V
    :try_end_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b .. :try_end_6b} :catch_40

    :goto_6b
    move-object v1, v2

    .line 632
    :goto_6c
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_80

    .line 634
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_80
    return-object v1
.end method


# virtual methods
.method public getMediaSourceFactory(I)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .registers 4

    .line 497
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    if-eqz v0, :cond_f

    return-object v0

    .line 502
    :cond_f
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    move-result-object v0

    if-nez v0, :cond_17

    const/4 p1, 0x0

    return-object p1

    .line 507
    :cond_17
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 508
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    if-eqz v1, :cond_24

    .line 509
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setDrmHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 511
    :cond_24
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->userAgent:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 512
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setDrmUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 514
    :cond_2b
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz v1, :cond_32

    .line 515
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setDrmSessionManager(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 517
    :cond_32
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    if-eqz v1, :cond_39

    .line 518
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 520
    :cond_39
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    if-eqz v1, :cond_40

    .line 521
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 523
    :cond_40
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->streamKeys:Ljava/util/List;

    if-eqz v1, :cond_47

    .line 524
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 526
    :cond_47
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getSupportedTypes()[I
    .registers 2

    .line 490
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->ensureAllSuppliersAreLoaded()V

    .line 491
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public setDrmHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V
    .registers 4

    .line 533
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    .line 534
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 535
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setDrmHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public setDrmSessionManager(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .registers 4

    .line 549
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 551
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setDrmSessionManager(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)V
    .registers 4

    .line 557
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 558
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 559
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public setDrmUserAgent(Ljava/lang/String;)V
    .registers 4

    .line 541
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->userAgent:Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 543
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setDrmUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)V
    .registers 4

    .line 565
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 566
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 567
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public setStreamKeys(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)V"
        }
    .end annotation

    .line 573
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->streamKeys:Ljava/util/List;

    .line 574
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 575
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    goto :goto_c

    :cond_1c
    return-void
.end method
