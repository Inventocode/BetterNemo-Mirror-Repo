.class public Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;
.source "CreativeActivityMaterialBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView8:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->rv_material:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/codemao/creativecenter/R$id;->cl_notice:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 31
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 19

    move-object v14, p0

    const/16 v0, 0xb

    .line 34
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 285
    iput-wide v0, v14, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mDirtyFlags:J

    .line 46
    iget-object v0, v14, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->clTitleBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object v0, v14, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 48
    iget-object v0, v14, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivSuccess:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v0, v14, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->line:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 50
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v14, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 52
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v14, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mboundView8:Landroid/widget/FrameLayout;

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object v0, v14, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvLeft:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v0, v14, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v0, v14, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-object v0, v14, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 58
    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 60
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 30

    move-object/from16 v1, p0

    .line 123
    monitor-enter p0

    .line 124
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 125
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mDirtyFlags:J

    .line 126
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_2f0

    .line 135
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->mType:Ljava/lang/Integer;

    .line 138
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->mIsPad:Ljava/lang/Boolean;

    const-wide/16 v7, 0x5

    and-long v9, v2, v7

    const/4 v11, 0x0

    cmp-long v12, v9, v4

    if-eqz v12, :cond_47

    .line 155
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v0

    const/4 v9, 0x7

    if-ne v0, v9, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v12, :cond_33

    if-eqz v0, :cond_2c

    const-wide/16 v9, 0x100

    or-long/2addr v2, v9

    const-wide/32 v9, 0x400000

    goto :goto_32

    :cond_2c
    const-wide/16 v9, 0x80

    or-long/2addr v2, v9

    const-wide/32 v9, 0x200000

    :goto_32
    or-long/2addr v2, v9

    .line 173
    :cond_33
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3a

    sget v10, Lcom/codemao/creativecenter/R$color;->creative_FF7D6DB0:I

    goto :goto_3c

    :cond_3a
    sget v10, Lcom/codemao/creativecenter/R$color;->creative_FFF:I

    :goto_3c
    invoke-static {v9, v10}, Landroidx/databinding/ViewDataBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v9

    if-eqz v0, :cond_45

    const/16 v0, 0x8

    goto :goto_49

    :cond_45
    const/4 v0, 0x0

    goto :goto_49

    :cond_47
    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_49
    const-wide/16 v12, 0x6

    and-long v14, v2, v12

    const/4 v10, 0x0

    cmp-long v16, v14, v4

    if-eqz v16, :cond_255

    .line 182
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v11

    if-eqz v16, :cond_d4

    if-eqz v11, :cond_97

    const-wide/16 v14, 0x10

    or-long/2addr v2, v14

    const-wide/16 v14, 0x40

    or-long/2addr v2, v14

    const-wide/16 v14, 0x400

    or-long/2addr v2, v14

    const-wide/16 v14, 0x1000

    or-long/2addr v2, v14

    const-wide/16 v14, 0x4000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x10000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x40000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x100000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x1000000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x4000000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x10000000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x40000000

    or-long/2addr v2, v14

    const-wide v14, 0x100000000L

    or-long/2addr v2, v14

    const-wide v14, 0x400000000L

    or-long/2addr v2, v14

    const-wide v14, 0x1000000000L

    goto :goto_d3

    :cond_97
    const-wide/16 v14, 0x8

    or-long/2addr v2, v14

    const-wide/16 v14, 0x20

    or-long/2addr v2, v14

    const-wide/16 v14, 0x200

    or-long/2addr v2, v14

    const-wide/16 v14, 0x800

    or-long/2addr v2, v14

    const-wide/16 v14, 0x2000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x8000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x20000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x80000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x800000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x2000000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x8000000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x20000000

    or-long/2addr v2, v14

    const-wide v14, 0x80000000L

    or-long/2addr v2, v14

    const-wide v14, 0x200000000L

    or-long/2addr v2, v14

    const-wide v14, 0x800000000L

    :goto_d3
    or-long/2addr v2, v14

    .line 222
    :cond_d4
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivSuccess:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v11, :cond_df

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_72dp:I

    goto :goto_e1

    :cond_df
    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_64dp:I

    :goto_e1
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    move v10, v6

    .line 224
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mboundView8:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v11, :cond_f1

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_26dp:I

    goto :goto_f3

    :cond_f1
    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_32dp:I

    :goto_f3
    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 226
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v11, :cond_102

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    goto :goto_104

    :cond_102
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    :goto_104
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    if-eqz v11, :cond_117

    .line 228
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v7, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    goto :goto_123

    :cond_117
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_32dp:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 230
    :goto_123
    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivSuccess:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v11, :cond_12e

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_30dp:I

    goto :goto_130

    :cond_12e
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_13dp:I

    :goto_130
    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    if-eqz v11, :cond_143

    .line 232
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvNum:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v4, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_14f

    :cond_143
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvNum:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 234
    :goto_14f
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v11, :cond_15a

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_24dp:I

    goto :goto_15c

    :cond_15a
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_32dp:I

    :goto_15c
    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    if-eqz v11, :cond_16f

    .line 236
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    goto :goto_17b

    :cond_16f
    iget-object v12, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 238
    :goto_17b
    iget-object v13, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvNum:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz v11, :cond_186

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_32dp:I

    goto :goto_188

    :cond_186
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_24dp:I

    :goto_188
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    if-eqz v11, :cond_19d

    .line 240
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->line:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-wide/from16 v21, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_72dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1ab

    :cond_19d
    move-wide/from16 v21, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->line:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_64dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 242
    :goto_1ab
    iget-object v3, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvLeft:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v11, :cond_1b6

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    goto :goto_1b8

    :cond_1b6
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    :goto_1b8
    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    if-eqz v11, :cond_1cd

    .line 244
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mboundView8:Landroid/widget/FrameLayout;

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v23, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_24dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1db

    :cond_1cd
    move/from16 v23, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mboundView8:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_32dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_1db
    if-eqz v11, :cond_1ec

    .line 246
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->clTitleBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v24, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_72dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1fa

    :cond_1ec
    move/from16 v24, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->clTitleBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_56dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_1fa
    if-eqz v11, :cond_20b

    .line 248
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvNum:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v25, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_32dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_219

    :cond_20b
    move/from16 v25, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvNum:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_219
    if-eqz v11, :cond_22a

    .line 250
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v26, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_238

    :cond_22a
    move/from16 v26, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_30dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_238
    move/from16 v20, v0

    move/from16 v27, v4

    move/from16 v28, v7

    move/from16 v19, v9

    move v0, v11

    move v15, v12

    move v9, v13

    move/from16 v11, v24

    move v4, v2

    move v12, v3

    move v13, v5

    move v7, v6

    move v5, v10

    move-wide/from16 v2, v21

    move/from16 v6, v23

    move/from16 v10, v25

    move/from16 v21, v26

    const-wide/16 v22, 0x6

    goto :goto_26d

    :cond_255
    move/from16 v20, v0

    move/from16 v19, v9

    move-wide/from16 v22, v12

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_26d
    and-long v22, v2, v22

    const-wide/16 v17, 0x0

    cmp-long v24, v22, v17

    move-wide/from16 v22, v2

    if-eqz v24, :cond_2d7

    .line 256
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->clTitleBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 257
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivClose:Landroid/widget/ImageView;

    invoke-static {v2, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 258
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivClose:Landroid/widget/ImageView;

    invoke-static {v2, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTop(Landroid/view/View;F)V

    .line 259
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivClose:Landroid/widget/ImageView;

    invoke-static {v2, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 260
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivSuccess:Landroid/widget/ImageView;

    invoke-static {v2, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 261
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivSuccess:Landroid/widget/ImageView;

    invoke-static {v2, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTop(Landroid/view/View;F)V

    .line 262
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->line:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v2, v6}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setGuideStart(Landroidx/constraintlayout/widget/Guideline;F)V

    .line 263
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mboundView8:Landroid/widget/FrameLayout;

    invoke-static {v2, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingEnd(Landroid/view/View;F)V

    .line 264
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mboundView8:Landroid/widget/FrameLayout;

    invoke-static {v2, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingStart(Landroid/view/View;F)V

    .line 265
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvLeft:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTop(Landroid/view/View;F)V

    .line 266
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvAdd:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setCommonTvForBtnStyle(Landroid/widget/TextView;Z)V

    .line 267
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvAdd:Landroid/widget/TextView;

    invoke-static {v0, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 268
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvAdd:Landroid/widget/TextView;

    invoke-static {v0, v15}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    .line 269
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvNum:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 270
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvNum:Landroid/widget/TextView;

    move/from16 v10, v21

    invoke-static {v0, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 271
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvNum:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 272
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvNum:Landroid/widget/TextView;

    move/from16 v4, v27

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    .line 273
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvTitle:Landroid/widget/TextView;

    move/from16 v7, v28

    invoke-static {v0, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    :cond_2d7
    const-wide/16 v2, 0x5

    and-long v2, v22, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2ef

    .line 278
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvNum:Landroid/widget/TextView;

    move/from16 v11, v20

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvTitle:Landroid/widget/TextView;

    move/from16 v9, v19

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2ef
    return-void

    :catchall_2f0
    move-exception v0

    .line 126
    :try_start_2f1
    monitor-exit p0
    :try_end_2f2
    .catchall {:try_start_2f1 .. :try_end_2f2} :catchall_2f0

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 73
    monitor-enter p0

    .line 74
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 75
    monitor-exit p0

    return v0

    .line 77
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

    .line 65
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 66
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mDirtyFlags:J

    .line 67
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 68
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 67
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

.method public setIsPad(Ljava/lang/Boolean;)V
    .registers 6

    .line 105
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->mIsPad:Ljava/lang/Boolean;

    .line 106
    monitor-enter p0

    .line 107
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 109
    sget p1, Lcom/codemao/creativecenter/BR;->isPad:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 110
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 108
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setType(Ljava/lang/Integer;)V
    .registers 6

    .line 97
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->mType:Ljava/lang/Integer;

    .line 98
    monitor-enter p0

    .line 99
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->mDirtyFlags:J

    .line 100
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 101
    sget p1, Lcom/codemao/creativecenter/BR;->type:I

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

    .line 84
    sget v0, Lcom/codemao/creativecenter/BR;->type:I

    if-ne v0, p1, :cond_a

    .line 85
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->setType(Ljava/lang/Integer;)V

    goto :goto_13

    .line 87
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->isPad:I

    if-ne v0, p1, :cond_15

    .line 88
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;->setIsPad(Ljava/lang/Boolean;)V

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
