.class public Lcom/qiniu/android/storage/UploadManager;
.super Ljava/lang/Object;
.source "UploadManager.java"


# instance fields
.field private final config:Lcom/qiniu/android/storage/Configuration;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/qiniu/android/storage/Configuration$Builder;

    invoke-direct {v0}, Lcom/qiniu/android/storage/Configuration$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/qiniu/android/storage/Configuration$Builder;->build()Lcom/qiniu/android/storage/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/UploadManager;-><init>(Lcom/qiniu/android/storage/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/storage/Configuration;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_f

    .line 50
    :cond_6
    new-instance p1, Lcom/qiniu/android/storage/Configuration$Builder;

    invoke-direct {p1}, Lcom/qiniu/android/storage/Configuration$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->build()Lcom/qiniu/android/storage/Configuration;

    move-result-object p1

    :goto_f
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    .line 51
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->addDnsLocalLoadTransaction()Z

    .line 52
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->setDnsCheckWhetherCachedValidTransactionAction()Z

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/UploadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V
    .registers 8

    .line 26
    invoke-direct/range {p0 .. p7}, Lcom/qiniu/android/storage/UploadManager;->completeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    return-void
.end method

.method private checkAndNotifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/storage/UpCompletionHandler;)Z
    .registers 14

    const-string v0, "complete handler is null"

    .line 419
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "no input data"

    if-nez p3, :cond_10

    .line 424
    invoke-static {v1}, Lcom/qiniu/android/http/ResponseInfo;->zeroSize(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    :cond_e
    :goto_e
    move-object v5, v0

    goto :goto_59

    .line 425
    :cond_10
    instance-of v2, p3, [B

    if-eqz v2, :cond_1f

    move-object v2, p3

    check-cast v2, [B

    array-length v2, v2

    if-nez v2, :cond_1f

    .line 426
    invoke-static {v1}, Lcom/qiniu/android/http/ResponseInfo;->zeroSize(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    goto :goto_e

    .line 427
    :cond_1f
    instance-of v1, p3, Ljava/io/File;

    const-string v2, "file is empty"

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_37

    move-object v1, p3

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_37

    .line 428
    invoke-static {v2}, Lcom/qiniu/android/http/ResponseInfo;->zeroSize(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    goto :goto_e

    .line 429
    :cond_37
    instance-of v1, p3, Lcom/qiniu/android/storage/UploadSource;

    if-eqz v1, :cond_4a

    check-cast p3, Lcom/qiniu/android/storage/UploadSource;

    invoke-interface {p3}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v5

    cmp-long p3, v5, v3

    if-nez p3, :cond_4a

    .line 430
    invoke-static {v2}, Lcom/qiniu/android/http/ResponseInfo;->zeroSize(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    goto :goto_e

    :cond_4a
    if-eqz p2, :cond_52

    .line 431
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_e

    :cond_52
    const-string p3, "no token"

    .line 432
    invoke-static {p3}, Lcom/qiniu/android/http/ResponseInfo;->invalidToken(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    goto :goto_e

    :goto_59
    if-eqz v5, :cond_68

    const/4 v4, 0x0

    .line 435
    iget-object v6, v5, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/qiniu/android/storage/UploadManager;->completeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    const/4 p1, 0x1

    return p1

    :cond_68
    const/4 p1, 0x0

    return p1
.end method

.method private completeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V
    .registers 16

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move-object v5, p1

    .line 450
    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->reportQuality(Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Ljava/lang/String;)V

    if-eqz p7, :cond_22

    .line 452
    new-instance p1, Lcom/qiniu/android/utils/Wait;

    invoke-direct {p1}, Lcom/qiniu/android/utils/Wait;-><init>()V

    .line 453
    new-instance p3, Lcom/qiniu/android/storage/UploadManager$5;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p7

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/qiniu/android/storage/UploadManager$5;-><init>(Lcom/qiniu/android/storage/UploadManager;Lcom/qiniu/android/storage/UpCompletionHandler;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/utils/Wait;)V

    invoke-static {p3}, Lcom/qiniu/android/utils/AsyncRun;->runInMain(Ljava/lang/Runnable;)V

    .line 460
    invoke-virtual {p1}, Lcom/qiniu/android/utils/Wait;->startWait()V

    :cond_22
    return-void
.end method

.method private putData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V
    .registers 15

    .line 338
    invoke-static {p4}, Lcom/qiniu/android/storage/UpToken;->parse(Ljava/lang/String;)Lcom/qiniu/android/storage/UpToken;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 339
    invoke-virtual {v4}, Lcom/qiniu/android/storage/UpToken;->isValid()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_29

    .line 345
    :cond_d
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->zone:Lcom/qiniu/android/common/Zone;

    invoke-static {v0, v4}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->addDnsCheckAndPrefetchTransaction(Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)Z

    .line 347
    new-instance v7, Lcom/qiniu/android/storage/UploadManager$3;

    invoke-direct {v7, p0, p4, p1, p6}, Lcom/qiniu/android/storage/UploadManager$3;-><init>(Lcom/qiniu/android/storage/UploadManager;Ljava/lang/String;[BLcom/qiniu/android/storage/UpCompletionHandler;)V

    .line 353
    new-instance p4, Lcom/qiniu/android/storage/FormUpload;

    iget-object v6, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/storage/FormUpload;-><init>([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V

    .line 354
    invoke-static {p4}, Lcom/qiniu/android/utils/AsyncRun;->runInBack(Ljava/lang/Runnable;)V

    return-void

    :cond_29
    :goto_29
    const-string p2, "invalid token"

    .line 340
    invoke-static {p2}, Lcom/qiniu/android/http/ResponseInfo;->invalidToken(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object v2, p3

    move-object v3, p1

    move-object v7, p6

    .line 341
    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/storage/UploadManager;->completeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    return-void
.end method

.method private putSource(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V
    .registers 25

    move-object/from16 v9, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    .line 363
    invoke-direct {v9, v5, v6, v4, v8}, Lcom/qiniu/android/storage/UploadManager;->checkAndNotifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/storage/UpCompletionHandler;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 367
    :cond_11
    invoke-static/range {p3 .. p3}, Lcom/qiniu/android/storage/UpToken;->parse(Ljava/lang/String;)Lcom/qiniu/android/storage/UpToken;

    move-result-object v13

    if-eqz v13, :cond_e6

    .line 368
    invoke-virtual {v13}, Lcom/qiniu/android/storage/UpToken;->isValid()Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_e6

    .line 374
    :cond_1f
    iget-object v0, v9, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->zone:Lcom/qiniu/android/common/Zone;

    invoke-static {v0, v13}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->addDnsCheckAndPrefetchTransaction(Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)Z

    .line 376
    invoke-interface/range {p1 .. p1}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v7, v0, v2

    if-lez v7, :cond_98

    invoke-interface/range {p1 .. p1}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v0

    iget-object v7, v9, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget v7, v7, Lcom/qiniu/android/storage/Configuration;->putThreshold:I

    int-to-long v10, v7

    cmp-long v7, v0, v10

    if-gtz v7, :cond_98

    const/4 v1, 0x0

    .line 380
    :try_start_3e
    invoke-interface/range {p1 .. p1}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v10

    long-to-int v0, v10

    invoke-interface {v4, v0, v2, v3}, Lcom/qiniu/android/storage/UploadSource;->readData(IJ)[B

    move-result-object v0
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_47} :catch_4f
    .catchall {:try_start_3e .. :try_end_47} :catchall_4d

    .line 384
    invoke-interface/range {p1 .. p1}, Lcom/qiniu/android/storage/UploadSource;->close()V

    move-object v2, v0

    move-object v0, v1

    goto :goto_6d

    :catchall_4d
    move-exception v0

    goto :goto_94

    :catch_4f
    move-exception v0

    .line 382
    :try_start_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get upload file data error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->localIOError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0
    :try_end_69
    .catchall {:try_start_50 .. :try_end_69} :catchall_4d

    .line 384
    invoke-interface/range {p1 .. p1}, Lcom/qiniu/android/storage/UploadSource;->close()V

    move-object v2, v1

    :goto_6d
    if-nez v0, :cond_81

    .line 387
    invoke-interface/range {p1 .. p1}, Lcom/qiniu/android/storage/UploadSource;->getFileName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/qiniu/android/storage/UploadManager;->putData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    goto :goto_93

    :cond_81
    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object v5, v0

    move-object v6, v7

    move-object v7, v10

    move-object/from16 v8, p5

    .line 389
    invoke-direct/range {v1 .. v8}, Lcom/qiniu/android/storage/UploadManager;->completeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    :goto_93
    return-void

    .line 384
    :goto_94
    invoke-interface/range {p1 .. p1}, Lcom/qiniu/android/storage/UploadSource;->close()V

    .line 385
    throw v0

    .line 395
    :cond_98
    iget-object v0, v9, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v1, v0, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v1, :cond_ad

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    if-eqz v0, :cond_ad

    .line 396
    invoke-interface/range {p1 .. p1}, Lcom/qiniu/android/storage/UploadSource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/qiniu/android/storage/KeyGenerator;->gen(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_af

    :cond_ad
    move-object/from16 v17, v5

    .line 399
    :goto_af
    new-instance v0, Lcom/qiniu/android/storage/UploadManager$4;

    invoke-direct {v0, v9, v6, v4, v8}, Lcom/qiniu/android/storage/UploadManager$4;-><init>(Lcom/qiniu/android/storage/UploadManager;Ljava/lang/String;Lcom/qiniu/android/storage/UploadSource;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    .line 405
    iget-object v15, v9, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget-boolean v1, v15, Lcom/qiniu/android/storage/Configuration;->useConcurrentResumeUpload:Z

    if-eqz v1, :cond_d0

    .line 406
    new-instance v1, Lcom/qiniu/android/storage/ConcurrentResumeUpload;

    iget-object v2, v15, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    move-object v10, v1

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v14, p4

    move-object/from16 v16, v2

    move-object/from16 v18, v0

    invoke-direct/range {v10 .. v18}, Lcom/qiniu/android/storage/ConcurrentResumeUpload;-><init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V

    .line 407
    invoke-static {v1}, Lcom/qiniu/android/utils/AsyncRun;->runInBack(Ljava/lang/Runnable;)V

    goto :goto_e5

    .line 409
    :cond_d0
    new-instance v1, Lcom/qiniu/android/storage/PartsUpload;

    iget-object v2, v15, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    move-object v10, v1

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v14, p4

    move-object/from16 v16, v2

    move-object/from16 v18, v0

    invoke-direct/range {v10 .. v18}, Lcom/qiniu/android/storage/PartsUpload;-><init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V

    .line 410
    invoke-static {v1}, Lcom/qiniu/android/utils/AsyncRun;->runInBack(Ljava/lang/Runnable;)V

    :goto_e5
    return-void

    :cond_e6
    :goto_e6
    const-string v0, "invalid token"

    .line 369
    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->invalidToken(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object v5, v0

    move-object v6, v7

    move-object v7, v10

    move-object/from16 v8, p5

    .line 370
    invoke-direct/range {v1 .. v8}, Lcom/qiniu/android/storage/UploadManager;->completeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    return-void
.end method

.method private reportQuality(Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Ljava/lang/String;)V
    .registers 13

    .line 470
    invoke-static {p5}, Lcom/qiniu/android/storage/UpToken;->parse(Ljava/lang/String;)Lcom/qiniu/android/storage/UpToken;

    move-result-object v0

    if-eqz v0, :cond_100

    .line 471
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UpToken;->isValid()Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_100

    :cond_e
    if-eqz p4, :cond_12

    move-object v1, p4

    goto :goto_18

    .line 475
    :cond_12
    new-instance v1, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;-><init>(Ljava/util/ArrayList;)V

    .line 477
    :goto_18
    new-instance v2, Lcom/qiniu/android/collect/ReportItem;

    invoke-direct {v2}, Lcom/qiniu/android/collect/ReportItem;-><init>()V

    const-string v3, "quality"

    const-string v4, "log_type"

    .line 478
    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentTimestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "up_time"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    invoke-static {p3}, Lcom/qiniu/android/collect/ReportItem;->qualityResult(Lcom/qiniu/android/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "target_key"

    .line 481
    invoke-virtual {v2, p1, v3}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    iget-object p1, v0, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    const-string v0, "target_bucket"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadMetrics;->totalElapsedTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "total_elapsed_time"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->requestCount()Ljava/lang/Long;

    move-result-object p1

    const-string v0, "requests_count"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->regionCount()Ljava/lang/Long;

    move-result-object p1

    const-string v0, "regions_count"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->bytesSend()Ljava/lang/Long;

    move-result-object p1

    const-string v0, "bytes_sent"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->systemName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "os_name"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->systemVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "os_version"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->sdkLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdk_name"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->sdkVerion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdk_version"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    invoke-static {p3}, Lcom/qiniu/android/collect/ReportItem;->requestReportErrorType(Lcom/qiniu/android/http/ResponseInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error_type"

    .line 494
    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_ae

    if-eqz p1, :cond_ae

    .line 496
    iget-object p1, p3, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    if-eqz p1, :cond_a7

    goto :goto_a9

    :cond_a7
    iget-object p1, p3, Lcom/qiniu/android/http/ResponseInfo;->message:Ljava/lang/String;

    :goto_a9
    const-string v0, "error_description"

    .line 497
    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    :cond_ae
    instance-of p1, p2, Lcom/qiniu/android/storage/UploadSource;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_bc

    .line 502
    move-object p1, p2

    check-cast p1, Lcom/qiniu/android/storage/UploadSource;

    invoke-interface {p1}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v3

    goto :goto_c7

    .line 503
    :cond_bc
    instance-of p1, p2, [B

    if-eqz p1, :cond_c6

    .line 504
    move-object p1, p2

    check-cast p1, [B

    array-length p1, p1

    int-to-long v3, p1

    goto :goto_c7

    :cond_c6
    move-wide v3, v0

    .line 506
    :goto_c7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v5, "file_size"

    invoke-virtual {v2, p1, v5}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_f9

    .line 509
    invoke-virtual {p3}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p1

    if-eqz p1, :cond_f9

    invoke-virtual {p4}, Lcom/qiniu/android/http/metrics/UploadMetrics;->totalElapsedTime()J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-lez p3, :cond_f9

    cmp-long p1, v3, v0

    if-lez p1, :cond_f9

    .line 511
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4}, Lcom/qiniu/android/http/metrics/UploadMetrics;->totalElapsedTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qiniu/android/utils/Utils;->calculateSpeed(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "perceptive_speed"

    invoke-virtual {v2, p1, p2}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    :cond_f9
    invoke-static {}, Lcom/qiniu/android/collect/UploadInfoReporter;->getInstance()Lcom/qiniu/android/collect/UploadInfoReporter;

    move-result-object p1

    invoke-virtual {p1, v2, p5}, Lcom/qiniu/android/collect/UploadInfoReporter;->report(Lcom/qiniu/android/collect/ReportItem;Ljava/lang/String;)V

    :cond_100
    :goto_100
    return-void
.end method

.method private syncPut(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;
    .registers 13

    .line 306
    new-instance v0, Lcom/qiniu/android/utils/Wait;

    invoke-direct {v0}, Lcom/qiniu/android/utils/Wait;-><init>()V

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    new-instance v7, Lcom/qiniu/android/storage/UploadManager$2;

    invoke-direct {v7, p0, v1, v0}, Lcom/qiniu/android/storage/UploadManager$2;-><init>(Lcom/qiniu/android/storage/UploadManager;Ljava/util/ArrayList;Lcom/qiniu/android/utils/Wait;)V

    .line 318
    invoke-direct {p0, p2, p3, p1, v7}, Lcom/qiniu/android/storage/UploadManager;->checkAndNotifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/storage/UpCompletionHandler;)Z

    move-result v2

    if-nez v2, :cond_1d

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 319
    invoke-direct/range {v2 .. v7}, Lcom/qiniu/android/storage/UploadManager;->putSource(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    .line 322
    :cond_1d
    invoke-virtual {v0}, Lcom/qiniu/android/utils/Wait;->startWait()V

    .line 324
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2e

    const/4 p1, 0x0

    .line 325
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qiniu/android/http/ResponseInfo;

    return-object p1

    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
    .registers 13

    .line 110
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/qiniu/android/storage/UploadManager;->checkAndNotifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/storage/UpCompletionHandler;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 113
    :cond_7
    new-instance v2, Lcom/qiniu/android/storage/UploadSourceFile;

    invoke-direct {v2, p1}, Lcom/qiniu/android/storage/UploadSourceFile;-><init>(Ljava/io/File;)V

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/qiniu/android/storage/UploadManager;->putSource(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    return-void
.end method

.method public syncPut(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;
    .registers 6

    .line 237
    new-instance v0, Lcom/qiniu/android/storage/UploadSourceFile;

    invoke-direct {v0, p1}, Lcom/qiniu/android/storage/UploadSourceFile;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/qiniu/android/storage/UploadManager;->syncPut(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    return-object p1
.end method

.method public syncPut([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;
    .registers 14

    .line 186
    new-instance v0, Lcom/qiniu/android/utils/Wait;

    invoke-direct {v0}, Lcom/qiniu/android/utils/Wait;-><init>()V

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-instance v8, Lcom/qiniu/android/storage/UploadManager$1;

    invoke-direct {v8, p0, v1, v0}, Lcom/qiniu/android/storage/UploadManager$1;-><init>(Lcom/qiniu/android/storage/UploadManager;Ljava/util/ArrayList;Lcom/qiniu/android/utils/Wait;)V

    .line 199
    invoke-direct {p0, p2, p3, p1, v8}, Lcom/qiniu/android/storage/UploadManager;->checkAndNotifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/storage/UpCompletionHandler;)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 200
    invoke-direct/range {v2 .. v8}, Lcom/qiniu/android/storage/UploadManager;->putData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    .line 203
    :cond_1e
    invoke-virtual {v0}, Lcom/qiniu/android/utils/Wait;->startWait()V

    .line 205
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2f

    const/4 p1, 0x0

    .line 206
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qiniu/android/http/ResponseInfo;

    return-object p1

    :cond_2f
    const/4 p1, 0x0

    return-object p1
.end method
