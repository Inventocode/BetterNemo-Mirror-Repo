.class Lcom/codemao/nemo/fragment/ThemeDetailFragment$4;
.super Ljava/lang/Object;
.source "ThemeDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/ThemeDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 253
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "主题详情页-点击我要投稿"

    .line 256
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goContribute(Landroid/content/Context;)V

    return-void
.end method
