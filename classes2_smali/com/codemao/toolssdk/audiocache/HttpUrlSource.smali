.class public Lcom/codemao/toolssdk/audiocache/HttpUrlSource;
.super Ljava/lang/Object;
.source "HttpUrlSource.java"

# interfaces
.implements Lcom/codemao/toolssdk/audiocache/Source;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private connection:Ljava/net/HttpURLConnection;

.field private final headerInjector:Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;

.field private inputStream:Ljava/io/InputStream;

.field private sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

.field private final sourceInfoStorage:Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "HttpUrlSource"

    .line 36
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/audiocache/HttpUrlSource;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iget-object v0, p1, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    .line 63
    iget-object v0, p1, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfoStorage:Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;

    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfoStorage:Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;

    .line 64
    iget-object p1, p1, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->headerInjector:Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;

    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->headerInjector:Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 46
    invoke-static {}, Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorageFactory;->newEmptySourceInfoStorage()Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;)V
    .registers 4

    .line 50
    new-instance v0, Lcom/codemao/toolssdk/audiocache/headers/EmptyHeadersInjector;

    invoke-direct {v0}, Lcom/codemao/toolssdk/audiocache/headers/EmptyHeadersInjector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;)V
    .registers 6

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p2}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;

    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfoStorage:Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;

    .line 55
    invoke-static {p3}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;

    iput-object p3, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->headerInjector:Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;

    .line 56
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;->get(Ljava/lang/String;)Lcom/codemao/toolssdk/audiocache/SourceInfo;

    move-result-object p2

    if-eqz p2, :cond_1a

    goto :goto_26

    .line 58
    :cond_1a
    new-instance p2, Lcom/codemao/toolssdk/audiocache/SourceInfo;

    const-wide/32 v0, -0x80000000

    invoke-static {p1}, Lcom/codemao/toolssdk/audiocache/ProxyCacheUtils;->getSupposablyMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, v1, p3}, Lcom/codemao/toolssdk/audiocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    :goto_26
    iput-object p2, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    return-void
.end method

