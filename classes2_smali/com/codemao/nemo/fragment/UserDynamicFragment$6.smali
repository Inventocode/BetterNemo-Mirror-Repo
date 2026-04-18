.class Lcom/codemao/nemo/fragment/UserDynamicFragment$6;
.super Ljava/lang/Object;
.source "UserDynamicFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/UserDynamicFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$6;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 3

    .line 225
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$6;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$602(Lcom/codemao/nemo/fragment/UserDynamicFragment;I)I

    .line 226
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$6;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$700(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V

    return-void
.end method
