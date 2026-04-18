.class public Lcom/codemao/nemo/databinding/FragmentMineV3BindingImpl;
.super Lcom/codemao/nemo/databinding/FragmentMineV3Binding;
.source "FragmentMineV3BindingImpl.java"


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

    sput-object v0, Lcom/codemao/nemo/databinding/FragmentMineV3BindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a099c

    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 26
    sget-object v0, Lcom/codemao/nemo/databinding/FragmentMineV3BindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/nemo/databinding/FragmentMineV3BindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/FragmentMineV3BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 11

    const/4 v0, 0x0

    .line 29
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    move-object v6, p3

    check-cast v6, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/codemao/nemo/databinding/FragmentMineV3Binding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Landroidx/viewpager2/widget/ViewPager2;)V

    const-wide/16 v0, -0x1

    .line 82
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV3BindingImpl;->mDirtyFlags:J

    .line 33
    iget-object p1, p0, Lcom/codemao/nemo/databinding/FragmentMineV3Binding;->root:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lcom/codemao/nemo/databinding/FragmentMineV3BindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 3

    .line 73
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 75
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV3BindingImpl;->mDirtyFlags:J

    .line 76
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

    .line 49
    monitor-enter p0

    .line 50
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV3BindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 51
    monitor-exit p0

    return v0

    .line 53
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

    .line 41
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 42
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineV3BindingImpl;->mDirtyFlags:J

    .line 43
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 44
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 43
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

.method public setVariable(ILjava/lang/Object;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
