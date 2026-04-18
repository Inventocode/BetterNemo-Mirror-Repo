.class public Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;
.source "CreativeItemSceneEditBindingImpl.java"


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

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->v_bg:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 26
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 12

    const/4 v0, 0x1

    .line 29
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout;

    const/4 v0, 0x2

    aget-object p3, p3, v0

    move-object v7, p3

    check-cast v7, Landroid/view/View;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    .line 146
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;->mDirtyFlags:J

    .line 34
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->index:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->rlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 13

    .line 90
    monitor-enter p0

    .line 91
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 92
    iput-wide v2, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a5

    .line 95
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->mIsPad:Ljava/lang/Boolean;

    const-wide/16 v5, 0x3

    and-long v7, v0, v5

    const/4 v9, 0x0

    cmp-long v10, v7, v2

    if-eqz v10, :cond_83

    .line 106
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v10, :cond_33

    if-eqz v4, :cond_27

    const-wide/16 v7, 0x8

    or-long/2addr v0, v7

    const-wide/16 v7, 0x20

    or-long/2addr v0, v7

    const-wide/16 v7, 0x80

    or-long/2addr v0, v7

    const-wide/16 v7, 0x200

    goto :goto_32

    :cond_27
    const-wide/16 v7, 0x4

    or-long/2addr v0, v7

    const-wide/16 v7, 0x10

    or-long/2addr v0, v7

    const-wide/16 v7, 0x40

    or-long/2addr v0, v7

    const-wide/16 v7, 0x100

    :goto_32
    or-long/2addr v0, v7

    .line 124
    :cond_33
    iget-object v7, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->rlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v4, :cond_3e

    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    goto :goto_40

    :cond_3e
    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_38dp:I

    :goto_40
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    move v9, v7

    .line 126
    iget-object v7, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->index:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v4, :cond_50

    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_20dp:I

    goto :goto_52

    :cond_50
    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    :goto_52
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 128
    iget-object v8, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->rlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v4, :cond_61

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_6dp:I

    goto :goto_63

    :cond_61
    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_5dp:I

    :goto_63
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    if-eqz v4, :cond_72

    .line 130
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->rlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_60dp:I

    goto :goto_7a

    :cond_72
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->rlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    :goto_7a
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    move v11, v7

    move v7, v4

    move v4, v9

    move v9, v11

    goto :goto_86

    :cond_83
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_86
    and-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-eqz v5, :cond_a4

    .line 136
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->index:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    .line 137
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->rlRoot:Landroid/widget/FrameLayout;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 138
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->rlRoot:Landroid/widget/FrameLayout;

    invoke-static {v0, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 139
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->rlRoot:Landroid/widget/FrameLayout;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingEnd(Landroid/view/View;F)V

    .line 140
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->rlRoot:Landroid/widget/FrameLayout;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingStart(Landroid/view/View;F)V

    :cond_a4
    return-void

    :catchall_a5
    move-exception v0

    .line 93
    :try_start_a6
    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 51
    monitor-enter p0

    .line 52
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;->mDirtyFlags:J

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

.method public setIsPad(Ljava/lang/Boolean;)V
    .registers 6

    .line 72
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->mIsPad:Ljava/lang/Boolean;

    .line 73
    monitor-enter p0

    .line 74
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;->mDirtyFlags:J

    .line 75
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 76
    sget p1, Lcom/codemao/creativecenter/BR;->isPad:I

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

    .line 62
    sget v0, Lcom/codemao/creativecenter/BR;->isPad:I

    if-ne v0, p1, :cond_b

    .line 63
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;->setIsPad(Ljava/lang/Boolean;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
