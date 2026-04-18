.class public final Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1$1;
.super Lcom/codemao/creativecenter/http/CommonSubcriber;
.source "DefaultVCSBcmActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;->onSuccess(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;

    .line 429
    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 455
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->$this_apply:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 459
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1$1;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 429
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .registers 6

    .line 433
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/WorksEvent;->toCreateData()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    goto :goto_13

    :cond_12
    move-object p1, v0

    .line 434
    :goto_13
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;

    iget-object v1, v1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;

    iget-object v1, v1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v0, v1, Lcom/codemao/creativestore/bean/WorksEvent;->seekHelperWorkUid:Ljava/lang/String;

    :cond_21
    const-string v1, ""

    .line 432
    invoke-static {p1, v0, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->copyBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 437
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    .line 439
    new-instance v0, Lcom/codemao/creativecenter/vcs/events/ReloadBcmEvent;

    .line 440
    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;

    iget-object v2, v2, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;

    iget-object v2, v2, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v2

    if-eqz v2, :cond_3d

    iget-object v2, v2, Lcom/codemao/creativestore/bean/WorksEvent;->seekHelperWorkUid:Ljava/lang/String;

    if-eqz v2, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v2, v1

    .line 439
    :goto_3e
    invoke-direct {v0, v2}, Lcom/codemao/creativecenter/vcs/events/ReloadBcmEvent;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 444
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    .line 446
    new-instance v0, Lcom/codemao/creativecenter/vcs/events/ApplyAssistorBcmEvent;

    .line 447
    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;

    iget-object v2, v2, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;

    iget-object v2, v2, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v2

    if-eqz v2, :cond_5b

    iget-object v2, v2, Lcom/codemao/creativestore/bean/WorksEvent;->seekHelperWorkUid:Ljava/lang/String;

    if-eqz v2, :cond_5b

    goto :goto_5c

    :cond_5b
    move-object v2, v1

    .line 448
    :goto_5c
    iget-object v3, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;

    iget-object v3, v3, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;

    iget-object v3, v3, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v3

    if-eqz v3, :cond_6d

    iget-object v3, v3, Lcom/codemao/creativestore/bean/WorksEvent;->assistorId:Ljava/lang/String;

    if-eqz v3, :cond_6d

    move-object v1, v3

    .line 446
    :cond_6d
    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/vcs/events/ApplyAssistorBcmEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 451
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->finish()V

    return-void
.end method
