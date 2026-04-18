.class public final Lcom/codemao/toolssdk/manager/AiCutOutImageManager;
.super Ljava/lang/Object;
.source "AiCutOutImageManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;
    }
.end annotation


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

.field private mattingCallback:Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;

.field private final uploadManager:Lcom/codemao/toolssdk/manager/CMTUploadManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->gson:Lcom/google/gson/Gson;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->callList:Ljava/util/ArrayList;

    .line 20
    new-instance v1, Lcom/codemao/toolssdk/manager/CMTUploadManager;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/manager/CMTUploadManager;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->uploadManager:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    return-void
.end method

.method public static final synthetic access$getCallList$p(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)Ljava/util/ArrayList;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->callList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getGson$p(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)Lcom/google/gson/Gson;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic access$requestMatting(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->requestMatting(Ljava/lang/String;)V

    return-void
.end method

.method private final requestMatting(Ljava/lang/String;)V
    .registers 6

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getCreationAPIHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/public-api/wood/matting"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v2, Lcom/codemao/toolssdk/model/http/RequestMattingBody;

    invoke-direct {v2, p1}, Lcom/codemao/toolssdk/model/http/RequestMattingBody;-><init>(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 51
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const-string v3, "toJson"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getJSON()Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 53
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->normalHeadersOrigin()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 54
    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->callList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$requestMatting$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$requestMatting$1;-><init>(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;Lokhttp3/Call;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method public final checkTaskProcess(Ljava/lang/String;)V
    .registers 5

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getCreationAPIHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/public-api/wood/matting/status?task_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
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

    .line 81
    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->callList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;-><init>(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;Lokhttp3/Call;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public final getMattingCallback()Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->mattingCallback:Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;

    return-object v0
.end method

.method public final setMattingCallback(Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->mattingCallback:Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;

    return-void
.end method

.method public final stopMatting(Ljava/lang/String;)V
    .registers 6

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->uploadManager:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->setCancelUpload(Z)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getCreationAPIHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/public-api/wood/matting?task_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/HttpClientManager;->normalHeaders()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, v0}, Lokhttp3/Request$Builder;->delete$default(Lokhttp3/Request$Builder;Lokhttp3/RequestBody;ILjava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 115
    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->callList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$stopMatting$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$stopMatting$1;-><init>(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public final uploadAndMattingImageFile(Ljava/lang/String;)V
    .registers 5

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->uploadManager:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    new-instance v1, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$1;-><init>(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)V

    new-instance v2, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$2;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$2;-><init>(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->getTokenAndUploadFile(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final uploadAndMattingImageFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->uploadManager:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    new-instance v1, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$3;

    invoke-direct {v1, p2, p0}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$3;-><init>(Lkotlin/jvm/functions/Function2;Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)V

    new-instance p2, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$4;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$4;-><init>(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->getTokenAndUploadFile(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
