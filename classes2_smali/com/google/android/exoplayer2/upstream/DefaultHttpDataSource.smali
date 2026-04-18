.class public Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40

.field private static final HTTP_STATUS_PERMANENT_REDIRECT:I = 0x134

.field private static final HTTP_STATUS_TEMPORARY_REDIRECT:I = 0x133

.field private static final MAX_BYTES_TO_DRAIN:J = 0x800L

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DefaultHttpDataSource"


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private bytesRead:J

.field private bytesToRead:J

.field private final connectTimeoutMillis:I

.field private connection:Ljava/net/HttpURLConnection;

.field private contentTypePredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private inputStream:Ljava/io/InputStream;

.field private final keepPostFor302Redirects:Z

.field private opened:Z

.field private final readTimeoutMillis:I

.field private final requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private responseCode:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1f40

    .line 231
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1f40

    .line 238
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 246
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 262
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 280
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 281
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    .line 282
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    .line 283
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    .line 284
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 285
    iput-object p5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 286
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    .line 287
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 288
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;ZLcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$1;)V
    .registers 9

    .line 59
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V

    return-void
.end method

.method private closeConnectionQuietly()V
    .registers 4

    .line 804
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_13

    .line 806
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 808
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    const/4 v0, 0x0

    .line 810
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    :cond_13
    return-void
.end method

