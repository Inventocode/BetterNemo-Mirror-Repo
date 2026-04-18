.class public Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBindingImpl;
.super Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;
.source "FragmentMineV2TopToolbarBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a048c

    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0531

    const/4 v2, 0x2

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0620

    const/4 v2, 0x3

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;)V
    .registers 6

    .line 28
    sget-object v0, Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V
    .registers 13

    const/4 v0, 0x0

    .line 31
    aget-object v3, p2, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    aget-object p3, p3, v0

    move-object v8, p3

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const-wide/16 v0, -0x1

    .line 96
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBindingImpl;->mDirtyFlags:J

    .line 37
    iget-object p1, p0, Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;->toolBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag([Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 3

    .line 87
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 89
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBindingImpl;->mDirtyFlags:J

    .line 90
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 53
    monitor-enter p0

    .line 54
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 55
    monitor-exit p0

    return v0

    .line 57
    :cond_c
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public invalidateAll()V
    .registers 3

    .line 45
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 46
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBindingImpl;->mDirtyFlags:J

    .line 47
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 48
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 47
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public setItem(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    const/16 v0, 0x10

    if-ne v0, p1, :cond_b

    .line 65
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBindingImpl;->setItem(Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
