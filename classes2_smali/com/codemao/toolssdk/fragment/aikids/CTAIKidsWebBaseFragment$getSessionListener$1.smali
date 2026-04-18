.class public final Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1;
.super Ljava/lang/Object;
.source "CTAIKidsWebBaseFragment.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/CMToolSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;

    .line 93
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

    .line 112
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toolLoadDidFail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCodeLab(Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getStatus()I

    move-result p1

    invoke-static {p2, p1}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->access$showErrorLoad(Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;I)V

    return-void
.end method

.method public toolLoadDidFinish()V
    .registers 8

    .line 99
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;->dismissLoadDialog()V

    .line 100
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "加载成功"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCodeLab(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;

    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;

    const/4 v3, 0x0

    invoke-direct {v4, v0, v3}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;-><init>(Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;Lkotlin/coroutines/Continuation;)V

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
    .registers 7

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toolSessionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppWork(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getTarget()Lcom/codemao/toolssdk/model/dsbridge/Target;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/Target;->getId()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getValue()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    const-string v3, "type"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_32

    :cond_31
    move-object v1, v2

    .line 120
    :goto_32
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getValue()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_45

    const-string v4, "url"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_45

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_46

    :cond_45
    move-object v3, v2

    .line 121
    :goto_46
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getValue()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_52

    const-string v2, "materialType"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_52
    const-string v4, "actor"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 122
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->isKnButtonAndExit()Z

    move-result p1

    if-eqz p1, :cond_63

    .line 123
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->exitPage()V

    :cond_63
    const-string p1, "AI_KIDS"

    .line 125
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    const-string p1, "SAVE"

    .line 126
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 127
    sget-object p1, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment;->Companion:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;

    if-nez v3, :cond_79

    const-string v3, "empty"

    :cond_79
    invoke-virtual {p1, v2, v3}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;->addMaterials(ZLjava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_85
    return-void
.end method
