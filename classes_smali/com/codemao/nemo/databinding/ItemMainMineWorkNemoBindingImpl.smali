.class public Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;
.super Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;
.source "ItemMainMineWorkNemoBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a032e

    const/16 v2, 0x11

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a09b7

    const/16 v2, 0x12

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00c3

    const/16 v2, 0x13

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a05f0

    const/16 v2, 0x14

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a016d

    const/16 v2, 0x15

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a09b3

    const/16 v2, 0x16

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a09b4

    const/16 v2, 0x17

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01f1

    const/16 v2, 0x18

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 35
    sget-object v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x19

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 33

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x7

    .line 38
    aget-object v4, p3, v4

    check-cast v4, Lcom/ljwx/view/SplitTextView;

    const/16 v5, 0x13

    aget-object v5, p3, v5

    check-cast v5, Lcom/github/mmin18/widget/RealtimeBlurView;

    const/16 v6, 0x15

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/ImageView;

    const/16 v7, 0xb

    aget-object v7, p3, v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v8, 0xc

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x18

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/ImageView;

    const/16 v10, 0x10

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/ImageView;

    const/16 v11, 0xf

    aget-object v11, p3, v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v12, 0x1

    aget-object v12, p3, v12

    check-cast v12, Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    check-cast v13, Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v14, 0x3

    aget-object v14, p3, v14

    check-cast v14, Lcom/google/android/material/imageview/ShapeableImageView;

    const/16 v15, 0x11

    aget-object v15, p3, v15

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v16, 0x8

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/ImageView;

    const/16 v17, 0xa

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/FrameLayout;

    const/16 v18, 0x9

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/ImageView;

    const/16 v19, 0x14

    aget-object v19, p3, v19

    check-cast v19, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v20, 0x6

    aget-object v20, p3, v20

    check-cast v20, Lcom/ljwx/view/SplitTextView;

    const/16 v21, 0x4

    aget-object v21, p3, v21

    check-cast v21, Landroid/widget/ImageView;

    const/16 v22, 0xe

    aget-object v22, p3, v22

    check-cast v22, Landroid/widget/ImageView;

    const/16 v23, 0xd

    aget-object v23, p3, v23

    check-cast v23, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v24, 0x16

    aget-object v24, p3, v24

    check-cast v24, Landroid/widget/ImageView;

    const/16 v25, 0x17

    aget-object v25, p3, v25

    check-cast v25, Landroid/widget/ImageView;

    const/16 v26, 0x12

    aget-object v26, p3, v26

    check-cast v26, Lcom/ljwx/baseview/text/DrawableTextView;

    const/16 v27, 0x5

    aget-object v27, p3, v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0x0

    move/from16 v3, v28

    invoke-direct/range {v0 .. v27}, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/ljwx/view/SplitTextView;Lcom/github/mmin18/widget/RealtimeBlurView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Lcom/ljwx/view/SplitTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/ljwx/baseview/text/DrawableTextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 364
    iput-wide v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;->mDirtyFlags:J

    .line 64
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->block:Lcom/ljwx/view/SplitTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->deleteConfirmContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->deleteTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->downloadImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->downloadWorkContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->imageBg:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 70
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->imageLand:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->imageVertical:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 72
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->menu:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->publish:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->role:Lcom/ljwx/view/SplitTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->templateTag:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->uploadImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->uploadWorkContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->workTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 82
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 34

    move-object/from16 v1, p0

    .line 136
    monitor-enter p0

    .line 137
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 138
    iput-wide v4, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;->mDirtyFlags:J

    .line 139
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_247

    .line 142
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->mItem:Lcom/codemao/nemo/bean/NemoWorkListItem;

    const-wide/16 v6, 0x3

    and-long v8, v2, v6

    const/4 v11, 0x0

    cmp-long v13, v8, v4

    if-eqz v13, :cond_1b4

    if-eqz v0, :cond_44

    .line 181
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getMenuOpen()Z

    move-result v8

    .line 183
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v11

    .line 185
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getShowTime()Ljava/lang/String;

    move-result-object v9

    .line 187
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v14

    .line 189
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->isLogin()Z

    move-result v15

    .line 191
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->isDownloading()Z

    move-result v16

    .line 193
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getLandscape()Z

    move-result v17

    .line 195
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getDeleteTips()Ljava/lang/String;

    move-result-object v18

    .line 197
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getPublishedIcon()I

    move-result v19

    .line 199
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->isUploading()Z

    move-result v20

    .line 201
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getShowDeleteConfirm()Z

    move-result v0

    goto :goto_53

    :cond_44
    move-object v9, v11

    move-object v14, v9

    move-object/from16 v18, v14

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_53
    if-eqz v13, :cond_60

    if-eqz v8, :cond_5b

    const-wide/32 v21, 0x8000000

    goto :goto_5e

    :cond_5b
    const-wide/32 v21, 0x4000000

    :goto_5e
    or-long v2, v2, v21

    :cond_60
    and-long v21, v2, v6

    cmp-long v13, v21, v4

    if-eqz v13, :cond_6f

    if-eqz v15, :cond_6b

    const-wide/16 v21, 0x80

    goto :goto_6d

    :cond_6b
    const-wide/16 v21, 0x40

    :goto_6d
    or-long v2, v2, v21

    :cond_6f
    and-long v21, v2, v6

    cmp-long v13, v21, v4

    if-eqz v13, :cond_80

    if-eqz v16, :cond_7b

    const-wide/32 v21, 0x20000

    goto :goto_7e

    :cond_7b
    const-wide/32 v21, 0x10000

    :goto_7e
    or-long v2, v2, v21

    :cond_80
    and-long v21, v2, v6

    cmp-long v13, v21, v4

    if-eqz v13, :cond_99

    if-eqz v17, :cond_90

    const-wide/16 v21, 0x20

    or-long v2, v2, v21

    const-wide/32 v21, 0x80000

    goto :goto_97

    :cond_90
    const-wide/16 v21, 0x10

    or-long v2, v2, v21

    const-wide/32 v21, 0x40000

    :goto_97
    or-long v2, v2, v21

    :cond_99
    and-long v21, v2, v6

    cmp-long v13, v21, v4

    if-eqz v13, :cond_a8

    if-eqz v20, :cond_a4

    const-wide/16 v21, 0x2000

    goto :goto_a6

    :cond_a4
    const-wide/16 v21, 0x1000

    :goto_a6
    or-long v2, v2, v21

    :cond_a8
    and-long v21, v2, v6

    cmp-long v13, v21, v4

    if-eqz v13, :cond_b7

    if-eqz v0, :cond_b3

    const-wide/16 v21, 0x8

    goto :goto_b5

    :cond_b3
    const-wide/16 v21, 0x4

    :goto_b5
    or-long v2, v2, v21

    :cond_b7
    if-eqz v8, :cond_bb

    const/4 v8, 0x0

    goto :goto_bd

    :cond_bb
    const/16 v8, 0x8

    :goto_bd
    if-eqz v15, :cond_c1

    const/4 v15, 0x0

    goto :goto_c3

    :cond_c1
    const/16 v15, 0x8

    :goto_c3
    if-eqz v16, :cond_c8

    const/16 v16, 0x0

    goto :goto_ca

    :cond_c8
    const/16 v16, 0x8

    :goto_ca
    if-eqz v17, :cond_cf

    const/16 v21, 0x8

    goto :goto_d1

    :cond_cf
    const/16 v21, 0x0

    :goto_d1
    if-eqz v17, :cond_d6

    const/16 v17, 0x0

    goto :goto_d8

    :cond_d6
    const/16 v17, 0x8

    :goto_d8
    if-eqz v20, :cond_dd

    const/16 v20, 0x0

    goto :goto_df

    :cond_dd
    const/16 v20, 0x8

    :goto_df
    if-eqz v0, :cond_e3

    const/4 v0, 0x0

    goto :goto_e5

    :cond_e3
    const/16 v0, 0x8

    :goto_e5
    if-eqz v11, :cond_f2

    .line 271
    iget v13, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    .line 273
    iget v12, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 275
    iget v10, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    .line 277
    iget-boolean v4, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    .line 279
    iget v5, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    goto :goto_f7

    :cond_f2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_f7
    and-long v25, v2, v6

    const-wide/16 v23, 0x0

    cmp-long v11, v25, v23

    if-eqz v11, :cond_112

    if-eqz v4, :cond_109

    const-wide/16 v25, 0x200

    or-long v2, v2, v25

    const-wide/32 v25, 0x2000000

    goto :goto_110

    :cond_109
    const-wide/16 v25, 0x100

    or-long v2, v2, v25

    const-wide/32 v25, 0x1000000

    :goto_110
    or-long v2, v2, v25

    .line 294
    :cond_112
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    if-ne v12, v13, :cond_128

    const/4 v13, 0x1

    goto :goto_129

    :cond_128
    const/4 v13, 0x0

    .line 298
    :goto_129
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v4, :cond_13f

    const/16 v12, 0x8

    goto :goto_140

    :cond_13f
    const/4 v12, 0x0

    :goto_140
    if-eqz v4, :cond_145

    const/16 v22, 0x0

    goto :goto_147

    :cond_145
    const/16 v22, 0x8

    :goto_147
    const/4 v4, 0x3

    if-ne v5, v4, :cond_14c

    const/4 v4, 0x1

    goto :goto_14d

    :cond_14c
    const/4 v4, 0x0

    :goto_14d
    and-long v25, v2, v6

    const-wide/16 v23, 0x0

    cmp-long v5, v25, v23

    if-eqz v5, :cond_169

    if-eqz v13, :cond_160

    const-wide/32 v25, 0x8000

    or-long v2, v2, v25

    const-wide/32 v25, 0x800000

    goto :goto_167

    :cond_160
    const-wide/16 v25, 0x4000

    or-long v2, v2, v25

    const-wide/32 v25, 0x400000

    :goto_167
    or-long v2, v2, v25

    :cond_169
    and-long v25, v2, v6

    const-wide/16 v23, 0x0

    cmp-long v5, v25, v23

    if-eqz v5, :cond_184

    if-eqz v4, :cond_17b

    const-wide/16 v25, 0x800

    or-long v2, v2, v25

    const-wide/32 v25, 0x200000

    goto :goto_182

    :cond_17b
    const-wide/16 v25, 0x400

    or-long v2, v2, v25

    const-wide/32 v25, 0x100000

    :goto_182
    or-long v2, v2, v25

    :cond_184
    if-eqz v13, :cond_18a

    const v5, 0x7f0803b2

    goto :goto_18d

    :cond_18a
    const v5, 0x7f08059b

    :goto_18d
    const v25, 0x7f0803d4

    move/from16 v27, v20

    move/from16 v28, v22

    const v29, 0x7f0803d4

    move/from16 v20, v19

    move-object/from16 v19, v11

    move-object v11, v10

    move/from16 v10, v21

    move-object/from16 v30, v18

    move/from16 v18, v4

    move/from16 v4, v17

    move-object/from16 v17, v9

    move-object/from16 v9, v30

    move/from16 v31, v16

    move/from16 v16, v12

    move/from16 v12, v31

    move/from16 v32, v15

    move v15, v13

    move/from16 v13, v32

    goto :goto_1ce

    :cond_1b4
    move-object v9, v11

    move-object v14, v9

    move-object/from16 v17, v14

    move-object/from16 v19, v17

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_1ce
    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v21, v2, v6

    if-eqz v21, :cond_246

    .line 340
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->block:Lcom/ljwx/view/SplitTextView;

    invoke-static {v2, v11}, Lcom/codemao/nemo/common/SplitTextViewAdapter;->setCenterText(Lcom/ljwx/view/SplitTextView;Ljava/lang/String;)V

    .line 341
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->deleteConfirmContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 342
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->deleteTips:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->downloadImage:Landroid/widget/ImageView;

    invoke-static {v0, v5, v15}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImageGigRes(Landroid/widget/ImageView;IZ)V

    .line 344
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->downloadWorkContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 345
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->imageBg:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v2, 0x1

    invoke-static {v0, v14, v2}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 346
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->imageLand:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->imageLand:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v2, 0x0

    invoke-static {v0, v14, v2}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImageOrGif(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 348
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->imageVertical:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->imageVertical:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0, v14, v2}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImageOrGif(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 350
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->menu:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 352
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->publish:Landroid/widget/ImageView;

    move/from16 v2, v20

    invoke-static {v0, v2}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImageRes(Landroid/widget/ImageView;I)V

    .line 353
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->role:Lcom/ljwx/view/SplitTextView;

    move-object/from16 v11, v19

    invoke-static {v0, v11}, Lcom/codemao/nemo/common/SplitTextViewAdapter;->setCenterText(Lcom/ljwx/view/SplitTextView;Ljava/lang/String;)V

    .line 354
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->templateTag:Landroid/widget/ImageView;

    move/from16 v2, v28

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->uploadImage:Landroid/widget/ImageView;

    move/from16 v4, v18

    move/from16 v2, v29

    invoke-static {v0, v2, v4}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImageGigRes(Landroid/widget/ImageView;IZ)V

    .line 356
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->uploadWorkContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    move/from16 v2, v27

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 357
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->workTime:Landroid/widget/TextView;

    move-object/from16 v9, v17

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->workTime:Landroid/widget/TextView;

    move/from16 v12, v16

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_246
    return-void

    :catchall_247
    move-exception v0

    .line 139
    :try_start_248
    monitor-exit p0
    :try_end_249
    .catchall {:try_start_248 .. :try_end_249} :catchall_247

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 97
    monitor-enter p0

    .line 98
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 99
    monitor-exit p0

    return v0

    .line 101
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

    .line 89
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 90
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 92
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 91
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

.method public setItem(Lcom/codemao/nemo/bean/NemoWorkListItem;)V
    .registers 6

    .line 118
    iput-object p1, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBinding;->mItem:Lcom/codemao/nemo/bean/NemoWorkListItem;

    .line 119
    monitor-enter p0

    .line 120
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;->mDirtyFlags:J

    .line 121
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    const/16 p1, 0x10

    .line 122
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 123
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 121
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

    .line 109
    check-cast p2, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/databinding/ItemMainMineWorkNemoBindingImpl;->setItem(Lcom/codemao/nemo/bean/NemoWorkListItem;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
