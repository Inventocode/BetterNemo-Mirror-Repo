.class public Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBinding;
.source "CreativeLayoutMaterialSoundPopPadBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView1:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->cl_root:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/codemao/creativecenter/R$id;->cpm:I

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

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 33
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 14

    const/4 v0, 0x3

    .line 36
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/codemao/creativecenter/customview/CmPlayMusic;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativecenter/customview/CmPlayMusic;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    const-wide/16 v0, -0x1

    .line 166
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->mDirtyFlags:J

    .line 43
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBinding;->ivDel:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 44
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 46
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->mboundView1:Landroid/widget/TextView;

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 15

    .line 113
    monitor-enter p0

    .line 114
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 115
    iput-wide v2, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->mDirtyFlags:J

    .line 116
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4c

    const/4 v4, 0x0

    .line 120
    iget-object v5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBinding;->mData:Lcom/codemao/creativestore/bean/SoundVO;

    .line 121
    iget-object v6, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBinding;->mSelected:Ljava/lang/Boolean;

    const-wide/16 v7, 0x5

    and-long v9, v0, v7

    cmp-long v11, v9, v2

    if-eqz v11, :cond_1b

    if-eqz v5, :cond_1b

    .line 129
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/SoundVO;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_1b
    const-wide/16 v9, 0x6

    and-long v11, v0, v9

    const/4 v5, 0x0

    cmp-long v13, v11, v2

    if-eqz v13, :cond_37

    .line 137
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v13, :cond_32

    if-eqz v6, :cond_2f

    const-wide/16 v11, 0x10

    goto :goto_31

    :cond_2f
    const-wide/16 v11, 0x8

    :goto_31
    or-long/2addr v0, v11

    :cond_32
    if-eqz v6, :cond_35

    goto :goto_37

    :cond_35
    const/16 v5, 0x8

    :cond_37
    :goto_37
    and-long/2addr v9, v0

    cmp-long v6, v9, v2

    if-eqz v6, :cond_41

    .line 155
    iget-object v6, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_41
    and-long/2addr v0, v7

    cmp-long v5, v0, v2

    if-eqz v5, :cond_4b

    .line 160
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->mboundView1:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_4b
    return-void

    :catchall_4c
    move-exception v0

    .line 116
    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x4

    .line 56
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->mDirtyFlags:J

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

    .line 87
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBinding;->mData:Lcom/codemao/creativestore/bean/SoundVO;

    .line 88
    monitor-enter p0

    .line 89
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->mDirtyFlags:J

    .line 90
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 91
    sget p1, Lcom/codemao/creativecenter/BR;->data:I

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

.method public setSelected(Ljava/lang/Boolean;)V
    .registers 6

    .line 95
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBinding;->mSelected:Ljava/lang/Boolean;

    .line 96
    monitor-enter p0

    .line 97
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->mDirtyFlags:J

    .line 98
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 99
    sget p1, Lcom/codemao/creativecenter/BR;->selected:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 100
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 98
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 74
    sget v0, Lcom/codemao/creativecenter/BR;->data:I

    if-ne v0, p1, :cond_a

    .line 75
    check-cast p2, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->setData(Lcom/codemao/creativestore/bean/SoundVO;)V

    goto :goto_13

    .line 77
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->selected:I

    if-ne v0, p1, :cond_15

    .line 78
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;->setSelected(Ljava/lang/Boolean;)V

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
