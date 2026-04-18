.class public final Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "CreativeHttpLoggingInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;,
        Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private volatile level:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

.field private final logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 28
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    sget-object v0, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->DEFAULT:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;-><init>(Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;->NONE:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    iput-object v0, p0, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->level:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    .line 38
    iput-object p1, p0, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    return-void
.end method

.method private bodyHasUnknownEncoding(Lokhttp3/Headers;)Z
    .registers 3

    const-string v0, "Content-Encoding"

    .line 216
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    const-string v0, "identity"

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "gzip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method static isPlaintext(Lokio/Buffer;)Z
    .registers 9

    const/4 v0, 0x0

    .line 198
    :try_start_1
    new-instance v7, Lokio/Buffer;

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    .line 199
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x40

    cmp-long v5, v1, v3

    if-gez v5, :cond_16

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_17

    :cond_16
    move-wide v5, v3

    :goto_17
    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, v7

    .line 200
    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    const/4 p0, 0x0

    :goto_1f
    const/16 v1, 0x10

    if-ge p0, v1, :cond_3d

    .line 202
    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 203
    invoke-virtual {v7}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v1

    .line 204
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1
    :try_end_37
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_37} :catch_3f

    if-nez v1, :cond_3a

    return v0

    :cond_3a
    add-int/lit8 p0, p0, 0x1

    goto :goto_1f

    :cond_3d
    const/4 p0, 0x1

    return p0

    :catch_3f
    return v0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 55
    iget-object v2, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->level:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    .line 56
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v3

    .line 57
    sget-object v4, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;->NONE:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    if-ne v2, v4, :cond_13

    .line 58
    invoke-interface {v0, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0

    .line 60
    :cond_13
    sget-object v4, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;->BODY:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1a

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    :goto_1b
    if-nez v4, :cond_24

    .line 61
    sget-object v7, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;->HEADERS:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    if-ne v2, v7, :cond_22

    goto :goto_24

    :cond_22
    const/4 v2, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v2, 0x1

    .line 62
    :goto_25
    invoke-virtual {v3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v7

    if-eqz v7, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x0

    .line 64
    :goto_2d
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v8

    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ""

    if-eqz v8, :cond_68

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_69

    :cond_68
    move-object v8, v11

    :goto_69
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-byte body)"

    const-string v12, " ("

    if-nez v2, :cond_91

    if-eqz v5, :cond_91

    .line 67
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 70
    :cond_91
    iget-object v13, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    invoke-interface {v13, v8}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    const-string v8, "-byte body omitted)"

    const-string v13, ": "

    if-eqz v2, :cond_1ea

    if-eqz v5, :cond_e2

    .line 73
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v16

    if-eqz v16, :cond_be

    .line 74
    iget-object v6, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Content-Type: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 77
    :cond_be
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    const-wide/16 v17, -0x1

    cmp-long v6, v14, v17

    if-eqz v6, :cond_e2

    .line 78
    iget-object v6, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Content-Length: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 82
    :cond_e2
    invoke-virtual {v3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v6

    .line 85
    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v10

    const/4 v14, 0x0

    :goto_eb
    if-ge v14, v10, :cond_12a

    .line 86
    invoke-virtual {v6, v14}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v19, v10

    const-string v10, "Content-Type"

    .line 87
    invoke-virtual {v10, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_121

    const-string v10, "Content-Length"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_121

    .line 88
    iget-object v10, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    move/from16 v20, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_123

    :cond_121
    move/from16 v20, v2

    :goto_123
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v19

    move/from16 v2, v20

    goto :goto_eb

    :cond_12a
    move/from16 v20, v2

    const-string v2, "--> END "

    if-eqz v4, :cond_1d1

    if-eqz v5, :cond_1d1

    .line 93
    invoke-virtual {v3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->bodyHasUnknownEncoding(Lokhttp3/Headers;)Z

    move-result v5

    if-eqz v5, :cond_15b

    .line 94
    iget-object v5, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (encoded body omitted)"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_1ec

    .line 96
    :cond_15b
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 97
    invoke-virtual {v7, v5}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 98
    sget-object v6, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 99
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v10

    if-eqz v10, :cond_16f

    .line 101
    invoke-virtual {v10, v6}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 104
    :cond_16f
    iget-object v10, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    invoke-interface {v10, v11}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 105
    invoke-static {v5}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->isPlaintext(Lokio/Buffer;)Z

    move-result v10

    if-eqz v10, :cond_1a9

    .line 106
    iget-object v10, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    invoke-virtual {v5, v6}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 107
    iget-object v5, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_1ec

    .line 109
    :cond_1a9
    iget-object v5, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (binary "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_1ec

    .line 113
    :cond_1d1
    iget-object v5, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_1ec

    :cond_1ea
    move/from16 v20, v2

    .line 117
    :goto_1ec
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 121
    :try_start_1f0
    invoke-interface {v0, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_1f4} :catch_3d0

    .line 127
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v5

    invoke-virtual {v2, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 128
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    .line 129
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    const-wide/16 v14, -0x1

    cmp-long v10, v6, v14

    if-eqz v10, :cond_21f

    .line 130
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "-byte"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_221

    :cond_21f
    const-string v10, "unknown-length"

    .line 131
    :goto_221
    iget-object v14, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v9

    const-string v9, "<-- "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_246

    move-wide/from16 v18, v6

    move-object v7, v11

    const/16 v6, 0x20

    goto :goto_25d

    :cond_246
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v6

    const/16 v6, 0x20

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_25d
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v20, :cond_292

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " body"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_293

    :cond_292
    move-object v2, v11

    :goto_293
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    if-eqz v20, :cond_3cf

    .line 133
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_2ad
    if-ge v6, v3, :cond_2d1

    .line 137
    iget-object v7, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2ad

    :cond_2d1
    if-eqz v4, :cond_3c8

    .line 140
    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v3

    if-eqz v3, :cond_3c8

    .line 141
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->bodyHasUnknownEncoding(Lokhttp3/Headers;)Z

    move-result v3

    if-eqz v3, :cond_2ec

    .line 142
    iget-object v2, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    const-string v3, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v2, v3}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_3cf

    .line 144
    :cond_2ec
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v3

    const-wide v6, 0x7fffffffffffffffL

    .line 145
    invoke-interface {v3, v6, v7}, Lokio/BufferedSource;->request(J)Z

    .line 146
    invoke-interface {v3}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v3

    const-string v4, "Content-Encoding"

    .line 148
    invoke-virtual {v2, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "gzip"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_333

    .line 149
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 153
    :try_start_313
    new-instance v6, Lokio/GzipSource;

    invoke-virtual {v3}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v3

    invoke-direct {v6, v3}, Lokio/GzipSource;-><init>(Lokio/Source;)V
    :try_end_31c
    .catchall {:try_start_313 .. :try_end_31c} :catchall_32c

    .line 154
    :try_start_31c
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 155
    invoke-virtual {v3, v6}, Lokio/Buffer;->writeAll(Lokio/Source;)J
    :try_end_324
    .catchall {:try_start_31c .. :try_end_324} :catchall_329

    .line 158
    invoke-virtual {v6}, Lokio/GzipSource;->close()V

    move-object v4, v2

    goto :goto_333

    :catchall_329
    move-exception v0

    move-object v4, v6

    goto :goto_32d

    :catchall_32c
    move-exception v0

    :goto_32d
    if-eqz v4, :cond_332

    invoke-virtual {v4}, Lokio/GzipSource;->close()V

    .line 161
    :cond_332
    throw v0

    .line 164
    :cond_333
    :goto_333
    sget-object v2, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 165
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v5

    if-eqz v5, :cond_33f

    .line 167
    invoke-virtual {v5, v2}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 170
    :cond_33f
    invoke-static {v3}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->isPlaintext(Lokio/Buffer;)Z

    move-result v5

    if-nez v5, :cond_368

    .line 171
    iget-object v2, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    invoke-interface {v2, v11}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 172
    iget-object v2, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- END HTTP (binary "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    return-object v0

    :cond_368
    const-wide/16 v5, 0x0

    cmp-long v7, v18, v5

    if-eqz v7, :cond_380

    .line 177
    iget-object v5, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    invoke-interface {v5, v11}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 178
    iget-object v5, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    invoke-virtual {v3}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    :cond_380
    const-string v2, "<-- END HTTP ("

    if-eqz v4, :cond_3aa

    .line 182
    iget-object v5, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-byte, "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-gzipped-byte body)"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_3cf

    .line 184
    :cond_3aa
    iget-object v4, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_3cf

    .line 188
    :cond_3c8
    iget-object v2, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    const-string v3, "<-- END HTTP"

    invoke-interface {v2, v3}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    :cond_3cf
    :goto_3cf
    return-object v0

    :catch_3d0
    move-exception v0

    move-object v2, v0

    .line 123
    iget-object v0, v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->logger:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<-- HTTP FAILED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 124
    throw v2
.end method

.method public setLevel(Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;)Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;
    .registers 3

    const-string v0, "level == null. Use Level.NONE instead."

    .line 43
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->level:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    return-object p0
.end method