.method private handleRedirect(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/URL;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x7d1

    if-eqz p2, :cond_88

    .line 654
    :try_start_5
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_a} :catch_81

    .line 664
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v3, "https"

    .line 665
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string v3, "http"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 666
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const-string v2, "Unsupported protocol redirect: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_36

    :cond_31
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_36
    invoke-direct {p1, p2, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw p1

    .line 672
    :cond_3a
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v3, :cond_80

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_80

    .line 673
    :cond_49
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 675
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x29

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Disallowed cross-protocol redirect ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v2

    :cond_80
    :goto_80
    return-object v2

    :catch_81
    move-exception p1

    .line 656
    new-instance p2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {p2, p1, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw p2

    .line 645
    :cond_88
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const-string p2, "Null location redirect"

    invoke-direct {p1, p2, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw p1
.end method

.method private static isCompressed(Ljava/net/HttpURLConnection;)Z
    .registers 2

    const-string v0, "Content-Encoding"

    .line 815
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "gzip"

    .line 816
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private makeConnection(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/HttpURLConnection;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 493
    new-instance v1, Ljava/net/URL;

    iget-object v0, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 494
    iget v2, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    .line 495
    iget-object v3, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    .line 496
    iget-wide v13, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 497
    iget-wide v9, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const/4 v15, 0x1

    .line 498
    invoke-virtual {v12, v15}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v16

    .line 500
    iget-boolean v0, v11, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v0, :cond_34

    iget-boolean v0, v11, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    if-nez v0, :cond_34

    const/4 v15, 0x1

    .line 503
    iget-object v12, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    move-object/from16 v0, p0

    move-wide v4, v13

    move-wide v6, v9

    move/from16 v8, v16

    move v9, v15

    move-object v10, v12

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_34
    const/16 v17, 0x0

    move-object v8, v1

    move v6, v2

    move-object/from16 v18, v3

    const/4 v0, 0x0

    :goto_3b
    add-int/lit8 v7, v0, 0x1

    const/16 v1, 0x14

    if-gt v0, v1, :cond_bf

    const/16 v19, 0x0

    .line 518
    iget-object v4, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v6

    move-object/from16 v3, v18

    move-object/from16 v20, v4

    move-wide v4, v13

    move v15, v6

    move-wide/from16 v21, v13

    move v13, v7

    move-wide v6, v9

    move-object v14, v8

    move/from16 v8, v16

    move-wide/from16 v23, v9

    move/from16 v9, v19

    move-object/from16 v10, v20

    .line 519
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const-string v2, "Location"

    .line 529
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12f

    const/16 v4, 0x12d

    const/16 v5, 0x12c

    const/16 v6, 0x12e

    const/4 v7, 0x1

    if-eq v15, v7, :cond_78

    const/4 v7, 0x3

    if-ne v15, v7, :cond_89

    :cond_78
    if-eq v1, v5, :cond_ae

    if-eq v1, v4, :cond_ae

    if-eq v1, v6, :cond_ae

    if-eq v1, v3, :cond_ae

    const/16 v7, 0x133

    if-eq v1, v7, :cond_ae

    const/16 v7, 0x134

    if-ne v1, v7, :cond_89

    goto :goto_ae

    :cond_89
    const/4 v7, 0x2

    if-ne v15, v7, :cond_ad

    if-eq v1, v5, :cond_94

    if-eq v1, v4, :cond_94

    if-eq v1, v6, :cond_94

    if-ne v1, v3, :cond_ad

    .line 544
    :cond_94
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 545
    iget-boolean v0, v11, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    if-eqz v0, :cond_9f

    if-ne v1, v6, :cond_9f

    const/4 v7, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v7, 0x0

    :goto_a0
    if-nez v7, :cond_a6

    const/16 v18, 0x0

    const/4 v6, 0x1

    goto :goto_a7

    :cond_a6
    move v6, v15

    .line 552
    :goto_a7
    invoke-direct {v11, v14, v2, v12}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/URL;

    move-result-object v0

    move-object v8, v0

    goto :goto_b7

    :cond_ad
    return-object v0

    .line 537
    :cond_ae
    :goto_ae
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 538
    invoke-direct {v11, v14, v2, v12}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/URL;

    move-result-object v0

    move-object v8, v0

    move v6, v15

    :goto_b7
    move v0, v13

    move-wide/from16 v13, v21

    move-wide/from16 v9, v23

    const/4 v15, 0x1

    goto/16 :goto_3b

    :cond_bf
    move v13, v7

    .line 559
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v1, Ljava/net/NoRouteToHostException;

    const/16 v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Too many redirects: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v0
.end method

.method private makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 589
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 590
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 592
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 593
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    if-eqz v1, :cond_1e

    .line 594
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 596
    :cond_1e
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 597
    invoke-interface {v0, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 599
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p10

    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p10

    :goto_32
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 600
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 603
    :cond_4e
    invoke-static {p4, p5, p6, p7}, Lcom/google/android/exoplayer2/upstream/HttpUtil;->buildRangeRequestHeader(JJ)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_59

    const-string p5, "Range"

    .line 605
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :cond_59
    iget-object p4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    if-eqz p4, :cond_62

    const-string p5, "User-Agent"

    .line 608
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    if-eqz p8, :cond_67

    const-string p4, "gzip"

    goto :goto_69

    :cond_67
    const-string p4, "identity"

    :goto_69
    const-string p5, "Accept-Encoding"

    .line 610
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_75

    const/4 p4, 0x1

    goto :goto_76

    :cond_75
    const/4 p4, 0x0

    .line 612
    :goto_76
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 613
    invoke-static {p2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_94

    .line 616
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 617
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 618
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 619
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 620
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_97

    .line 622
    :cond_94
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_97
    return-object p1
.end method

.method private static maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    .registers 6

    if-eqz p0, :cond_5e

    .line 769
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_5e

    const/16 v1, 0x14

    if-le v0, v1, :cond_d

    goto :goto_5e

    .line 774
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1f

    .line 777
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_26

    return-void

    :cond_1f
    const-wide/16 v0, 0x800

    cmp-long v2, p1, v0

    if-gtz v2, :cond_26

    return-void

    .line 785
    :cond_26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 786
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3e

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 788
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 789
    :cond_3e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 791
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 792
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p2, v0, [Ljava/lang/Object;

    .line 793
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5e} :catch_5e

    :catch_5e
    :cond_5e
    :goto_5e
    return-void
.end method

.method private readInternal([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 738
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1d

    .line 739
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_17

    return v4

    :cond_17
    int-to-long v2, p3

    .line 743
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 746
    :cond_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_2c

    return v4

    .line 751
    :cond_2c
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 752
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->bytesTransferred(I)V

    return p1
.end method

.method private skipFully(JLcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-void

    :cond_7
    const/16 v2, 0x1000

    new-array v3, v2, [B

    :goto_b
    cmp-long v4, p1, v0

    if-lez v4, :cond_4b

    int-to-long v4, v2

    .line 700
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 701
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 702
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3e

    const/4 v5, -0x1

    if-eq v4, v5, :cond_36

    int-to-long v5, v4

    sub-long/2addr p1, v5

    .line 716
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->bytesTransferred(I)V

    goto :goto_b

    .line 710
    :cond_36
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const/16 p2, 0x7d8

    invoke-direct {p1, p3, p2, v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw p1

    .line 703
    :cond_3e
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 v0, 0x7d0

    invoke-direct {p1, p2, p3, v0, v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw p1

    :cond_4b
    return-void
.end method


# virtual methods
.method public clearAllRequestProperties()V
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->clear()V

    return-void
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .registers 3

    .line 325
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 466
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_2e

    .line 469
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_f

    goto :goto_13

    :cond_f
    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long v5, v3, v5

    .line 470
    :goto_13
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v3, v5, v6}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_3d

    .line 472
    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_3d

    goto :goto_2e

    :catch_1c
    move-exception v2

    .line 474
    :try_start_1d
    new-instance v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 476
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v3
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_3d

    .line 482
    :cond_2e
    :goto_2e
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 483
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 484
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_3c

    .line 485
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 486
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferEnded()V

    :cond_3c
    return-void

    :catchall_3d
    move-exception v2

    .line 482
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 483
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 484
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_4c

    .line 485
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 486
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferEnded()V

    .line 488
    :cond_4c
    throw v2
.end method

.method public getResponseCode()I
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    if-gtz v0, :cond_9

    :cond_8
    const/4 v0, -0x1

    :cond_9
    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_12

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v0, 0x0

    .line 338
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 339
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 340
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    const/4 v2, 0x1

    .line 345
    :try_start_c
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 347
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    .line 348
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1c} :catch_105

    .line 356
    iget v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    const-string v5, "Content-Range"

    const/16 v6, 0xc8

    const-wide/16 v8, -0x1

    if-lt v4, v6, :cond_b2

    const/16 v10, 0x12b

    if-le v4, v10, :cond_2c

    goto/16 :goto_b2

    .line 387
    :cond_2c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 388
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    if-eqz v7, :cond_44

    invoke-interface {v7, v4}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    goto :goto_44

    .line 389
    :cond_3b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 390
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v4, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    throw v0

    .line 396
    :cond_44
    :goto_44
    iget v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    if-ne v4, v6, :cond_4f

    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v4, v6, v0

    if-eqz v4, :cond_4f

    move-wide v0, v6

    .line 399
    :cond_4f
    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->isCompressed(Ljava/net/HttpURLConnection;)Z

    move-result v4

    if-nez v4, :cond_75

    .line 401
    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v10, v6, v8

    if-eqz v10, :cond_5e

    .line 402
    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_79

    :cond_5e
    const-string v6, "Content-Length"

    .line 406
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 407
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 405
    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/upstream/HttpUtil;->getContentLength(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v8

    if-eqz v7, :cond_72

    sub-long v8, v5, v0

    .line 409
    :cond_72
    iput-wide v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_79

    .line 415
    :cond_75
    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    :goto_79
    const/16 v5, 0x7d0

    .line 419
    :try_start_7b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v4, :cond_8c

    .line 421
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_8c} :catch_a8

    .line 432
    :cond_8c
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 436
    :try_start_91
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->skipFully(JLcom/google/android/exoplayer2/upstream/DataSpec;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_97

    .line 450
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    return-wide v0

    :catch_97
    move-exception v0

    .line 438
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 440
    instance-of v1, v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-eqz v1, :cond_a2

    .line 441
    check-cast v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    throw v0

    .line 443
    :cond_a2
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, p1, v5, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v1

    :catch_a8
    move-exception v0

    .line 424
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 425
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, p1, v5, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v1

    .line 357
    :cond_b2
    :goto_b2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    .line 358
    iget v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    const/16 v10, 0x1a0

    if-ne v6, v10, :cond_d7

    .line 360
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/upstream/HttpUtil;->getDocumentSize(Ljava/lang/String;)J

    move-result-wide v5

    .line 361
    iget-wide v11, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v13, v11, v5

    if-nez v13, :cond_d7

    .line 362
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 363
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 364
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long p1, v2, v8

    if-eqz p1, :cond_d6

    move-wide v0, v2

    :cond_d6
    return-wide v0

    .line 368
    :cond_d7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_e2

    .line 372
    :try_start_dd
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_e4

    :cond_e2
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e4} :catch_e6

    :goto_e4
    move-object v11, v0

    goto :goto_e9

    .line 374
    :catch_e6
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    goto :goto_e4

    .line 376
    :goto_e9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 379
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    if-ne v0, v10, :cond_f8

    .line 380
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/16 v1, 0x7d8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    goto :goto_f9

    :cond_f8
    const/4 v0, 0x0

    :goto_f9
    move-object v8, v0

    .line 382
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    move-object v5, v0

    move-object v9, v4

    move-object v10, p1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/DataSpec;[B)V

    throw v0

    :catch_105
    move-exception v0

    .line 350
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 351
    invoke-static {v0, p1, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    move-result-object p1

    throw p1
.end method

.method openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method public read([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 456
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->readInternal([BII)I

    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    move-exception p1

    .line 458
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 459
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 p3, 0x2

    .line 458
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    move-result-object p1

    throw p1
.end method

.method public setContentTypePredicate(Lcom/google/common/base/Predicate;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 318
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
