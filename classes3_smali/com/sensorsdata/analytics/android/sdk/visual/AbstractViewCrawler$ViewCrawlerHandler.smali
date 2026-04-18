.class Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;
.super Landroid/os/Handler;
.source "AbstractViewCrawler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCrawlerHandler"
.end annotation


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mLastImageHash:Ljava/lang/StringBuilder;

.field private final mProtocol:Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;

.field private final mSDKVersion:Ljava/lang/String;

.field private mSnapshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;

.field private mUseGzip:Z

.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;


# direct methods
.method private constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .registers 5

    .line 211
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    .line 212
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 213
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mSnapshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;

    .line 214
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader$Ids;

    invoke-direct {p1, p4, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader$Ids;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 215
    new-instance p3, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;

    invoke-direct {p3, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;)V

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mProtocol:Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mLastImageHash:Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 217
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mUseGzip:Z

    .line 218
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mAppId:Ljava/lang/String;

    .line 219
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSDKVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mSDKVersion:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$1;)V
    .registers 6

    .line 202
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    return-void
.end method

.method private onSnapFinished(Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;)V
    .registers 3

    if-eqz p1, :cond_1b

    .line 415
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->getWebNodesManager()Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->hasThirdView()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 416
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->getWebNodesManager()Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->clear()V

    :cond_1b
    if-eqz p1, :cond_36

    .line 419
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->getFlutterNodesManager()Lcom/sensorsdata/analytics/android/sdk/visual/FlutterNodesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->hasThirdView()Z

    move-result p1

    if-nez p1, :cond_36

    .line 420
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->getFlutterNodesManager()Lcom/sensorsdata/analytics/android/sdk/visual/FlutterNodesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->clear()V

    :cond_36
    return-void
.end method

