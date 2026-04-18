.class final Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "CppToolsManagerLoadUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getLoadWorkUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.toolssdk.cpp.manager.CppToolsManagerLoadUrl"
    f = "CppToolsManagerLoadUrl.kt"
    l = {
        0xdf
    }
    m = "getLoadWorkUrl"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->label:I

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getLoadWorkUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
