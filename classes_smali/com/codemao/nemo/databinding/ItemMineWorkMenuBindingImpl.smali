.class public Lcom/codemao/nemo/databinding/ItemMineWorkMenuBindingImpl;
.super Lcom/codemao/nemo/databinding/ItemMineWorkMenuBinding;
.source "ItemMineWorkMenuBindingImpl.java"


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
    sget-object v0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x1

    .line 30
    aget-object v0, p3, v0

    check-cast v0, Lcom/ljwx/baseview/text/DrawableTextView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/ljwx/baseview/text/DrawableTextView;)V

    const-wide/16 v2, -0x1

    .line 124
    iput-wide v2, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBindingImpl;->mDirtyFlags:J

    .line 33
    aget-object p1, p3, v1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    .line 34
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBinding;->menuItem:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 10

    .line 90
    monitor-enter p0

    .line 91
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 92
    iput-wide v2, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBindingImpl;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_38

    const/4 v4, 0x0

    .line 95
    iget-object v5, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBinding;->mItem:Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const-wide/16 v6, 0x3

    and-long/2addr v0, v6

    const/4 v6, 0x0

    cmp-long v7, v0, v2

    if-eqz v7, :cond_25

    if-eqz v5, :cond_25

    .line 105
    invoke-virtual {v5}, Lcom/codemao/nemo/bean/MineWorkMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {v5}, Lcom/codemao/nemo/bean/MineWorkMenuItem;->getIcon()I

    move-result v6

    .line 109
    invoke-virtual {v5}, Lcom/codemao/nemo/bean/MineWorkMenuItem;->getTextColor()I

    move-result v0

    move v8, v6

    move v6, v0

    move v0, v8

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-eqz v7, :cond_37

    .line 116
    iget-object v1, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBinding;->menuItem:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-static {v1, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBinding;->menuItem:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v1, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBinding;->menuItem:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-static {v1, v0}, Lcom/codemao/nemo/common/TextViewAdapter;->loadImage(Lcom/ljwx/baseview/text/DrawableTextView;I)V

    :cond_37
    return-void

    :catchall_38
    move-exception v0

    .line 93
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 51
    monitor-enter p0

    .line 52
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 53
    monitor-exit p0

    return v0

    .line 55
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

    .line 43
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 44
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBindingImpl;->mDirtyFlags:J

    .line 45
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 46
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 45
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

.method public setItem(Lcom/codemao/nemo/bean/MineWorkMenuItem;)V
    .registers 6

    .line 72
    iput-object p1, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBinding;->mItem:Lcom/codemao/nemo/bean/MineWorkMenuItem;

    .line 73
    monitor-enter p0

    .line 74
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBindingImpl;->mDirtyFlags:J

    .line 75
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    const/16 p1, 0x10

    .line 76
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 77
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 75
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    const/16 v0, 0x10

    if-ne v0, p1, :cond_b

    .line 63
    check-cast p2, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBindingImpl;->setItem(Lcom/codemao/nemo/bean/MineWorkMenuItem;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