.method private postSnapshot(Ljava/io/ByteArrayOutputStream;)V
    .registers 13

    const-string v0, "UTF-8"

    const-string v1, "SA.AbstractViewCrawler"

    .line 426
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$400(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e2

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$800(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto/16 :goto_1e2

    :cond_1e
    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 434
    :try_start_22
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v7}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$800(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 436
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v7

    if-eqz v7, :cond_71

    .line 438
    invoke-virtual {v7}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK()Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 439
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$900(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$900(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_52} :catch_172
    .catchall {:try_start_22 .. :try_end_52} :catchall_16e

    if-eqz p1, :cond_5c

    .line 512
    :try_start_54
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception p1

    .line 515
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_5c
    :goto_5c
    return-void

    .line 443
    :cond_5d
    :try_start_5d
    invoke-virtual {v7}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    if-eqz v8, :cond_71

    instance-of v8, v6, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v8, :cond_71

    .line 445
    move-object v8, v6

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 448
    :cond_71
    invoke-virtual {v6, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v7, "POST"

    .line 449
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v7, "Content-type"

    const-string v8, "text/plain"

    .line 450
    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_84} :catch_172
    .catchall {:try_start_5d .. :try_end_84} :catchall_16e

    .line 453
    :try_start_84
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_89} :catch_16b
    .catchall {:try_start_84 .. :try_end_89} :catchall_168

    .line 454
    :try_start_89
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 455
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 457
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9b} :catch_164
    .catchall {:try_start_89 .. :try_end_9b} :catchall_160

    .line 459
    :try_start_9b
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_9b .. :try_end_9f} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9f} :catch_164
    .catchall {:try_start_9b .. :try_end_9f} :catchall_160

    goto :goto_a4

    .line 461
    :catch_a0
    :try_start_a0
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 463
    :goto_a4
    invoke-direct {p0, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->slurp(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 465
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v6, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request url ="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v6}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$800(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseCode="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-ne v9, v1, :cond_13a

    const-string v1, "delay"

    .line 471
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_fe} :catch_164
    .catchall {:try_start_a0 .. :try_end_fe} :catchall_160

    if-gez v1, :cond_102

    const/4 v1, 0x0

    goto :goto_103

    :cond_102
    const/4 v1, 0x1

    :goto_103
    :try_start_103
    const-string v6, "visualized_sdk_config"

    .line 475
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "visualized_config_disabled"

    .line 476
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 478
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_117

    if-eqz v9, :cond_128

    .line 479
    :cond_117
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isVisualizedPropertiesEnabled()Z

    move-result v9

    if-eqz v9, :cond_128

    .line 480
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->save2Cache(Ljava/lang/String;)V

    .line 484
    :cond_128
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v6

    const-string v9, "visualized_debug_mode_enabled"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->setDebugModeEnabled(Z)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_135} :catch_136
    .catchall {:try_start_103 .. :try_end_135} :catchall_160

    goto :goto_13b

    :catch_136
    move-exception v0

    move-object v6, v4

    move-object v4, v8

    goto :goto_176

    :cond_13a
    const/4 v1, 0x1

    .line 491
    :goto_13b
    :try_start_13b
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13e} :catch_13f

    goto :goto_143

    :catch_13f
    move-exception v0

    .line 494
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_143
    if-eqz v4, :cond_14d

    .line 498
    :try_start_145
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_148} :catch_149

    goto :goto_14d

    :catch_149
    move-exception v0

    .line 501
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_14d
    :goto_14d
    if-eqz v7, :cond_157

    .line 505
    :try_start_14f
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_152} :catch_153

    goto :goto_157

    :catch_153
    move-exception v0

    .line 508
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 512
    :cond_157
    :goto_157
    :try_start_157
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15a} :catch_15b

    goto :goto_19c

    :catch_15b
    move-exception p1

    .line 515
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_19c

    :catchall_160
    move-exception v0

    move-object v6, v4

    move-object v4, v8

    goto :goto_1b9

    :catch_164
    move-exception v0

    move-object v6, v4

    move-object v4, v8

    goto :goto_175

    :catchall_168
    move-exception v0

    move-object v6, v4

    goto :goto_1b9

    :catch_16b
    move-exception v0

    move-object v6, v4

    goto :goto_175

    :catchall_16e
    move-exception v0

    move-object v6, v4

    move-object v7, v6

    goto :goto_1b9

    :catch_172
    move-exception v0

    move-object v6, v4

    move-object v7, v6

    :goto_175
    const/4 v1, 0x1

    .line 487
    :goto_176
    :try_start_176
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_179
    .catchall {:try_start_176 .. :try_end_179} :catchall_1b8

    if-eqz v4, :cond_183

    .line 491
    :try_start_17b
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_17e} :catch_17f

    goto :goto_183

    :catch_17f
    move-exception v0

    .line 494
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_183
    :goto_183
    if-eqz v6, :cond_18d

    .line 498
    :try_start_185
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_188} :catch_189

    goto :goto_18d

    :catch_189
    move-exception v0

    .line 501
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_18d
    :goto_18d
    if-eqz v7, :cond_197

    .line 505
    :try_start_18f
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_192} :catch_193

    goto :goto_197

    :catch_193
    move-exception v0

    .line 508
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_197
    :goto_197
    if-eqz p1, :cond_19c

    .line 512
    :try_start_199
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_19c} :catch_15b

    :cond_19c
    :goto_19c
    if-eqz v1, :cond_1b2

    .line 520
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$900(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$900(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1b7

    .line 522
    :cond_1b2
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-virtual {p1, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->stopUpdates(Z)V

    :goto_1b7
    return-void

    :catchall_1b8
    move-exception v0

    :goto_1b9
    if-eqz v4, :cond_1c3

    .line 491
    :try_start_1bb
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1be} :catch_1bf

    goto :goto_1c3

    :catch_1bf
    move-exception v1

    .line 494
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1c3
    :goto_1c3
    if-eqz v6, :cond_1cd

    .line 498
    :try_start_1c5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1c8} :catch_1c9

    goto :goto_1cd

    :catch_1c9
    move-exception v1

    .line 501
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1cd
    :goto_1cd
    if-eqz v7, :cond_1d7

    .line 505
    :try_start_1cf
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1d2} :catch_1d3

    goto :goto_1d7

    :catch_1d3
    move-exception v1

    .line 508
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1d7
    :goto_1d7
    if-eqz p1, :cond_1e1

    .line 512
    :try_start_1d9
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1dc} :catch_1dd

    goto :goto_1e1

    :catch_1dd
    move-exception p1

    .line 515
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 517
    :cond_1e1
    :goto_1e1
    throw v0

    :cond_1e2
    :goto_1e2
    return-void
.end method

