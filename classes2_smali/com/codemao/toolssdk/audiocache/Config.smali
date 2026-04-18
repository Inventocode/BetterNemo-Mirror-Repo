.class Lcom/codemao/toolssdk/audiocache/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field public final cacheRoot:Ljava/io/File;

.field public final diskUsage:Lcom/codemao/toolssdk/audiocache/file/DiskUsage;

.field public final fileNameGenerator:Lcom/codemao/toolssdk/audiocache/file/FileNameGenerator;

.field public final headerInjector:Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;

.field public final sourceInfoStorage:Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/codemao/toolssdk/audiocache/file/FileNameGenerator;Lcom/codemao/toolssdk/audiocache/file/DiskUsage;Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;)V
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/Config;->cacheRoot:Ljava/io/File;

    .line 25
    iput-object p2, p0, Lcom/codemao/toolssdk/audiocache/Config;->fileNameGenerator:Lcom/codemao/toolssdk/audiocache/file/FileNameGenerator;

    .line 26
    iput-object p3, p0, Lcom/codemao/toolssdk/audiocache/Config;->diskUsage:Lcom/codemao/toolssdk/audiocache/file/DiskUsage;

    .line 27
    iput-object p4, p0, Lcom/codemao/toolssdk/audiocache/Config;->sourceInfoStorage:Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;

    .line 28
    iput-object p5, p0, Lcom/codemao/toolssdk/audiocache/Config;->headerInjector:Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;

    return-void
.end method


# virtual methods
.method generateCacheFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 32
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/Config;->fileNameGenerator:Lcom/codemao/toolssdk/audiocache/file/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/audiocache/file/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/Config;->cacheRoot:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
