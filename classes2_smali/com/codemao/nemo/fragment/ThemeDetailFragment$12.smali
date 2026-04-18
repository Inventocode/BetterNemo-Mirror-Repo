.class Lcom/codemao/nemo/fragment/ThemeDetailFragment$12;
.super Lcom/scwang/smartrefresh/layout/listener/SimpleMultiPurposeListener;
.source "ThemeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/ThemeDetailFragment;->initRecyclerView()V
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

    .line 371
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$12;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-direct {p0}, Lcom/scwang/smartrefresh/layout/listener/SimpleMultiPurposeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderMoving(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;ZFIII)V
    .registers 7

    .line 374
    invoke-super/range {p0 .. p6}, Lcom/scwang/smartrefresh/layout/listener/SimpleMultiPurposeListener;->onHeaderMoving(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;ZFIII)V

    .line 375
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$12;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {p1, p4}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$300(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)V

    return-void
.end method

.method public onHeaderReleased(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)V
    .registers 4

    .line 380
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$12;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$500(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    return-void
.end method
