.class Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$3;
.super Ljava/lang/Object;
.source "UserDetailWorkListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$3;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$3;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->access$000(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;)Z

    move-result v0

    const-string v1, "主态"

    const-string v2, "客态"

    if-eqz v0, :cond_11

    move-object v0, v1

    goto :goto_12

    :cond_11
    move-object v0, v2

    :goto_12
    const/4 v3, 0x0

    aput-object v0, p1, v3

    const-string v0, "个人主页-点击最热tab"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v4, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$3;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-static {v4}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->access$000(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_28

    :cond_27
    move-object v1, v2

    :goto_28
    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setUserState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 120
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$3;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    iget-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    if-eqz v0, :cond_3a

    return-void

    .line 123
    :cond_3a
    iget-object v0, p1, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->tvHotest:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060169

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$3;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    iget-object v0, p1, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->tvLatest:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060160

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$3;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    const-string v0, "hot"

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->access$102(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$3;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    iput v3, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 127
    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 128
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$3;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->getData()V

    return-void
.end method
