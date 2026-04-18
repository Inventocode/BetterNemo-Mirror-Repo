.class Lcom/codemao/nemo/activity/CmDetailActivity$1;
.super Ljava/lang/Object;
.source "CmDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CmDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CmDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CmDetailActivity;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/codemao/nemo/activity/CmDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CmDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 70
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string/jumbo v0, "新作喵喵看页-点击返回"

    .line 71
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/codemao/nemo/activity/CmDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CmDetailActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_14
    return-void
.end method
