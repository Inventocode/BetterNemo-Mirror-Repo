.class public Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;
.super Lcom/ljwx/recyclerview/databinding/HolderBinding;
.source "HolderBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 27
    sget-object v0, Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 12

    const/4 v0, 0x2

    .line 30
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/ljwx/recyclerview/databinding/HolderBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 120
    iput-wide v0, p0, Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;->mDirtyFlags:J

    .line 35
    iget-object p1, p0, Lcom/ljwx/recyclerview/databinding/HolderBinding;->center:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 36
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/ljwx/recyclerview/databinding/HolderBinding;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/ljwx/recyclerview/databinding/HolderBinding;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 8

    .line 100
    monitor-enter p0

    .line 101
    :try_start_1
    iget-wide v0, p0, Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 102
    iput-wide v2, p0, Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;->mDirtyFlags:J

    .line 103
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_21

    .line 104
    iget-object v4, p0, Lcom/ljwx/recyclerview/databinding/HolderBinding;->mItem:Ljava/lang/String;

    const-wide/16 v5, 0x5

    and-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-eqz v5, :cond_20

    .line 112
    iget-object v0, p0, Lcom/ljwx/recyclerview/databinding/HolderBinding;->center:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/ljwx/recyclerview/databinding/HolderBinding;->tvLeft:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/ljwx/recyclerview/databinding/HolderBinding;->tvRight:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_20
    return-void

    :catchall_21
    move-exception v0

    .line 103
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 55
    monitor-enter p0

    .line 56
    :try_start_1
    iget-wide v0, p0, Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 57
    monitor-exit p0

    return v0

    .line 59
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

    .line 47
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 48
    :try_start_3
    iput-wide v0, p0, Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;->mDirtyFlags:J

    .line 49
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 50
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 49
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
    .registers 6

    .line 79
    iput-object p1, p0, Lcom/ljwx/recyclerview/databinding/HolderBinding;->mItem:Ljava/lang/String;

    .line 80
    monitor-enter p0

    .line 81
    :try_start_3
    iget-wide v0, p0, Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;->mDirtyFlags:J

    .line 82
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 83
    sget p1, Lcom/ljwx/recyclerview/BR;->item:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 84
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 82
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setOnClick(Landroid/view/View$OnClickListener;)V
    .registers 2

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 66
    sget v0, Lcom/ljwx/recyclerview/BR;->item:I

    if-ne v0, p1, :cond_a

    .line 67
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;->setItem(Ljava/lang/String;)V

    goto :goto_13

    .line 69
    :cond_a
    sget v0, Lcom/ljwx/recyclerview/BR;->onClick:I

    if-ne v0, p1, :cond_15

    .line 70
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/ljwx/recyclerview/databinding/HolderBindingImpl;->setOnClick(Landroid/view/View$OnClickListener;)V

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
