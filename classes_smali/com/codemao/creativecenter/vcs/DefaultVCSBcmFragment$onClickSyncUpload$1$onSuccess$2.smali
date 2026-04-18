.class public final Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;
.super Ljava/lang/Object;
.source "DefaultVCSBcmActivity.kt"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needUpdate(Ljava/lang/String;)V
    .registers 4

    .line 385
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->access$getMSyncWorkProgressPop$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string/jumbo v0, "同步作品失败"

    const-string/jumbo v1, "重试"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 377
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->access$getMSyncWorkProgressPop$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string/jumbo v0, "同步作品失败"

    const-string/jumbo v1, "重试"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public onIlleagal()V
    .registers 4

    .line 381
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->access$getMSyncWorkProgressPop$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string/jumbo v1, "同步作品失败"

    const-string/jumbo v2, "重试"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 304
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 308
    :cond_7
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->access$getMApiStore$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    move-result-object p1

    .line 309
    iget-object p2, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object p2, p2, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {p2}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p2

    const-string v0, ""

    if-eqz p2, :cond_20

    iget-object p2, p2, Lcom/codemao/creativestore/bean/WorksEvent;->seekHelperUid:Ljava/lang/String;

    if-eqz p2, :cond_20

    goto :goto_21

    :cond_20
    move-object p2, v0

    .line 310
    :goto_21
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object v1, v1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, v1, Lcom/codemao/creativestore/bean/WorksEvent;->seekHelperWorkId:Ljava/lang/String;

    if-eqz v1, :cond_30

    move-object v0, v1

    :cond_30
    if-nez p3, :cond_35

    .line 311
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 308
    :cond_35
    invoke-virtual {p1, p2, v0, p3}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->syncWork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 313
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 314
    iget-object p2, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object p2, p2, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {p2}, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->bindRxLifeCycle()Lcom/codemao/creativecenter/base/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 315
    new-instance p2, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;-><init>(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
