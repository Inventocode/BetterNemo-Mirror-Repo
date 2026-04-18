.class public final Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;
.super Ljava/lang/Object;
.source "DownloadCollectionImageManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadCollectionImageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadCollectionImageManager.kt\ncom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager\n*L\n1#1,355:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

.field private static final downloadMaterialImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;",
            ">;"
        }
    .end annotation
.end field

.field private static final downloadRunnable:Ljava/lang/Runnable;

.field private static isStopDownload:Z

.field private static listener:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;

.field private static materialService:Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;

.field private static thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->downloadMaterialImageList:Ljava/util/List;

    .line 42
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->createByNemoHost(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->materialService:Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;

    .line 197
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$downloadRunnable$1;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$downloadRunnable$1;

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->downloadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkList(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->checkList()V

    return-void
.end method

.method public static final synthetic access$downloadFile(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;)V
    .registers 4

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->downloadFile(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;)V

    return-void
.end method

.method public static final synthetic access$getDownloadMaterialImageList$p(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;)Ljava/util/List;
    .registers 1

    .line 24
    sget-object p0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->downloadMaterialImageList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMaterialService$p(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;)Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;
    .registers 1

    .line 24
    sget-object p0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->materialService:Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;

    return-object p0
.end method

.method public static final synthetic access$isStopDownload$p(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;)Z
    .registers 1

    .line 24
    sget-boolean p0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->isStopDownload:Z

    return p0
.end method

.method private final checkList()V
    .registers 5

    .line 233
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->downloadMaterialImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;

    .line 234
    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v1, 0x0

    goto :goto_7

    :cond_1c
    if-eqz v1, :cond_26

    .line 239
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->listener:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;->onDownloadSuccess()V

    goto :goto_2d

    .line 241
    :cond_26
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->listener:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;->onDownloadFailed()V

    .line 243
    :cond_2d
    :goto_2d
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->downloadMaterialImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final createFileDirs(Ljava/lang/String;)V
    .registers 3

    .line 330
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_e

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_e
    return-void
.end method

.method private final downloadFile(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;)V
    .registers 12

    .line 252
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 253
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getDownloadingFilePath()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->createFileDirs(Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getDownloadCompleteFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->createFileDirs(Ljava/lang/String;)V

    .line 257
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 260
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->materialService:Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;->downloadFile(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    goto :goto_3a

    :cond_39
    move-object v0, v1

    :goto_3a
    if-eqz v0, :cond_41

    .line 261
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    goto :goto_42

    :cond_41
    move-object v0, v1

    :goto_42
    if-eqz v0, :cond_4c

    .line 262
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    move-object v3, v0

    goto :goto_4d

    :cond_4c
    move-object v3, v1

    :goto_4d
    if-eqz v3, :cond_6e

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 264
    invoke-direct/range {v2 .. v7}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->writeFileFromByteStream(Lokhttp3/ResponseBody;Ljava/io/File;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;)V

    goto :goto_6e

    .line 267
    :cond_57
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->setFilePath(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_5f

    goto :goto_6e

    :catch_5f
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x3

    .line 271
    invoke-virtual {p2, p1}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->setStatus(I)V

    .line 272
    sget-object p1, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->listener:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;

    if-eqz p1, :cond_6e

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;->onDownloadItemError(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method private final getBasePath()Ljava/lang/String;
    .registers 4

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v1

    const-string v2, "CreativeStoreUtils.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/codemao/creativestore/CreativeStoreUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "CreativeStoreUtils.getInstance().application"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CreativeStoreUtils.getIn…ce().application.filesDir"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/nemo/collected_pic/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getDownloadCompleteFilePath()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getBasePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "complete/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getDownloadingFilePath()Ljava/lang/String;
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getBasePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "downloading/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    if-eqz p1, :cond_22

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "/"

    move-object v2, p1

    .line 63
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_22

    move-object v1, p1

    :cond_22
    return-object v1
.end method

.method private final startDownload()V
    .registers 3

    .line 187
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    return-void

    .line 190
    :cond_e
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_21

    const/4 v0, 0x0

    .line 191
    sput-boolean v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->isStopDownload:Z

    .line 192
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->downloadRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->thread:Ljava/lang/Thread;

    .line 193
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_21
    return-void
.end method

.method private final writeFileFromByteStream(Lokhttp3/ResponseBody;Ljava/io/File;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v8, p4

    const/4 v2, 0x0

    .line 286
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_80
    .catchall {:try_start_7 .. :try_end_b} :catchall_7c

    .line 287
    :try_start_b
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_78
    .catchall {:try_start_b .. :try_end_10} :catchall_73

    .line 289
    :try_start_10
    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v11

    .line 290
    new-instance v13, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/16 v2, 0x400

    new-array v14, v2, [B

    const/4 v15, 0x0

    const/4 v2, 0x0

    .line 293
    :goto_1f
    invoke-virtual {v9, v14}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 294
    iput v3, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_62

    .line 296
    invoke-virtual {v10, v14, v15, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 297
    iget v3, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int v16, v2, v3

    mul-int/lit8 v2, v16, 0x64

    int-to-long v2, v2

    .line 299
    div-long/2addr v2, v11

    long-to-int v3, v2

    const/16 v2, 0x64

    if-ne v3, v2, :cond_5c

    move-object/from16 v7, p3

    .line 301
    invoke-virtual {v1, v7}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 302
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object/from16 v2, p2

    move-object v15, v6

    move/from16 v6, v17

    move-object/from16 v7, v18

    invoke-static/range {v2 .. v7}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 303
    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->deleteFile(Ljava/io/File;)V

    move-object/from16 v2, p5

    .line 304
    invoke-virtual {v2, v15}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->setFilePath(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_5b} :catch_71
    .catchall {:try_start_10 .. :try_end_5b} :catchall_6e

    goto :goto_5e

    :cond_5c
    move-object/from16 v2, p5

    :goto_5e
    move/from16 v2, v16

    const/4 v15, 0x0

    goto :goto_1f

    .line 313
    :cond_62
    :try_start_62
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 314
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_68} :catch_69

    goto :goto_9a

    :catch_69
    move-exception v0

    .line 316
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9a

    :catchall_6e
    move-exception v0

    move-object v3, v0

    goto :goto_76

    :catch_71
    move-exception v0

    goto :goto_7a

    :catchall_73
    move-exception v0

    move-object v3, v0

    move-object v10, v2

    :goto_76
    move-object v2, v9

    goto :goto_9d

    :catch_78
    move-exception v0

    move-object v10, v2

    :goto_7a
    move-object v2, v9

    goto :goto_82

    :catchall_7c
    move-exception v0

    move-object v3, v0

    move-object v10, v2

    goto :goto_9d

    :catch_80
    move-exception v0

    move-object v10, v2

    .line 308
    :goto_82
    :try_start_82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x3

    .line 309
    invoke-virtual {v8, v0}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->setStatus(I)V

    .line 310
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->listener:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;

    if-eqz v0, :cond_90

    invoke-interface {v0, v8}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;->onDownloadItemError(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_9b

    :cond_90
    if-eqz v2, :cond_95

    .line 313
    :try_start_92
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_95
    if-eqz v10, :cond_9a

    .line 314
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9a} :catch_69

    :cond_9a
    :goto_9a
    return-void

    :catchall_9b
    move-exception v0

    move-object v3, v0

    :goto_9d
    if-eqz v2, :cond_a5

    .line 313
    :try_start_9f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_a5

    :catch_a3
    move-exception v0

    goto :goto_ab

    :cond_a5
    :goto_a5
    if-eqz v10, :cond_ae

    .line 314
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_aa} :catch_a3

    goto :goto_ae

    .line 316
    :goto_ab
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 317
    :cond_ae
    :goto_ae
    throw v3
.end method


# virtual methods
.method public final addMaterialImageData(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
    .registers 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->downloadMaterialImageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object p1, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_11

    .line 182
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->startDownload()V

    :cond_11
    return-void
.end method

.method public final checkFileExists(Ljava/lang/String;)Z
    .registers 6

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method public final collectImages(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 91
    :cond_11
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 92
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$collectImages$1;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$collectImages$1;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 144
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 145
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$collectImages$2;

    invoke-direct {v0, p2}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$collectImages$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final deleteFile(Ljava/io/File;)V
    .registers 6

    if-eqz p1, :cond_25

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_25

    .line 166
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 168
    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    .line 169
    invoke-virtual {p0, v3}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_21
    return-void

    .line 172
    :cond_22
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_25
    :goto_25
    return-void
.end method

.method public final deleteImages(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 72
    :cond_c
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->materialService:Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;

    if-eqz v0, :cond_28

    .line 70
    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;->deleteMaterialList(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 71
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 72
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$deleteImages$1;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$deleteImages$1;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_28
    return-void
.end method

.method public final getFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getDownloadCompleteFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getListener()Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;
    .registers 2

    .line 36
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->listener:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;

    return-object v0
.end method

.method public final setListener(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;)V
    .registers 2

    .line 36
    sput-object p1, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->listener:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;

    return-void
.end method
