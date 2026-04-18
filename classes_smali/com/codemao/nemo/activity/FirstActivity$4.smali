.class Lcom/codemao/nemo/activity/FirstActivity$4;
.super Ljava/lang/Object;
.source "FirstActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/FirstActivity;->afterAgreePolicy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/FirstActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/FirstActivity;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/codemao/nemo/activity/FirstActivity$4;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-wide/16 v0, 0x1f4

    .line 191
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 192
    iget-object v0, p0, Lcom/codemao/nemo/activity/FirstActivity$4;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/BcmHelper;->needUpgradeBcm(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2c

    .line 193
    iget-object v0, p0, Lcom/codemao/nemo/activity/FirstActivity$4;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/FirstActivity;->access$400(Lcom/codemao/nemo/activity/FirstActivity;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-wide/16 v2, 0x3e8

    .line 194
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 195
    iget-object v0, p0, Lcom/codemao/nemo/activity/FirstActivity$4;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/BcmHelper;->upgradeBcm(Landroid/content/Context;)V

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/activity/FirstActivity$4;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/FirstActivity;->access$400(Lcom/codemao/nemo/activity/FirstActivity;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3f

    :cond_2c
    const-wide/16 v2, 0x12c

    .line 198
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 199
    iget-object v0, p0, Lcom/codemao/nemo/activity/FirstActivity$4;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/FirstActivity;->access$400(Lcom/codemao/nemo/activity/FirstActivity;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_3f
    return-void
.end method
