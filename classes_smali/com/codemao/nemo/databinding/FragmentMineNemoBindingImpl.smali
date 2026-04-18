.class public Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;
.super Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;
.source "FragmentMineNemoBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 15
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "mine_bind_phone_tips"

    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v4, v3, v5

    new-array v4, v2, [I

    const v6, 0x7f0d028c

    aput v6, v4, v5

    invoke-virtual {v0, v5, v1, v3, v4}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0678

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a05f1

    const/4 v2, 0x3

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 33
    sget-object v0, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 12

    const/4 v0, 0x2

    .line 36
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    .line 124
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;->mDirtyFlags:J

    .line 41
    iget-object p1, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;->bindPhone:Lcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    const/4 p1, 0x0

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    .line 43
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeBindPhone(Lcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 103
    monitor-enter p0

    .line 104
    :try_start_3
    iget-wide p1, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;->mDirtyFlags:J

    .line 105
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

    .line 114
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 116
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 119
    iget-object v0, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;->bindPhone:Lcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_c
    move-exception v0

    .line 117
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 7

    .line 60
    monitor-enter p0

    .line 61
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_c

    .line 62
    monitor-exit p0

    return v4

    .line 64
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    .line 65
    iget-object v0, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;->bindPhone:Lcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_16

    return v4

    :cond_16
    const/4 v0, 0x0

    return v0

    :catchall_18
    move-exception v0

    .line 64
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public invalidateAll()V
    .registers 3

    .line 51
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 52
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;->mDirtyFlags:J

    .line 53
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 54
    iget-object v0, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;->bindPhone:Lcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 55
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_f
    move-exception v0

    .line 53
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

    .line 97
    :cond_4
    check-cast p2, Lcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;

    invoke-direct {p0, p2, p3}, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;->onChangeBindPhone(Lcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;I)Z

    move-result p1

    return p1
.end method

.method public setItem(Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 2

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    .line 89
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 90
    iget-object v0, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;->bindPhone:Lcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    const/16 v0, 0x10

    if-ne v0, p1, :cond_b

    .line 75
    check-cast p2, Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/databinding/FragmentMineNemoBindingImpl;->setItem(Lcom/codemao/nemo/bean/KnWorkListItem;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
