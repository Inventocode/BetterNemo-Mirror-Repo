.class Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$5;
.super Ljava/lang/Object;
.source "NewBeeWorkPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->onDownloadError()V
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

    .line 308
    iput-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$5;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$5;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    const-string/jumbo v1, "加载失败，请重试"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$5;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$1200(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$5;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$1200(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 313
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$5;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$1200(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->resetStatus()V

    :cond_25
    return-void
.end method
