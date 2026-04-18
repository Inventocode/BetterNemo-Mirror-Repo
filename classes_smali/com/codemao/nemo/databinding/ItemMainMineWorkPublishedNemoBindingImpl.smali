.class public Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;
.super Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;
.source "ItemMainMineWorkPublishedNemoBindingImpl.java"


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

    sput-object v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00c3

    const/16 v2, 0xb

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0326

    const/16 v2, 0xc

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0717

    const/16 v2, 0xd

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 30
    sget-object v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 22

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0xb

    .line 33
    aget-object v4, p3, v4

    check-cast v4, Lcom/github/mmin18/widget/RealtimeBlurView;

    const/4 v5, 0x7

    aget-object v5, p3, v5

    check-cast v5, Lcom/ljwx/baseview/text/DrawableTextView;

    const/4 v6, 0x1

    aget-object v6, p3, v6

    check-cast v6, Lcom/google/android/material/imageview/ShapeableImageView;

    const/16 v7, 0xc

    aget-object v7, p3, v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v8, 0xa

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/ImageView;

    const/4 v9, 0x6

    aget-object v9, p3, v9

    check-cast v9, Lcom/ljwx/baseview/text/DrawableTextView;

    const/4 v10, 0x3

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/ImageView;

    const/16 v11, 0x9

    aget-object v11, p3, v11

    check-cast v11, Lcom/ljwx/baseview/text/DrawableTextView;

    const/16 v12, 0xd

    aget-object v12, p3, v12

    check-cast v12, Lcom/ljwx/baseview/text/DrawableTextView;

    const/16 v13, 0x8

    aget-object v13, p3, v13

    check-cast v13, Lcom/ljwx/baseview/text/DrawableTextView;

    const/4 v14, 0x4

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/TextView;

    const/4 v15, 0x2

    aget-object v15, p3, v15

    check-cast v15, Landroid/widget/ImageView;

    const/16 v16, 0x5

    aget-object v16, p3, v16

    check-cast v16, Lcom/ljwx/view/SplitTextView;

    const/16 v17, 0x0

    move/from16 v3, v17

    invoke-direct/range {v0 .. v16}, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/github/mmin18/widget/RealtimeBlurView;Lcom/ljwx/baseview/text/DrawableTextView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/ljwx/baseview/text/DrawableTextView;Landroid/widget/ImageView;Lcom/ljwx/baseview/text/DrawableTextView;Lcom/ljwx/baseview/text/DrawableTextView;Lcom/ljwx/baseview/text/DrawableTextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/ljwx/view/SplitTextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 200
    iput-wide v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;->mDirtyFlags:J

    .line 48
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->collectionCount:Lcom/ljwx/baseview/text/DrawableTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->coverImage:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 50
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->openSourceFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 53
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->pageView:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->recreateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->recreationCount:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->thumbCount:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->workName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->workTag:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->workTime:Lcom/ljwx/view/SplitTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 60
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 24

    move-object/from16 v1, p0

    .line 114
    monitor-enter p0

    .line 115
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 116
    iput-wide v4, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c6

    .line 119
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->mItem:Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;

    const-wide/16 v6, 0x3

    and-long v8, v2, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    cmp-long v12, v8, v4

    if-eqz v12, :cond_7f

    if-eqz v0, :cond_41

    .line 138
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;->getCommentTimes()Ljava/lang/String;

    move-result-object v10

    .line 140
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;->getForkTimes()Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;->getShowTime()Ljava/lang/String;

    move-result-object v9

    .line 144
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;->getRecreate()Z

    move-result v13

    .line 146
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;->getViewTimes()Ljava/lang/String;

    move-result-object v14

    .line 148
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;->getWorkTag()I

    move-result v15

    .line 150
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v16

    .line 152
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v17

    .line 154
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;->getLikeTimes()Ljava/lang/String;

    move-result-object v18

    .line 156
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;->getOpenSource()Z

    move-result v0

    goto :goto_4d

    :cond_41
    move-object v8, v10

    move-object v9, v8

    move-object v14, v9

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_4d
    if-eqz v12, :cond_58

    if-eqz v13, :cond_54

    const-wide/16 v19, 0x20

    goto :goto_56

    :cond_54
    const-wide/16 v19, 0x10

    :goto_56
    or-long v2, v2, v19

    :cond_58
    and-long v19, v2, v6

    cmp-long v12, v19, v4

    if-eqz v12, :cond_67

    if-eqz v0, :cond_63

    const-wide/16 v19, 0x8

    goto :goto_65

    :cond_63
    const-wide/16 v19, 0x4

    :goto_65
    or-long v2, v2, v19

    :cond_67
    const/16 v12, 0x8

    if-eqz v13, :cond_6d

    const/4 v13, 0x0

    goto :goto_6f

    :cond_6d
    const/16 v13, 0x8

    :goto_6f
    if-eqz v0, :cond_72

    const/4 v12, 0x0

    :cond_72
    move/from16 v21, v13

    move/from16 v22, v15

    move-object/from16 v0, v17

    move-object v13, v9

    move v15, v12

    move-object/from16 v12, v16

    move-object/from16 v9, v18

    goto :goto_8a

    :cond_7f
    move-object v0, v10

    move-object v8, v0

    move-object v9, v8

    move-object v12, v9

    move-object v13, v12

    move-object v14, v13

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_8a
    and-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-eqz v6, :cond_c5

    .line 185
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->collectionCount:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-static {v2, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 186
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->coverImage:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v2, v0, v11}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 187
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->openSourceFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->pageView:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->recreateIcon:Landroid/widget/ImageView;

    move/from16 v11, v21

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->recreationCount:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->thumbCount:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->workName:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->workTag:Landroid/widget/ImageView;

    move/from16 v15, v22

    invoke-static {v0, v15}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImageRes(Landroid/widget/ImageView;I)V

    .line 194
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->workTime:Lcom/ljwx/view/SplitTextView;

    invoke-static {v0, v13}, Lcom/codemao/nemo/common/SplitTextViewAdapter;->setCenterText(Lcom/ljwx/view/SplitTextView;Ljava/lang/String;)V

    :cond_c5
    return-void

    :catchall_c6
    move-exception v0

    .line 117
    :try_start_c7
    monitor-exit p0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 75
    monitor-enter p0

    .line 76
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 77
    monitor-exit p0

    return v0

    .line 79
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

    .line 67
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 68
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;->mDirtyFlags:J

    .line 69
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 70
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 69
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

.method public setItem(Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;)V
    .registers 6

    .line 96
    iput-object p1, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->mItem:Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;

    .line 97
    monitor-enter p0

    .line 98
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    const/16 p1, 0x10

    .line 100
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 101
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 99
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

    .line 87
    check-cast p2, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBindingImpl;->setItem(Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
