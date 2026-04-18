.class public Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;
.super Lcom/ljwx/recyclerview/databinding/Holder2Binding;
.source "Holder2BindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;

.field private final mboundView1:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 29
    sget-object v0, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/ljwx/recyclerview/databinding/Holder2Binding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 122
    iput-wide v1, p0, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->mDirtyFlags:J

    .line 34
    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 36
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->mboundView1:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 9

    .line 98
    monitor-enter p0

    .line 99
    :try_start_1
    iget-wide v0, p0, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 100
    iput-wide v2, p0, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->mDirtyFlags:J

    .line 101
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2b

    .line 102
    iget-object v4, p0, Lcom/ljwx/recyclerview/databinding/Holder2Binding;->mItem:Ljava/lang/Integer;

    const/4 v5, 0x0

    const-wide/16 v6, 0x5

    and-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-eqz v6, :cond_23

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_23
    if-eqz v6, :cond_2a

    .line 116
    iget-object v0, p0, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->mboundView1:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2a
    return-void

    :catchall_2b
    move-exception v0

    .line 101
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 53
    monitor-enter p0

    .line 54
    :try_start_1
    iget-wide v0, p0, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x4

    .line 46
    :try_start_3
    iput-wide v0, p0, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->mDirtyFlags:J

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

.method public setItem(Ljava/lang/Integer;)V
    .registers 6

    .line 77
    iput-object p1, p0, Lcom/ljwx/recyclerview/databinding/Holder2Binding;->mItem:Ljava/lang/Integer;

    .line 78
    monitor-enter p0

    .line 79
    :try_start_3
    iget-wide v0, p0, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->mDirtyFlags:J

    .line 80
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 81
    sget p1, Lcom/ljwx/recyclerview/BR;->item:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 82
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 80
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setOnClick(Landroid/view/View$OnClickListener;)V
    .registers 2

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 64
    sget v0, Lcom/ljwx/recyclerview/BR;->item:I

    if-ne v0, p1, :cond_a

    .line 65
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->setItem(Ljava/lang/Integer;)V

    goto :goto_13

    .line 67
    :cond_a
    sget v0, Lcom/ljwx/recyclerview/BR;->onClick:I

    if-ne v0, p1, :cond_15

    .line 68
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/ljwx/recyclerview/databinding/Holder2BindingImpl;->setOnClick(Landroid/view/View$OnClickListener;)V

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
