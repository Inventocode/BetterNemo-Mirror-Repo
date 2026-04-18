.class public Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;
.super Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBinding;
.source "ItemKnListEnvChangeBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 27
    sget-object v0, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 121
    iput-wide v1, p0, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;->mDirtyFlags:J

    .line 32
    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;->mboundView0:Landroid/widget/TextView;

    const/4 p3, 0x0

    .line 33
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 8

    .line 88
    monitor-enter p0

    .line 89
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 90
    iput-wide v2, p0, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_28

    .line 92
    iget-object v4, p0, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBinding;->mItem:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_20

    if-eqz v4, :cond_19

    .line 102
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_19
    move-object v0, v5

    :goto_1a
    if-eqz v0, :cond_20

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    :cond_20
    if-eqz v6, :cond_27

    .line 115
    iget-object v0, p0, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;->mboundView0:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    .line 91
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 49
    monitor-enter p0

    .line 50
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x2

    .line 42
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;->mDirtyFlags:J

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

    const/4 p1, 0x0

    return p1
.end method

.method public setItem(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V
    .registers 6

    .line 70
    iput-object p1, p0, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBinding;->mItem:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    .line 71
    monitor-enter p0

    .line 72
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;->mDirtyFlags:J

    .line 73
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    const/16 p1, 0x10

    .line 74
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 75
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 73
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

    .line 61
    check-cast p2, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/databinding/ItemKnListEnvChangeBindingImpl;->setItem(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
