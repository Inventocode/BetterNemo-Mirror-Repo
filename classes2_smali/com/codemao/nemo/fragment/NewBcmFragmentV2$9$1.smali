.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->lambda$run$0(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$from:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    .line 556
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput p3, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->val$from:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needUpdate(Ljava/lang/String;)V
    .registers 2

    .line 644
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$800(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Lcom/codemao/nemo/view/ReactUploadDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Canceled"

    .line 631
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "Socket closed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 632
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "上传失败，请重试"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 634
    :cond_1d
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$800(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Lcom/codemao/nemo/view/ReactUploadDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onIlleagal()V
    .registers 2

    .line 639
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$800(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Lcom/codemao/nemo/view/ReactUploadDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 559
    iget-object p2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p2}, Lcom/codemao/creativecenter/NewBcmFragment;->refreshMeta()V

    .line 560
    iget-object p2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 561
    iget-object p2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p2}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 563
    invoke-virtual {p2, p1}, Lcom/codemao/creativestore/bean/WorksEvent;->setWorkId(Ljava/lang/String;)V

    .line 565
    :cond_18
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->setCurrentWorkId(Ljava/lang/String;)V

    .line 566
    sget-object p1, Lcom/codemao/nemo/constant/AppConfig;->INSTANCE:Lcom/codemao/nemo/constant/AppConfig;

    invoke-virtual {p1}, Lcom/codemao/nemo/constant/AppConfig;->isPublishAllPass()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 567
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    iget-object p2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->goPublishPage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void

    .line 570
    :cond_42
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    .line 571
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    new-instance v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;)V

    .line 570
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;->checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    return-void
.end method
