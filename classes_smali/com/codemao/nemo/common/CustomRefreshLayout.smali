.class public final Lcom/codemao/nemo/common/CustomRefreshLayout;
.super Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.source "CustomRefreshLayout.kt"

# interfaces
.implements Lcom/ljwx/baseapp/view/IViewRefreshLayout;


# instance fields
.field private refreshPage:Lcom/ljwx/baseapp/page/IPageRefreshLayout;


# direct methods
.method public static synthetic $r8$lambda$6YAN_dRK5cS3ZvD2VblPZIpeae4(Lcom/codemao/nemo/common/CustomRefreshLayout;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/common/CustomRefreshLayout;->_init_$lambda$0(Lcom/codemao/nemo/common/CustomRefreshLayout;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UjTXFLagJc8PLeVU8khcxyIKCU8(Lcom/ljwx/baseapp/view/IViewRefreshLayout$RefreshListener;Lcom/codemao/nemo/common/CustomRefreshLayout;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/common/CustomRefreshLayout;->setOnRefreshListener$lambda$1(Lcom/ljwx/baseapp/view/IViewRefreshLayout$RefreshListener;Lcom/codemao/nemo/common/CustomRefreshLayout;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/codemao/nemo/common/CustomRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1a

    const p1, 0x7f0a0099

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 24
    :cond_1a
    new-instance p1, Lcom/codemao/nemo/common/CustomRefreshLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/common/CustomRefreshLayout$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/common/CustomRefreshLayout;)V

    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 12
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/common/CustomRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/codemao/nemo/common/CustomRefreshLayout;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/common/CustomRefreshLayout;->refreshPage:Lcom/ljwx/baseapp/page/IPageRefreshLayout;

    if-eqz p0, :cond_11

    invoke-interface {p0}, Lcom/ljwx/baseapp/page/IPageRefreshLayout;->refreshViewOnRefresh()V

    :cond_11
    return-void
.end method

.method private static final setOnRefreshListener$lambda$1(Lcom/ljwx/baseapp/view/IViewRefreshLayout$RefreshListener;Lcom/codemao/nemo/common/CustomRefreshLayout;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 4

    const-string v0, "$refreshListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {p0, p1}, Lcom/ljwx/baseapp/view/IViewRefreshLayout$RefreshListener;->onRefresh(Lcom/ljwx/baseapp/view/IViewRefreshLayout;)V

    return-void
.end method


# virtual methods
.method public enableRefresh(Z)V
    .registers 2

    .line 44
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method

.method public getView()Landroid/view/ViewGroup;
    .registers 1

    return-object p0
.end method

.method public refreshFinish()V
    .registers 1

    .line 34
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method

.method public setOnRefreshListener(Lcom/ljwx/baseapp/view/IViewRefreshLayout$RefreshListener;)V
    .registers 3

    const-string v0, "refreshListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/codemao/nemo/common/CustomRefreshLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/codemao/nemo/common/CustomRefreshLayout$$ExternalSyntheticLambda1;-><init>(Lcom/ljwx/baseapp/view/IViewRefreshLayout$RefreshListener;Lcom/codemao/nemo/common/CustomRefreshLayout;)V

    invoke-super {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method

.method public setRefreshHeader(Lcom/ljwx/baseapp/view/IViewRefreshHeader;)V
    .registers 3

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    instance-of v0, p1, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v0, :cond_e

    .line 53
    check-cast p1, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    :cond_e
    return-void
.end method

.method public setRefreshPage(Lcom/ljwx/baseapp/page/IPageRefreshLayout;)V
    .registers 3

    const-string v0, "refreshPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/codemao/nemo/common/CustomRefreshLayout;->refreshPage:Lcom/ljwx/baseapp/page/IPageRefreshLayout;

    return-void
.end method
