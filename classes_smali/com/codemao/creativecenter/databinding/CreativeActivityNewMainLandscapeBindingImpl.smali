.class public Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBinding;
.source "CreativeActivityNewMainLandscapeBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 15
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "creative_rn_waiting"

    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    new-array v2, v2, [I

    sget v5, Lcom/codemao/creativecenter/R$layout;->creative_rn_waiting:I

    aput v5, v2, v4

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 21
    sget v1, Lcom/codemao/creativecenter/R$id;->edit:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lcom/codemao/creativecenter/R$id;->left_guide_line:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget v1, Lcom/codemao/creativecenter/R$id;->left:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget v1, Lcom/codemao/creativecenter/R$id;->sidebar_cover:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget v1, Lcom/codemao/creativecenter/R$id;->chb:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget v1, Lcom/codemao/creativecenter/R$id;->bcm_web:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget v1, Lcom/codemao/creativecenter/R$id;->bottom_line:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget v1, Lcom/codemao/creativecenter/R$id;->top_line:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget v1, Lcom/codemao/creativecenter/R$id;->small_web_view_top:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget v1, Lcom/codemao/creativecenter/R$id;->small_web_view_bottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget v1, Lcom/codemao/creativecenter/R$id;->web_top_tools_view:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget v1, Lcom/codemao/creativecenter/R$id;->web_bottom_tools_view:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget v1, Lcom/codemao/creativecenter/R$id;->cfbv:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget v1, Lcom/codemao/creativecenter/R$id;->line2:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget v1, Lcom/codemao/creativecenter/R$id;->line_debug:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget v1, Lcom/codemao/creativecenter/R$id;->middle:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget v1, Lcom/codemao/creativecenter/R$id;->keyboard_guideline:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget v1, Lcom/codemao/creativecenter/R$id;->cl_keyboard:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget v1, Lcom/codemao/creativecenter/R$id;->cav:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_arrow_down:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget v1, Lcom/codemao/creativecenter/R$id;->ll_current_actor:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_cut_actor_header:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget v1, Lcom/codemao/creativecenter/R$id;->tv_cut_actor_name:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget v1, Lcom/codemao/creativecenter/R$id;->fl_block_actor:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget v1, Lcom/codemao/creativecenter/R$id;->fl_cover:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget v1, Lcom/codemao/creativecenter/R$id;->view_shadow:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_actor_list_cover:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget v1, Lcom/codemao/creativecenter/R$id;->fl_debug:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget v1, Lcom/codemao/creativecenter/R$id;->v_cover:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    sget v1, Lcom/codemao/creativecenter/R$id;->vs_video:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    sget v1, Lcom/codemao/creativecenter/R$id;->fl_progress:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget v1, Lcom/codemao/creativecenter/R$id;->progress:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 61
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x22

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 43

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 64
    new-instance v5, Landroidx/databinding/ViewStubProxy;

    move-object v4, v5

    const/4 v6, 0x7

    aget-object v6, p3, v6

    check-cast v6, Landroid/view/ViewStub;

    invoke-direct {v5, v6}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/16 v5, 0x8

    aget-object v5, p3, v5

    check-cast v5, Landroidx/constraintlayout/widget/Guideline;

    const/16 v6, 0x14

    aget-object v6, p3, v6

    check-cast v6, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    new-instance v8, Landroidx/databinding/ViewStubProxy;

    move-object v7, v8

    const/16 v9, 0xe

    aget-object v9, p3, v9

    check-cast v9, Landroid/view/ViewStub;

    invoke-direct {v8, v9}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/4 v8, 0x6

    aget-object v8, p3, v8

    check-cast v8, Lcom/codemao/creativecenter/customview/CmHanshuBar;

    const/16 v9, 0x13

    aget-object v9, p3, v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v10, 0x1

    aget-object v10, p3, v10

    check-cast v10, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    const/4 v11, 0x2

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/EditText;

    const/16 v12, 0x19

    aget-object v12, p3, v12

    check-cast v12, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    const/16 v13, 0x1a

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/FrameLayout;

    const/16 v14, 0x1d

    aget-object v14, p3, v14

    check-cast v14, Lcom/codemao/creativecenter/customview/CreateDebugView;

    const/16 v15, 0x20

    aget-object v15, p3, v15

    check-cast v15, Landroid/widget/FrameLayout;

    const/16 v16, 0x1c

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/ImageView;

    const/16 v17, 0x15

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/ImageView;

    const/16 v18, 0x17

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/ImageView;

    const/16 v19, 0x12

    aget-object v19, p3, v19

    check-cast v19, Landroidx/constraintlayout/widget/Guideline;

    const/16 v20, 0x4

    aget-object v20, p3, v20

    check-cast v20, Lcom/codemao/creativecenter/customview/CmSideBar;

    const/16 v21, 0x3

    aget-object v21, p3, v21

    check-cast v21, Landroidx/constraintlayout/widget/Guideline;

    const/16 v22, 0xf

    aget-object v22, p3, v22

    check-cast v22, Landroidx/constraintlayout/widget/Guideline;

    const/16 v23, 0x10

    aget-object v23, p3, v23

    check-cast v23, Landroidx/constraintlayout/widget/Guideline;

    const/16 v24, 0x16

    aget-object v24, p3, v24

    check-cast v24, Landroid/widget/LinearLayout;

    const/16 v25, 0x11

    aget-object v25, p3, v25

    check-cast v25, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    const/16 v26, 0x21

    aget-object v26, p3, v26

    check-cast v26, Landroid/widget/ProgressBar;

    const/16 v27, 0x0

    aget-object v27, p3, v27

    check-cast v27, Lcom/codemao/creativecenter/customview/CreationRootLayout;

    const/16 v28, 0x5

    aget-object v28, p3, v28

    check-cast v28, Landroid/view/View;

    const/16 v29, 0xb

    aget-object v29, p3, v29

    check-cast v29, Landroidx/constraintlayout/widget/Guideline;

    const/16 v30, 0xa

    aget-object v30, p3, v30

    check-cast v30, Landroidx/constraintlayout/widget/Guideline;

    const/16 v31, 0x9

    aget-object v31, p3, v31

    check-cast v31, Landroidx/constraintlayout/widget/Guideline;

    const/16 v32, 0x18

    aget-object v32, p3, v32

    check-cast v32, Landroid/widget/TextView;

    const/16 v33, 0x1e

    aget-object v33, p3, v33

    check-cast v33, Landroid/view/View;

    const/16 v34, 0x1b

    aget-object v34, p3, v34

    check-cast v34, Landroid/view/View;

    const/16 v35, 0x1f

    aget-object v35, p3, v35

    check-cast v35, Landroid/widget/FrameLayout;

    const/16 v36, 0xd

    aget-object v36, p3, v36

    check-cast v36, Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    const/16 v37, 0xc

    aget-object v37, p3, v37

    check-cast v37, Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    const/16 v38, 0x1

    move/from16 v3, v38

    invoke-direct/range {v0 .. v37}, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/databinding/ViewStubProxy;Landroidx/constraintlayout/widget/Guideline;Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;Landroidx/databinding/ViewStubProxy;Lcom/codemao/creativecenter/customview/CmHanshuBar;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;Landroid/widget/EditText;Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;Landroid/widget/FrameLayout;Lcom/codemao/creativecenter/customview/CreateDebugView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;Lcom/codemao/creativecenter/customview/CmSideBar;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/LinearLayout;Lcom/codemao/creativecenter/customview/CmDisplayRoleView;Landroid/widget/ProgressBar;Lcom/codemao/creativecenter/customview/CreationRootLayout;Landroid/view/View;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/FrameLayout;Lcom/codemao/creativecenter/customview/CmStageDashboardView;Lcom/codemao/creativecenter/customview/CmScreenSelectView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 180
    iput-wide v0, v2, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;->mDirtyFlags:J

    .line 100
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBinding;->bcmWeb:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 101
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBinding;->cfbv:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 102
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 103
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBinding;->rootview:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 104
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeCreativeLoading(Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;I)Z
    .registers 5

    .line 152
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 153
    monitor-enter p0

    .line 154
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;->mDirtyFlags:J

    .line 155
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .registers 3

    .line 164
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 166
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;->mDirtyFlags:J

    .line 167
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2e

    .line 169
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 170
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBinding;->bcmWeb:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 171
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBinding;->bcmWeb:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 173
    :cond_1c
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBinding;->cfbv:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 174
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBinding;->cfbv:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    :cond_2d
    return-void

    :catchall_2e
    move-exception v0

    .line 167
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 7

    .line 120
    monitor-enter p0

    .line 121
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_c

    .line 122
    monitor-exit p0

    return v4

    .line 124
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    .line 125
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_16

    return v4

    :cond_16
    const/4 v0, 0x0

    return v0

    :catchall_18
    move-exception v0

    .line 124
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public invalidateAll()V
    .registers 3

    .line 111
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 112
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;->mDirtyFlags:J

    .line 113
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 114
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 115
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_f
    move-exception v0

    .line 113
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .registers 4

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 147
    :cond_4
    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;->onChangeCreativeLoading(Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;I)Z

    move-result p1

    return p1
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    .line 139
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 140
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
