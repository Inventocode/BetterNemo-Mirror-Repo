.class public Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;
.source "CreativeItemAdapterMaterialBackgroundBindingImpl.java"


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

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->collection_downloading_bg:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_anim:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/codemao/creativecenter/R$id;->v_text_bg:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 30
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 16

    const/4 v0, 0x1

    .line 33
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/view/View;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    .line 265
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

    .line 42
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivChoose:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 45
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeData(Lcom/codemao/creativestore/bean/MaterialActorBean;I)Z
    .registers 6

    .line 113
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_12

    .line 114
    monitor-enter p0

    .line 115
    :try_start_6
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

    .line 116
    monitor-exit p0

    return v0

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p1

    .line 119
    :cond_12
    sget p1, Lcom/codemao/creativecenter/BR;->collectDeleteAble:I

    if-ne p2, p1, :cond_23

    .line 120
    monitor-enter p0

    .line 121
    :try_start_17
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

    .line 122
    monitor-exit p0

    return v0

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw p1

    .line 125
    :cond_23
    sget p1, Lcom/codemao/creativecenter/BR;->selected:I

    if-ne p2, p1, :cond_34

    .line 126
    monitor-enter p0

    .line 127
    :try_start_28
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

    .line 128
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
    .registers 26

    move-object/from16 v1, p0

    .line 137
    monitor-enter p0

    .line 138
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 139
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

    .line 140
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e6

    .line 141
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->mIsPad:Ljava/lang/Boolean;

    .line 147
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->mData:Lcom/codemao/creativestore/bean/MaterialActorBean;

    const-wide/16 v7, 0x12

    and-long v9, v2, v7

    const/4 v11, 0x0

    cmp-long v12, v9, v4

    if-eqz v12, :cond_3d

    .line 158
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v12, :cond_25

    if-eqz v0, :cond_22

    const-wide/16 v9, 0x1000

    goto :goto_24

    :cond_22
    const-wide/16 v9, 0x800

    :goto_24
    or-long/2addr v2, v9

    :cond_25
    if-eqz v0, :cond_30

    .line 170
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v9, Lcom/codemao/creativecenter/R$drawable;->pad_creative_bg_rectangle_style_selector:I

    goto :goto_38

    :cond_30
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v9, Lcom/codemao/creativecenter/R$drawable;->creative_bg_rectangle_style_selector:I

    :goto_38
    invoke-static {v0, v9}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3e

    :cond_3d
    move-object v0, v11

    :goto_3e
    const-wide/16 v9, 0x1d

    and-long v12, v2, v9

    const/16 v14, 0x8

    const-wide/16 v15, 0x11

    const-wide/16 v17, 0x100

    const-wide/16 v19, 0x15

    const/16 v21, 0x0

    cmp-long v22, v12, v4

    if-eqz v22, :cond_92

    and-long v12, v2, v15

    cmp-long v22, v12, v4

    if-eqz v22, :cond_5c

    if-eqz v6, :cond_5c

    .line 179
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v11

    :cond_5c
    if-eqz v6, :cond_63

    .line 185
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isCollectDeleteAble()Z

    move-result v12

    goto :goto_64

    :cond_63
    const/4 v12, 0x0

    :goto_64
    and-long v22, v2, v19

    cmp-long v13, v22, v4

    if-eqz v13, :cond_73

    if-eqz v12, :cond_6f

    const-wide/16 v22, 0x400

    goto :goto_71

    :cond_6f
    const-wide/16 v22, 0x200

    :goto_71
    or-long v2, v2, v22

    :cond_73
    xor-int/lit8 v13, v12, 0x1

    and-long v22, v2, v9

    cmp-long v24, v22, v4

    if-eqz v24, :cond_84

    if-eqz v13, :cond_80

    or-long v2, v2, v17

    goto :goto_84

    :cond_80
    const-wide/16 v22, 0x80

    or-long v2, v2, v22

    :cond_84
    :goto_84
    and-long v22, v2, v19

    cmp-long v24, v22, v4

    if-eqz v24, :cond_90

    if-eqz v12, :cond_8d

    goto :goto_90

    :cond_8d
    const/16 v12, 0x8

    goto :goto_94

    :cond_90
    :goto_90
    const/4 v12, 0x0

    goto :goto_94

    :cond_92
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_94
    and-long v17, v2, v17

    cmp-long v22, v17, v4

    if-eqz v22, :cond_a1

    if-eqz v6, :cond_a1

    .line 219
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result v6

    goto :goto_a2

    :cond_a1
    const/4 v6, 0x0

    :goto_a2
    and-long v17, v2, v9

    cmp-long v22, v17, v4

    if-eqz v22, :cond_b9

    if-eqz v13, :cond_ab

    goto :goto_ac

    :cond_ab
    const/4 v6, 0x0

    :goto_ac
    if-eqz v22, :cond_b7

    if-eqz v6, :cond_b3

    const-wide/16 v17, 0x40

    goto :goto_b5

    :cond_b3
    const-wide/16 v17, 0x20

    :goto_b5
    or-long v2, v2, v17

    :cond_b7
    if-eqz v6, :cond_ba

    :cond_b9
    const/4 v14, 0x0

    :cond_ba
    and-long v6, v2, v7

    cmp-long v8, v6, v4

    if-eqz v8, :cond_c5

    .line 244
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v6, v0}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_c5
    and-long v6, v2, v9

    cmp-long v0, v6, v4

    if-eqz v0, :cond_d0

    .line 249
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivChoose:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d0
    and-long v6, v2, v19

    cmp-long v0, v6, v4

    if-eqz v0, :cond_db

    .line 254
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_db
    and-long/2addr v2, v15

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e5

    .line 259
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->tvName:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_e5
    return-void

    :catchall_e6
    move-exception v0

    .line 140
    :try_start_e7
    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x10

    .line 56
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

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

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 108
    :cond_4
    check-cast p2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->onChangeData(Lcom/codemao/creativestore/bean/MaterialActorBean;I)Z

    move-result p1

    return p1
.end method

.method public setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 6

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 96
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->mData:Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 97
    monitor-enter p0

    .line 98
    :try_start_7
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_18

    .line 100
    sget p1, Lcom/codemao/creativecenter/BR;->data:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 101
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_18
    move-exception p1

    .line 99
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public setIsPad(Ljava/lang/Boolean;)V
    .registers 6

    .line 87
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->mIsPad:Ljava/lang/Boolean;

    .line 88
    monitor-enter p0

    .line 89
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->mDirtyFlags:J

    .line 90
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 91
    sget p1, Lcom/codemao/creativecenter/BR;->isPad:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 92
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 90
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 74
    sget v0, Lcom/codemao/creativecenter/BR;->isPad:I

    if-ne v0, p1, :cond_a

    .line 75
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->setIsPad(Ljava/lang/Boolean;)V

    goto :goto_13

    .line 77
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->data:I

    if-ne v0, p1, :cond_15

    .line 78
    check-cast p2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;->setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
