.class Lcom/codemao/nemo/fragment/ThemeDetailFragment$13;
.super Ljava/lang/Object;
.source "ThemeDetailFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/ThemeDetailFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V
    .registers 2

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 3

    const/16 v0, 0x64

    .line 392
    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method
