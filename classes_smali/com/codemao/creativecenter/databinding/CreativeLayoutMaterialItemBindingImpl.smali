.class public Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;
.source "CreativeLayoutMaterialItemBindingImpl.java"

# interfaces
.implements Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback21:Landroid/view/View$OnClickListener;

.field private final mCallback22:Landroid/view/View$OnClickListener;

.field private final mCallback23:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/LinearLayout;

.field private final mboundView2:Landroid/widget/ImageView;

.field private final mboundView4:Landroid/widget/LinearLayout;

.field private final mboundView5:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->v_guide:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 42
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 16

    const/16 v0, 0x8

    .line 45
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x3

    aget-object v1, p3, v0

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const/4 v1, 0x6

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const/16 v1, 0x9

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    const/16 v1, 0xb

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Landroid/view/View;

    const/16 v1, 0xa

    aget-object v1, p3, v1

    move-object v11, v1

    check-cast v11, Landroid/view/View;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v1, -0x1

    .line 353
    iput-wide v1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    .line 54
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->ivThemeMarterial:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 55
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    .line 56
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 57
    aget-object v2, p3, p1

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    .line 58
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x2

    .line 59
    aget-object v3, p3, v2

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView2:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x4

    .line 61
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView4:Landroid/widget/LinearLayout;

    .line 62
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x5

    .line 63
    aget-object p3, p3, v3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView5:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object p3, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->themeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object p3, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvAlbum:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object p3, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvCanves:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object p3, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvThemeMarterial:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object p3, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->vThemeNeedUpdate:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 72
    new-instance p2, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {p2, p0, v0}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mCallback23:Landroid/view/View$OnClickListener;

    .line 73
    new-instance p2, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mCallback21:Landroid/view/View$OnClickListener;

    .line 74
    new-instance p1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v2}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mCallback22:Landroid/view/View$OnClickListener;

    .line 75
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeVersionBean(Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;I)Z
    .registers 6

    .line 149
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_12

    .line 150
    monitor-enter p0

    .line 151
    :try_start_6
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    .line 152
    monitor-exit p0

    return v0

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p1

    .line 155
    :cond_12
    sget p1, Lcom/codemao/creativecenter/BR;->showThemeNewVersion:I

    if-ne p2, p1, :cond_23

    .line 156
    monitor-enter p0

    .line 157
    :try_start_17
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    .line 158
    monitor-exit p0

    return v0

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw p1

    :cond_23
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .registers 5

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v1, 0x2

    if-eq p1, v1, :cond_16

    const/4 v1, 0x3

    if-eq p1, v1, :cond_b

    goto :goto_2b

    .line 304
    :cond_b
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    if-eqz p1, :cond_10

    const/4 p2, 0x1

    :cond_10
    if-eqz p2, :cond_2b

    .line 312
    invoke-interface {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;->clickTheme()V

    goto :goto_2b

    .line 338
    :cond_16
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    if-eqz p1, :cond_1b

    const/4 p2, 0x1

    :cond_1b
    if-eqz p2, :cond_2b

    .line 346
    invoke-interface {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;->clickCanves()V

    goto :goto_2b

    .line 321
    :cond_21
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    if-eqz p1, :cond_26

    const/4 p2, 0x1

    :cond_26
    if-eqz p2, :cond_2b

    .line 329
    invoke-interface {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;->clickAlubm()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method protected executeBindings()V
    .registers 23

    move-object/from16 v1, p0

    .line 167
    monitor-enter p0

    .line 168
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 169
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    .line 170
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e3

    .line 174
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->mVersionBean:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    .line 180
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->mIsPad:Ljava/lang/Boolean;

    const-wide/16 v7, 0x19

    and-long v9, v2, v7

    const/4 v11, 0x0

    cmp-long v12, v9, v4

    if-eqz v12, :cond_32

    if-eqz v0, :cond_1e

    .line 194
    invoke-virtual {v0}, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->isShowThemeNewVersion()Z

    move-result v0

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v12, :cond_2b

    if-eqz v0, :cond_27

    const-wide/32 v9, 0x10000

    goto :goto_2a

    :cond_27
    const-wide/32 v9, 0x8000

    :goto_2a
    or-long/2addr v2, v9

    :cond_2b
    if-eqz v0, :cond_2e

    goto :goto_32

    :cond_2e
    const/16 v0, 0x8

    const/16 v11, 0x8

    :cond_32
    :goto_32
    const-wide/16 v9, 0x14

    and-long v12, v2, v9

    const/4 v0, 0x0

    cmp-long v14, v12, v4

    if-eqz v14, :cond_160

    .line 214
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v14, :cond_89

    if-eqz v0, :cond_66

    const-wide/16 v12, 0x40

    or-long/2addr v2, v12

    const-wide/16 v12, 0x100

    or-long/2addr v2, v12

    const-wide/16 v12, 0x400

    or-long/2addr v2, v12

    const-wide/16 v12, 0x1000

    or-long/2addr v2, v12

    const-wide/16 v12, 0x4000

    or-long/2addr v2, v12

    const-wide/32 v12, 0x40000

    or-long/2addr v2, v12

    const-wide/32 v12, 0x100000

    or-long/2addr v2, v12

    const-wide/32 v12, 0x400000

    or-long/2addr v2, v12

    const-wide/32 v12, 0x1000000

    or-long/2addr v2, v12

    const-wide/32 v12, 0x4000000

    goto :goto_88

    :cond_66
    const-wide/16 v12, 0x20

    or-long/2addr v2, v12

    const-wide/16 v12, 0x80

    or-long/2addr v2, v12

    const-wide/16 v12, 0x200

    or-long/2addr v2, v12

    const-wide/16 v12, 0x800

    or-long/2addr v2, v12

    const-wide/16 v12, 0x2000

    or-long/2addr v2, v12

    const-wide/32 v12, 0x20000

    or-long/2addr v2, v12

    const-wide/32 v12, 0x80000

    or-long/2addr v2, v12

    const-wide/32 v12, 0x200000

    or-long/2addr v2, v12

    const-wide/32 v12, 0x800000

    or-long/2addr v2, v12

    const-wide/32 v12, 0x2000000

    :goto_88
    or-long/2addr v2, v12

    .line 244
    :cond_89
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvCanves:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v0, :cond_94

    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    goto :goto_96

    :cond_94
    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    :goto_96
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 246
    iget-object v12, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvThemeMarterial:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v0, :cond_a5

    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    goto :goto_a7

    :cond_a5
    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    :goto_a7
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 248
    iget-object v13, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvAlbum:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz v0, :cond_b6

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    goto :goto_b8

    :cond_b6
    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    :goto_b8
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 250
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvCanves:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v0, :cond_c7

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    goto :goto_c9

    :cond_c7
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    :goto_c9
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    if-eqz v0, :cond_dc

    .line 252
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvThemeMarterial:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v7, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    goto :goto_e8

    :cond_dc
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvThemeMarterial:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 254
    :goto_e8
    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvAlbum:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v0, :cond_f3

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    goto :goto_f5

    :cond_f3
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    :goto_f5
    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    if-eqz v0, :cond_108

    .line 256
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->ivThemeMarterial:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v4, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_32dp:I

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_114

    :cond_108
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->ivThemeMarterial:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_24dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 258
    :goto_114
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v0, :cond_11f

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_60dp:I

    goto :goto_121

    :cond_11f
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    :goto_121
    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    if-eqz v0, :cond_134

    .line 260
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView2:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_32dp:I

    invoke-virtual {v15, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    goto :goto_140

    :cond_134
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView2:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_24dp:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    :goto_140
    if-eqz v0, :cond_14b

    .line 262
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView5:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_32dp:I

    goto :goto_153

    :cond_14b
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView5:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_24dp:I

    :goto_153
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const-wide/16 v18, 0x14

    move-wide/from16 v20, v2

    move v2, v0

    move v0, v4

    move-wide/from16 v3, v20

    goto :goto_16c

    :cond_160
    move-wide v3, v2

    move-wide/from16 v18, v9

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_16c
    and-long v18, v3, v18

    const-wide/16 v16, 0x0

    cmp-long v10, v18, v16

    if-eqz v10, :cond_1b5

    .line 268
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->ivThemeMarterial:Landroid/widget/ImageView;

    invoke-static {v10, v0}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 269
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->ivThemeMarterial:Landroid/widget/ImageView;

    invoke-static {v10, v0}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 270
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 271
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView2:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 272
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView2:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 273
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView5:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 274
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView5:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 275
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvAlbum:Landroid/widget/TextView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 276
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvAlbum:Landroid/widget/TextView;

    invoke-static {v0, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    .line 277
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvCanves:Landroid/widget/TextView;

    invoke-static {v0, v6}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 278
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvCanves:Landroid/widget/TextView;

    invoke-static {v0, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    .line 279
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvThemeMarterial:Landroid/widget/TextView;

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 280
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvThemeMarterial:Landroid/widget/TextView;

    invoke-static {v0, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    :cond_1b5
    const-wide/16 v5, 0x10

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_1d3

    .line 285
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mCallback21:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mboundView4:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mCallback22:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->themeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mCallback23:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1d3
    const-wide/16 v5, 0x19

    and-long v2, v3, v5

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1e2

    .line 292
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->vThemeNeedUpdate:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_1e2
    return-void

    :catchall_1e3
    move-exception v0

    .line 170
    :try_start_1e4
    monitor-exit p0
    :try_end_1e5
    .catchall {:try_start_1e4 .. :try_end_1e5} :catchall_1e3

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 88
    monitor-enter p0

    .line 89
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 90
    monitor-exit p0

    return v0

    .line 92
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

    .line 80
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 81
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    .line 82
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 83
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 82
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

    .line 144
    :cond_4
    check-cast p2, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->onChangeVersionBean(Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;I)Z

    move-result p1

    return p1
.end method

.method public setIsPad(Ljava/lang/Boolean;)V
    .registers 6

    .line 132
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->mIsPad:Ljava/lang/Boolean;

    .line 133
    monitor-enter p0

    .line 134
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    .line 135
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 136
    sget p1, Lcom/codemao/creativecenter/BR;->isPad:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 137
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 135
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V
    .registers 6

    .line 115
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    .line 116
    monitor-enter p0

    .line 117
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    .line 118
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 119
    sget p1, Lcom/codemao/creativecenter/BR;->listener:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 120
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 118
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 99
    sget v0, Lcom/codemao/creativecenter/BR;->listener:I

    if-ne v0, p1, :cond_a

    .line 100
    check-cast p2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V

    goto :goto_1d

    .line 102
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->versionBean:I

    if-ne v0, p1, :cond_14

    .line 103
    check-cast p2, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->setVersionBean(Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;)V

    goto :goto_1d

    .line 105
    :cond_14
    sget v0, Lcom/codemao/creativecenter/BR;->isPad:I

    if-ne v0, p1, :cond_1f

    .line 106
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->setIsPad(Ljava/lang/Boolean;)V

    :goto_1d
    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return p1
.end method

.method public setVersionBean(Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;)V
    .registers 6

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 124
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->mVersionBean:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    .line 125
    monitor-enter p0

    .line 126
    :try_start_7
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;->mDirtyFlags:J

    .line 127
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_18

    .line 128
    sget p1, Lcom/codemao/creativecenter/BR;->versionBean:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 129
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_18
    move-exception p1

    .line 127
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method
