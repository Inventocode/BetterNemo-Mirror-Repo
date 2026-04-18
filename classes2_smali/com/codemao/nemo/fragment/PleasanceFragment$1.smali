.class Lcom/codemao/nemo/fragment/PleasanceFragment$1;
.super Ljava/lang/Object;
.source "PleasanceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/PleasanceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/PleasanceFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/PleasanceFragment;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/codemao/nemo/fragment/PleasanceFragment$1;->this$0:Lcom/codemao/nemo/fragment/PleasanceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/String;

    const-string v1, "游乐园-点击图书馆入口"

    .line 79
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "nemo://com.codemao.nemo/openwith?type=5&url=https://test-shequ.codemao.cn/wiki/novel"

    .line 82
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_23

    :cond_1d
    const-string v0, "nemo://com.codemao.nemo/openwith?type=5&url=https://shequ.codemao.cn/wiki/novel"

    .line 84
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 86
    :goto_23
    iget-object v1, p0, Lcom/codemao/nemo/fragment/PleasanceFragment$1;->this$0:Lcom/codemao/nemo/fragment/PleasanceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1, p1}, Lcom/codemao/nemo/activity/LocalJumpHelper;->jump(Landroid/net/Uri;Landroid/content/Context;ZZ)V

    return-void
.end method
