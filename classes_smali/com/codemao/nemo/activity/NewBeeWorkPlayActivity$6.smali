.class Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$6;
.super Ljava/lang/Object;
.source "NewBeeWorkPlayActivity.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->downloadBcm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$6;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 2

    .line 351
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$6;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$1100(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V

    const/4 p1, 0x0

    .line 352
    sput-boolean p1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    return-void
.end method

.method public onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3

    const/4 v0, 0x0

    .line 337
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 338
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$6;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$1200(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$6;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$1200(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 339
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$6;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$1200(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->dismiss()V

    .line 340
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$6;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$200(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_29

    return-void

    .line 346
    :cond_29
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$6;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$1300(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    :cond_2e
    return-void
.end method
