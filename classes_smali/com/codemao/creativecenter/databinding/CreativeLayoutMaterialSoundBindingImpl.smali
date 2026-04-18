.class public Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;
.source "CreativeLayoutMaterialSoundBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView3:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 29
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 12

    const/4 v0, 0x1

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/codemao/creativecenter/customview/CmPlayMusic;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativecenter/customview/CmPlayMusic;Landroid/widget/ImageView;)V

    const-wide/16 v0, -0x1

    .line 213
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mDirtyFlags:J

    .line 37
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->cpm:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->ivChoose:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 40
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mboundView3:Landroid/widget/TextView;

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeData(Lcom/codemao/creativestore/bean/MaterialActorBean;I)Z
    .registers 6

    .line 109
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_12

    .line 110
    monitor-enter p0

    .line 111
    :try_start_6
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mDirtyFlags:J

    .line 112
    monitor-exit p0

    return v0

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p1

    .line 115
    :cond_12
    sget p1, Lcom/codemao/creativecenter/BR;->selected:I

    if-ne p2, p1, :cond_23

    .line 116
    monitor-enter p0

    .line 117
    :try_start_17
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mDirtyFlags:J

    .line 118
    monitor-exit p0

    return v0

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw p1

    :cond_23
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .registers 21

    move-object/from16 v1, p0

    .line 127
    monitor-enter p0

    .line 128
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 129
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mDirtyFlags:J

    .line 130
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b6

    .line 132
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->mIsPad:Ljava/lang/Boolean;

    const/4 v6, 0x0

    .line 138
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->mData:Lcom/codemao/creativestore/bean/MaterialActorBean;

    const-wide/16 v8, 0xa

    and-long v10, v2, v8

    const/4 v12, 0x0

    cmp-long v13, v10, v4

    if-eqz v13, :cond_55

    .line 145
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v13, :cond_2c

    if-eqz v0, :cond_26

    const-wide/16 v10, 0x80

    or-long/2addr v2, v10

    const-wide/16 v10, 0x200

    goto :goto_2b

    :cond_26
    const-wide/16 v10, 0x40

    or-long/2addr v2, v10

    const-wide/16 v10, 0x100

    :goto_2b
    or-long/2addr v2, v10

    .line 159
    :cond_2c
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->cpm:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v0, :cond_37

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_52dp:I

    goto :goto_39

    :cond_37
    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_44dp:I

    :goto_39
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    if-eqz v0, :cond_48

    .line 161
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/codemao/creativecenter/R$drawable;->pad_creative_selector_bg_sound_bg:I

    goto :goto_50

    :cond_48
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/codemao/creativecenter/R$drawable;->creative_selector_bg_sound_bg:I

    :goto_50
    invoke-static {v0, v10}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_56

    :cond_55
    move-object v0, v12

    :goto_56
    const-wide/16 v10, 0xd

    and-long v13, v2, v10

    const-wide/16 v15, 0x9

    const/16 v17, 0x0

    cmp-long v18, v13, v4

    if-eqz v18, :cond_8b

    if-eqz v7, :cond_69

    .line 169
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result v13

    goto :goto_6a

    :cond_69
    const/4 v13, 0x0

    :goto_6a
    if-eqz v18, :cond_75

    if-eqz v13, :cond_71

    const-wide/16 v18, 0x20

    goto :goto_73

    :cond_71
    const-wide/16 v18, 0x10

    :goto_73
    or-long v2, v2, v18

    :cond_75
    if-eqz v13, :cond_78

    goto :goto_7c

    :cond_78
    const/16 v13, 0x8

    const/16 v17, 0x8

    :goto_7c
    and-long v13, v2, v15

    cmp-long v18, v13, v4

    if-eqz v18, :cond_88

    if-eqz v7, :cond_88

    .line 187
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v12

    :cond_88
    move/from16 v7, v17

    goto :goto_8c

    :cond_8b
    const/4 v7, 0x0

    :goto_8c
    and-long/2addr v8, v2

    cmp-long v13, v8, v4

    if-eqz v13, :cond_a0

    .line 195
    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v8, v0}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->cpm:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-static {v0, v6}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 197
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->cpm:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-static {v0, v6}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    :cond_a0
    and-long v8, v2, v10

    cmp-long v0, v8, v4

    if-eqz v0, :cond_ab

    .line 202
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->ivChoose:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_ab
    and-long/2addr v2, v15

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b5

    .line 207
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_b5
    return-void

    :catchall_b6
    move-exception v0

    .line 130
    :try_start_b7
    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 59
    monitor-enter p0

    .line 60
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x8

    .line 52
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mDirtyFlags:J

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

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 104
    :cond_4
    check-cast p2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->onChangeData(Lcom/codemao/creativestore/bean/MaterialActorBean;I)Z

    move-result p1

    return p1
.end method

.method public setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 6

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 92
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->mData:Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_7
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_18

    .line 96
    sget p1, Lcom/codemao/creativecenter/BR;->data:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 97
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_18
    move-exception p1

    .line 95
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public setIsPad(Ljava/lang/Boolean;)V
    .registers 6

    .line 83
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->mIsPad:Ljava/lang/Boolean;

    .line 84
    monitor-enter p0

    .line 85
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->mDirtyFlags:J

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

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->setIsPad(Ljava/lang/Boolean;)V

    goto :goto_13

    .line 73
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->data:I

    if-ne v0, p1, :cond_15

    .line 74
    check-cast p2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;->setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
