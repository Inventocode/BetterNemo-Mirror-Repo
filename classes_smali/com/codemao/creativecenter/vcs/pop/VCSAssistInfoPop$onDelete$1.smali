.class public final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;
.super Lcom/codemao/creativecenter/http/CommonSubcriber;
.source "VCSAssistInfoPop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->onDelete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/http/CommonSubcriber<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $pos:I

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 654
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    iput p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;->$pos:I

    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 668
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getCtx()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 672
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 654
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .registers 5

    .line 656
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAssistorInfos$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;->$pos:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mAssistorInfos.removeAt(pos)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    .line 658
    sget-object v0, Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;->INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getOriginBcm()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    const-string v2, "originBcm.workId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;->removeLocalVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAdapter$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object p1

    iget v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;->$pos:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 661
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setupMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    .line 663
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    .line 664
    new-instance v0, Lcom/codemao/creativecenter/vcs/events/AssistorVersionUpdateEvent;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getOriginBcm()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/WorksEvent;->getWorkUid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "originBcm.workUid"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAdapter$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->hasUpdate()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/vcs/events/AssistorVersionUpdateEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
