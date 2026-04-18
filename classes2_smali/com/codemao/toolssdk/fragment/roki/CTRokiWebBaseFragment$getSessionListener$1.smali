.class public final Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1;
.super Ljava/lang/Object;
.source "CTRokiWebBaseFragment.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/CMToolSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toolLoadDidFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/IResult<",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsError;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const-string p2, "toolsError"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toolLoadDidFail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCodeLab(Ljava/lang/String;)V

    .line 119
    iget-object p2, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getStatus()I

    move-result p1

    invoke-static {p2, p1}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->access$showErrorLoad(Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;I)V

    return-void
.end method

.method public toolLoadDidFinish()V
    .registers 8

    .line 107
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;->dismissLoadDialog()V

    .line 108
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "加载成功"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCodeLab(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;

    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;

    const/4 v3, 0x0

    invoke-direct {v4, v0, v3}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;-><init>(Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public toolLoadDidStart()V
    .registers 1

    return-void
.end method

.method public toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 5

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toolSessionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppWork(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->isKnButtonAndExit()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 125
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->exitPage()V

    :cond_26
    return-void
.end method
