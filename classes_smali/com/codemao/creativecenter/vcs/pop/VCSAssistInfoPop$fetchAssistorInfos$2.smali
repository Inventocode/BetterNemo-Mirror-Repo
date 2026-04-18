.class public final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;
.super Lcom/codemao/creativecenter/http/CommonSubcriber;
.source "VCSAssistInfoPop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->fetchAssistorInfos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/http/CommonSubcriber<",
        "Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 287
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAssistorInfos$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 288
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAdapter$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 290
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setupMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;)V
    .registers 5

    .line 257
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAssistorInfos$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->getToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    goto :goto_16

    :cond_14
    const-string v1, ""

    :goto_16
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setAssistCode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Ljava/lang/String;)V

    if-eqz p1, :cond_67

    .line 259
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->getAssistantInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_67

    .line 265
    :cond_26
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAssistorInfos$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->getAssistantInfoList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 266
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAdapter$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 280
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setupMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    .line 282
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    .line 283
    new-instance v0, Lcom/codemao/creativecenter/vcs/events/AssistorVersionUpdateEvent;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getOriginBcm()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/WorksEvent;->getWorkUid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "originBcm.workUid"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAdapter$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->hasUpdate()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/vcs/events/AssistorVersionUpdateEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 260
    :cond_67
    :goto_67
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAdapter$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 261
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setupMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 255
    check-cast p1, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;->onSuccess(Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;)V

    return-void
.end method
