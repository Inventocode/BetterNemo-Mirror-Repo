.class Lcom/codemao/nemo/activity/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/SettingActivity;->getUpdateInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/SettingActivity;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/codemao/nemo/activity/SettingActivity$1;->this$0:Lcom/codemao/nemo/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chekFinished(ZLjava/lang/String;)V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/codemao/nemo/activity/SettingActivity$1;->this$0:Lcom/codemao/nemo/activity/SettingActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/SettingActivity;->access$002(Lcom/codemao/nemo/activity/SettingActivity;Z)Z

    .line 91
    iget-object v0, p0, Lcom/codemao/nemo/activity/SettingActivity$1;->this$0:Lcom/codemao/nemo/activity/SettingActivity;

    invoke-static {v0, p2}, Lcom/codemao/nemo/activity/SettingActivity;->access$102(Lcom/codemao/nemo/activity/SettingActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_24

    .line 93
    iget-object p1, p0, Lcom/codemao/nemo/activity/SettingActivity$1;->this$0:Lcom/codemao/nemo/activity/SettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/SettingActivity;->tvHasNewVersion:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/codemao/nemo/activity/SettingActivity$1;->this$0:Lcom/codemao/nemo/activity/SettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/SettingActivity;->rlUpdate:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 95
    iget-object p1, p0, Lcom/codemao/nemo/activity/SettingActivity$1;->this$0:Lcom/codemao/nemo/activity/SettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/SettingActivity;->ivUpdate:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3b

    .line 97
    :cond_24
    iget-object p1, p0, Lcom/codemao/nemo/activity/SettingActivity$1;->this$0:Lcom/codemao/nemo/activity/SettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/SettingActivity;->tvHasNewVersion:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/activity/SettingActivity$1;->this$0:Lcom/codemao/nemo/activity/SettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/SettingActivity;->rlUpdate:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 99
    iget-object p1, p0, Lcom/codemao/nemo/activity/SettingActivity$1;->this$0:Lcom/codemao/nemo/activity/SettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/SettingActivity;->ivUpdate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3b
    return-void
.end method
