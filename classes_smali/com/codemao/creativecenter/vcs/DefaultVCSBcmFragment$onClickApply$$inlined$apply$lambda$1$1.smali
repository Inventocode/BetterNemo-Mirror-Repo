.class public final Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;
.super Ljava/lang/Object;
.source "DefaultVCSBcmActivity.kt"

# interfaces
.implements Lcom/codemao/creativestore/listener/SaveBcmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->$this_apply:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_b

    goto :goto_e

    :cond_b
    const-string/jumbo p1, "应用协助作品失败"

    :goto_e
    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5

    .line 423
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->access$getMApiStore$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    move-result-object p1

    .line 424
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/codemao/creativestore/bean/WorksEvent;->seekHelperWorkId:Ljava/lang/String;

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    move-object v0, v1

    .line 425
    :goto_1a
    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;

    iget-object v2, v2, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v2, v2, Lcom/codemao/creativestore/bean/WorksEvent;->assistorId:Ljava/lang/String;

    if-eqz v2, :cond_29

    move-object v1, v2

    .line 423
    :cond_29
    invoke-virtual {p1, v0, v1}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->applyWork(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 427
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 428
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->bindRxLifeCycle()Lcom/codemao/creativecenter/base/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 429
    new-instance v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1$1;-><init>(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
