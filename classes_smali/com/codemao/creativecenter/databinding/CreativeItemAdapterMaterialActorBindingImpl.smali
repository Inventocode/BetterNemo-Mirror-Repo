.class public Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;
.source "CreativeItemAdapterMaterialActorBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView5:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->collection_downloading_bg:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_anim:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 31
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 15

    const/4 v0, 0x1

    .line 34
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/codemao/creativecenter/customview/AnimImageView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcom/codemao/creativecenter/customview/AnimImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 296
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    .line 42
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivChoose:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 45
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x5

    .line 47
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mboundView5:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeData(Lcom/codemao/creativestore/bean/MaterialActorBean;I)Z
    .registers 6

    .line 115
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_12

    .line 116
    monitor-enter p0

    .line 117
    :try_start_6
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    .line 118
    monitor-exit p0

    return v0

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p1

    .line 121
    :cond_12
    sget p1, Lcom/codemao/creativecenter/BR;->collectDeleteAble:I

    if-ne p2, p1, :cond_23

    .line 122
    monitor-enter p0

    .line 123
    :try_start_17
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    .line 124
    monitor-exit p0

    return v0

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw p1

    .line 127
    :cond_23
    sget p1, Lcom/codemao/creativecenter/BR;->selected:I

    if-ne p2, p1, :cond_34

    .line 128
    monitor-enter p0

    .line 129
    :try_start_28
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    .line 130
    monitor-exit p0

    return v0

    :catchall_31
    move-exception p1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw p1

    :cond_34
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .registers 29

    move-object/from16 v1, p0

    .line 139
    monitor-enter p0

    .line 140
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 141
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    .line 142
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_14f

    .line 143
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->mIsPad:Ljava/lang/Boolean;

    .line 149
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->mData:Lcom/codemao/creativestore/bean/MaterialActorBean;

    const-wide/16 v7, 0x12

    and-long v9, v2, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    cmp-long v13, v9, v4

    if-eqz v13, :cond_71

    .line 164
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v13, :cond_36

    if-eqz v0, :cond_2b

    const-wide/16 v9, 0x4000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x10000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x40000

    goto :goto_35

    :cond_2b
    const-wide/16 v9, 0x2000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x8000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x20000

    :goto_35
    or-long/2addr v2, v9

    .line 180
    :cond_36
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v0, :cond_41

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    goto :goto_43

    :cond_41
    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    :goto_43
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    move v12, v9

    .line 182
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v0, :cond_53

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    goto :goto_55

    :cond_53
    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    :goto_55
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    if-eqz v0, :cond_64

    .line 184
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/codemao/creativecenter/R$drawable;->pad_creative_bg_rectangle_style_selector:I

    goto :goto_6c

    :cond_64
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/codemao/creativecenter/R$drawable;->creative_bg_rectangle_style_selector:I

    :goto_6c
    invoke-static {v0, v10}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_73

    :cond_71
    move-object v0, v11

    const/4 v9, 0x0

    :goto_73
    const-wide/16 v13, 0x1d

    and-long v15, v2, v13

    const-wide/16 v17, 0x11

    const-wide/16 v19, 0x100

    const-wide/16 v21, 0x15

    const/16 v23, 0x0

    cmp-long v24, v15, v4

    if-eqz v24, :cond_e2

    and-long v15, v2, v17

    cmp-long v24, v15, v4

    if-eqz v24, :cond_a6

    if-eqz v6, :cond_94

    .line 193
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v11

    .line 195
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/MaterialActorBean;->canAnim()Z

    move-result v15

    goto :goto_95

    :cond_94
    const/4 v15, 0x0

    :goto_95
    if-eqz v24, :cond_a0

    if-eqz v15, :cond_9c

    const-wide/16 v24, 0x1000

    goto :goto_9e

    :cond_9c
    const-wide/16 v24, 0x800

    :goto_9e
    or-long v2, v2, v24

    :cond_a0
    if-eqz v15, :cond_a3

    goto :goto_a6

    :cond_a3
    const/16 v15, 0x8

    goto :goto_a7

    :cond_a6
    :goto_a6
    const/4 v15, 0x0

    :goto_a7
    if-eqz v6, :cond_ae

    .line 213
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isCollectDeleteAble()Z

    move-result v16

    goto :goto_b0

    :cond_ae
    const/16 v16, 0x0

    :goto_b0
    and-long v24, v2, v21

    cmp-long v26, v24, v4

    if-eqz v26, :cond_bf

    if-eqz v16, :cond_bb

    const-wide/16 v24, 0x400

    goto :goto_bd

    :cond_bb
    const-wide/16 v24, 0x200

    :goto_bd
    or-long v2, v2, v24

    :cond_bf
    xor-int/lit8 v24, v16, 0x1

    and-long v25, v2, v13

    cmp-long v27, v25, v4

    if-eqz v27, :cond_d0

    if-eqz v24, :cond_cc

    or-long v2, v2, v19

    goto :goto_d0

    :cond_cc
    const-wide/16 v25, 0x80

    or-long v2, v2, v25

    :cond_d0
    :goto_d0
    and-long v25, v2, v21

    cmp-long v27, v25, v4

    if-eqz v27, :cond_e0

    if-eqz v16, :cond_db

    const/16 v16, 0x0

    goto :goto_dd

    :cond_db
    const/16 v16, 0x8

    :goto_dd
    move/from16 v10, v16

    goto :goto_e6

    :cond_e0
    const/4 v10, 0x0

    goto :goto_e6

    :cond_e2
    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v24, 0x0

    :goto_e6
    and-long v19, v2, v19

    cmp-long v25, v19, v4

    if-eqz v25, :cond_f3

    if-eqz v6, :cond_f3

    .line 247
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result v6

    goto :goto_f4

    :cond_f3
    const/4 v6, 0x0

    :goto_f4
    and-long v19, v2, v13

    cmp-long v25, v19, v4

    if-eqz v25, :cond_113

    if-eqz v24, :cond_fd

    goto :goto_fe

    :cond_fd
    const/4 v6, 0x0

    :goto_fe
    if-eqz v25, :cond_109

    if-eqz v6, :cond_105

    const-wide/16 v19, 0x40

    goto :goto_107

    :cond_105
    const-wide/16 v19, 0x20

    :goto_107
    or-long v2, v2, v19

    :cond_109
    if-eqz v6, :cond_10e

    const/16 v16, 0x0

    goto :goto_110

    :cond_10e
    const/16 v16, 0x8

    :goto_110
    move/from16 v6, v16

    goto :goto_114

    :cond_113
    const/4 v6, 0x0

    :goto_114
    and-long/2addr v7, v2

    cmp-long v16, v7, v4

    if-eqz v16, :cond_128

    .line 272
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v7, v0}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->tvName:Landroid/widget/TextView;

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginBottom(Landroid/view/View;F)V

    .line 274
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->tvName:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    :cond_128
    and-long v7, v2, v13

    cmp-long v0, v7, v4

    if-eqz v0, :cond_133

    .line 279
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivChoose:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_133
    and-long v6, v2, v21

    cmp-long v0, v6, v4

    if-eqz v0, :cond_13e

    .line 284
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13e
    and-long v2, v2, v17

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14e

    .line 289
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mboundView5:Landroid/widget/ImageView;

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->tvName:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_14e
    return-void

    :catchall_14f
    move-exception v0

    .line 142
    :try_start_150
    monitor-exit p0
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_14f

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 65
    monitor-enter p0

    .line 66
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 67
    monitor-exit p0

    return v0

    .line 69
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

    .line 57
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 58
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    .line 59
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 60
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 59
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .registers 4

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 110
    :cond_4
    check-cast p2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->onChangeData(Lcom/codemao/creativestore/bean/MaterialActorBean;I)Z

    move-result p1

    return p1
.end method

.method public setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 6

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 98
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->mData:Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 99
    monitor-enter p0

    .line 100
    :try_start_7
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    .line 101
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_18

    .line 102
    sget p1, Lcom/codemao/creativecenter/BR;->data:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 103
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_18
    move-exception p1

    .line 101
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public setIsPad(Ljava/lang/Boolean;)V
    .registers 6

    .line 89
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->mIsPad:Ljava/lang/Boolean;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->mDirtyFlags:J

    .line 92
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 93
    sget p1, Lcom/codemao/creativecenter/BR;->isPad:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 94
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 92
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 76
    sget v0, Lcom/codemao/creativecenter/BR;->isPad:I

    if-ne v0, p1, :cond_a

    .line 77
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->setIsPad(Ljava/lang/Boolean;)V

    goto :goto_13

    .line 79
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->data:I

    if-ne v0, p1, :cond_15

    .line 80
    check-cast p2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;->setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
