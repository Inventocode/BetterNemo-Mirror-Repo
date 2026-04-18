.class public Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;
.source "CreativeItemAdapterThemeDetailBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView3:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_anim:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 30
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 12

    const/4 v0, 0x1

    .line 33
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 191
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->mDirtyFlags:J

    .line 38
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 39
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 41
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->mboundView3:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 19

    move-object/from16 v1, p0

    .line 109
    monitor-enter p0

    .line 110
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 111
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->mDirtyFlags:J

    .line 112
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_ba

    .line 114
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->mIsPad:Ljava/lang/Boolean;

    .line 118
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->mData:Lcom/codemao/creativestore/bean/ThemeMaterialDetail;

    const-wide/16 v7, 0x5

    and-long v9, v2, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    cmp-long v13, v9, v4

    if-eqz v13, :cond_6d

    .line 128
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v13, :cond_32

    if-eqz v0, :cond_29

    const-wide/16 v9, 0x10

    or-long/2addr v2, v9

    const-wide/16 v9, 0x40

    or-long/2addr v2, v9

    const-wide/16 v9, 0x400

    goto :goto_31

    :cond_29
    const-wide/16 v9, 0x8

    or-long/2addr v2, v9

    const-wide/16 v9, 0x20

    or-long/2addr v2, v9

    const-wide/16 v9, 0x200

    :goto_31
    or-long/2addr v2, v9

    .line 144
    :cond_32
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v0, :cond_3d

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    goto :goto_3f

    :cond_3d
    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    :goto_3f
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    move v11, v9

    .line 146
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v0, :cond_4f

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    goto :goto_51

    :cond_4f
    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    :goto_51
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    if-eqz v0, :cond_60

    .line 148
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/codemao/creativecenter/R$drawable;->pad_creative_bg_rectangle_style_selector:I

    goto :goto_68

    :cond_60
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/codemao/creativecenter/R$drawable;->creative_bg_rectangle_style_selector:I

    :goto_68
    invoke-static {v0, v10}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6f

    :cond_6d
    move-object v0, v12

    const/4 v9, 0x0

    :goto_6f
    const-wide/16 v13, 0x6

    and-long v15, v2, v13

    const/4 v10, 0x0

    cmp-long v17, v15, v4

    if-eqz v17, :cond_95

    if-eqz v6, :cond_83

    .line 156
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;->getMaterial_name()Ljava/lang/String;

    move-result-object v12

    .line 158
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;->canAnim()Z

    move-result v6

    goto :goto_84

    :cond_83
    const/4 v6, 0x0

    :goto_84
    if-eqz v17, :cond_8e

    if-eqz v6, :cond_8b

    const-wide/16 v15, 0x100

    goto :goto_8d

    :cond_8b
    const-wide/16 v15, 0x80

    :goto_8d
    or-long/2addr v2, v15

    :cond_8e
    if-eqz v6, :cond_91

    goto :goto_95

    :cond_91
    const/16 v6, 0x8

    const/16 v10, 0x8

    :cond_95
    :goto_95
    and-long v6, v2, v7

    cmp-long v8, v6, v4

    if-eqz v8, :cond_aa

    .line 177
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v6, v0}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->tvName:Landroid/widget/TextView;

    invoke-static {v0, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginBottom(Landroid/view/View;F)V

    .line 179
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->tvName:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    :cond_aa
    and-long/2addr v2, v13

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b9

    .line 184
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->mboundView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->tvName:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_b9
    return-void

    :catchall_ba
    move-exception v0

    .line 112
    :try_start_bb
    monitor-exit p0
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 59
    monitor-enter p0

    .line 60
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 61
    monitor-exit p0

    return v0

    .line 63
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

    .line 51
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 52
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->mDirtyFlags:J

    .line 53
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 54
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 53
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

.method public setData(Lcom/codemao/creativestore/bean/ThemeMaterialDetail;)V
    .registers 6

    .line 91
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->mData:Lcom/codemao/creativestore/bean/ThemeMaterialDetail;

    .line 92
    monitor-enter p0

    .line 93
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 95
    sget p1, Lcom/codemao/creativecenter/BR;->data:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 96
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 94
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setIsPad(Ljava/lang/Boolean;)V
    .registers 6

    .line 83
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->mIsPad:Ljava/lang/Boolean;

    .line 84
    monitor-enter p0

    .line 85
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->mDirtyFlags:J

    .line 86
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 87
    sget p1, Lcom/codemao/creativecenter/BR;->isPad:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 88
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 86
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 70
    sget v0, Lcom/codemao/creativecenter/BR;->isPad:I

    if-ne v0, p1, :cond_a

    .line 71
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->setIsPad(Ljava/lang/Boolean;)V

    goto :goto_13

    .line 73
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->data:I

    if-ne v0, p1, :cond_15

    .line 74
    check-cast p2, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;->setData(Lcom/codemao/creativestore/bean/ThemeMaterialDetail;)V

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
