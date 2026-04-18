.class public final Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;
.super Ljava/lang/Object;
.source "CppWebViewConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;-><init>()V

    return-void
.end method

.method private static final loadLocalAssets$getAssetsFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 127
    sget-object v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_ASSETS_KN()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, "KittenN_files"

    goto :goto_1e

    .line 128
    :cond_f
    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_ASSETS_AIKIDS()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "KIDSAI"

    goto :goto_1e

    :cond_1c
    const-string v0, ""

    .line 131
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets$getLastFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",最终的assets路径："

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dLocalResource(Ljava/lang/String;)V

    return-object p1
.end method

.method private static final loadLocalAssets$getLastFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "/"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 118
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_2e

    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "/"

    move-object v1, p0

    .line 120
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_30

    :cond_2e
    const-string p0, ""

    :goto_30
    return-object p0
.end method


# virtual methods
.method public final getLOCAL_ASSETS_AIKIDS()Ljava/lang/String;
    .registers 2

    .line 87
    invoke-static {}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->access$getLOCAL_ASSETS_AIKIDS$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLOCAL_ASSETS_KN()Ljava/lang/String;
    .registers 2

    .line 86
    invoke-static {}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->access$getLOCAL_ASSETS_KN$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLOCAL_CACHE_KN_MEDIA()Ljava/lang/String;
    .registers 2

    .line 89
    invoke-static {}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->access$getLOCAL_CACHE_KN_MEDIA$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLOCAL_CACHE_ZIP()Ljava/lang/String;
    .registers 2

    .line 88
    invoke-static {}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->access$getLOCAL_CACHE_ZIP$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 15

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_23

    .line 100
    :try_start_10
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_23

    const-string v5, ".js"

    invoke-static {v4, v5, v2, v0, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-ne v4, v1, :cond_23

    const/4 v4, 0x1

    goto :goto_24

    :catch_20
    move-exception p1

    goto/16 :goto_1c6

    :cond_23
    const/4 v4, 0x0

    :goto_24
    if-eqz v4, :cond_29

    const-string v0, "text/javascript"

    goto :goto_47

    :cond_29
    if-eqz p2, :cond_3a

    .line 102
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3a

    const-string v5, ".wasm"

    invoke-static {v4, v5, v2, v0, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_3a

    const/4 v2, 0x1

    :cond_3a
    if-eqz v2, :cond_3f

    const-string v0, "application/wasm"

    goto :goto_47

    .line 105
    :cond_3f
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/MimeTypeMapUtils;->getMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_47
    if-eqz p2, :cond_4f

    .line 107
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_51

    :cond_4f
    const-string v2, ""

    .line 108
    :cond_51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_59

    const-string v0, "application/octet-stream"

    :cond_59
    move-object v5, v0

    .line 111
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",webFilePath:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",mimeType:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dLocalResource(Ljava/lang/String;)V

    .line 112
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Access-Control-Allow-Origin"

    const-string v6, "*"

    .line 113
    invoke-interface {v9, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Access-Control-Allow-Headers"

    const-string v6, "Content-Type"

    .line 114
    invoke-interface {v9, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_ASSETS_KN()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    const/4 v4, 0x1

    goto :goto_a2

    :cond_9a
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_ASSETS_AIKIDS()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_a2
    if-eqz v4, :cond_e6

    .line 138
    invoke-static {p3, v2, v2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets$getAssetsFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_a8} :catch_20

    .line 141
    :try_start_a8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "直接加载资源文件"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dLocalResource(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_c4} :catch_c6

    goto/16 :goto_1b2

    :catch_c6
    move-exception p1

    .line 144
    :try_start_c7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "kn资源文件不存在"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "，让web自己去加载"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dLocalResource(Ljava/lang/String;)V

    return-object v3

    .line 150
    :cond_e6
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_CACHE_ZIP()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_125

    .line 151
    invoke-static {v2, v2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets$getLastFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 152
    sget-object p3, Lcom/codemao/toolssdk/utils/CTCacheFileUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTCacheFileUtils;

    invoke-virtual {p3, p1}, Lcom/codemao/toolssdk/utils/CTCacheFileUtils;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 153
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "给web的zip文件路径："

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dLocalResource(Ljava/lang/String;)V

    .line 155
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_122
    move-object v10, p2

    goto/16 :goto_1b3

    .line 158
    :cond_125
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_CACHE_KN_MEDIA()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1a8

    .line 159
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 161
    sget-object v2, Lcom/codemao/toolssdk/utils/CTCacheFileUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTCacheFileUtils;

    invoke-virtual {v2, p3}, Lcom/codemao/toolssdk/utils/CTCacheFileUtils;->encodeUrlLocalFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13c

    return-object v3

    .line 163
    :cond_13c
    invoke-virtual {v2, p1, v4}, Lcom/codemao/toolssdk/utils/CTCacheFileUtils;->knCacheFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_160

    .line 164
    invoke-virtual {v2, p1, v4}, Lcom/codemao/toolssdk/utils/CTCacheFileUtils;->getFullPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "给web的image文件已存在："

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dLocalResource(Ljava/lang/String;)V

    .line 166
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_122

    :cond_160
    const-string v2, ".svg"

    .line 168
    invoke-static {p3, v2, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_169

    return-object v3

    .line 172
    :cond_169
    sget-object v1, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->Companion:Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion;->getInstance()Lcom/codemao/toolssdk/utils/CTKNImageDownload;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->execute(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_193

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "下载完给web的image文件路径："

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    .line 175
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_122

    .line 177
    :cond_193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "下载文件异常，让web自己去处理："

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dKNPreDownload(Ljava/lang/String;)V

    return-object v3

    :cond_1a8
    const-string p1, "老方式加载"

    .line 184
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dLocalResource(Ljava/lang/String;)V

    .line 185
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_1b2
    move-object v10, p1

    :goto_1b3
    const-string p1, "when (type) {\n          …      }\n                }"

    .line 136
    invoke-static {v10, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string v6, ""

    const/16 v7, 0xc8

    const-string v8, "ok"

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_1c4
    .catch Ljava/io/FileNotFoundException; {:try_start_c7 .. :try_end_1c4} :catch_20

    move-object v3, p1

    goto :goto_1c9

    .line 192
    :goto_1c6
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1c9
    return-object v3
.end method
