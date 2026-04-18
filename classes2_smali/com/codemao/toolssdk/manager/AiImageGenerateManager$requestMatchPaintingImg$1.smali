.class public final Lcom/codemao/toolssdk/manager/AiImageGenerateManager$requestMatchPaintingImg$1;
.super Ljava/lang/Object;
.source "AiImageGenerateManager.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->requestMatchPaintingImg(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
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
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $newCall:Lokhttp3/Call;

.field final synthetic this$0:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;Lokhttp3/Call;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/manager/AiImageGenerateManager;",
            "Lokhttp3/Call;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$requestMatchPaintingImg$1;->this$0:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$requestMatchPaintingImg$1;->$newCall:Lokhttp3/Call;

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$requestMatchPaintingImg$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 51
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

    .line 53
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$requestMatchPaintingImg$1;->this$0:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    invoke-static {p1}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->access$getCallList$p(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$requestMatchPaintingImg$1;->$newCall:Lokhttp3/Call;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$requestMatchPaintingImg$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$requestMatchPaintingImg$1;->this$0:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    invoke-static {p1}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->access$getCallList$p(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$requestMatchPaintingImg$1;->$newCall:Lokhttp3/Call;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 61
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$requestMatchPaintingImg$1;->this$0:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

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
    const-class v0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgResponse;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/http/MatchPaintingImgResponse;

    .line 62
    iget-object p2, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$requestMatchPaintingImg$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/http/MatchPaintingImgResponse;->getSimilar_pics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    return-void
.end method
