.class public Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;
.source "CreativeViewCreateRoleBindingImpl.java"

# interfaces
.implements Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback40:Landroid/view/View$OnClickListener;

.field private final mCallback41:Landroid/view/View$OnClickListener;

.field private final mCallback42:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 31
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 21

    move-object/from16 v13, p0

    const/4 v0, 0x0

    .line 34
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v14, 0x2

    aget-object v0, p3, v14

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout;

    const/4 v15, 0x1

    aget-object v0, p3, v15

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v12, 0x3

    aget-object v0, p3, v12

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/codemao/creativecenter/customview/DragRecyclerView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v14, 0x3

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/codemao/creativecenter/customview/DragRecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 307
    iput-wide v0, v13, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->mDirtyFlags:J

    .line 45
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->clFunc:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->flBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 48
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 53
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->tvAddRole:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 54
    invoke-virtual {v13, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 56
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v0, v13, v14}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->mCallback42:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v0, v13, v15}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->mCallback40:Landroid/view/View$OnClickListener;

    .line 58
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v13, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->mCallback41:Landroid/view/View$OnClickListener;

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_21

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const/4 v2, 0x3

    if-eq p1, v2, :cond_b

    goto :goto_2b

    .line 255
    :cond_b
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    if-eqz v0, :cond_2b

    .line 266
    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickAddActor(Landroid/view/View;)V

    goto :goto_2b

    .line 290
    :cond_16
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz p1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    if-eqz v0, :cond_2b

    .line 300
    invoke-interface {p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickAddScene()V

    goto :goto_2b

    .line 273
    :cond_21
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz p1, :cond_26

    const/4 v0, 0x1

    :cond_26
    if-eqz v0, :cond_2b

    .line 283
    invoke-interface {p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickDeleteScene()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method protected executeBindings()V
    .registers 28

    move-object/from16 v1, p0

    .line 111
    monitor-enter p0

    .line 112
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 113
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->mDirtyFlags:J

    .line 114
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_2b5

    .line 123
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    const/4 v6, 0x0

    const-wide/16 v7, 0x3

    and-long v9, v2, v7

    const/4 v11, 0x0

    cmp-long v12, v9, v4

    if-eqz v12, :cond_20d

    if-eqz v0, :cond_1c

    .line 140
    invoke-interface {v0}, Lcom/codemao/creativecenter/callback/ObserverAction;->isPad()Z

    move-result v6

    :cond_1c
    if-eqz v12, :cond_99

    if-eqz v6, :cond_5e

    const-wide/16 v9, 0x8

    or-long/2addr v2, v9

    const-wide/16 v9, 0x20

    or-long/2addr v2, v9

    const-wide/16 v9, 0x80

    or-long/2addr v2, v9

    const-wide/16 v9, 0x200

    or-long/2addr v2, v9

    const-wide/16 v9, 0x800

    or-long/2addr v2, v9

    const-wide/16 v9, 0x2000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x8000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x20000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x80000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x200000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x800000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x2000000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x8000000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x20000000

    or-long/2addr v2, v9

    const-wide v9, 0x80000000L

    or-long/2addr v2, v9

    const-wide v9, 0x200000000L

    goto :goto_98

    :cond_5e
    const-wide/16 v9, 0x4

    or-long/2addr v2, v9

    const-wide/16 v9, 0x10

    or-long/2addr v2, v9

    const-wide/16 v9, 0x40

    or-long/2addr v2, v9

    const-wide/16 v9, 0x100

    or-long/2addr v2, v9

    const-wide/16 v9, 0x400

    or-long/2addr v2, v9

    const-wide/16 v9, 0x1000

    or-long/2addr v2, v9

    const-wide/16 v9, 0x4000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x10000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x40000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x100000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x400000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x1000000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x4000000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x10000000

    or-long/2addr v2, v9

    const-wide/32 v9, 0x40000000

    or-long/2addr v2, v9

    const-wide v9, 0x100000000L

    :goto_98
    or-long/2addr v2, v9

    .line 183
    :cond_99
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->flBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v6, :cond_a4

    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_20dp:I

    goto :goto_a6

    :cond_a4
    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_13dp:I

    :goto_a6
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    move v11, v0

    .line 185
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->clFunc:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v6, :cond_b6

    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_140dp:I

    goto :goto_b8

    :cond_b6
    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_120dp:I

    :goto_b8
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 187
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v6, :cond_c7

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    goto :goto_c9

    :cond_c7
    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    :goto_c9
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 189
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v6, :cond_d8

    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_6dp:I

    goto :goto_da

    :cond_d8
    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_4dp:I

    :goto_da
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 191
    iget-object v12, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v6, :cond_e9

    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    goto :goto_eb

    :cond_e9
    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_38dp:I

    :goto_eb
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 193
    iget-object v13, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz v6, :cond_fa

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_6dp:I

    goto :goto_fc

    :cond_fa
    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_2dp:I

    :goto_fc
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 195
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v6, :cond_10b

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_140dp:I

    goto :goto_10d

    :cond_10b
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_120dp:I

    :goto_10d
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    if-eqz v6, :cond_120

    .line 197
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v4, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_64dp:I

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_12c

    :cond_120
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 199
    :goto_12c
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->tvAddRole:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v6, :cond_137

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_44dp:I

    goto :goto_139

    :cond_137
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_32dp:I

    :goto_139
    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    if-eqz v6, :cond_14c

    .line 201
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->tvAddRole:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v7, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_20dp:I

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    goto :goto_158

    :cond_14c
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->tvAddRole:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 203
    :goto_158
    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v6, :cond_163

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_64dp:I

    goto :goto_165

    :cond_163
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    :goto_165
    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    if-eqz v6, :cond_17a

    .line 205
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v20, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_64dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_188

    :cond_17a
    move/from16 v20, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_188
    if-eqz v6, :cond_199

    .line 207
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->tvAddRole:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v21, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_18dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_1a7

    :cond_199
    move/from16 v21, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->tvAddRole:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_1a7
    if-eqz v6, :cond_1b8

    .line 209
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->tvAddRole:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v22, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_18dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_1c6

    :cond_1b8
    move/from16 v22, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->tvAddRole:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_1c6
    if-eqz v6, :cond_1d7

    .line 211
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v23, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_6dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_1e5

    :cond_1d7
    move/from16 v23, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_4dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_1e5
    if-eqz v6, :cond_1f0

    .line 213
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    goto :goto_1f8

    :cond_1f0
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    :goto_1f8
    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    move v15, v5

    move/from16 v25, v7

    move/from16 v7, v21

    move/from16 v24, v22

    move/from16 v26, v23

    const-wide/16 v18, 0x3

    move v5, v4

    move v4, v0

    move v0, v11

    move/from16 v11, v20

    goto :goto_221

    :cond_20d
    move-wide/from16 v18, v7

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_221
    and-long v18, v2, v18

    const-wide/16 v16, 0x0

    cmp-long v20, v18, v16

    move-wide/from16 v18, v2

    if-eqz v20, :cond_295

    .line 219
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->clFunc:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 220
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->flBottom:Landroid/widget/FrameLayout;

    invoke-static {v2, v0}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 221
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 222
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 223
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 224
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 225
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 226
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 227
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-static {v0, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 228
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-static {v0, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 229
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 230
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {v0, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 231
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {v0, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 232
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {v0, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTop(Landroid/view/View;F)V

    .line 233
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 234
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 235
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->tvAddRole:Landroid/widget/TextView;

    invoke-static {v0, v15}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 236
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->tvAddRole:Landroid/widget/TextView;

    move/from16 v11, v24

    invoke-static {v0, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingEnd(Landroid/view/View;F)V

    .line 237
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->tvAddRole:Landroid/widget/TextView;

    move/from16 v7, v25

    invoke-static {v0, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingStart(Landroid/view/View;F)V

    .line 238
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->tvAddRole:Landroid/widget/TextView;

    move/from16 v11, v26

    invoke-static {v0, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    :cond_295
    const-wide/16 v2, 0x2

    and-long v2, v18, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2b4

    .line 243
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivAddScreen:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->mCallback41:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivDelScreen:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->mCallback40:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->tvAddRole:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->mCallback42:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2b4
    return-void

    :catchall_2b5
    move-exception v0

    .line 114
    :try_start_2b6
    monitor-exit p0
    :try_end_2b7
    .catchall {:try_start_2b6 .. :try_end_2b7} :catchall_2b5

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 72
    monitor-enter p0

    .line 73
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 74
    monitor-exit p0

    return v0

    .line 76
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

    .line 64
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 65
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->mDirtyFlags:J

    .line 66
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 67
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 66
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

.method public setObserver(Lcom/codemao/creativecenter/callback/ObserverAction;)V
    .registers 6

    .line 93
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 97
    sget p1, Lcom/codemao/creativecenter/BR;->observer:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 98
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 96
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 83
    sget v0, Lcom/codemao/creativecenter/BR;->observer:I

    if-ne v0, p1, :cond_b

    .line 84
    check-cast p2, Lcom/codemao/creativecenter/callback/ObserverAction;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;->setObserver(Lcom/codemao/creativecenter/callback/ObserverAction;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
