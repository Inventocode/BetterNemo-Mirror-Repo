.class public Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;
.source "CreativeItemAdapterMaterialTextBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 25
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    .line 28
    aget-object p3, p3, v0

    check-cast p3, Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 142
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;->mDirtyFlags:J

    .line 31
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;->tvName:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 13

    .line 97
    monitor-enter p0

    .line 98
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 99
    iput-wide v2, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;->mDirtyFlags:J

    .line 100
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_51

    .line 102
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    .line 104
    iget-object v6, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;->mIsPad:Ljava/lang/Boolean;

    const-wide/16 v7, 0x6

    and-long v9, v0, v7

    cmp-long v11, v9, v2

    if-eqz v11, :cond_3a

    .line 113
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v5

    if-eqz v11, :cond_23

    if-eqz v5, :cond_20

    const-wide/16 v9, 0x10

    goto :goto_22

    :cond_20
    const-wide/16 v9, 0x8

    :goto_22
    or-long/2addr v0, v9

    :cond_23
    if-eqz v5, :cond_2e

    .line 125
    iget-object v5, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    goto :goto_36

    :cond_2e
    iget-object v5, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    :goto_36
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :cond_3a
    const-wide/16 v9, 0x5

    and-long/2addr v9, v0

    cmp-long v6, v9, v2

    if-eqz v6, :cond_46

    .line 131
    iget-object v6, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;->tvName:Landroid/widget/TextView;

    invoke-static {v6, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_46
    and-long/2addr v0, v7

    cmp-long v4, v0, v2

    if-eqz v4, :cond_50

    .line 136
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;->tvName:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    :cond_50
    return-void

    :catchall_51
    move-exception v0

    .line 100
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 47
    monitor-enter p0

    .line 48
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 49
    monitor-exit p0

    return v0

    .line 51
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

    .line 39
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 40
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;->mDirtyFlags:J

    .line 41
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 42
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 41
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

.method public setIsPad(Ljava/lang/Boolean;)V
    .registers 6

    .line 79
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;->mIsPad:Ljava/lang/Boolean;

    .line 80
    monitor-enter p0

    .line 81
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;->mDirtyFlags:J

    .line 82
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 83
    sget p1, Lcom/codemao/creativecenter/BR;->isPad:I

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

.method public setName(Ljava/lang/String;)V
    .registers 6

    .line 71
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;->mName:Ljava/lang/String;

    .line 72
    monitor-enter p0

    .line 73
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;->mDirtyFlags:J

    .line 74
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 75
    sget p1, Lcom/codemao/creativecenter/BR;->name:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 76
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 74
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 58
    sget v0, Lcom/codemao/creativecenter/BR;->name:I

    if-ne v0, p1, :cond_a

    .line 59
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;->setName(Ljava/lang/String;)V

    goto :goto_13

    .line 61
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->isPad:I

    if-ne v0, p1, :cond_15

    .line 62
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;->setIsPad(Ljava/lang/Boolean;)V

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
