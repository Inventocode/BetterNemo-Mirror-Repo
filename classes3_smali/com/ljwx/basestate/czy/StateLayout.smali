.class public Lcom/ljwx/basestate/czy/StateLayout;
.super Landroid/widget/FrameLayout;
.source "StateLayout.kt"

# interfaces
.implements Lcom/ljwx/baseapp/view/IViewStateLayout;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateLayout.kt\ncom/ljwx/basestate/czy/StateLayout\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,248:1\n361#2,7:249\n1#3:256\n*S KotlinDebug\n*F\n+ 1 StateLayout.kt\ncom/ljwx/basestate/czy/StateLayout\n*L\n142#1:249,7\n*E\n"
.end annotation


# instance fields
.field private emptyLayout:I

.field private errorLayout:I

.field private extend2Layout:I

.field private extend3Layout:I

.field private extendLayout:I

.field private loadingLayout:I

.field private offlineLayout:I

.field private vContent:Landroid/view/View;

.field private final views:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ljwx/basestate/czy/StateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Lcom/ljwx/basestate/czy/StateLayout;->views:Ljava/util/Map;

    const/4 p3, -0x1

    .line 30
    iput p3, p0, Lcom/ljwx/basestate/czy/StateLayout;->errorLayout:I

    .line 40
    iput p3, p0, Lcom/ljwx/basestate/czy/StateLayout;->emptyLayout:I

    .line 50
    iput p3, p0, Lcom/ljwx/basestate/czy/StateLayout;->loadingLayout:I

    .line 60
    iput p3, p0, Lcom/ljwx/basestate/czy/StateLayout;->offlineLayout:I

    .line 70
    iput p3, p0, Lcom/ljwx/basestate/czy/StateLayout;->extendLayout:I

    .line 78
    iput p3, p0, Lcom/ljwx/basestate/czy/StateLayout;->extend2Layout:I

    .line 79
    iput p3, p0, Lcom/ljwx/basestate/czy/StateLayout;->extend3Layout:I

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 98
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    :cond_2c
    sget-object v0, Lcom/ljwx/basestate/R$styleable;->StateLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr… R.styleable.StateLayout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    :try_start_37
    sget p2, Lcom/ljwx/basestate/R$styleable;->StateLayout_stateLayoutEmpty:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ljwx/basestate/czy/StateLayout;->setEmptyLayout(I)V

    .line 104
    sget p2, Lcom/ljwx/basestate/R$styleable;->StateLayout_stateLayoutError:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ljwx/basestate/czy/StateLayout;->setErrorLayout(I)V

    .line 106
    sget p2, Lcom/ljwx/basestate/R$styleable;->StateLayout_stateLayoutLoading:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 105
    invoke-virtual {p0, p2}, Lcom/ljwx/basestate/czy/StateLayout;->setLoadingLayout(I)V

    .line 108
    sget p2, Lcom/ljwx/basestate/R$styleable;->StateLayout_stateLayoutOffline:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 107
    invoke-virtual {p0, p2}, Lcom/ljwx/basestate/czy/StateLayout;->setOfflineLayout(I)V

    .line 110
    sget p2, Lcom/ljwx/basestate/R$styleable;->StateLayout_stateLayoutExtend:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 109
    invoke-virtual {p0, p2}, Lcom/ljwx/basestate/czy/StateLayout;->setExtendLayout(I)V

    .line 112
    sget p2, Lcom/ljwx/basestate/R$styleable;->StateLayout_stateLayoutExtend2:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 111
    iput p2, p0, Lcom/ljwx/basestate/czy/StateLayout;->extend2Layout:I

    .line 114
    sget p2, Lcom/ljwx/basestate/R$styleable;->StateLayout_stateLayoutExtend3:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 113
    iput p2, p0, Lcom/ljwx/basestate/czy/StateLayout;->extend3Layout:I
    :try_end_74
    .catchall {:try_start_37 .. :try_end_74} :catchall_83

    .line 116
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    if-ne p1, p3, :cond_82

    .line 120
    sget p1, Lcom/ljwx/baseapp/R$id;->base_app_quick_state_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setId(I)V

    :cond_82
    return-void

    :catchall_83
    move-exception p2

    .line 116
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 18
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/ljwx/basestate/czy/StateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getOrCreate(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->views:Ljava/util/Map;

    .line 361
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    .line 363
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    .line 252
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_f
    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method private final showStateView(Landroid/view/View;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/ljwx/basestate/czy/StateLayout;->vContent:Landroid/view/View;

    if-nez v1, :cond_9

    goto :goto_e

    :cond_9
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :goto_e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, v2

    .line 155
    :goto_1b
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 156
    iget-object v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->vContent:Landroid/view/View;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :cond_29
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 157
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->removeViews(II)V

    goto :goto_3c

    .line 159
    :cond_39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 161
    :goto_3c
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_3f
    return-object p1
.end method


# virtual methods
.method public addClickListener(IILandroid/view/View$OnClickListener;)V
    .registers 6

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    packed-switch p1, :pswitch_data_72

    goto :goto_56

    .line 207
    :pswitch_e  #0x7
    iget v1, p0, Lcom/ljwx/basestate/czy/StateLayout;->extend3Layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_56

    .line 206
    :pswitch_17  #0x6
    iget v1, p0, Lcom/ljwx/basestate/czy/StateLayout;->extend2Layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_56

    .line 205
    :pswitch_20  #0x5
    invoke-virtual {p0}, Lcom/ljwx/basestate/czy/StateLayout;->getExtendLayout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_56

    .line 204
    :pswitch_2b  #0x4
    invoke-virtual {p0}, Lcom/ljwx/basestate/czy/StateLayout;->getOfflineLayout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_56

    .line 203
    :pswitch_36  #0x3
    invoke-virtual {p0}, Lcom/ljwx/basestate/czy/StateLayout;->getErrorLayout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_56

    .line 201
    :pswitch_41  #0x2
    invoke-virtual {p0}, Lcom/ljwx/basestate/czy/StateLayout;->getEmptyLayout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_56

    .line 202
    :pswitch_4c  #0x1
    invoke-virtual {p0}, Lcom/ljwx/basestate/czy/StateLayout;->getLoadingLayout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 209
    :goto_56
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_70

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/ljwx/basestate/czy/StateLayout$addClickListener$1;

    invoke-direct {v1, p0, v0}, Lcom/ljwx/basestate/czy/StateLayout$addClickListener$1;-><init>(Lcom/ljwx/basestate/czy/StateLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-direct {p0, p1, v1}, Lcom/ljwx/basestate/czy/StateLayout;->getOrCreate(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    move-result-object p1

    .line 212
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_70

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_70
    return-void

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_4c  #00000001
        :pswitch_41  #00000002
        :pswitch_36  #00000003
        :pswitch_2b  #00000004
        :pswitch_20  #00000005
        :pswitch_17  #00000006
        :pswitch_e  #00000007
    .end packed-switch
.end method

.method public final getEmptyLayout()I
    .registers 3

    .line 41
    iget v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->emptyLayout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/ljwx/basestate/czy/StateConfig;->getEmptyLayout()I

    move-result v0

    :cond_9
    return v0
.end method

.method public final getErrorLayout()I
    .registers 3

    .line 31
    iget v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->errorLayout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/ljwx/basestate/czy/StateConfig;->getErrorLayout()I

    move-result v0

    :cond_9
    return v0
.end method

.method public final getExtendLayout()I
    .registers 3

    .line 71
    iget v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->extendLayout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/ljwx/basestate/czy/StateConfig;->getExtendLayout()I

    move-result v0

    :cond_9
    return v0
.end method

.method public final getLoadingLayout()I
    .registers 3

    .line 51
    iget v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->loadingLayout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/ljwx/basestate/czy/StateConfig;->getLoadingLayout()I

    move-result v0

    :cond_9
    return v0
.end method

.method public final getOfflineLayout()I
    .registers 3

    .line 61
    iget v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->offlineLayout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/ljwx/basestate/czy/StateConfig;->getOfflineLayout()I

    move-result v0

    :cond_9
    return v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .registers 1

    return-object p0
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 238
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 239
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 242
    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    .line 243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->removeViews(II)V

    :cond_19
    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->vContent:Landroid/view/View;

    return-void
.end method

.method public final setEmptyLayout(I)V
    .registers 3

    .line 43
    iget v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->emptyLayout:I

    if-eq v0, p1, :cond_6

    .line 44
    iput p1, p0, Lcom/ljwx/basestate/czy/StateLayout;->emptyLayout:I

    :cond_6
    return-void
.end method

.method public final setErrorLayout(I)V
    .registers 3

    .line 33
    iget v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->errorLayout:I

    if-eq v0, p1, :cond_6

    .line 34
    iput p1, p0, Lcom/ljwx/basestate/czy/StateLayout;->errorLayout:I

    :cond_6
    return-void
.end method

.method public final setExtendLayout(I)V
    .registers 3

    .line 73
    iget v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->extendLayout:I

    if-eq v0, p1, :cond_6

    .line 74
    iput p1, p0, Lcom/ljwx/basestate/czy/StateLayout;->extendLayout:I

    :cond_6
    return-void
.end method

.method public final setLoadingLayout(I)V
    .registers 3

    .line 53
    iget v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->loadingLayout:I

    if-eq v0, p1, :cond_6

    .line 54
    iput p1, p0, Lcom/ljwx/basestate/czy/StateLayout;->loadingLayout:I

    :cond_6
    return-void
.end method

.method public final setOfflineLayout(I)V
    .registers 3

    .line 63
    iget v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->offlineLayout:I

    if-eq v0, p1, :cond_6

    .line 64
    iput p1, p0, Lcom/ljwx/basestate/czy/StateLayout;->offlineLayout:I

    :cond_6
    return-void
.end method

.method public setStateContent(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->vContent:Landroid/view/View;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 232
    iget-object v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->vContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 234
    :cond_1a
    iput-object p1, p0, Lcom/ljwx/basestate/czy/StateLayout;->vContent:Landroid/view/View;

    return-void
.end method

.method public final showStateContent()V
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->vContent:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    :goto_b
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 218
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->removeViews(II)V

    goto :goto_33

    .line 220
    :cond_1b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 221
    iget-object v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->vContent:Landroid/view/View;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :cond_26
    if-nez v1, :cond_2e

    .line 222
    iget-object v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->vContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_33

    :cond_2e
    const/16 v0, 0x8

    .line 224
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 227
    :goto_33
    iget-object v0, p0, Lcom/ljwx/basestate/czy/StateLayout;->vContent:Landroid/view/View;

    if-nez v0, :cond_38

    goto :goto_3c

    :cond_38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3c
    return-void
.end method

.method public showStateView(ILandroid/view/View;Ljava/lang/Object;)V
    .registers 4

    .line 171
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    packed-switch p1, :pswitch_data_6a

    goto :goto_51

    .line 179
    :pswitch_9  #0x7
    iget p3, p0, Lcom/ljwx/basestate/czy/StateLayout;->extend3Layout:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_51

    .line 178
    :pswitch_12  #0x6
    iget p3, p0, Lcom/ljwx/basestate/czy/StateLayout;->extend2Layout:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_51

    .line 177
    :pswitch_1b  #0x5
    invoke-virtual {p0}, Lcom/ljwx/basestate/czy/StateLayout;->getExtendLayout()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_51

    .line 176
    :pswitch_26  #0x4
    invoke-virtual {p0}, Lcom/ljwx/basestate/czy/StateLayout;->getOfflineLayout()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_51

    .line 175
    :pswitch_31  #0x3
    invoke-virtual {p0}, Lcom/ljwx/basestate/czy/StateLayout;->getErrorLayout()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_51

    .line 173
    :pswitch_3c  #0x2
    invoke-virtual {p0}, Lcom/ljwx/basestate/czy/StateLayout;->getEmptyLayout()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_51

    .line 174
    :pswitch_47  #0x1
    invoke-virtual {p0}, Lcom/ljwx/basestate/czy/StateLayout;->getLoadingLayout()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 181
    :goto_51
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p3, :cond_59

    .line 182
    invoke-virtual {p0}, Lcom/ljwx/basestate/czy/StateLayout;->showStateContent()V

    goto :goto_69

    .line 184
    :cond_59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p3, Lcom/ljwx/basestate/czy/StateLayout$showStateView$3;

    invoke-direct {p3, p0, p2}, Lcom/ljwx/basestate/czy/StateLayout$showStateView$3;-><init>(Lcom/ljwx/basestate/czy/StateLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-direct {p0, p1, p3}, Lcom/ljwx/basestate/czy/StateLayout;->getOrCreate(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    move-result-object p1

    .line 186
    invoke-direct {p0, p1}, Lcom/ljwx/basestate/czy/StateLayout;->showStateView(Landroid/view/View;)Landroid/view/View;

    :goto_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_47  #00000001
        :pswitch_3c  #00000002
        :pswitch_31  #00000003
        :pswitch_26  #00000004
        :pswitch_1b  #00000005
        :pswitch_12  #00000006
        :pswitch_9  #00000007
    .end packed-switch
.end method
