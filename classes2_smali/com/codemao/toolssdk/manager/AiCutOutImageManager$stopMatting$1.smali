.class public final Lcom/codemao/toolssdk/manager/AiCutOutImageManager$stopMatting$1;
.super Ljava/lang/Object;
.source "AiCutOutImageManager.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->stopMatting(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$stopMatting$1;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p2, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$stopMatting$1;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-static {p2}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->access$getCallList$p(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$stopMatting$1;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-static {p2}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->access$getCallList$p(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
