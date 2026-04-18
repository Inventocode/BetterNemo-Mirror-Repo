.class public final synthetic Lcom/codemao/nemo/common/CustomRefreshLayout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


# instance fields
.field public final synthetic f$0:Lcom/ljwx/baseapp/view/IViewRefreshLayout$RefreshListener;

.field public final synthetic f$1:Lcom/codemao/nemo/common/CustomRefreshLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/ljwx/baseapp/view/IViewRefreshLayout$RefreshListener;Lcom/codemao/nemo/common/CustomRefreshLayout;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/common/CustomRefreshLayout$$ExternalSyntheticLambda1;->f$0:Lcom/ljwx/baseapp/view/IViewRefreshLayout$RefreshListener;

    iput-object p2, p0, Lcom/codemao/nemo/common/CustomRefreshLayout$$ExternalSyntheticLambda1;->f$1:Lcom/codemao/nemo/common/CustomRefreshLayout;

    return-void
.end method


# virtual methods
.method public final onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/common/CustomRefreshLayout$$ExternalSyntheticLambda1;->f$0:Lcom/ljwx/baseapp/view/IViewRefreshLayout$RefreshListener;

    iget-object v1, p0, Lcom/codemao/nemo/common/CustomRefreshLayout$$ExternalSyntheticLambda1;->f$1:Lcom/codemao/nemo/common/CustomRefreshLayout;

    invoke-static {v0, v1, p1}, Lcom/codemao/nemo/common/CustomRefreshLayout;->$r8$lambda$UjTXFLagJc8PLeVU8khcxyIKCU8(Lcom/ljwx/baseapp/view/IViewRefreshLayout$RefreshListener;Lcom/codemao/nemo/common/CustomRefreshLayout;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method
