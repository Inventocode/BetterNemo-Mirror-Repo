.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$12;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Lcom/codemao/creativestore/listener/SaveBcmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->onUserInfoChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V
    .registers 2

    .line 831
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$12;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .registers 2

    .line 843
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$12;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->hideSavintPop()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 4

    .line 834
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$12;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->hideSavintPop()V

    .line 835
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/BcmHelper;->moveUnLoginDirToUserDir(Ljava/lang/Long;)V

    .line 836
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$12;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 837
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$12;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/codemao/nemo/MainActivityV2;->startMainActivityV2(Landroid/content/Context;I)V

    .line 838
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$12;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->finish()V

    return-void
.end method
