.class public Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;
.source "CreativeLayoutMaterialBottomBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView2:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 15
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "creative_layout_material_item"

    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v4, v3, v5

    new-array v2, v2, [I

    sget v4, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_item:I

    aput v4, v2, v5

    invoke-virtual {v0, v5, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 33
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 11

    const/4 v0, 0x3

    .line 36
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 197
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mDirtyFlags:J

    .line 40
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->clude:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 41
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->emptyTips:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 44
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeClude(Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;I)Z
    .registers 5

    .line 120
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 121
    monitor-enter p0

    .line 122
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mDirtyFlags:J

    .line 123
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
    .registers 18

    move-object/from16 v1, p0

    .line 132
    monitor-enter p0

    .line 133
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 134
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mDirtyFlags:J

    .line 135
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_bb

    .line 139
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->mIsPad:Ljava/lang/Boolean;

    .line 142
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    const-wide/16 v7, 0xa

    and-long v9, v2, v7

    const/4 v11, 0x0

    cmp-long v12, v9, v4

    if-eqz v12, :cond_88

    .line 149
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v12, :cond_37

    if-eqz v9, :cond_2b

    const-wide/16 v10, 0x20

    or-long/2addr v2, v10

    const-wide/16 v10, 0x80

    or-long/2addr v2, v10

    const-wide/16 v10, 0x200

    or-long/2addr v2, v10

    const-wide/16 v10, 0x800

    goto :goto_36

    :cond_2b
    const-wide/16 v10, 0x10

    or-long/2addr v2, v10

    const-wide/16 v10, 0x40

    or-long/2addr v2, v10

    const-wide/16 v10, 0x100

    or-long/2addr v2, v10

    const-wide/16 v10, 0x400

    :goto_36
    or-long/2addr v2, v10

    .line 167
    :cond_37
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v9, :cond_42

    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_26dp:I

    goto :goto_44

    :cond_42
    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    :goto_44
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    move v11, v10

    .line 169
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->emptyTips:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v9, :cond_54

    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_20dp:I

    goto :goto_56

    :cond_54
    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    :goto_56
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 171
    iget-object v12, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v9, :cond_65

    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_20dp:I

    goto :goto_67

    :cond_65
    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    :goto_67
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    if-eqz v9, :cond_76

    .line 173
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->emptyTips:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    goto :goto_7e

    :cond_76
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->emptyTips:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    :goto_7e
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    move/from16 v16, v11

    move v11, v10

    move/from16 v10, v16

    goto :goto_8b

    :cond_88
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_8b
    const-wide/16 v13, 0xc

    and-long/2addr v13, v2

    cmp-long v15, v13, v4

    and-long/2addr v2, v7

    cmp-long v7, v2, v4

    if-eqz v7, :cond_ae

    .line 181
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->clude:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-virtual {v2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->setIsPad(Ljava/lang/Boolean;)V

    .line 182
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->emptyTips:Landroid/widget/TextView;

    invoke-static {v0, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginBottom(Landroid/view/View;F)V

    .line 183
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->emptyTips:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    .line 184
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    invoke-static {v0, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginBottom(Landroid/view/View;F)V

    .line 185
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTop(Landroid/view/View;F)V

    :cond_ae
    if-eqz v15, :cond_b5

    .line 190
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->clude:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-virtual {v0, v6}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V

    .line 192
    :cond_b5
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->clude:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_bb
    move-exception v0

    .line 135
    :try_start_bc
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 7

    .line 62
    monitor-enter p0

    .line 63
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_c

    .line 64
    monitor-exit p0

    return v4

    .line 66
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    .line 67
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->clude:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_16

    return v4

    :cond_16
    const/4 v0, 0x0

    return v0

    :catchall_18
    move-exception v0

    .line 66
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public invalidateAll()V
    .registers 3

    .line 53
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 54
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mDirtyFlags:J

    .line 55
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 56
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->clude:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 57
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_f
    move-exception v0

    .line 55
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .registers 4

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 115
    :cond_4
    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->onChangeClude(Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;I)Z

    move-result p1

    return p1
.end method

.method public setIsPad(Ljava/lang/Boolean;)V
    .registers 6

    .line 89
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->mIsPad:Ljava/lang/Boolean;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mDirtyFlags:J

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

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    .line 107
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 108
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->clude:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V
    .registers 6

    .line 97
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    .line 98
    monitor-enter p0

    .line 99
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->mDirtyFlags:J

    .line 100
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 101
    sget p1, Lcom/codemao/creativecenter/BR;->listener:I

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

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 76
    sget v0, Lcom/codemao/creativecenter/BR;->isPad:I

    if-ne v0, p1, :cond_a

    .line 77
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->setIsPad(Ljava/lang/Boolean;)V

    goto :goto_13

    .line 79
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->listener:I

    if-ne v0, p1, :cond_15

    .line 80
    check-cast p2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;->setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
