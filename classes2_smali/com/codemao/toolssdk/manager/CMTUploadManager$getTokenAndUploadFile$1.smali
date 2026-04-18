.class public final Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;
.super Ljava/lang/Object;
.source "CMTUploadManager.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/manager/CMTUploadManager;->getTokenAndUploadFile(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $failCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $filePath:Ljava/lang/String;

.field final synthetic $newCall:Lokhttp3/Call;

.field final synthetic $successCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/manager/CMTUploadManager;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/manager/CMTUploadManager;Lokhttp3/Call;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/manager/CMTUploadManager;",
            "Lokhttp3/Call;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->this$0:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->$newCall:Lokhttp3/Call;

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->$failCallback:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->$filePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->$successCallback:Lkotlin/jvm/functions/Function1;

    .line 48
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

    .line 50
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->this$0:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    invoke-static {p1}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->access$getCallList$p(Lcom/codemao/toolssdk/manager/CMTUploadManager;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->$newCall:Lokhttp3/Call;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->$failCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 6

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->this$0:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    invoke-static {p1}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->access$getCallList$p(Lcom/codemao/toolssdk/manager/CMTUploadManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_17

    return-void

    .line 56
    :cond_17
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->this$0:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    invoke-static {p1}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->access$getCallList$p(Lcom/codemao/toolssdk/manager/CMTUploadManager;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->$newCall:Lokhttp3/Call;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    :try_start_22
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->this$0:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    invoke-static {p1}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->access$getGson$p(Lcom/codemao/toolssdk/manager/CMTUploadManager;)Lcom/google/gson/Gson;

    move-result-object p1

    .line 59
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    const-class v1, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;

    .line 58
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;

    .line 61
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_53

    .line 62
    iget-object p2, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->this$0:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    const-string v0, "qiNiuResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->$filePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->$successCallback:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->$failCallback:Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p1, v0, v1, v2}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->access$uploadToQiNiuServer(Lcom/codemao/toolssdk/manager/CMTUploadManager;Lcom/codemao/toolssdk/model/http/GetQiniuResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_52} :catch_53

    return-void

    .line 68
    :catch_53
    :cond_53
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;->$failCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
