.class public Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;
.super Lcom/codemao/nemo/databinding/ItemKnTemplateListBinding;
.source "ItemKnTemplateListBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView1:Lcom/google/android/material/imageview/ShapeableImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 29
    sget-object v0, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/ItemKnTemplateListBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 118
    iput-wide v1, p0, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;->mDirtyFlags:J

    .line 34
    aget-object p1, p3, v0

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 36
    aget-object p1, p3, p1

    check-cast p1, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p1, p0, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;->mboundView1:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 9

    .line 92
    monitor-enter p0

    .line 93
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 94
    iput-wide v2, p0, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_21

    .line 96
    iget-object v4, p0, Lcom/codemao/nemo/databinding/ItemKnTemplateListBinding;->mItem:Lcom/codemao/nemo/bean/KnTemplateListItem;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3

    and-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-eqz v6, :cond_18

    if-eqz v4, :cond_18

    .line 105
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/KnTemplateListItem;->getCover_url()Ljava/lang/String;

    move-result-object v5

    :cond_18
    if-eqz v6, :cond_20

    .line 112
    iget-object v0, p0, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;->mboundView1:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v1, 0x0

    invoke-static {v0, v5, v1}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :cond_20
    return-void

    :catchall_21
    move-exception v0

    .line 95
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 53
    monitor-enter p0

    .line 54
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x2

    .line 46
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;->mDirtyFlags:J

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

.method public setItem(Lcom/codemao/nemo/bean/KnTemplateListItem;)V
    .registers 6

    .line 74
    iput-object p1, p0, Lcom/codemao/nemo/databinding/ItemKnTemplateListBinding;->mItem:Lcom/codemao/nemo/bean/KnTemplateListItem;

    .line 75
    monitor-enter p0

    .line 76
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;->mDirtyFlags:J

    .line 77
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    const/16 p1, 0x10

    .line 78
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 79
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 77
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    const/16 v0, 0x10

    if-ne v0, p1, :cond_b

    .line 65
    check-cast p2, Lcom/codemao/nemo/bean/KnTemplateListItem;

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/databinding/ItemKnTemplateListBindingImpl;->setItem(Lcom/codemao/nemo/bean/KnTemplateListItem;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
