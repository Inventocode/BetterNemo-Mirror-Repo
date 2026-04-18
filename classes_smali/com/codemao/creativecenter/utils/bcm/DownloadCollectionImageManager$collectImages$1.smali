.class final Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$collectImages$1;
.super Ljava/lang/Object;
.source "DownloadCollectionImageManager.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->collectImages(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadCollectionImageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadCollectionImageManager.kt\ncom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$collectImages$1\n*L\n1#1,355:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$collectImages$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$collectImages$1;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$collectImages$1;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$collectImages$1;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$collectImages$1;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/util/List;)Lio/reactivex/Observable;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "itemList"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v2, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData;

    invoke-direct {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData;-><init>()V

    .line 94
    new-instance v3, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;

    invoke-direct {v3}, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;-><init>()V

    .line 95
    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_14e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;

    .line 97
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {v3, v5}, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;->setResource_url(Ljava/util/List;)V

    .line 99
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->getType()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;->setType(I)V

    .line 100
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;->setResource_name(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_47
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;

    .line 103
    invoke-virtual {v7}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v7}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6f

    .line 105
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->setUrl(Ljava/lang/String;)V

    .line 108
    :cond_6f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_145

    invoke-virtual {v7}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_145

    .line 109
    sget-object v8, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-virtual {v7}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v0, :cond_8e

    .line 111
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "Locale.getDefault()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x2

    const-string v11, "file://"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12, v10, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bc

    .line 112
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v9, "Uri.parse(filePath)"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_bc
    :try_start_bc
    new-instance v9, Ljava/io/File;

    if-nez v0, :cond_c3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c3
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_e1

    .line 116
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    goto :goto_145

    .line 118
    :cond_e1
    invoke-virtual {v7}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->getTexture()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ef

    .line 119
    invoke-virtual {v7}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->getTexture()Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_ef
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v9

    const-string v10, "CreativeCenterUtils.getInstance()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v9

    const-string v10, "CreativeCenterUtils.getInstance().application"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "webview/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v9, "CreativeCenterUtils.getI…open(\"webview/$filePath\")"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-static {v8}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->createNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 124
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x400

    new-array v8, v8, [B

    .line 127
    :goto_12c
    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_137

    .line 128
    invoke-virtual {v9, v8, v12, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_12c

    .line 130
    :cond_137
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 131
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 132
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_140} :catch_141

    goto :goto_145

    :catch_141
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    :cond_145
    :goto_145
    invoke-virtual {v7}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    .line 142
    :cond_14e
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->access$getMaterialService$p(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;)Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;

    move-result-object v0

    if-eqz v0, :cond_164

    .line 141
    invoke-interface {v0, v2}, Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;->addMaterialList(Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData;)Lio/reactivex/Observable;

    move-result-object v0

    if-eqz v0, :cond_164

    .line 142
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v4

    :cond_164
    return-object v4
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 24
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$collectImages$1;->apply(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