.method private fetchContentInfo()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read content info from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v2, v2, Lcom/codemao/toolssdk/audiocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const/16 v3, 0x2710

    const/4 v4, 0x0

    .line 138
    :try_start_1f
    invoke-direct {p0, v1, v2, v3}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->openConnection(JI)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_68
    .catchall {:try_start_1f .. :try_end_23} :catchall_65

    .line 139
    :try_start_23
    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v2

    .line 140
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 142
    new-instance v6, Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v7, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v7, v7, Lcom/codemao/toolssdk/audiocache/SourceInfo;->url:Ljava/lang/String;

    invoke-direct {v6, v7, v2, v3, v5}, Lcom/codemao/toolssdk/audiocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v6, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    .line 143
    iget-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfoStorage:Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;

    iget-object v3, v6, Lcom/codemao/toolssdk/audiocache/SourceInfo;->url:Ljava/lang/String;

    invoke-interface {v2, v3, v6}, Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;->put(Ljava/lang/String;Lcom/codemao/toolssdk/audiocache/SourceInfo;)V

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source info fetched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_57} :catch_60
    .catchall {:try_start_23 .. :try_end_57} :catchall_5e

    .line 149
    invoke-static {v4}, Lcom/codemao/toolssdk/audiocache/ProxyCacheUtils;->close(Ljava/io/Closeable;)V

    .line 151
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_5e
    move-exception v0

    goto :goto_92

    :catch_60
    move-exception v0

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    goto :goto_6a

    :catchall_65
    move-exception v0

    move-object v1, v4

    goto :goto_92

    :catch_68
    move-exception v0

    move-object v1, v4

    .line 146
    :goto_6a
    :try_start_6a
    sget-object v2, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error fetching info from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v5, v5, Lcom/codemao/toolssdk/audiocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    new-instance v2, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;

    iget-object v3, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v3, v3, Lcom/codemao/toolssdk/audiocache/SourceInfo;->url:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_8e
    .catchall {:try_start_6a .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception v0

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    .line 149
    :goto_92
    invoke-static {v4}, Lcom/codemao/toolssdk/audiocache/ProxyCacheUtils;->close(Ljava/io/Closeable;)V

    if-eqz v1, :cond_9a

    .line 151
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 153
    :cond_9a
    throw v0
.end method

.method private getContentLength(Ljava/net/HttpURLConnection;)J
    .registers 4

    const-string v0, "Content-Length"

    .line 96
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    const-wide/16 v0, -0x1

    goto :goto_f

    .line 97
    :cond_b
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_f
    return-wide v0
.end method

.method private injectCustomHeaders(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 5

    .line 187
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->headerInjector:Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;

    invoke-interface {v0, p2}, Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;->addHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 188
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2a
    return-void
.end method

.method private openConnection(JI)Ljava/net/HttpURLConnection;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v0, v0, Lcom/codemao/toolssdk/audiocache/SourceInfo;->url:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 162
    :cond_6
    sget-object v3, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-lez v7, :cond_2a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " with offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2c

    :cond_2a
    const-string v5, ""

    :goto_2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 163
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 164
    invoke-direct {p0, v3, v0}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->injectCustomHeaders(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    if-lez v7, :cond_69

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Range"

    invoke-virtual {v3, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    if-lez p3, :cond_71

    .line 169
    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 170
    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 172
    :cond_71
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_84

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_84

    const/16 v5, 0x12f

    if-ne v4, v5, :cond_82

    goto :goto_84

    :cond_82
    const/4 v4, 0x0

    goto :goto_85

    :cond_84
    :goto_84
    const/4 v4, 0x1

    :goto_85
    if-eqz v4, :cond_92

    const-string v0, "Location"

    .line 175
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    .line 177
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_92
    const/4 v5, 0x5

    if-gt v2, v5, :cond_98

    if-nez v4, :cond_6

    return-object v3

    .line 180
    :cond_98
    new-instance p1, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many redirects: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readSourceAvailableBytes(Ljava/net/HttpURLConnection;JI)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    const/16 p1, 0xc8

    if-ne p4, p1, :cond_9

    goto :goto_13

    :cond_9
    const/16 p1, 0xce

    if-ne p4, p1, :cond_f

    add-long/2addr v0, p2

    goto :goto_13

    .line 92
    :cond_f
    iget-object p1, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-wide v0, p1, Lcom/codemao/toolssdk/audiocache/SourceInfo;->length:J

    :goto_13
    return-wide v0
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1c

    .line 104
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_7} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_11
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_1c

    :catch_8
    move-exception v0

    .line 112
    sget-object v1, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :("

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c

    :catch_11
    move-exception v0

    goto :goto_14

    :catch_13
    move-exception v0

    .line 110
    :goto_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Wait... but why? WTF!? Really shouldn\'t happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1c
    :goto_1c
    return-void
.end method

.method public declared-synchronized getMime()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 194
    :try_start_1
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v0, v0, Lcom/codemao/toolssdk/audiocache/SourceInfo;->mime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 195
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->fetchContentInfo()V

    .line 197
    :cond_e
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v0, v0, Lcom/codemao/toolssdk/audiocache/SourceInfo;->mime:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v0, v0, Lcom/codemao/toolssdk/audiocache/SourceInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized length()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-wide v0, v0, Lcom/codemao/toolssdk/audiocache/SourceInfo;->length:J

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    .line 70
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->fetchContentInfo()V

    .line 72
    :cond_f
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-wide v0, v0, Lcom/codemao/toolssdk/audiocache/SourceInfo;->length:J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-wide v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public open(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 78
    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->openConnection(JI)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    .line 79
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->inputStream:Ljava/io/InputStream;

    .line 81
    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->readSourceAvailableBytes(Ljava/net/HttpURLConnection;JI)J

    move-result-wide v1

    .line 82
    new-instance v3, Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v4, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v4, v4, Lcom/codemao/toolssdk/audiocache/SourceInfo;->url:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/codemao/toolssdk/audiocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v3, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    .line 83
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfoStorage:Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;

    iget-object v1, v3, Lcom/codemao/toolssdk/audiocache/SourceInfo;->url:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;->put(Ljava/lang/String;Lcom/codemao/toolssdk/audiocache/SourceInfo;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception v0

    .line 85
    new-instance v1, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v3, v3, Lcom/codemao/toolssdk/audiocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read([B)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->inputStream:Ljava/io/InputStream;

    const-string v1, "Error reading data from "

    if-eqz v0, :cond_48

    const/4 v2, 0x0

    .line 125
    :try_start_7
    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_c
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_c} :catch_27
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_d

    return p1

    :catch_d
    move-exception p1

    .line 129
    new-instance v0, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v1, v1, Lcom/codemao/toolssdk/audiocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_27
    move-exception p1

    .line 127
    new-instance v0, Lcom/codemao/toolssdk/audiocache/InterruptedProxyCacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v2, v2, Lcom/codemao/toolssdk/audiocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/codemao/toolssdk/audiocache/InterruptedProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 122
    :cond_48
    new-instance p1, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    iget-object v1, v1, Lcom/codemao/toolssdk/audiocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": connection is absent!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpUrlSource{sourceInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->sourceInfo:Lcom/codemao/toolssdk/audiocache/SourceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