.method private sendSnapshot()V
    .registers 23

    move-object/from16 v1, p0

    const-string v2, "Can\'t close writer."

    const-string v3, "Can\'t close payload_out."

    const-string v4, "Can\'t close gos."

    const-string v5, "Can\'t close os."

    const-string v6, ","

    const-string v7, "\","

    const-string v8, "SA.AbstractViewCrawler"

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 241
    :try_start_14
    iget-object v11, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mProtocol:Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;

    iget-object v12, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v12}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$300(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;->readSnapshotConfig(Landroid/os/Handler;)Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;

    move-result-object v11

    iput-object v11, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mSnapshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;

    if-nez v11, :cond_2a

    const-string v2, "Snapshot should be initialize at first calling."

    .line 244
    invoke-static {v8, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException; {:try_start_14 .. :try_end_29} :catch_53c

    return-void

    .line 251
    :cond_2a
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 252
    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-direct {v12, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_34
    const-string v14, "{"

    .line 258
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/OutputStream;->write([B)V

    const-string v14, "\"type\": \"snapshot_response\","

    .line 259
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/OutputStream;->write([B)V

    .line 260
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\"feature_code\": \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v15}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$400(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/OutputStream;->write([B)V

    .line 261
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\"app_version\": \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v15}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$500(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/OutputStream;->write([B)V

    .line 262
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\"lib_version\": \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mSDKVersion:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/OutputStream;->write([B)V

    const-string v14, "\"os\": \"Android\","

    .line 263
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/OutputStream;->write([B)V

    const-string v14, "\"lib\": \"Android\","

    .line 264
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/OutputStream;->write([B)V

    .line 265
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\"app_id\": \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mAppId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/OutputStream;->write([B)V

    .line 266
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\"app_enablevisualizedproperties\": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isVisualizedPropertiesEnabled()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/OutputStream;->write([B)V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_f7} :catch_4bd
    .catchall {:try_start_34 .. :try_end_f7} :catchall_4b3

    .line 269
    :try_start_f7
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 270
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v15

    sget-object v13, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v15, v13}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v13

    if-nez v13, :cond_10d

    const-string v13, "$AppClick"

    .line 271
    invoke-virtual {v14, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 273
    :cond_10d
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v13

    sget-object v15, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_VIEW_SCREEN:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v13, v15}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v13

    if-nez v13, :cond_11e

    const-string v13, "$AppViewScreen"

    .line 274
    invoke-virtual {v14, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 276
    :cond_11e
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\"app_autotrack\": "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/OutputStream;->write([B)V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_13d} :catch_148
    .catchall {:try_start_f7 .. :try_end_13d} :catchall_13e

    goto :goto_14d

    :catchall_13e
    move-exception v0

    move-object v13, v2

    move-object v10, v3

    move-object v9, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    goto/16 :goto_510

    :catch_148
    move-exception v0

    move-object v13, v0

    .line 278
    :try_start_14a
    invoke-static {v13}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 281
    :goto_14d
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualConfigVersion()Ljava/lang/String;

    move-result-object v13

    .line 282
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_159} :catch_4bd
    .catchall {:try_start_14a .. :try_end_159} :catchall_4b3

    if-nez v14, :cond_183

    .line 283
    :try_start_15b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\"config_version\": \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_176} :catch_177
    .catchall {:try_start_15b .. :try_end_176} :catchall_13e

    goto :goto_183

    :catch_177
    move-exception v0

    move-object v13, v2

    move-object v10, v3

    move-object v9, v4

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v2, v0

    goto/16 :goto_4c7

    .line 285
    :cond_183
    :goto_183
    :try_start_183
    iget-boolean v7, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mUseGzip:Z
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_185} :catch_4bd
    .catchall {:try_start_183 .. :try_end_185} :catchall_4b3

    const-string v13, ",\"snapshot_time_millis\": "

    const-string v14, "}"

    const-string v15, "\""

    if-eqz v7, :cond_2ba

    .line 286
    :try_start_18d
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_192} :catch_177
    .catchall {:try_start_18d .. :try_end_192} :catchall_13e

    move-object/from16 v17, v2

    .line 287
    :try_start_194
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v18, "{\"activities\":"
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_19b} :catch_2b0
    .catchall {:try_start_194 .. :try_end_19b} :catchall_2a7

    move-object/from16 v19, v3

    .line 288
    :try_start_19d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 289
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 290
    iget-object v3, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mSnapshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a9} :catch_29f
    .catchall {:try_start_19d .. :try_end_1a9} :catchall_297

    move-object/from16 v18, v4

    :try_start_1ab
    iget-object v4, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mLastImageHash:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->snapshots(Ljava/io/OutputStream;Ljava/lang/StringBuilder;)Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    move-result-object v3
    :try_end_1b1
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1b1} :catch_290
    .catchall {:try_start_1ab .. :try_end_1b1} :catchall_289

    .line 291
    :try_start_1b1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v9

    .line 292
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 293
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 295
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getDebugInfo()Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1ee

    .line 297
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write([B)V

    const-string v9, "\"event_debug\": "

    .line 298
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write([B)V

    .line 299
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 302
    :cond_1ee
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getVisualLogInfo()Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_213

    .line 304
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    const-string v6, "\"log_info\":"

    .line 305
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 306
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 308
    :cond_213
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 309
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 310
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 311
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 312
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    array-length v6, v2

    invoke-direct {v4, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_22e
    .catch Ljava/io/IOException; {:try_start_1b1 .. :try_end_22e} :catch_280
    .catchall {:try_start_1b1 .. :try_end_22e} :catchall_289

    .line 313
    :try_start_22e
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_233
    .catch Ljava/io/IOException; {:try_start_22e .. :try_end_233} :catch_273
    .catchall {:try_start_22e .. :try_end_233} :catchall_266

    .line 314
    :try_start_233
    invoke-virtual {v6, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 315
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 316
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 317
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 318
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\"gzip_payload\": \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/String;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encode([B)[C

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_264
    .catch Ljava/io/IOException; {:try_start_233 .. :try_end_264} :catch_332
    .catchall {:try_start_233 .. :try_end_264} :catchall_326

    goto/16 :goto_2fe

    :catchall_266
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v4

    move-object/from16 v13, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    const/4 v6, 0x0

    goto/16 :goto_511

    :catch_273
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v4

    move-object/from16 v13, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    const/4 v6, 0x0

    goto/16 :goto_4c7

    :catch_280
    move-exception v0

    move-object v2, v0

    move-object/from16 v13, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto :goto_2b7

    :catchall_289
    move-exception v0

    move-object v2, v0

    move-object/from16 v13, v17

    move-object/from16 v9, v18

    goto :goto_29c

    :catch_290
    move-exception v0

    move-object v2, v0

    move-object/from16 v13, v17

    move-object/from16 v9, v18

    goto :goto_2a4

    :catchall_297
    move-exception v0

    move-object v2, v0

    move-object v9, v4

    move-object/from16 v13, v17

    :goto_29c
    move-object/from16 v10, v19

    goto :goto_2ad

    :catch_29f
    move-exception v0

    move-object v2, v0

    move-object v9, v4

    move-object/from16 v13, v17

    :goto_2a4
    move-object/from16 v10, v19

    goto :goto_2b6

    :catchall_2a7
    move-exception v0

    move-object v2, v0

    move-object v10, v3

    move-object v9, v4

    move-object/from16 v13, v17

    :goto_2ad
    const/4 v6, 0x0

    goto/16 :goto_4ba

    :catch_2b0
    move-exception v0

    move-object v2, v0

    move-object v10, v3

    move-object v9, v4

    move-object/from16 v13, v17

    :goto_2b6
    const/4 v3, 0x0

    :goto_2b7
    const/4 v6, 0x0

    goto/16 :goto_4c5

    :cond_2ba
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    :try_start_2c0
    const-string v2, "\"payload\": {"

    .line 320
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "\"activities\":"

    .line 323
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V

    .line 324
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 325
    iget-object v2, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mSnapshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;

    iget-object v3, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mLastImageHash:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->snapshots(Ljava/io/OutputStream;Ljava/lang/StringBuilder;)Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    move-result-object v3
    :try_end_2dd
    .catch Ljava/io/IOException; {:try_start_2c0 .. :try_end_2dd} :catch_4ab
    .catchall {:try_start_2c0 .. :try_end_2dd} :catchall_4a3

    .line 328
    :try_start_2dd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v9

    .line 329
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V

    .line 330
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V

    .line 332
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2fb
    .catch Ljava/io/IOException; {:try_start_2dd .. :try_end_2fb} :catch_49a
    .catchall {:try_start_2dd .. :try_end_2fb} :catchall_4a3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 336
    :goto_2fe
    :try_start_2fe
    iget-object v2, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->screenName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_304
    .catch Ljava/io/IOException; {:try_start_2fe .. :try_end_304} :catch_48f
    .catchall {:try_start_2fe .. :try_end_304} :catchall_483

    if-nez v2, :cond_33e

    .line 337
    :try_start_306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ",\"screen_name\": \""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V

    .line 338
    iget-object v13, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->screenName:Ljava/lang/String;
    :try_end_325
    .catch Ljava/io/IOException; {:try_start_306 .. :try_end_325} :catch_332
    .catchall {:try_start_306 .. :try_end_325} :catchall_326

    goto :goto_33f

    :catchall_326
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v4

    move-object/from16 v13, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto/16 :goto_511

    :catch_332
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v4

    move-object/from16 v13, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto/16 :goto_4c7

    :cond_33e
    const/4 v13, 0x0

    .line 342
    :goto_33f
    :try_start_33f
    iget-boolean v2, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->hasFragment:Z
    :try_end_341
    .catch Ljava/io/IOException; {:try_start_33f .. :try_end_341} :catch_48f
    .catchall {:try_start_33f .. :try_end_341} :catchall_483

    if-eqz v2, :cond_352

    .line 343
    :try_start_343
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getFragmentScreenName()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_34f
    .catch Ljava/io/IOException; {:try_start_343 .. :try_end_34f} :catch_332
    .catchall {:try_start_343 .. :try_end_34f} :catchall_326

    if-nez v9, :cond_352

    move-object v13, v2

    .line 349
    :cond_352
    :try_start_352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "page_name： "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_36a
    .catch Ljava/io/IOException; {:try_start_352 .. :try_end_36a} :catch_48f
    .catchall {:try_start_352 .. :try_end_36a} :catchall_483

    if-nez v2, :cond_387

    .line 351
    :try_start_36c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ",\"page_name\": \""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_387
    .catch Ljava/io/IOException; {:try_start_36c .. :try_end_387} :catch_332
    .catchall {:try_start_36c .. :try_end_387} :catchall_326

    .line 354
    :cond_387
    :try_start_387
    iget-object v2, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->activityTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_38d
    .catch Ljava/io/IOException; {:try_start_387 .. :try_end_38d} :catch_48f
    .catchall {:try_start_387 .. :try_end_38d} :catchall_483

    if-nez v2, :cond_3ac

    .line 355
    :try_start_38f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ",\"title\": \""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->activityTitle:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_3ac
    .catch Ljava/io/IOException; {:try_start_38f .. :try_end_3ac} :catch_332
    .catchall {:try_start_38f .. :try_end_3ac} :catchall_326

    .line 358
    :cond_3ac
    :try_start_3ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ",\"is_webview\": "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->isWebView:Z

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V

    .line 360
    iget-object v2, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->webLibVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3cc
    .catch Ljava/io/IOException; {:try_start_3ac .. :try_end_3cc} :catch_48f
    .catchall {:try_start_3ac .. :try_end_3cc} :catchall_483

    if-nez v2, :cond_3eb

    .line 361
    :try_start_3ce
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ",\"web_lib_version\": \""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->webLibVersion:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_3eb
    .catch Ljava/io/IOException; {:try_start_3ce .. :try_end_3eb} :catch_332
    .catchall {:try_start_3ce .. :try_end_3eb} :catchall_326

    .line 364
    :cond_3eb
    :try_start_3eb
    iget-boolean v2, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->isWebView:Z
    :try_end_3ed
    .catch Ljava/io/IOException; {:try_start_3eb .. :try_end_3ed} :catch_48f
    .catchall {:try_start_3eb .. :try_end_3ed} :catchall_483

    if-eqz v2, :cond_406

    :try_start_3ef
    iget-object v2, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->webViewUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_406

    .line 365
    iget-object v2, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$600(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;

    move-result-object v2

    iget-object v9, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v9}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$700(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v12, v2, v3, v9}, Lcom/sensorsdata/analytics/android/sdk/visual/utils/AlertMessageUtils;->buildH5AlertInfo(Ljava/io/OutputStream;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;Landroid/content/Context;)V
    :try_end_406
    .catch Ljava/io/IOException; {:try_start_3ef .. :try_end_406} :catch_332
    .catchall {:try_start_3ef .. :try_end_406} :catchall_326

    .line 368
    :cond_406
    :try_start_406
    iget-object v2, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->flutterLibVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_40c
    .catch Ljava/io/IOException; {:try_start_406 .. :try_end_40c} :catch_48f
    .catchall {:try_start_406 .. :try_end_40c} :catchall_483

    if-nez v2, :cond_42b

    .line 369
    :try_start_40e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ",\"flutter_lib_version\": \""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->flutterLibVersion:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_42b
    .catch Ljava/io/IOException; {:try_start_40e .. :try_end_42b} :catch_332
    .catchall {:try_start_40e .. :try_end_42b} :catchall_326

    .line 372
    :cond_42b
    :try_start_42b
    iget-boolean v2, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->isFlutter:Z
    :try_end_42d
    .catch Ljava/io/IOException; {:try_start_42b .. :try_end_42d} :catch_48f
    .catchall {:try_start_42b .. :try_end_42d} :catchall_483

    if-eqz v2, :cond_446

    :try_start_42f
    iget-object v2, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->activityName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_446

    .line 373
    iget-object v2, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$600(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;

    move-result-object v2

    iget-object v9, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v9}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$700(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v12, v2, v3, v9}, Lcom/sensorsdata/analytics/android/sdk/visual/utils/AlertMessageUtils;->buildFlutterAlertInfo(Ljava/io/OutputStream;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;Landroid/content/Context;)V
    :try_end_446
    .catch Ljava/io/IOException; {:try_start_42f .. :try_end_446} :catch_332
    .catchall {:try_start_42f .. :try_end_446} :catchall_326

    .line 376
    :cond_446
    :try_start_446
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V

    .line 377
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V
    :try_end_450
    .catch Ljava/io/IOException; {:try_start_446 .. :try_end_450} :catch_48f
    .catchall {:try_start_446 .. :try_end_450} :catchall_483

    if-eqz v4, :cond_45b

    .line 383
    :try_start_452
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_455
    .catch Ljava/lang/Exception; {:try_start_452 .. :try_end_455} :catch_456

    goto :goto_45b

    :catch_456
    move-exception v0

    move-object v2, v0

    .line 386
    invoke-static {v8, v5, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_45b
    :goto_45b
    if-eqz v6, :cond_468

    .line 390
    :try_start_45d
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_460
    .catch Ljava/lang/Exception; {:try_start_45d .. :try_end_460} :catch_461

    goto :goto_468

    :catch_461
    move-exception v0

    move-object v2, v0

    move-object/from16 v9, v18

    .line 393
    invoke-static {v8, v9, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_468
    :goto_468
    if-eqz v7, :cond_475

    .line 397
    :try_start_46a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_46d
    .catch Ljava/lang/Exception; {:try_start_46a .. :try_end_46d} :catch_46e

    goto :goto_475

    :catch_46e
    move-exception v0

    move-object v2, v0

    move-object/from16 v10, v19

    .line 400
    invoke-static {v8, v10, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    :cond_475
    :goto_475
    :try_start_475
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_478
    .catch Ljava/io/IOException; {:try_start_475 .. :try_end_478} :catch_47a

    goto/16 :goto_4f4

    :catch_47a
    move-exception v0

    move-object v2, v0

    move-object/from16 v13, v17

    .line 405
    :goto_47e
    invoke-static {v8, v13, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f4

    :catchall_483
    move-exception v0

    move-object/from16 v13, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object v2, v0

    move-object/from16 v16, v4

    goto/16 :goto_511

    :catch_48f
    move-exception v0

    move-object/from16 v13, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object v2, v0

    move-object/from16 v16, v4

    goto :goto_4c7

    :catch_49a
    move-exception v0

    move-object/from16 v13, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object v2, v0

    goto :goto_4c3

    :catchall_4a3
    move-exception v0

    move-object/from16 v13, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto :goto_4b7

    :catch_4ab
    move-exception v0

    move-object/from16 v13, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto :goto_4c1

    :catchall_4b3
    move-exception v0

    move-object v13, v2

    move-object v10, v3

    move-object v9, v4

    :goto_4b7
    move-object v2, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4ba
    const/16 v16, 0x0

    goto :goto_511

    :catch_4bd
    move-exception v0

    move-object v13, v2

    move-object v10, v3

    move-object v9, v4

    :goto_4c1
    move-object v2, v0

    const/4 v3, 0x0

    :goto_4c3
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4c5
    const/16 v16, 0x0

    :goto_4c7
    :try_start_4c7
    const-string v4, "Can\'t write snapshot request to server"

    .line 379
    invoke-static {v8, v4, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4cc
    .catchall {:try_start_4c7 .. :try_end_4cc} :catchall_50f

    if-eqz v16, :cond_4d7

    .line 383
    :try_start_4ce
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4d1
    .catch Ljava/lang/Exception; {:try_start_4ce .. :try_end_4d1} :catch_4d2

    goto :goto_4d7

    :catch_4d2
    move-exception v0

    move-object v2, v0

    .line 386
    invoke-static {v8, v5, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4d7
    :goto_4d7
    if-eqz v6, :cond_4e2

    .line 390
    :try_start_4d9
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4dc
    .catch Ljava/lang/Exception; {:try_start_4d9 .. :try_end_4dc} :catch_4dd

    goto :goto_4e2

    :catch_4dd
    move-exception v0

    move-object v2, v0

    .line 393
    invoke-static {v8, v9, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4e2
    :goto_4e2
    if-eqz v7, :cond_4ed

    .line 397
    :try_start_4e4
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4e7
    .catch Ljava/lang/Exception; {:try_start_4e4 .. :try_end_4e7} :catch_4e8

    goto :goto_4ed

    :catch_4e8
    move-exception v0

    move-object v2, v0

    .line 400
    invoke-static {v8, v10, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    :cond_4ed
    :goto_4ed
    :try_start_4ed
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_4f0
    .catch Ljava/io/IOException; {:try_start_4ed .. :try_end_4f0} :catch_4f1

    goto :goto_4f4

    :catch_4f1
    move-exception v0

    move-object v2, v0

    goto :goto_47e

    .line 408
    :goto_4f4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSnapshot = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-direct {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->onSnapFinished(Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;)V

    .line 410
    invoke-direct {v1, v11}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->postSnapshot(Ljava/io/ByteArrayOutputStream;)V

    return-void

    :catchall_50f
    move-exception v0

    :goto_510
    move-object v2, v0

    :goto_511
    if-eqz v16, :cond_51c

    .line 383
    :try_start_513
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_516
    .catch Ljava/lang/Exception; {:try_start_513 .. :try_end_516} :catch_517

    goto :goto_51c

    :catch_517
    move-exception v0

    move-object v3, v0

    .line 386
    invoke-static {v8, v5, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_51c
    :goto_51c
    if-eqz v6, :cond_527

    .line 390
    :try_start_51e
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_521
    .catch Ljava/lang/Exception; {:try_start_51e .. :try_end_521} :catch_522

    goto :goto_527

    :catch_522
    move-exception v0

    move-object v3, v0

    .line 393
    invoke-static {v8, v9, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_527
    :goto_527
    if-eqz v7, :cond_532

    .line 397
    :try_start_529
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_52c
    .catch Ljava/lang/Exception; {:try_start_529 .. :try_end_52c} :catch_52d

    goto :goto_532

    :catch_52d
    move-exception v0

    move-object v3, v0

    .line 400
    invoke-static {v8, v10, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    :cond_532
    :goto_532
    :try_start_532
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_535
    .catch Ljava/io/IOException; {:try_start_532 .. :try_end_535} :catch_536

    goto :goto_53b

    :catch_536
    move-exception v0

    move-object v3, v0

    .line 405
    invoke-static {v8, v13, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    :goto_53b
    throw v2

    :catch_53c
    move-exception v0

    move-object v2, v0

    const-string v3, "VisualizedAutoTrack server sent malformed message with snapshot request"

    .line 248
    invoke-static {v8, v3, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private slurp(Ljava/io/InputStream;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v2, v1, [B

    :goto_9
    const/4 v3, 0x0

    .line 533
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    .line 534
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 537
    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 538
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 228
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_9

    .line 230
    :cond_6
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->sendSnapshot()V

    :goto_9
    return-void
.end method

.method public start()V
    .registers 1

    return-void
.end method
