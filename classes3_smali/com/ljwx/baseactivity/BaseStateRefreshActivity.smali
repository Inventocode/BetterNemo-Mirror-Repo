.class public Lcom/ljwx/baseactivity/BaseStateRefreshActivity;
.super Lcom/ljwx/baseactivity/BaseActivity;
.source "BaseStateRefreshActivity.kt"

# interfaces
.implements Lcom/ljwx/baseapp/page/IPagePopLoading;
.implements Lcom/ljwx/baseapp/page/IPageStateLayout;
.implements Lcom/ljwx/baseapp/page/IPageRefreshLayout;


# instance fields
.field private final mPopupLoading$delegate:Lkotlin/Lazy;

.field private mRefreshLayout:Lcom/ljwx/baseapp/view/IViewRefreshLayout;

.field private mStateLayout:Lcom/ljwx/baseapp/view/IViewStateLayout;

.field private mStateRunnable:Ljava/lang/Runnable;

.field private stateLoadingDataSucceeded:Z


# direct methods
.method public static synthetic $r8$lambda$8ZZg9xRDtYa_WEOTGAJSClx_2UM(Lcom/ljwx/baseactivity/BaseStateRefreshActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->pullRefreshFinish$lambda$2(Lcom/ljwx/baseactivity/BaseStateRefreshActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p6bIgXs41tyl-bAtIwSzewCVi5g(Lcom/ljwx/baseactivity/BaseStateRefreshActivity;ILandroid/view/View;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->showStateLayout$lambda$1(Lcom/ljwx/baseactivity/BaseStateRefreshActivity;ILandroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pA4W0iNJoDg9xac54CgDeeA6M2k(Lcom/ljwx/baseactivity/BaseStateRefreshActivity;ZZLjava/lang/CharSequence;Z)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->showPopLoading$lambda$0(Lcom/ljwx/baseactivity/BaseStateRefreshActivity;ZZLjava/lang/CharSequence;Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/ljwx/baseactivity/BaseActivity;-><init>(I)V

    .line 21
    new-instance p1, Lcom/ljwx/baseactivity/BaseStateRefreshActivity$mPopupLoading$2;

    invoke-direct {p1, p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity$mPopupLoading$2;-><init>(Lcom/ljwx/baseactivity/BaseStateRefreshActivity;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->mPopupLoading$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 17
    sget p1, Lcom/ljwx/baseapp/R$layout;->baseapp_state_layout_empty:I

    :cond_6
    invoke-direct {p0, p1}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;-><init>(I)V

    return-void
.end method

.method private final getMPopupLoading()Lcom/ljwx/baseapp/BasePopupLoading;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->mPopupLoading$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/baseapp/BasePopupLoading;

    return-object v0
.end method

.method private static final pullRefreshFinish$lambda$2(Lcom/ljwx/baseactivity/BaseStateRefreshActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object p0, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->mRefreshLayout:Lcom/ljwx/baseapp/view/IViewRefreshLayout;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/ljwx/baseapp/view/IViewRefreshLayout;->refreshFinish()V

    :cond_c
    return-void
.end method

.method private static final showPopLoading$lambda$0(Lcom/ljwx/baseactivity/BaseStateRefreshActivity;ZZLjava/lang/CharSequence;Z)V
    .registers 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->getMPopupLoading()Lcom/ljwx/baseapp/BasePopupLoading;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v7, p4

    invoke-static/range {v1 .. v9}, Lcom/ljwx/baseapp/BasePopupLoading;->showPopup$default(Lcom/ljwx/baseapp/BasePopupLoading;ZZLjava/lang/CharSequence;ZZZILjava/lang/Object;)V

    return-void
.end method

.method private static final showStateLayout$lambda$1(Lcom/ljwx/baseactivity/BaseStateRefreshActivity;ILandroid/view/View;Ljava/lang/Object;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object p0, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->mStateLayout:Lcom/ljwx/baseapp/view/IViewStateLayout;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1, p2, p3}, Lcom/ljwx/baseapp/view/IViewStateLayout;->showStateView(ILandroid/view/View;Ljava/lang/Object;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public addStateLayoutClick(IILandroid/view/View$OnClickListener;)V
    .registers 5

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->mStateLayout:Lcom/ljwx/baseapp/view/IViewStateLayout;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2, p3}, Lcom/ljwx/baseapp/view/IViewStateLayout;->addClickListener(IILandroid/view/View$OnClickListener;)V

    :cond_c
    return-void
.end method

.method public dismissPopLoading(Z)V
    .registers 2

    .line 73
    invoke-direct {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->getMPopupLoading()Lcom/ljwx/baseapp/BasePopupLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ljwx/baseapp/BasePopupLoading;->dismiss()V

    return-void
.end method

.method public enableAutoInitRefreshLayout()V
    .registers 3

    .line 98
    sget v0, Lcom/ljwx/baseapp/R$id;->base_app_quick_refresh_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    .line 100
    sget v0, Lcom/ljwx/baseapp/R$id;->base_app_page_refresh_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_e
    if-eqz v0, :cond_19

    .line 102
    instance-of v1, v0, Lcom/ljwx/baseapp/view/IViewRefreshLayout;

    if-eqz v1, :cond_19

    .line 103
    check-cast v0, Lcom/ljwx/baseapp/view/IViewRefreshLayout;

    invoke-virtual {p0, v0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->initRefreshLayout(Lcom/ljwx/baseapp/view/IViewRefreshLayout;)V

    :cond_19
    return-void
.end method

.method public enableAutoInitStateLayout()V
    .registers 3

    .line 88
    sget v0, Lcom/ljwx/baseapp/R$id;->base_app_quick_state_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 89
    instance-of v1, v0, Lcom/ljwx/baseapp/view/IViewStateLayout;

    if-eqz v1, :cond_11

    .line 90
    check-cast v0, Lcom/ljwx/baseapp/view/IViewStateLayout;

    invoke-virtual {p0, v0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->initStateLayout(Lcom/ljwx/baseapp/view/IViewStateLayout;)V

    :cond_11
    return-void
.end method

.method public enableRefresh()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final getStateLoadingDataSucceeded()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->stateLoadingDataSucceeded:Z

    return v0
.end method

.method public initRefreshLayout(Lcom/ljwx/baseapp/view/IViewRefreshLayout;)V
    .registers 5

    .line 181
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->enableRefresh()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 182
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "view,启用下拉刷新"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    .line 183
    invoke-interface {p1, v0}, Lcom/ljwx/baseapp/view/IViewRefreshLayout;->enableRefresh(Z)V

    .line 184
    :cond_17
    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->mRefreshLayout:Lcom/ljwx/baseapp/view/IViewRefreshLayout;

    if-eqz p1, :cond_25

    .line 185
    invoke-interface {p1, p0}, Lcom/ljwx/baseapp/view/IViewRefreshLayout;->setRefreshPage(Lcom/ljwx/baseapp/page/IPageRefreshLayout;)V

    goto :goto_25

    :cond_1f
    if-eqz p1, :cond_25

    const/4 v0, 0x0

    .line 187
    invoke-interface {p1, v0}, Lcom/ljwx/baseapp/view/IViewRefreshLayout;->enableRefresh(Z)V

    :cond_25
    :goto_25
    return-void
.end method

.method public initStateLayout(Lcom/ljwx/baseapp/view/IViewStateLayout;)V
    .registers 5

    .line 115
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "初始化多状态布局"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->mStateLayout:Lcom/ljwx/baseapp/view/IViewStateLayout;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 46
    invoke-super {p0, p1}, Lcom/ljwx/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 228
    invoke-direct {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->getMPopupLoading()Lcom/ljwx/baseapp/BasePopupLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ljwx/baseapp/BasePopupLoading;->dismiss()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->mStateLayout:Lcom/ljwx/baseapp/view/IViewStateLayout;

    .line 230
    iput-object v0, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->mStateRunnable:Ljava/lang/Runnable;

    .line 231
    iput-object v0, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->mRefreshLayout:Lcom/ljwx/baseapp/view/IViewRefreshLayout;

    .line 232
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onViewCreated()V
    .registers 4

    .line 52
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseActivity;->onViewCreated()V

    .line 53
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "静默初始化多状态和刷新"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->enableAutoInitStateLayout()V

    .line 55
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->enableAutoInitRefreshLayout()V

    return-void
.end method

.method public pullRefreshFinish()V
    .registers 2

    .line 222
    new-instance v0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ljwx/baseactivity/BaseStateRefreshActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshViewOnRefresh()V
    .registers 4

    .line 206
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "下拉刷新控件,触发刷新"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final setStateLoadingDataSucceeded(Z)V
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->stateLoadingDataSucceeded:Z

    return-void
.end method

.method public showPopLoading(ZLjava/lang/CharSequence;ZZI)V
    .registers 12

    .line 65
    new-instance p5, Lcom/ljwx/baseactivity/BaseStateRefreshActivity$$ExternalSyntheticLambda2;

    move-object v0, p5

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity$$ExternalSyntheticLambda2;-><init>(Lcom/ljwx/baseactivity/BaseStateRefreshActivity;ZZLjava/lang/CharSequence;Z)V

    invoke-virtual {p0, p5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showStateLayout(IZLandroid/view/View;Ljava/lang/Object;)V
    .registers 5

    if-eqz p2, :cond_25

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_25

    .line 156
    :cond_9
    invoke-static {}, Lcom/ljwx/baseapp/extensions/AppExtensionKt;->isMainThread()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 157
    iget-object p2, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->mStateLayout:Lcom/ljwx/baseapp/view/IViewStateLayout;

    if-eqz p2, :cond_25

    invoke-interface {p2, p1, p3, p4}, Lcom/ljwx/baseapp/view/IViewStateLayout;->showStateView(ILandroid/view/View;Ljava/lang/Object;)V

    goto :goto_25

    .line 159
    :cond_17
    iget-object p2, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->mStateRunnable:Ljava/lang/Runnable;

    if-nez p2, :cond_20

    new-instance p2, Lcom/ljwx/baseactivity/BaseStateRefreshActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity$$ExternalSyntheticLambda1;-><init>(Lcom/ljwx/baseactivity/BaseStateRefreshActivity;ILandroid/view/View;Ljava/lang/Object;)V

    :cond_20
    iput-object p2, p0, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->mStateRunnable:Ljava/lang/Runnable;

    .line 162
    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public showStateLoading()V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    .line 169
    invoke-static/range {v0 .. v6}, Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;->showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method
