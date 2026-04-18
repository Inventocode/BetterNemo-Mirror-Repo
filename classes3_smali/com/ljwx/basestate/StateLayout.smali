.class public Lcom/ljwx/basestate/StateLayout;
.super Landroid/widget/FrameLayout;
.source "StateLayout.kt"

# interfaces
.implements Lcom/ljwx/baseapp/view/IViewStateLayout;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateLayout.kt\ncom/ljwx/basestate/StateLayout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,191:1\n1#2:192\n*E\n"
.end annotation


# instance fields
.field private contentView:Landroid/view/View;

.field private emptyLayout:I

.field private errorLayout:I

.field private extendLayout:I

.field private loadingLayout:I

.field private offlineLayout:I

.field private final stateViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
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

    invoke-direct/range {v1 .. v6}, Lcom/ljwx/basestate/StateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Lcom/ljwx/basestate/StateLayout;->stateViews:Ljava/util/Map;

    const/4 p3, -0x1

    .line 26
    iput p3, p0, Lcom/ljwx/basestate/StateLayout;->errorLayout:I

    .line 36
    iput p3, p0, Lcom/ljwx/basestate/StateLayout;->emptyLayout:I

    .line 46
    iput p3, p0, Lcom/ljwx/basestate/StateLayout;->loadingLayout:I

    .line 56
    iput p3, p0, Lcom/ljwx/basestate/StateLayout;->offlineLayout:I

    .line 66
    iput p3, p0, Lcom/ljwx/basestate/StateLayout;->extendLayout:I

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_28

    .line 76
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    :cond_28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    if-ne v0, p3, :cond_33

    .line 79
    sget v0, Lcom/ljwx/baseapp/R$id;->base_app_quick_state_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 81
    :cond_33
    sget-object v0, Lcom/ljwx/basestate/R$styleable;->StateLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr… R.styleable.StateLayout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    :try_start_3e
    sget p2, Lcom/ljwx/basestate/R$styleable;->StateLayout_stateLayoutEmpty:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ljwx/basestate/StateLayout;->setEmptyLayout(I)V

    .line 84
    sget p2, Lcom/ljwx/basestate/R$styleable;->StateLayout_stateLayoutError:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ljwx/basestate/StateLayout;->setErrorLayout(I)V

    .line 86
    sget p2, Lcom/ljwx/basestate/R$styleable;->StateLayout_stateLayoutLoading:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 85
    invoke-virtual {p0, p2}, Lcom/ljwx/basestate/StateLayout;->setLoadingLayout(I)V

    .line 88
    sget p2, Lcom/ljwx/basestate/R$styleable;->StateLayout_stateLayoutOffline:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 87
    invoke-virtual {p0, p2}, Lcom/ljwx/basestate/StateLayout;->setOfflineLayout(I)V

    .line 90
    sget p2, Lcom/ljwx/basestate/R$styleable;->StateLayout_stateLayoutExtend:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 89
    invoke-virtual {p0, p2}, Lcom/ljwx/basestate/StateLayout;->setExtendLayout(I)V
    :try_end_6b
    .catchall {:try_start_3e .. :try_end_6b} :catchall_6f

    .line 92
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_6f
    move-exception p2

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

    .line 15
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/ljwx/basestate/StateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final createLayoutView(II)Landroid/view/View;
    .registers 5

    .line 100
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/ljwx/basestate/StateLayout;->stateViews:Ljava/util/Map;

    const-string v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method private final getStateView(I)Landroid/view/View;
    .registers 5

    .line 106
    iget-object v0, p0, Lcom/ljwx/basestate/StateLayout;->stateViews:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5e

    const/4 v1, 0x0

    if-eqz p1, :cond_5b

    const/4 v2, 0x1

    if-eq p1, v2, :cond_43

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3a

    const/4 v2, 0x3

    if-eq p1, v2, :cond_31

    const/4 v2, 0x4

    if-eq p1, v2, :cond_28

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1f

    goto :goto_4b

    .line 115
    :cond_1f
    invoke-virtual {p0}, Lcom/ljwx/basestate/StateLayout;->getExtendLayout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4b

    .line 114
    :cond_28
    invoke-virtual {p0}, Lcom/ljwx/basestate/StateLayout;->getOfflineLayout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4b

    .line 113
    :cond_31
    invoke-virtual {p0}, Lcom/ljwx/basestate/StateLayout;->getErrorLayout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4b

    .line 111
    :cond_3a
    invoke-virtual {p0}, Lcom/ljwx/basestate/StateLayout;->getEmptyLayout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4b

    .line 112
    :cond_43
    invoke-virtual {p0}, Lcom/ljwx/basestate/StateLayout;->getLoadingLayout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4b
    if-eqz v1, :cond_5e

    .line 117
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ljwx/basestate/StateLayout;->createLayoutView(II)Landroid/view/View;

    move-result-object v0

    goto :goto_5e

    .line 110
    :cond_5b
    iget-object p1, p0, Lcom/ljwx/basestate/StateLayout;->contentView:Landroid/view/View;

    return-object p1

    .line 119
    :cond_5e
    :goto_5e
    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public addClickListener(IILandroid/view/View$OnClickListener;)V
    .registers 5

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/ljwx/basestate/StateLayout;->getStateView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    return-void
.end method

