.class public Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;
.source "CreativeLayoutMaterialTopBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 15
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "creative_layout_material_item"

    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    new-array v2, v2, [I

    sget v5, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_item:I

    aput v5, v2, v4

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 31
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x1

    .line 34
    aget-object v0, p3, v0

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;)V

    const-wide/16 v0, -0x1

    .line 190
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mDirtyFlags:J

    .line 37
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->include:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    const/4 p1, 0x0

    .line 38
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    .line 39
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeBean(Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;I)Z
    .registers 5

    .line 131
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 132
    monitor-enter p0

    .line 133
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mDirtyFlags:J

    .line 134
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeInclude(Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;I)Z
    .registers 5

    .line 122
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 123
    monitor-enter p0

    .line 124
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mDirtyFlags:J

    .line 125
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .registers 13

    .line 143
    monitor-enter p0

    .line 144
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 145
    iput-wide v2, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mDirtyFlags:J

    .line 146
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_5b

    .line 148
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    const/4 v5, 0x0

    .line 150
    iget-object v6, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->mIsPad:Ljava/lang/Boolean;

    const-wide/16 v7, 0x18

    and-long v9, v0, v7

    cmp-long v11, v9, v2

    if-eqz v11, :cond_3a

    .line 159
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v5

    if-eqz v11, :cond_23

    if-eqz v5, :cond_20

    const-wide/16 v9, 0x40

    goto :goto_22

    :cond_20
    const-wide/16 v9, 0x20

    :goto_22
    or-long/2addr v0, v9

    :cond_23
    if-eqz v5, :cond_2e

    .line 171
    iget-object v5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_60dp:I

    goto :goto_36

    :cond_2e
    iget-object v5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_56dp:I

    :goto_36
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :cond_3a
    and-long/2addr v7, v0

    cmp-long v9, v7, v2

    if-eqz v9, :cond_49

    .line 177
    iget-object v7, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->include:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-virtual {v7, v6}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->setIsPad(Ljava/lang/Boolean;)V

    .line 178
    iget-object v6, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-static {v6, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    :cond_49
    const-wide/16 v5, 0x14

    and-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-eqz v5, :cond_55

    .line 183
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->include:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-virtual {v0, v4}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V

    .line 185
    :cond_55
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->include:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_5b
    move-exception v0

    .line 146
    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 7

    .line 56
    monitor-enter p0

    .line 57
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_c

    .line 58
    monitor-exit p0

    return v4

    .line 60
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    .line 61
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->include:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_16

    return v4

    :cond_16
    const/4 v0, 0x0

    return v0

    :catchall_18
    move-exception v0

    .line 60
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public invalidateAll()V
    .registers 3

    .line 47
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 48
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mDirtyFlags:J

    .line 49
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 50
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->include:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 51
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_f
    move-exception v0

    .line 49
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .registers 5

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_7
    check-cast p2, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->onChangeBean(Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;I)Z

    move-result p1

    return p1

    .line 115
    :cond_e
    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->onChangeInclude(Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;I)Z

    move-result p1

    return p1
.end method

.method public setBean(Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;)V
    .registers 2

    return-void
.end method

.method public setIsPad(Ljava/lang/Boolean;)V
    .registers 6

    .line 97
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->mIsPad:Ljava/lang/Boolean;

    .line 98
    monitor-enter p0

    .line 99
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mDirtyFlags:J

    .line 100
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 101
    sget p1, Lcom/codemao/creativecenter/BR;->isPad:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 102
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 100
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    .line 107
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 108
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->include:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V
    .registers 6

    .line 86
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->mDirtyFlags:J

    .line 89
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 90
    sget p1, Lcom/codemao/creativecenter/BR;->listener:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 91
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 89
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 70
    sget v0, Lcom/codemao/creativecenter/BR;->listener:I

    if-ne v0, p1, :cond_a

    .line 71
    check-cast p2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V

    goto :goto_1d

    .line 73
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->bean:I

    if-ne v0, p1, :cond_14

    .line 74
    check-cast p2, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->setBean(Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;)V

    goto :goto_1d

    .line 76
    :cond_14
    sget v0, Lcom/codemao/creativecenter/BR;->isPad:I

    if-ne v0, p1, :cond_1f

    .line 77
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;->setIsPad(Ljava/lang/Boolean;)V

    :goto_1d
    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return p1
.end method
