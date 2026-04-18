.class final Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "CppToolsManagerLoadUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getLoadFrom(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.toolssdk.cpp.manager.CppToolsManagerLoadUrl"
    f = "CppToolsManagerLoadUrl.kt"
    l = {
        0x12b
    }
    m = "getLoadFrom"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

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
            "Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->label:I

    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;

    invoke-static {p1, p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->access$getLoadFrom(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
