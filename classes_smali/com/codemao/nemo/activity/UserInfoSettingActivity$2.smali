.class Lcom/codemao/nemo/activity/UserInfoSettingActivity$2;
.super Ljava/lang/Object;
.source "UserInfoSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserInfoSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$2;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$2;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$300(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)Lcom/codemao/nemo/view/KeyboardHeightProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->start()V

    .line 161
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$2;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object v1, v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->flRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$402(Lcom/codemao/nemo/activity/UserInfoSettingActivity;I)I

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$2;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object v1, v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->flRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$502(Lcom/codemao/nemo/activity/UserInfoSettingActivity;I)I

    return-void
.end method
