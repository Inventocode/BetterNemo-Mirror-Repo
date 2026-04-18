.class public abstract Lcom/ljwx/basefragment/BaseStateRefreshFragment;
.super Lcom/ljwx/basefragment/BaseFragment;
.source "BaseStateRefreshFragment.kt"

# interfaces
.implements Lcom/ljwx/baseapp/page/IPagePopLoading;
.implements Lcom/ljwx/baseapp/page/IPageStateLayout;
.implements Lcom/ljwx/baseapp/page/IPageRefreshLayout;


# instance fields
.field private mPopupLoading:Lcom/ljwx/baseapp/BasePopupLoading;

.field private mRefreshLayout:Lcom/ljwx/baseapp/view/IViewRefreshLayout;

.field private mStateLayout:Lcom/ljwx/baseapp/view/IViewStateLayout;

.field private mStateRunnable:Ljava/lang/Runnable;

.field private stateLoadingDataSucceeded:Z


# direct methods
.method public static synthetic $r8$lambda$-limZokdT2MSk4pr7Ql1DtFO_JQ(Lcom/ljwx/basefragment/BaseStateRefreshFragment;)V
    .registers 1

    invoke-static {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->pullRefreshFinish$lambda$3(Lcom/ljwx/basefragment/BaseStateRefreshFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9XNkdxlGckr4PtCKn5wNnZiDH3c(Lcom/ljwx/basefragment/BaseStateRefreshFragment;ZZLjava/lang/CharSequence;Z)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showPopLoading$lambda$0(Lcom/ljwx/basefragment/BaseStateRefreshFragment;ZZLjava/lang/CharSequence;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$THagvmFkFKLdA1GVLZNnxCnjqXg(Lcom/ljwx/basefragment/BaseStateRefreshFragment;ILandroid/view/View;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateLayout$lambda$2(Lcom/ljwx/basefragment/BaseStateRefreshFragment;ILandroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wDvfJ-clYWPu_vzPczNMd1iW288(Lcom/ljwx/basefragment/BaseStateRefreshFragment;)V
    .registers 1

    invoke-static {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->dismissPopLoading$lambda$1(Lcom/ljwx/basefragment/BaseStateRefreshFragment;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/ljwx/basefragment/BaseFragment;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 17
    sget p1, Lcom/ljwx/baseapp/R$layout;->baseapp_state_layout_empty:I

    :cond_6
    invoke-direct {p0, p1}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;-><init>(I)V

    return-void
.end method

.method private static final dismissPopLoading$lambda$1(Lcom/ljwx/basefragment/BaseStateRefreshFragment;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mPopupLoading:Lcom/ljwx/baseapp/BasePopupLoading;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/ljwx/baseapp/BasePopupLoading;->dismiss()V

    :cond_c
    return-void
.end method

.method private static final pullRefreshFinish$lambda$3(Lcom/ljwx/basefragment/BaseStateRefreshFragment;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object p0, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mRefreshLayout:Lcom/ljwx/baseapp/view/IViewRefreshLayout;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/ljwx/baseapp/view/IViewRefreshLayout;->refreshFinish()V

    :cond_c
    return-void
.end method

.method private static final showPopLoading$lambda$0(Lcom/ljwx/basefragment/BaseStateRefreshFragment;ZZLjava/lang/CharSequence;Z)V
    .registers 18

    move-object v0, p0

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v1, v0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mPopupLoading:Lcom/ljwx/baseapp/BasePopupLoading;

    if-nez v1, :cond_18

    new-instance v1, Lcom/ljwx/baseapp/BasePopupLoading;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/ljwx/baseapp/BasePopupLoading;-><init>(Landroid/content/Context;)V

    :cond_18
    move-object v4, v1

    iput-object v4, v0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mPopupLoading:Lcom/ljwx/baseapp/BasePopupLoading;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    move v5, p1

    move v6, p2

    move-object/from16 v7, p3

    move/from16 v10, p4

    .line 65
    invoke-static/range {v4 .. v12}, Lcom/ljwx/baseapp/BasePopupLoading;->showPopup$default(Lcom/ljwx/baseapp/BasePopupLoading;ZZLjava/lang/CharSequence;ZZZILjava/lang/Object;)V

    return-void
.end method

.method private static final showStateLayout$lambda$2(Lcom/ljwx/basefragment/BaseStateRefreshFragment;ILandroid/view/View;Ljava/lang/Object;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mStateLayout:Lcom/ljwx/baseapp/view/IViewStateLayout;

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

    .line 121
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mStateLayout:Lcom/ljwx/baseapp/view/IViewStateLayout;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2, p3}, Lcom/ljwx/baseapp/view/IViewStateLayout;->addClickListener(IILandroid/view/View$OnClickListener;)V

    :cond_c
    return-void
.end method

.method public dismissPopLoading(Z)V
    .registers 3

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_e

    new-instance v0, Lcom/ljwx/basefragment/BaseStateRefreshFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment$$ExternalSyntheticLambda1;-><init>(Lcom/ljwx/basefragment/BaseStateRefreshFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public enableAutoInitRefreshLayout()V
    .registers 3

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    sget v1, Lcom/ljwx/baseapp/R$id;->base_app_quick_refresh_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_19

    .line 98
    instance-of v1, v0, Lcom/ljwx/baseapp/view/IViewRefreshLayout;

    if-eqz v1, :cond_19

    .line 99
    check-cast v0, Lcom/ljwx/baseapp/view/IViewRefreshLayout;

    invoke-virtual {p0, v0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->initRefreshLayout(Lcom/ljwx/baseapp/view/IViewRefreshLayout;)V

    :cond_19
    return-void
.end method

.method public enableAutoInitStateLayout()V
    .registers 3

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    sget v1, Lcom/ljwx/baseapp/R$id;->base_app_quick_state_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_19

    .line 88
    instance-of v1, v0, Lcom/ljwx/baseapp/view/IViewStateLayout;

    if-eqz v1, :cond_19

    .line 89
    check-cast v0, Lcom/ljwx/baseapp/view/IViewStateLayout;

    invoke-virtual {p0, v0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->initStateLayout(Lcom/ljwx/baseapp/view/IViewStateLayout;)V

    :cond_19
    return-void
.end method

.method public enableRefresh()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final getStateLoadingDataSucceeded()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->stateLoadingDataSucceeded:Z

    return v0
.end method

.method public initRefreshLayout(Lcom/ljwx/baseapp/view/IViewRefreshLayout;)V
    .registers 5

    .line 179
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->enableRefresh()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 180
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "启用下拉刷新"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    .line 181
    invoke-interface {p1, v0}, Lcom/ljwx/baseapp/view/IViewRefreshLayout;->enableRefresh(Z)V

    .line 182
    :cond_17
    iput-object p1, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mRefreshLayout:Lcom/ljwx/baseapp/view/IViewRefreshLayout;

    if-eqz p1, :cond_25

    .line 183
    invoke-interface {p1, p0}, Lcom/ljwx/baseapp/view/IViewRefreshLayout;->setRefreshPage(Lcom/ljwx/baseapp/page/IPageRefreshLayout;)V

    goto :goto_25

    :cond_1f
    if-eqz p1, :cond_25

    const/4 v0, 0x0

    .line 185
    invoke-interface {p1, v0}, Lcom/ljwx/baseapp/view/IViewRefreshLayout;->enableRefresh(Z)V

    :cond_25
    :goto_25
    return-void
.end method

.method public initStateLayout(Lcom/ljwx/baseapp/view/IViewStateLayout;)V
    .registers 5

    .line 111
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "初始化stateLayout"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mStateLayout:Lcom/ljwx/baseapp/view/IViewStateLayout;

    return-void
.end method

.method public isPopupLoadingShowing()Z
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mPopupLoading:Lcom/ljwx/baseapp/BasePopupLoading;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/ljwx/baseapp/BasePopupLoading;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public loadingStateInitComplete()V
    .registers 2

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->stateLoadingDataSucceeded:Z

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mPopupLoading:Lcom/ljwx/baseapp/BasePopupLoading;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/ljwx/baseapp/BasePopupLoading;->dismiss()V

    :cond_7
    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mStateLayout:Lcom/ljwx/baseapp/view/IViewStateLayout;

    .line 234
    iput-object v0, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mStateRunnable:Ljava/lang/Runnable;

    .line 235
    iput-object v0, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mRefreshLayout:Lcom/ljwx/baseapp/view/IViewRefreshLayout;

    .line 236
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->enableAutoInitStateLayout()V

    .line 47
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->enableAutoInitRefreshLayout()V

    return-void
.end method

.method public pullRefreshFinish()V
    .registers 3

    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/ljwx/basefragment/BaseStateRefreshFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment$$ExternalSyntheticLambda0;-><init>(Lcom/ljwx/basefragment/BaseStateRefreshFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshViewOnRefresh()V
    .registers 4

    .line 204
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "下拉刷新控件,触发刷新"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final setStateLoadingDataSucceeded(Z)V
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->stateLoadingDataSucceeded:Z

    return-void
.end method

.method public showLoadingStateInit()V
    .registers 2

    .line 146
    iget-boolean v0, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->stateLoadingDataSucceeded:Z

    if-nez v0, :cond_7

    .line 147
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateLoading()V

    :cond_7
    return-void
.end method

.method public showPopLoading(ZLjava/lang/CharSequence;ZZI)V
    .registers 13

    if-eqz p1, :cond_1d

    .line 58
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->isPopupLoadingShowing()Z

    move-result p5

    if-eqz p5, :cond_9

    goto :goto_1d

    .line 61
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    if-eqz p5, :cond_1d

    new-instance v6, Lcom/ljwx/basefragment/BaseStateRefreshFragment$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ljwx/basefragment/BaseStateRefreshFragment$$ExternalSyntheticLambda3;-><init>(Lcom/ljwx/basefragment/BaseStateRefreshFragment;ZZLjava/lang/CharSequence;Z)V

    invoke-virtual {p5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public showStateContent()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    .line 163
    invoke-static/range {v0 .. v6}, Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;->showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public showStateEmpty()V
    .registers 8

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    .line 164
    invoke-static/range {v0 .. v6}, Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;->showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public showStateError()V
    .registers 8

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    .line 166
    invoke-static/range {v0 .. v6}, Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;->showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public showStateExtend()V
    .registers 8

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    .line 168
    invoke-static/range {v0 .. v6}, Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;->showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public showStateLayout(IZLandroid/view/View;Ljava/lang/Object;)V
    .registers 5

    if-eqz p2, :cond_2f

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_2f

    .line 135
    :cond_d
    invoke-static {}, Lcom/ljwx/baseapp/extensions/AppExtensionKt;->isMainThread()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 136
    iget-object p2, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mStateLayout:Lcom/ljwx/baseapp/view/IViewStateLayout;

    if-eqz p2, :cond_2f

    invoke-interface {p2, p1, p3, p4}, Lcom/ljwx/baseapp/view/IViewStateLayout;->showStateView(ILandroid/view/View;Ljava/lang/Object;)V

    goto :goto_2f

    .line 138
    :cond_1b
    iget-object p2, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mStateRunnable:Ljava/lang/Runnable;

    if-nez p2, :cond_24

    new-instance p2, Lcom/ljwx/basefragment/BaseStateRefreshFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/ljwx/basefragment/BaseStateRefreshFragment$$ExternalSyntheticLambda2;-><init>(Lcom/ljwx/basefragment/BaseStateRefreshFragment;ILandroid/view/View;Ljava/lang/Object;)V

    :cond_24
    iput-object p2, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mStateRunnable:Ljava/lang/Runnable;

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->mStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2f
    :goto_2f
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

    .line 165
    invoke-static/range {v0 .. v6}, Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;->showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public showStateOffline()V
    .registers 8

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    .line 167
    invoke-static/range {v0 .. v6}, Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;->showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method
