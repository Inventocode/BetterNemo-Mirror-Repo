.class public Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;
.super Ljava/lang/Object;
.source "HttpProxyCacheUtil.java"


# static fields
.field private static applicationContext:Landroid/content/Context;

.field private static audioProxy:Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;


# direct methods
.method private static deleteFile(Ljava/io/File;)V
    .registers 5

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 58
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_28

    .line 60
    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 61
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 63
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    .line 64
    invoke-static {v3}, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 68
    :cond_28
    :goto_28
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_2b
    return-void
.end method

.method public static destroy()V
    .registers 2

    .line 42
    sget-object v0, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->audioProxy:Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 43
    invoke-virtual {v0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->shutdown()V

    .line 44
    sget-object v0, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->audioProxy:Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->setListener(Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$ErrorListener;)V

    .line 46
    :cond_d
    sput-object v1, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->audioProxy:Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 16
    sget-object v0, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->audioProxy:Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;

    if-nez v0, :cond_f

    if-eqz p0, :cond_f

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->applicationContext:Landroid/content/Context;

    .line 19
    invoke-static {}, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->initAudioProxy()V

    :cond_f
    return-void
.end method

.method private static initAudioProxy()V
    .registers 3

    .line 25
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/tools_sdk/audio_cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 29
    :cond_29
    new-instance v1, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;

    sget-object v2, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;->cacheDirectory(Ljava/io/File;)Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;->build()Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->audioProxy:Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;

    return-void
.end method

.method public static removeAudioCacheFiles(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_23

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/tools_sdk/audio_cache/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->deleteFile(Ljava/io/File;)V

    :cond_23
    return-void
.end method