.method public final getEmptyLayout()I
    .registers 3

    .line 37
    iget v0, p0, Lcom/ljwx/basestate/StateLayout;->emptyLayout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/ljwx/basestate/StateLayoutConfig;->getEmptyLayout()I

    move-result v0

    :cond_9
    return v0
.end method

.method public final getErrorLayout()I
    .registers 3

    .line 27
    iget v0, p0, Lcom/ljwx/basestate/StateLayout;->errorLayout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/ljwx/basestate/StateLayoutConfig;->getErrorLayout()I

    move-result v0

    :cond_9
    return v0
.end method

.method public final getExtendLayout()I
    .registers 3

    .line 67
    iget v0, p0, Lcom/ljwx/basestate/StateLayout;->extendLayout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/ljwx/basestate/StateLayoutConfig;->getExtendLayout()I

    move-result v0

    :cond_9
    return v0
.end method

.method public final getLoadingLayout()I
    .registers 3

    .line 47
    iget v0, p0, Lcom/ljwx/basestate/StateLayout;->loadingLayout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/ljwx/basestate/StateLayoutConfig;->getLoadingLayout()I

    move-result v0

    :cond_9
    return v0
.end method

.method public final getOfflineLayout()I
    .registers 3

    .line 57
    iget v0, p0, Lcom/ljwx/basestate/StateLayout;->offlineLayout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/ljwx/basestate/StateLayoutConfig;->getOfflineLayout()I

    move-result v0

    :cond_9
    return v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .registers 1

    return-object p0
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 180
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 181
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 184
    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    .line 185
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->removeViews(II)V

    :cond_19
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ljwx/basestate/StateLayout;->contentView:Landroid/view/View;

    .line 188
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate,contentView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ljwx/basestate/StateLayout;->contentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-[stateLayout"

    invoke-virtual {v0, v2, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setEmptyLayout(I)V
    .registers 3

    .line 39
    iget v0, p0, Lcom/ljwx/basestate/StateLayout;->emptyLayout:I

    if-eq v0, p1, :cond_6

    .line 40
    iput p1, p0, Lcom/ljwx/basestate/StateLayout;->emptyLayout:I

    :cond_6
    return-void
.end method

.method public final setErrorLayout(I)V
    .registers 3

    .line 29
    iget v0, p0, Lcom/ljwx/basestate/StateLayout;->errorLayout:I

    if-eq v0, p1, :cond_6

    .line 30
    iput p1, p0, Lcom/ljwx/basestate/StateLayout;->errorLayout:I

    :cond_6
    return-void
.end method

.method public final setExtendLayout(I)V
    .registers 3

    .line 69
    iget v0, p0, Lcom/ljwx/basestate/StateLayout;->extendLayout:I

    if-eq v0, p1, :cond_6

    .line 70
    iput p1, p0, Lcom/ljwx/basestate/StateLayout;->extendLayout:I

    :cond_6
    return-void
.end method

.method public final setLoadingLayout(I)V
    .registers 3

    .line 49
    iget v0, p0, Lcom/ljwx/basestate/StateLayout;->loadingLayout:I

    if-eq v0, p1, :cond_6

    .line 50
    iput p1, p0, Lcom/ljwx/basestate/StateLayout;->loadingLayout:I

    :cond_6
    return-void
.end method

.method public final setOfflineLayout(I)V
    .registers 3

    .line 59
    iget v0, p0, Lcom/ljwx/basestate/StateLayout;->offlineLayout:I

    if-eq v0, p1, :cond_6

    .line 60
    iput p1, p0, Lcom/ljwx/basestate/StateLayout;->offlineLayout:I

    :cond_6
    return-void
.end method

.method public setStateContent(Landroid/view/View;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/ljwx/basestate/StateLayout;->contentView:Landroid/view/View;

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

    .line 173
    iget-object v0, p0, Lcom/ljwx/basestate/StateLayout;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 175
    :cond_1a
    iput-object p1, p0, Lcom/ljwx/basestate/StateLayout;->contentView:Landroid/view/View;

    .line 176
    sget-object p1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContentView,contentView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ljwx/basestate/StateLayout;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-[stateLayout"

    invoke-virtual {p1, v1, v0}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final showStateContent()V
    .registers 4

    .line 157
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    const-string v1, "-[stateLayout"

    const-string v2, "showStateContent"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/ljwx/basestate/StateLayout;->contentView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_14

    :cond_13
    move-object v0, v1

    :goto_14
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 159
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->removeViews(II)V

    goto :goto_3c

    .line 161
    :cond_24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 162
    iget-object v0, p0, Lcom/ljwx/basestate/StateLayout;->contentView:Landroid/view/View;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :cond_2f
    if-nez v1, :cond_37

    .line 163
    iget-object v0, p0, Lcom/ljwx/basestate/StateLayout;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_3c

    :cond_37
    const/16 v0, 0x8

    .line 165
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 168
    :goto_3c
    iget-object v0, p0, Lcom/ljwx/basestate/StateLayout;->contentView:Landroid/view/View;

    if-nez v0, :cond_41

    goto :goto_45

    :cond_41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_45
    return-void
.end method

.method public showStateView(ILandroid/view/View;Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_6

    .line 128
    invoke-virtual {p0}, Lcom/ljwx/basestate/StateLayout;->showStateContent()V

    return-void

    :cond_6
    const/4 p2, 0x0

    .line 131
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 132
    iget-object p3, p0, Lcom/ljwx/basestate/StateLayout;->contentView:Landroid/view/View;

    if-nez p3, :cond_f

    goto :goto_14

    :cond_f
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :goto_14
    invoke-direct {p0, p1}, Lcom/ljwx/basestate/StateLayout;->getStateView(I)Landroid/view/View;

    move-result-object p1

    .line 135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_24

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    goto :goto_25

    :cond_24
    move-object p2, v0

    .line 137
    :goto_25
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_61

    .line 138
    iget-object p2, p0, Lcom/ljwx/basestate/StateLayout;->contentView:Landroid/view/View;

    if-eqz p2, :cond_33

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :cond_33
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 139
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-virtual {p0, p3, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    goto :goto_46

    .line 141
    :cond_43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 143
    :goto_46
    sget-object p2, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showStateView,newView:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "-[stateLayout"

    invoke-virtual {p2, v0, p3}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_61
    return-void
.end method
