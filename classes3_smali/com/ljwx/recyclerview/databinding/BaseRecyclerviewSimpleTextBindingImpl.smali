.class public Lcom/ljwx/recyclerview/databinding/BaseRecyclerviewSimpleTextBindingImpl;
.super Lcom/ljwx/recyclerview/databinding/BaseRecyclerviewSimpleTextBinding;
.source "BaseRecyclerviewSimpleTextBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/ljwx/recyclerview/databinding/BaseRecyclerviewSimpleTextBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/ljwx/recyclerview/R$id;->text_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 28
    sget-object v0, Lcom/ljwx/recyclerview/databinding/BaseRecyclerviewSimpleTextBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/ljwx/recyclerview/databinding/BaseRecyclerviewSimpleTextBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ljwx/recyclerview/databinding/BaseRecyclerviewSimpleTextBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x1

    .line 31
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/ljwx/recyclerview/databinding/BaseRecyclerviewSimpleTextBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;)V

    const-wide/16 v2, -0x1

    .line 84
    iput-wide v2, p0, Lcom/ljwx/recyclerview/databinding/BaseRecyclerviewSimpleTextBindingImpl;->mDirtyFlags:J

    .line 34
    aget-object p1, p3, v1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ljwx/recyclerview/databinding/BaseRecyclerviewSimpleTextBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    .line 35
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/ljwx/recyclerview/databinding/BaseRecyclerviewSimpleTextBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 3

    .line 75
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 77
    :try_start_3
    iput-wide v0, p0, Lcom/ljwx/recyclerview/databinding/BaseRecyclerviewSimpleTextBindingImpl;->mDirtyFlags:J

    .line 78
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

    .line 51
    monitor-enter p0

    .line 52
    :try_start_1
    iget-wide v0, p0, Lcom/ljwx/recyclerview/databinding/BaseRecyclerviewSimpleTextBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 53
    monitor-exit p0

    return v0

    .line 55
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

    .line 43
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 44
    :try_start_3
    iput-wide v0, p0, Lcom/ljwx/recyclerview/databinding/BaseRecyclerviewSimpleTextBindingImpl;->mDirtyFlags:J

    .line 45
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 46
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 45
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

.method public setVariable(ILjava/lang/Object;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
