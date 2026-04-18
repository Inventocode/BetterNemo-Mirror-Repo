.class public Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBinding;
.source "CreativeItemAdapterChangeStyleFooterBindingImpl.java"


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

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->cl_bg:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_add:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 29
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 11

    const/4 v0, 0x1

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;)V

    const-wide/16 v0, -0x1

    .line 96
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 36
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    .line 37
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 3

    .line 87
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 89
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBindingImpl;->mDirtyFlags:J

    .line 90
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 53
    monitor-enter p0

    .line 54
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBindingImpl;->mDirtyFlags:J

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

.method public setIsSelect(Ljava/lang/Boolean;)V
    .registers 2

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 64
    sget v0, Lcom/codemao/creativecenter/BR;->isSelect:I

    if-ne v0, p1, :cond_b

    .line 65
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBindingImpl;->setIsSelect(Ljava/lang/Boolean;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
