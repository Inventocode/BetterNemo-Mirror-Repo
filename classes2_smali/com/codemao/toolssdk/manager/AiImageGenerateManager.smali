.class public final Lcom/codemao/toolssdk/manager/AiImageGenerateManager;
.super Ljava/lang/Object;
.source "AiImageGenerateManager.kt"


# instance fields
.field private final callList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;

.field private final uploadManager:Lcom/codemao/toolssdk/manager/CMTUploadManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->gson:Lcom/google/gson/Gson;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->callList:Ljava/util/ArrayList;

    .line 21
    new-instance v1, Lcom/codemao/toolssdk/manager/CMTUploadManager;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/manager/CMTUploadManager;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->uploadManager:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    return-void
.end method

.method public static final synthetic access$getCallList$p(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;)Ljava/util/ArrayList;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->callList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getGson$p(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;)Lcom/google/gson/Gson;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic access$requestMatchPaintingImg(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
    .registers 5

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->requestMatchPaintingImg(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final requestMatchPaintingImg(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getCreationAPIHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/neko/ai-painting/match"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v2, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;

    invoke-direct {v2, p1, p2, p3}, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;-><init>(Ljava/lang/String;II)V

    .line 45
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 46
    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const-string p3, "toJson"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getJSON()Lokhttp3/MediaType;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 48
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->normalHeaders()Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 49
    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->callList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance p2, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$requestMatchPaintingImg$1;

    invoke-direct {p2, p0, p1, p4}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$requestMatchPaintingImg$1;-><init>(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;Lokhttp3/Call;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 4

    const/4 v0, 0x0

    .line 102
    :goto_1
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->callList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 103
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->callList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "callList[index]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lokhttp3/Call;

    .line 104
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_1c
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->callList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->uploadManager:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->destroy()V

    return-void
.end method

.method public final getAiPaintingTemplates(ILkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getCreationAPIHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/neko/ai-painting/templates?type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->normalHeaders()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 77
    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->callList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;-><init>(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;Lokhttp3/Call;ILkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public final uploadImageFile(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->uploadManager:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    new-instance v1, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$uploadImageFile$1;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$uploadImageFile$1;-><init>(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;IILkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$uploadImageFile$2;

    invoke-direct {p2, p4}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$uploadImageFile$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->getTokenAndUploadFile(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
