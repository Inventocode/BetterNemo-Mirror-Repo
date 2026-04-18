.class public final Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment$getSessionListener$1;
.super Ljava/lang/Object;
.source "CodeLabWebBaseFragment.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/CMToolSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;

    .line 96
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

    .line 107
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toolLoadDidFail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCodeLab(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getStatus()I

    move-result p1

    invoke-static {p2, p1}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->access$showErrorLoad(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;I)V

    return-void
.end method

.method public toolLoadDidFinish()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;->dismissLoadDialog()V

    .line 103
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "加载成功"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCodeLab(Ljava/lang/String;)V

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

    .line 112
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toolSessionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppWork(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->isKnButtonAndExit()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 114
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment$getSessionListener$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->exitPage()V

    :cond_26
    return-void
.end method
