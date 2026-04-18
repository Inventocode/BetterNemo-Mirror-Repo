.class public Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBinding;
.source "CreativeActivityNewMainBindingImpl.java"


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

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

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

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 21
    sget v1, Lcom/codemao/creativecenter/R$id;->edit:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lcom/codemao/creativecenter/R$id;->left:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget v1, Lcom/codemao/creativecenter/R$id;->sidebar_cover:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget v1, Lcom/codemao/creativecenter/R$id;->chb:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget v1, Lcom/codemao/creativecenter/R$id;->bcm_web:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget v1, Lcom/codemao/creativecenter/R$id;->bottom_line:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget v1, Lcom/codemao/creativecenter/R$id;->top_line:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget v1, Lcom/codemao/creativecenter/R$id;->cfbv:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget v1, Lcom/codemao/creativecenter/R$id;->ll_current_actor:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_cut_actor_header:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget v1, Lcom/codemao/creativecenter/R$id;->tv_cut_actor_name:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget v1, Lcom/codemao/creativecenter/R$id;->cl_keyboard:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget v1, Lcom/codemao/creativecenter/R$id;->cav:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_arrow_down:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget v1, Lcom/codemao/creativecenter/R$id;->line2:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget v1, Lcom/codemao/creativecenter/R$id;->line_debug:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget v1, Lcom/codemao/creativecenter/R$id;->middle:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget v1, Lcom/codemao/creativecenter/R$id;->fl_block_actor:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget v1, Lcom/codemao/creativecenter/R$id;->fl_cover:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget v1, Lcom/codemao/creativecenter/R$id;->view_shadow:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_actor_list_cover:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget v1, Lcom/codemao/creativecenter/R$id;->fl_debug:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget v1, Lcom/codemao/creativecenter/R$id;->v_cover:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget v1, Lcom/codemao/creativecenter/R$id;->vs_video:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget v1, Lcom/codemao/creativecenter/R$id;->fl_progress:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget v1, Lcom/codemao/creativecenter/R$id;->progress:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 55
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x1c

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 37

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 58
    new-instance v5, Landroidx/databinding/ViewStubProxy;

    move-object v4, v5

    const/4 v6, 0x6

    aget-object v6, p3, v6

    check-cast v6, Landroid/view/ViewStub;

    invoke-direct {v5, v6}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/4 v5, 0x7

    aget-object v5, p3, v5

    check-cast v5, Landroidx/constraintlayout/widget/Guideline;

    const/16 v6, 0xe

    aget-object v6, p3, v6

    check-cast v6, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    new-instance v8, Landroidx/databinding/ViewStubProxy;

    move-object v7, v8

    const/16 v9, 0x9

    aget-object v9, p3, v9

    check-cast v9, Landroid/view/ViewStub;

    invoke-direct {v8, v9}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/4 v8, 0x5

    aget-object v8, p3, v8

    check-cast v8, Lcom/codemao/creativecenter/customview/CmHanshuBar;

    const/16 v9, 0xd

    aget-object v9, p3, v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v10, 0x1

    aget-object v10, p3, v10

    check-cast v10, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    const/4 v11, 0x2

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/EditText;

    const/16 v12, 0x13

    aget-object v12, p3, v12

    check-cast v12, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    const/16 v13, 0x14

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/FrameLayout;

    const/16 v14, 0x17

    aget-object v14, p3, v14

    check-cast v14, Lcom/codemao/creativecenter/customview/CreateDebugView;

    const/16 v15, 0x1a

    aget-object v15, p3, v15

    check-cast v15, Landroid/widget/FrameLayout;

    const/16 v16, 0x16

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/ImageView;

    const/16 v17, 0xf

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/ImageView;

    const/16 v18, 0xb

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/ImageView;

    const/16 v19, 0x3

    aget-object v19, p3, v19

    check-cast v19, Lcom/codemao/creativecenter/customview/CmSideBar;

    const/16 v20, 0x10

    aget-object v20, p3, v20

    check-cast v20, Landroidx/constraintlayout/widget/Guideline;

    const/16 v21, 0x11

    aget-object v21, p3, v21

    check-cast v21, Landroidx/constraintlayout/widget/Guideline;

    const/16 v22, 0xa

    aget-object v22, p3, v22

    check-cast v22, Landroid/widget/LinearLayout;

    const/16 v23, 0x12

    aget-object v23, p3, v23

    check-cast v23, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    const/16 v24, 0x1b

    aget-object v24, p3, v24

    check-cast v24, Landroid/widget/ProgressBar;

    const/16 v25, 0x0

    aget-object v25, p3, v25

    check-cast v25, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v26, 0x4

    aget-object v26, p3, v26

    check-cast v26, Landroid/view/View;

    const/16 v27, 0x8

    aget-object v27, p3, v27

    check-cast v27, Landroidx/constraintlayout/widget/Guideline;

    const/16 v28, 0xc

    aget-object v28, p3, v28

    check-cast v28, Landroid/widget/TextView;

    const/16 v29, 0x18

    aget-object v29, p3, v29

    check-cast v29, Landroid/view/View;

    const/16 v30, 0x15

    aget-object v30, p3, v30

    check-cast v30, Landroid/view/View;

    const/16 v31, 0x19

    aget-object v31, p3, v31

    check-cast v31, Landroid/widget/FrameLayout;

    const/16 v32, 0x1

    move/from16 v3, v32

    invoke-direct/range {v0 .. v31}, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/databinding/ViewStubProxy;Landroidx/constraintlayout/widget/Guideline;Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;Landroidx/databinding/ViewStubProxy;Lcom/codemao/creativecenter/customview/CmHanshuBar;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;Landroid/widget/EditText;Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;Landroid/widget/FrameLayout;Lcom/codemao/creativecenter/customview/CreateDebugView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/codemao/creativecenter/customview/CmSideBar;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/LinearLayout;Lcom/codemao/creativecenter/customview/CmDisplayRoleView;Landroid/widget/ProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/FrameLayout;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 168
    iput-wide v0, v2, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;->mDirtyFlags:J

    .line 88
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBinding;->bcmWeb:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 89
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBinding;->cfbv:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 90
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 91
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBinding;->rootview:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 92
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeCreativeLoading(Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;I)Z
    .registers 5

    .line 140
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 141
    monitor-enter p0

    .line 142
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;->mDirtyFlags:J

    .line 143
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

    .line 152
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 154
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;->mDirtyFlags:J

    .line 155
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2e

    .line 157
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 158
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBinding;->bcmWeb:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 159
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBinding;->bcmWeb:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 161
    :cond_1c
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBinding;->cfbv:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 162
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBinding;->cfbv:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    :cond_2d
    return-void

    :catchall_2e
    move-exception v0

    .line 155
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 7

    .line 108
    monitor-enter p0

    .line 109
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_c

    .line 110
    monitor-exit p0

    return v4

    .line 112
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    .line 113
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_16

    return v4

    :cond_16
    const/4 v0, 0x0

    return v0

    :catchall_18
    move-exception v0

    .line 112
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public invalidateAll()V
    .registers 3

    .line 99
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 100
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;->mDirtyFlags:J

    .line 101
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 102
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 103
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_f
    move-exception v0

    .line 101
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

    .line 135
    :cond_4
    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;->onChangeCreativeLoading(Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;I)Z

    move-result p1

    return p1
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    .line 127
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 128
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
