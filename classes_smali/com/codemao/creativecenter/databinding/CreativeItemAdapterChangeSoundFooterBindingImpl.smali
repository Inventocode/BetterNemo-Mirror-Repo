.class public Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBinding;
.source "CreativeItemAdapterChangeSoundFooterBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_add:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 28
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 11

    const/4 v0, 0x1

    .line 31
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;)V

    const-wide/16 v0, -0x1

    .line 135
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;->mDirtyFlags:J

    .line 35
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 36
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 12

    .line 98
    monitor-enter p0

    .line 99
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 100
    iput-wide v2, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;->mDirtyFlags:J

    .line 101
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_43

    const/4 v4, 0x0

    .line 104
    iget-object v5, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBinding;->mIsPad:Ljava/lang/Boolean;

    const-wide/16 v6, 0x6

    and-long v8, v0, v6

    cmp-long v10, v8, v2

    if-eqz v10, :cond_38

    .line 111
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v10, :cond_21

    if-eqz v4, :cond_1e

    const-wide/16 v8, 0x10

    goto :goto_20

    :cond_1e
    const-wide/16 v8, 0x8

    :goto_20
    or-long/2addr v0, v8

    :cond_21
    if-eqz v4, :cond_2c

    .line 123
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$drawable;->pad_creative_selector_bg_click_bg:I

    goto :goto_34

    :cond_2c
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$drawable;->creative_selector_bg_click_bg:I

    :goto_34
    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_38
    and-long/2addr v0, v6

    cmp-long v5, v0, v2

    if-eqz v5, :cond_42

    .line 129
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_42
    return-void

    :catchall_43
    move-exception v0

    .line 101
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 53
    monitor-enter p0

    .line 54
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x4

    .line 46
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;->mDirtyFlags:J

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

.method public setIsPad(Ljava/lang/Boolean;)V
    .registers 6

    .line 80
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBinding;->mIsPad:Ljava/lang/Boolean;

    .line 81
    monitor-enter p0

    .line 82
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;->mDirtyFlags:J

    .line 83
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 84
    sget p1, Lcom/codemao/creativecenter/BR;->isPad:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 85
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 83
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setIsSelect(Ljava/lang/Boolean;)V
    .registers 2

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 64
    sget v0, Lcom/codemao/creativecenter/BR;->isSelect:I

    if-ne v0, p1, :cond_a

    .line 65
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;->setIsSelect(Ljava/lang/Boolean;)V

    goto :goto_13

    .line 67
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->isPad:I

    if-ne v0, p1, :cond_15

    .line 68
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;->setIsPad(Ljava/lang/Boolean;)V

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
