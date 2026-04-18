.class public Lcom/codemao/nemo/databinding/FragmentMineV2BindingImpl;
.super Lcom/codemao/nemo/databinding/FragmentMineV2Binding;
.source "FragmentMineV2BindingImpl.java"


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

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/codemao/nemo/databinding/FragmentMineV2BindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "fragment_mine_v2_top_toolbar"

    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    new-array v2, v2, [I

    const v5, 0x7f0d015f

    aput v5, v2, v4

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/nemo/databinding/FragmentMineV2BindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0067

    const/4 v2, 0x2

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a07cf

    const/4 v2, 0x3

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0064

    const/4 v2, 0x4

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a093c

    const/4 v2, 0x5

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a007f

    const/4 v2, 0x6

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a027a

    const/4 v2, 0x7

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0969

    const/16 v2, 0x8

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0080

    const/16 v2, 0x9

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0363

    const/16 v2, 0xa

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0910

    const/16 v2, 0xb

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a007e

    const/16 v2, 0xc

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a093d

    const/16 v2, 0xd

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a096b

    const/16 v2, 0xe

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0081

    const/16 v2, 0xf

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a090e

    const/16 v2, 0x10

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a090d

    const/16 v2, 0x11

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0165

    const/16 v2, 0x12

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a099c

    const/16 v2, 0x13

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 47
    sget-object v0, Lcom/codemao/nemo/databinding/FragmentMineV2BindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/nemo/databinding/FragmentMineV2BindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/FragmentMineV2BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 29

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x4

    .line 50
    aget-object v4, p3, v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v5, 0x2

    aget-object v5, p3, v5

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    const/16 v6, 0xc

    aget-object v6, p3, v6

    check-cast v6, Landroid/view/View;

    const/4 v7, 0x6

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0x9

    aget-object v8, p3, v8

    check-cast v8, Lcom/codemao/nemo/view/RoundStrokeImageView;

    const/16 v9, 0xf

    aget-object v9, p3, v9

    check-cast v9, Lcom/codemao/nemo/view/RoundStrokeImageView;

    const/16 v10, 0x12

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x7

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/FrameLayout;

    const/16 v12, 0xa

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/ImageView;

    const/4 v13, 0x0

    aget-object v13, p3, v13

    check-cast v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v14, 0x1

    aget-object v14, p3, v14

    check-cast v14, Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;

    const/4 v15, 0x3

    aget-object v15, p3, v15

    check-cast v15, Landroid/widget/FrameLayout;

    const/16 v16, 0x11

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x10

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0xb

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/TextView;

    const/16 v19, 0x5

    aget-object v19, p3, v19

    check-cast v19, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v20, 0xd

    aget-object v20, p3, v20

    check-cast v20, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v21, 0x8

    aget-object v21, p3, v21

    check-cast v21, Landroid/view/View;

    const/16 v22, 0xe

    aget-object v22, p3, v22

    check-cast v22, Landroid/view/View;

    const/16 v23, 0x13

    aget-object v23, p3, v23

    check-cast v23, Lcom/codemao/nemo/view/NoScrollViewPager;

    const/16 v24, 0x1

    move/from16 v3, v24

    invoke-direct/range {v0 .. v23}, Lcom/codemao/nemo/databinding/FragmentMineV2Binding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/airbnb/lottie/LottieAnimationView;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/widget/TextView;Lcom/codemao/nemo/view/RoundStrokeImageView;Lcom/codemao/nemo/view/RoundStrokeImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/view/View;Lcom/codemao/nemo/view/NoScrollViewPager;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 144
    iput-wide v0, v2, Lcom/codemao/nemo/databinding/FragmentMineV2BindingImpl;->mDirtyFlags:J

    .line 72
    iget-object v0, v2, Lcom/codemao/nemo/databinding/FragmentMineV2Binding;->root:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object v0, v2, Lcom/codemao/nemo/databinding/FragmentMineV2Binding;->toolbar:Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;

    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    move-object/from16 v0, p2

    .line 74
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/nemo/databinding/FragmentMineV2BindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeToolbar(Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 123
    monitor-enter p0

    .line 124
    :try_start_3
    iget-wide p1, p0, Lcom/codemao/nemo/databinding/FragmentMineV2BindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/nemo/databinding/FragmentMineV2BindingImpl;->mDirtyFlags:J

    .line 125
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .registers 3

    .line 134
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 136
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV2BindingImpl;->mDirtyFlags:J

    .line 137
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 139
    iget-object v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV2Binding;->toolbar:Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_c
    move-exception v0

    .line 137
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 7

    .line 90
    monitor-enter p0

    .line 91
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV2BindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_c

    .line 92
    monitor-exit p0

    return v4

    .line 94
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    .line 95
    iget-object v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV2Binding;->toolbar:Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_16

    return v4

    :cond_16
    const/4 v0, 0x0

    return v0

    :catchall_18
    move-exception v0

    .line 94
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public invalidateAll()V
    .registers 3

    .line 81
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 82
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV2BindingImpl;->mDirtyFlags:J

    .line 83
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 84
    iget-object v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV2Binding;->toolbar:Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 85
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_f
    move-exception v0

    .line 83
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

    .line 117
    :cond_4
    check-cast p2, Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;

    invoke-direct {p0, p2, p3}, Lcom/codemao/nemo/databinding/FragmentMineV2BindingImpl;->onChangeToolbar(Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;I)Z

    move-result p1

    return p1
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    .line 109
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 110
    iget-object v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV2Binding;->toolbar:Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
