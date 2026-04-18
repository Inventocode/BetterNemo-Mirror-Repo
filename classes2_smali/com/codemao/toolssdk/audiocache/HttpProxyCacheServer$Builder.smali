.class public final Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cacheRoot:Ljava/io/File;

.field private diskUsage:Lcom/codemao/toolssdk/audiocache/file/DiskUsage;

.field private fileNameGenerator:Lcom/codemao/toolssdk/audiocache/file/FileNameGenerator;

.field private headerInjector:Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;

.field private sourceInfoStorage:Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    invoke-static {p1}, Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorageFactory;->newSourceInfoStorage(Landroid/content/Context;)Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;->sourceInfoStorage:Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;

    .line 377
    invoke-static {p1}, Lcom/codemao/toolssdk/audiocache/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;->cacheRoot:Ljava/io/File;

    .line 378
    new-instance p1, Lcom/codemao/toolssdk/audiocache/file/TotalSizeLruDiskUsage;

    const-wide/32 v0, 0x20000000

    invoke-direct {p1, v0, v1}, Lcom/codemao/toolssdk/audiocache/file/TotalSizeLruDiskUsage;-><init>(J)V

    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;->diskUsage:Lcom/codemao/toolssdk/audiocache/file/DiskUsage;

    .line 379
    new-instance p1, Lcom/codemao/toolssdk/audiocache/file/Md5FileNameGenerator;

    invoke-direct {p1}, Lcom/codemao/toolssdk/audiocache/file/Md5FileNameGenerator;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;->fileNameGenerator:Lcom/codemao/toolssdk/audiocache/file/FileNameGenerator;

    .line 380
    new-instance p1, Lcom/codemao/toolssdk/audiocache/headers/EmptyHeadersInjector;

    invoke-direct {p1}, Lcom/codemao/toolssdk/audiocache/headers/EmptyHeadersInjector;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;->headerInjector:Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;

    return-void
.end method

.method private buildConfig()Lcom/codemao/toolssdk/audiocache/Config;
    .registers 8

    .line 473
    new-instance v6, Lcom/codemao/toolssdk/audiocache/Config;

    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;->cacheRoot:Ljava/io/File;

    iget-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;->fileNameGenerator:Lcom/codemao/toolssdk/audiocache/file/FileNameGenerator;

    iget-object v3, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;->diskUsage:Lcom/codemao/toolssdk/audiocache/file/DiskUsage;

    iget-object v4, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;->sourceInfoStorage:Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;

    iget-object v5, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;->headerInjector:Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/audiocache/Config;-><init>(Ljava/io/File;Lcom/codemao/toolssdk/audiocache/file/FileNameGenerator;Lcom/codemao/toolssdk/audiocache/file/DiskUsage;Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;)V

    return-object v6
.end method


# virtual methods
.method public build()Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;
    .registers 4

    .line 468
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;->buildConfig()Lcom/codemao/toolssdk/audiocache/Config;

    move-result-object v0

    .line 469
    new-instance v1, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;-><init>(Lcom/codemao/toolssdk/audiocache/Config;Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$1;)V

    return-object v1
.end method

.method public cacheDirectory(Ljava/io/File;)Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;
    .registers 2

    .line 396
    invoke-static {p1}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;->cacheRoot:Ljava/io/File;

    return-object p0
.end method
