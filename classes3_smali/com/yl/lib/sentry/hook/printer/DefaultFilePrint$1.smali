.class final Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultFilePrint.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;-><init>(Ljava/lang/String;Lcom/yl/lib/sentry/hook/printer/PrintCallBack;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.yl.lib.sentry.hook.printer.DefaultFilePrint$1"
    f = "DefaultFilePrint.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $fileName:Ljava/lang/String;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 3

    iput-object p1, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$1;->$fileName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$1;

    iget-object v1, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$1;->$fileName:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 38
    iget v0, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$1;->label:I

    if-nez v0, :cond_14

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    sget-object p1, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->INSTANCE:Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;

    iget-object v0, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$1;->$fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->checkDelOldFile(Ljava/lang/String;)V

    .line 40
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
