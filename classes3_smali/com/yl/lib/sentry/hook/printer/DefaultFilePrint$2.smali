.class final Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$2;
.super Ljava/lang/Object;
.source "DefaultFilePrint.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;-><init>(Ljava/lang/String;Lcom/yl/lib/sentry/hook/printer/PrintCallBack;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;


# direct methods
.method constructor <init>(Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;)V
    .registers 2

    iput-object p1, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$2;->this$0:Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 44
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$2$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$2$1;-><init>(Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
