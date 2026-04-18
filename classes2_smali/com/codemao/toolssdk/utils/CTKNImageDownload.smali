.class public final Lcom/codemao/toolssdk/utils/CTKNImageDownload;
.super Ljava/lang/Object;
.source "CTKNImageDownload.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion;

.field private static final iInstance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/codemao/toolssdk/utils/CTKNImageDownload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private call:Lokhttp3/Call;

.field private client:Lokhttp3/OkHttpClient;

.field private context:Landroid/content/Context;

.field private imageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->Companion:Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion;

    .line 13
    sget-object v0, Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion$iInstance$2;->INSTANCE:Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion$iInstance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->iInstance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->imageUrls:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getIInstance$delegate$cp()Lkotlin/Lazy;
    .registers 1

    .line 10
    sget-object v0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->iInstance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 62
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "缓存文件地址："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dKNPreDownload(Ljava/lang/String;)V

    .line 63
    sget-object v2, Lcom/codemao/toolssdk/utils/CTCacheFileUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTCacheFileUtils;

    invoke-virtual {v2, p2, p3}, Lcom/codemao/toolssdk/utils/CTCacheFileUtils;->fileExistAndMoveSuccess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return-object p3

    .line 67
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "需要下载的文件："

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dKNPreDownload(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_3b

    invoke-virtual {v2}, Lcom/codemao/toolssdk/utils/CTCacheFileUtils;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    :cond_3b
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->client:Lokhttp3/OkHttpClient;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    :try_start_3f
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 71
    invoke-virtual {v3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 73
    iget-object v4, p0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->client:Lokhttp3/OkHttpClient;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->call:Lokhttp3/Call;

    if-eqz v3, :cond_8c

    .line 74
    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    if-eqz v4, :cond_8c

    .line 75
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_6b

    const-string p2, "response不成功"

    .line 76
    invoke-direct {p0, p1, v0, p2}, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->onFileDownloadResult(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v1

    :cond_6b
    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    .line 79
    invoke-virtual/range {v2 .. v7}, Lcom/codemao/toolssdk/utils/CTCacheFileUtils;->writeStreamToFile(Ljava/lang/String;Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Z

    move-result p1
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_73} :catch_77

    if-eqz p1, :cond_76

    return-object p3

    :cond_76
    return-object v1

    :catch_77
    move-exception p2

    .line 113
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zip 下载异常："

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->onFileDownloadResult(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_8c
    return-object v1
.end method

.method private final onFileDownloadResult(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7

    .line 119
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "结果是否成功："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p2, 0x2c

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dKNPreDownload(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "context"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->context:Landroid/content/Context;

    if-eqz p1, :cond_33

    .line 49
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "需要判断的图片文件地址:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dKNPreDownload(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/codemao/toolssdk/utils/CTCacheFileUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTCacheFileUtils;

    invoke-virtual {v0, p1, p2}, Lcom/codemao/toolssdk/utils/CTCacheFileUtils;->getFullPathTempImage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, p1, p2}, Lcom/codemao/toolssdk/utils/CTCacheFileUtils;->getFullPathImage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-direct {p0, p2, v1, p1}, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_33
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onDestroy()V
    .registers 3

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->context:Landroid/content/Context;

    .line 152
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->call:Lokhttp3/Call;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 153
    :cond_a
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->client:Lokhttp3/OkHttpClient;

    .line 154
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->call:Lokhttp3/Call;

    return-void
.end method
