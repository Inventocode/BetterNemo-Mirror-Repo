.class public final Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;
.super Ljava/lang/Object;
.source "AiImageGenerateManager.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->getAiPaintingTemplates(ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $newCall:Lokhttp3/Call;

.field final synthetic $type:I

.field final synthetic this$0:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;Lokhttp3/Call;ILkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/manager/AiImageGenerateManager;",
            "Lokhttp3/Call;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;->this$0:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;->$newCall:Lokhttp3/Call;

    iput p3, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;->$type:I

    iput-object p4, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 6

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;->this$0:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    invoke-static {p1}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->access$getCallList$p(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;->$newCall:Lokhttp3/Call;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    iget v0, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;->$type:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "请求失败:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p2}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->aiTemplate(ZILjava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 9

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;->this$0:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    invoke-static {p1}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->access$getCallList$p(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;->$newCall:Lokhttp3/Call;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 89
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;->this$0:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    invoke-static {p1}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->access$getGson$p(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;)Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    goto :goto_2d

    :cond_2c
    const/4 p2, 0x0

    :goto_2d
    const-class v0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;

    .line 90
    iget-object p2, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    const/4 v1, 0x1

    iget v2, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;->$type:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->aiTemplate$default(Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;ZILjava/lang/String;ILjava/lang/Object;)V

    goto :goto_67

    .line 93
    :cond_4a
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    const/4 v0, 0x0

    iget v1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$getAiPaintingTemplates$1;->$type:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "接口返回结果不是成功:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->aiTemplate(ZILjava/lang/String;)V

    :goto_67
    return-void
.end method
