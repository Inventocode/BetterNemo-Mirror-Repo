.class public Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;
.source "CreativeItemAdapterChangeStyleBindingImpl.java"


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

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_show:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/codemao/creativecenter/R$id;->view_bg:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_copy:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_edit:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_del:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 32
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 16

    const/4 v0, 0x1

    .line 35
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const-wide/16 v0, -0x1

    .line 145
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;->mDirtyFlags:J

    .line 44
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 45
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->tvPosition:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 13

    .line 102
    monitor-enter p0

    .line 103
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 104
    iput-wide v2, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_5d

    .line 106
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->mIsSelect:Ljava/lang/Boolean;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x3

    and-long v9, v0, v7

    cmp-long v11, v9, v2

    if-eqz v11, :cond_4d

    .line 116
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v11, :cond_28

    if-eqz v4, :cond_22

    const-wide/16 v5, 0x8

    or-long/2addr v0, v5

    const-wide/16 v5, 0x20

    goto :goto_27

    :cond_22
    const-wide/16 v5, 0x4

    or-long/2addr v0, v5

    const-wide/16 v5, 0x10

    :goto_27
    or-long/2addr v0, v5

    .line 130
    :cond_28
    iget-object v5, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->tvPosition:Landroid/widget/TextView;

    if-eqz v4, :cond_2f

    sget v6, Lcom/codemao/creativecenter/R$color;->creative_FFF:I

    goto :goto_31

    :cond_2f
    sget v6, Lcom/codemao/creativecenter/R$color;->creative_transparent20F:I

    :goto_31
    invoke-static {v5, v6}, Landroidx/databinding/ViewDataBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v5

    if-eqz v4, :cond_40

    .line 132
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/codemao/creativecenter/R$drawable;->creative_bg_rectangle_style_sel:I

    goto :goto_48

    :cond_40
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/codemao/creativecenter/R$drawable;->creative_bg_rectangle_style_unsel:I

    :goto_48
    invoke-static {v4, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v6, v4

    :cond_4d
    and-long/2addr v0, v7

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5c

    .line 138
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->tvPosition:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5c
    return-void

    :catchall_5d
    move-exception v0

    .line 105
    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 65
    monitor-exit p0

    return v0

    .line 67
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

    .line 55
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 56
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;->mDirtyFlags:J

    .line 57
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 58
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 57
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

.method public setIsSelect(Ljava/lang/Boolean;)V
    .registers 6

    .line 84
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->mIsSelect:Ljava/lang/Boolean;

    .line 85
    monitor-enter p0

    .line 86
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 88
    sget p1, Lcom/codemao/creativecenter/BR;->isSelect:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 89
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 87
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 74
    sget v0, Lcom/codemao/creativecenter/BR;->isSelect:I

    if-ne v0, p1, :cond_b

    .line 75
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;->setIsSelect(Ljava/lang/Boolean;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
