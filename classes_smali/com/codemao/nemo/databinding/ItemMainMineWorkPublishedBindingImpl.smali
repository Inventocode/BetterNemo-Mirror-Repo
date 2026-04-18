.class public Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;
.super Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;
.source "ItemMainMineWorkPublishedBindingImpl.java"


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

    sput-object v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00c3

    const/16 v2, 0x9

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0326

    const/16 v2, 0xa

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0717

    const/16 v2, 0xb

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 30
    sget-object v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 20

    move-object/from16 v15, p0

    const/16 v0, 0x9

    .line 33
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/github/mmin18/widget/RealtimeBlurView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/ljwx/baseview/text/DrawableTextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/imageview/ShapeableImageView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/ljwx/baseview/text/DrawableTextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/ljwx/baseview/text/DrawableTextView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/ljwx/baseview/text/DrawableTextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Lcom/ljwx/baseview/text/DrawableTextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v14, v0

    check-cast v14, Lcom/ljwx/view/SplitTextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v14}, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/github/mmin18/widget/RealtimeBlurView;Lcom/ljwx/baseview/text/DrawableTextView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/ljwx/baseview/text/DrawableTextView;Lcom/ljwx/baseview/text/DrawableTextView;Lcom/ljwx/baseview/text/DrawableTextView;Lcom/ljwx/baseview/text/DrawableTextView;Landroid/widget/TextView;Lcom/ljwx/view/SplitTextView;)V

    const-wide/16 v0, -0x1

    .line 177
    iput-wide v0, v15, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;->mDirtyFlags:J

    .line 46
    iget-object v0, v15, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->collectionCount:Lcom/ljwx/baseview/text/DrawableTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object v0, v15, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->coverImage:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 48
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v15, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object v0, v15, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->openSourceFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object v0, v15, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->pageView:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v0, v15, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->recreationCount:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 53
    iget-object v0, v15, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->thumbCount:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object v0, v15, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->workName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v0, v15, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->workTime:Lcom/ljwx/view/SplitTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 56
    invoke-virtual {v15, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 20

    move-object/from16 v1, p0

    .line 110
    monitor-enter p0

    .line 111
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 112
    iput-wide v4, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;->mDirtyFlags:J

    .line 113
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8c

    .line 115
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->mItem:Lcom/codemao/nemo/bean/KnWorkListItem;

    const-wide/16 v6, 0x3

    and-long v8, v2, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    cmp-long v12, v8, v4

    if-eqz v12, :cond_57

    if-eqz v0, :cond_39

    .line 131
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getForkTimes()Ljava/lang/String;

    move-result-object v11

    .line 133
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v8

    .line 135
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getViewTimes()Ljava/lang/String;

    move-result-object v9

    .line 137
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getCollectionTimes()Ljava/lang/String;

    move-result-object v13

    .line 139
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->showTime()Ljava/lang/String;

    move-result-object v14

    .line 141
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getLikeTimes()Ljava/lang/String;

    move-result-object v15

    .line 143
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getName()Ljava/lang/String;

    move-result-object v16

    .line 145
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getOpenSource()Z

    move-result v0

    goto :goto_41

    :cond_39
    move-object v8, v11

    move-object v9, v8

    move-object v13, v9

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    const/4 v0, 0x0

    :goto_41
    if-eqz v12, :cond_4c

    if-eqz v0, :cond_48

    const-wide/16 v17, 0x8

    goto :goto_4a

    :cond_48
    const-wide/16 v17, 0x4

    :goto_4a
    or-long v2, v2, v17

    :cond_4c
    if-eqz v0, :cond_50

    const/4 v0, 0x0

    goto :goto_52

    :cond_50
    const/16 v0, 0x8

    :goto_52
    move-object v12, v11

    move-object v11, v13

    move-object/from16 v13, v16

    goto :goto_5e

    :cond_57
    move-object v8, v11

    move-object v9, v8

    move-object v12, v9

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    const/4 v0, 0x0

    :goto_5e
    and-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8b

    .line 164
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->collectionCount:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-static {v2, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->coverImage:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v2, v8, v10}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 166
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->openSourceFlag:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->pageView:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->recreationCount:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->thumbCount:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-static {v0, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->workName:Landroid/widget/TextView;

    invoke-static {v0, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->workTime:Lcom/ljwx/view/SplitTextView;

    invoke-static {v0, v14}, Lcom/codemao/nemo/common/SplitTextViewAdapter;->setCenterText(Lcom/ljwx/view/SplitTextView;Ljava/lang/String;)V

    :cond_8b
    return-void

    :catchall_8c
    move-exception v0

    .line 113
    :try_start_8d
    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 71
    monitor-enter p0

    .line 72
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 73
    monitor-exit p0

    return v0

    .line 75
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

    .line 63
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 64
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;->mDirtyFlags:J

    .line 65
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 66
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 65
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

.method public setItem(Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 6

    .line 92
    iput-object p1, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBinding;->mItem:Lcom/codemao/nemo/bean/KnWorkListItem;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    const/16 p1, 0x10

    .line 96
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 97
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 95
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

    .line 83
    check-cast p2, Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedBindingImpl;->setItem(Lcom/codemao/nemo/bean/KnWorkListItem;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
