.class public final Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;
.super Ljava/lang/Object;
.source "AiCutOutImageManager.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->checkTaskProcess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $newCall:Lokhttp3/Call;

.field final synthetic $taskId:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;Lokhttp3/Call;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;->$newCall:Lokhttp3/Call;

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;->$taskId:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-static {p1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->access$getCallList$p(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;->$newCall:Lokhttp3/Call;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->getMattingCallback()Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-interface {p1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;->onMattingFailed()V

    :cond_20
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-static {p1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->access$getCallList$p(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;->$newCall:Lokhttp3/Call;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 92
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-static {p1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->access$getGson$p(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)Lcom/google/gson/Gson;

    move-result-object p1

    .line 93
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    goto :goto_2d

    :cond_2c
    const/4 p2, 0x0

    :goto_2d
    const-class v0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;

    .line 92
    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;

    .line 95
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 96
    iget-object p2, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->getMattingCallback()Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;

    move-result-object p2

    if-eqz p2, :cond_6a

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->getResult_url()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;->onMattingSuccess(Ljava/lang/String;)V

    goto :goto_6a

    .line 97
    :cond_4b
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->isProcessing()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 98
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->getMattingCallback()Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;

    move-result-object p1

    if-eqz p1, :cond_6a

    iget-object p2, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;->$taskId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;->onProcessMatting(Ljava/lang/String;)V

    goto :goto_6a

    .line 100
    :cond_5f
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$checkTaskProcess$1;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->getMattingCallback()Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;

    move-result-object p1

    if-eqz p1, :cond_6a

    invoke-interface {p1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;->onMattingFailed()V

    :cond_6a
    :goto_6a
    return-void
.end method
