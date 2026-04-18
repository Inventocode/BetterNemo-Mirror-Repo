.class public Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;
.source "CreativeLayoutMaterialSoundPopBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->cpm:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 30
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 14

    const/4 v0, 0x1

    .line 33
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/codemao/creativecenter/customview/CmPlayMusic;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativecenter/customview/CmPlayMusic;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    const-wide/16 v0, -0x1

    .line 222
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->mDirtyFlags:J

    .line 40
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivEdit:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 44
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 46
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->mboundView2:Landroid/widget/TextView;

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 22

    move-object/from16 v1, p0

    .line 124
    monitor-enter p0

    .line 125
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 126
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->mDirtyFlags:J

    .line 127
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e4

    .line 129
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->mIsPad:Ljava/lang/Boolean;

    .line 133
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->mData:Lcom/codemao/creativestore/bean/SoundVO;

    .line 138
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->mSelected:Ljava/lang/Boolean;

    const-wide/16 v8, 0x9

    and-long v10, v2, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    cmp-long v14, v10, v4

    if-eqz v14, :cond_86

    .line 145
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v14, :cond_3a

    if-eqz v0, :cond_2e

    const-wide/16 v10, 0x20

    or-long/2addr v2, v10

    const-wide/16 v10, 0x80

    or-long/2addr v2, v10

    const-wide/16 v10, 0x200

    or-long/2addr v2, v10

    const-wide/16 v10, 0x800

    goto :goto_39

    :cond_2e
    const-wide/16 v10, 0x10

    or-long/2addr v2, v10

    const-wide/16 v10, 0x40

    or-long/2addr v2, v10

    const-wide/16 v10, 0x100

    or-long/2addr v2, v10

    const-wide/16 v10, 0x400

    :goto_39
    or-long/2addr v2, v10

    .line 163
    :cond_3a
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v0, :cond_45

    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    goto :goto_47

    :cond_45
    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_5dp:I

    :goto_47
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    move v13, v10

    .line 165
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v0, :cond_57

    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    goto :goto_59

    :cond_57
    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_5dp:I

    :goto_59
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 167
    iget-object v11, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v0, :cond_68

    sget v14, Lcom/codemao/creativecenter/R$drawable;->pad_creative_selector_bg_sound_bg:I

    goto :goto_6a

    :cond_68
    sget v14, Lcom/codemao/creativecenter/R$drawable;->creative_selector_bg_sound_bg:I

    :goto_6a
    invoke-static {v11, v14}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v0, :cond_79

    .line 169
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivEdit:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    goto :goto_81

    :cond_79
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivEdit:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_5dp:I

    :goto_81
    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_89

    :cond_86
    move-object v11, v12

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_89
    const-wide/16 v14, 0xa

    and-long v16, v2, v14

    cmp-long v18, v16, v4

    if-eqz v18, :cond_97

    if-eqz v6, :cond_97

    .line 177
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/SoundVO;->getName()Ljava/lang/String;

    move-result-object v12

    :cond_97
    const-wide/16 v16, 0xc

    and-long v18, v2, v16

    const/4 v6, 0x0

    cmp-long v20, v18, v4

    if-eqz v20, :cond_b4

    .line 185
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v7

    if-eqz v20, :cond_af

    if-eqz v7, :cond_ab

    const-wide/16 v18, 0x2000

    goto :goto_ad

    :cond_ab
    const-wide/16 v18, 0x1000

    :goto_ad
    or-long v2, v2, v18

    :cond_af
    if-eqz v7, :cond_b2

    goto :goto_b4

    :cond_b2
    const/16 v6, 0x8

    :cond_b4
    :goto_b4
    and-long v7, v2, v8

    cmp-long v9, v7, v4

    if-eqz v9, :cond_ce

    .line 203
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v7, v11}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-static {v7, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setMargin(Landroid/view/View;F)V

    .line 205
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivDel:Landroid/widget/ImageView;

    invoke-static {v7, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setMargin(Landroid/view/View;F)V

    .line 206
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivEdit:Landroid/widget/ImageView;

    invoke-static {v7, v0}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setMargin(Landroid/view/View;F)V

    :cond_ce
    and-long v7, v2, v16

    cmp-long v0, v7, v4

    if-eqz v0, :cond_d9

    .line 211
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d9
    and-long/2addr v2, v14

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e3

    .line 216
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->mboundView2:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_e3
    return-void

    :catchall_e4
    move-exception v0

    .line 127
    :try_start_e5
    monitor-exit p0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x8

    .line 56
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->mDirtyFlags:J

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

.method public setData(Lcom/codemao/creativestore/bean/SoundVO;)V
    .registers 6

    .line 98
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->mData:Lcom/codemao/creativestore/bean/SoundVO;

    .line 99
    monitor-enter p0

    .line 100
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->mDirtyFlags:J

    .line 101
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 102
    sget p1, Lcom/codemao/creativecenter/BR;->data:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 103
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 101
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setIsPad(Ljava/lang/Boolean;)V
    .registers 6

    .line 90
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->mIsPad:Ljava/lang/Boolean;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 94
    sget p1, Lcom/codemao/creativecenter/BR;->isPad:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 95
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 93
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setSelected(Ljava/lang/Boolean;)V
    .registers 6

    .line 106
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->mSelected:Ljava/lang/Boolean;

    .line 107
    monitor-enter p0

    .line 108
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->mDirtyFlags:J

    .line 109
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 110
    sget p1, Lcom/codemao/creativecenter/BR;->selected:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 111
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 109
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

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->setIsPad(Ljava/lang/Boolean;)V

    goto :goto_1d

    .line 77
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->data:I

    if-ne v0, p1, :cond_14

    .line 78
    check-cast p2, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->setData(Lcom/codemao/creativestore/bean/SoundVO;)V

    goto :goto_1d

    .line 80
    :cond_14
    sget v0, Lcom/codemao/creativecenter/BR;->selected:I

    if-ne v0, p1, :cond_1f

    .line 81
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;->setSelected(Ljava/lang/Boolean;)V

    :goto_1d
    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return p1
.end method
