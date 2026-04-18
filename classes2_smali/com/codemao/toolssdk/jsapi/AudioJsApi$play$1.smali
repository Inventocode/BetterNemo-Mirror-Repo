.class public final Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;
.super Ljava/lang/Object;
.source "AudioJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/AudioJsApi;->play(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/AudioJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/model/dsbridge/AudioOption;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/AudioJsApi;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/AudioOption;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/jsapi/AudioJsApi;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->$options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p3, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->this$0:Lcom/codemao/toolssdk/jsapi/AudioJsApi;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final completeCallback()V
    .registers 6

    .line 50
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 52
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->$options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;-><init>(Ljava/lang/String;IF)V

    const/16 v2, 0x7d0

    .line 50
    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 54
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->this$0:Lcom/codemao/toolssdk/jsapi/AudioJsApi;

    invoke-static {v2}, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->access$getGson$p(Lcom/codemao/toolssdk/jsapi/AudioJsApi;)Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 55
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "原生通知web播放完成:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->$options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->this$0:Lcom/codemao/toolssdk/jsapi/AudioJsApi;

    invoke-static {v3}, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->access$getGson$p(Lcom/codemao/toolssdk/jsapi/AudioJsApi;)Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPlayComplete()V
    .registers 2

    .line 59
    invoke-direct {p0}, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->completeCallback()V

    .line 60
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->$options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->getNeedProgress()Z

    return-void
.end method

.method public onPlayFail()V
    .registers 6

    .line 65
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 67
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->$options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;-><init>(Ljava/lang/String;IF)V

    const/16 v2, 0x7d0

    .line 65
    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->this$0:Lcom/codemao/toolssdk/jsapi/AudioJsApi;

    invoke-static {v2}, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->access$getGson$p(Lcom/codemao/toolssdk/jsapi/AudioJsApi;)Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "原生通知web播放失败:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->$options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    return-void
.end method

.method public onPlayStart()V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->$options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->getNeedProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 75
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->this$0:Lcom/codemao/toolssdk/jsapi/AudioJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->$options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    const-string v2, "options"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->access$sendCurrentPlayingProgress(Lcom/codemao/toolssdk/jsapi/AudioJsApi;Lcom/codemao/toolssdk/model/dsbridge/AudioOption;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :cond_16
    return-void
.end method
