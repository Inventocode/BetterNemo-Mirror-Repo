.class public Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBinding;
.source "CreativeItemEditEmptyBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 27
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v0, -0x1

    .line 109
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 32
    aget-object p1, p3, p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;->mboundView0:Landroid/view/View;

    const/4 p3, 0x0

    .line 33
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeActor(Lcom/codemao/creativestore/bean/ActorVO;I)Z
    .registers 5

    .line 88
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 89
    monitor-enter p0

    .line 90
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;->mDirtyFlags:J

    .line 91
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
    .registers 3

    .line 100
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 102
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;->mDirtyFlags:J

    .line 103
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

    .line 49
    monitor-enter p0

    .line 50
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 51
    monitor-exit p0

    return v0

    .line 53
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

    .line 41
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 42
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;->mDirtyFlags:J

    .line 43
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 44
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 43
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

    .line 83
    :cond_4
    check-cast p2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;->onChangeActor(Lcom/codemao/creativestore/bean/ActorVO;I)Z

    move-result p1

    return p1
.end method

.method public setActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    return-void
.end method

.method public setObserver(Lcom/codemao/creativecenter/callback/ObserverAction;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 60
    sget v0, Lcom/codemao/creativecenter/BR;->actor:I

    if-ne v0, p1, :cond_a

    .line 61
    check-cast p2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;->setActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_13

    .line 63
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->observer:I

    if-ne v0, p1, :cond_15

    .line 64
    check-cast p2, Lcom/codemao/creativecenter/callback/ObserverAction;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;->setObserver(Lcom/codemao/creativecenter/callback/ObserverAction;)V

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
