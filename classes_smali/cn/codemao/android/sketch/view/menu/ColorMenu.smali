.class public Lcn/codemao/android/sketch/view/menu/ColorMenu;
.super Landroid/widget/FrameLayout;
.source "ColorMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/codemao/android/sketch/view/PickColorView$PickColorAction;
.implements Lcn/codemao/android/sketch/listener/OnItemClickListener;
.implements Lcn/codemao/android/sketch/listener/ChangePaintListener;
.implements Lcn/codemao/android/sketch/listener/CanvasScaleListener;
.implements Lcn/codemao/android/sketch/listener/CanvasTranslateListener;


# instance fields
.field private canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

.field private ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

.field private clickStraw:Z

.field private colorChooseAdapter:Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;

.field private colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private firstVisibleItemPosition:I

.field private fl_colorful:Landroid/widget/FrameLayout;

.field private isOver:Z

.field private iv_mask_bottom:Landroid/view/View;

.field private iv_mask_top:Landroid/view/View;

.field private iv_sure:Landroid/view/View;

.field private lastCompletelyVisibleItemPosition:I

.field private ll_color:Landroid/view/View;

.field private pickColorView:Lcn/codemao/android/sketch/view/PickColorView;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private rv_color:Landroidx/recyclerview/widget/RecyclerView;

.field private translationY:F


# direct methods
.method public static synthetic $r8$lambda$iKK12fCy0b7zyMrey6uBBA_G3X0(Lcn/codemao/android/sketch/view/menu/ColorMenu;)V
    .registers 1

    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->lambda$getColorPop$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x14

    new-array p2, p2, [Ljava/lang/Integer;

    const p3, -0x77b015

    .line 67
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const p3, -0xfac4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x1

    aput-object p3, p2, v1

    const p3, -0x19ac4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x2

    aput-object p3, p2, v2

    const/16 p3, -0x2a00

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x3

    aput-object p3, p2, v2

    const/16 p3, -0x100

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x4

    aput-object p3, p2, v2

    const p3, -0x570100

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x5

    aput-object p3, p2, v2

    const p3, -0xd32fd6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x6

    aput-object p3, p2, v2

    const p3, -0xb12748

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x7

    aput-object p3, p2, v2

    const p3, -0x7a2901

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0x8

    aput-object p3, p2, v2

    const p3, -0xb14901

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0x9

    aput-object p3, p2, v2

    const p3, -0xe77b13

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0xa

    aput-object p3, p2, v2

    const p3, -0xc0b310

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0xb

    aput-object p3, p2, v2

    const p3, -0x7eeb01

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0xc

    aput-object p3, p2, v2

    const p3, -0x2fa301

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0xd

    aput-object p3, p2, v2

    const p3, -0xd581

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0xe

    aput-object p3, p2, v2

    const p3, -0xa65c

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0xf

    aput-object p3, p2, v2

    const/16 p3, -0x2c38

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0x10

    aput-object p3, p2, v2

    const/4 p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0x11

    aput-object p3, p2, v2

    const p3, -0x424243

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0x12

    aput-object p3, p2, v2

    const/high16 p3, -0x1000000

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0x13

    aput-object p3, p2, v2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->colors:Ljava/util/List;

    .line 87
    sget p2, Lcn/codemao/android/sketch/R$layout;->view_menu_color:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    sget p1, Lcn/codemao/android/sketch/R$id;->ll_color:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ll_color:Landroid/view/View;

    .line 90
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_sure:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->iv_sure:Landroid/view/View;

    .line 91
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_mask_top:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->iv_mask_top:Landroid/view/View;

    .line 92
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_mask_bottom:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->iv_mask_bottom:Landroid/view/View;

    .line 95
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->iv_sure:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->translationY:F

    .line 96
    sget p1, Lcn/codemao/android/sketch/R$id;->rv_color:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->rv_color:Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    sget p1, Lcn/codemao/android/sketch/R$id;->ccv_colorful:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/sketch/view/CircleColorView;

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    .line 98
    sget p1, Lcn/codemao/android/sketch/R$id;->fl_colorful:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->fl_colorful:Landroid/widget/FrameLayout;

    .line 99
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->rv_color:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object p2

    iget-boolean p2, p2, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz p2, :cond_143

    const/high16 p2, 0x42000000  # 32.0f

    goto :goto_145

    :cond_143
    const/high16 p2, 0x41700000  # 15.0f

    :goto_145
    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 102
    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->rv_color:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcn/codemao/android/sketch/view/menu/ColorMenu$1;

    invoke-direct {p3, p0, p1}, Lcn/codemao/android/sketch/view/menu/ColorMenu$1;-><init>(Lcn/codemao/android/sketch/view/menu/ColorMenu;I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 109
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->rv_color:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcn/codemao/android/sketch/view/menu/ColorMenu$2;

    invoke-direct {p2, p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu$2;-><init>(Lcn/codemao/android/sketch/view/menu/ColorMenu;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 122
    new-instance p1, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;

    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->colors:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->colorChooseAdapter:Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;

    .line 123
    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->rv_color:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 124
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {p1, v1}, Lcn/codemao/android/sketch/view/CircleColorView;->setSelected(Z)V

    .line 125
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/CircleColorView;->showGou(Z)V

    .line 126
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {p1, v1}, Lcn/codemao/android/sketch/view/CircleColorView;->setStokeWidth(I)V

    .line 127
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->fl_colorful:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->iv_sure:Landroid/view/View;

    new-instance p2, Lcn/codemao/android/sketch/view/menu/ColorMenu$3;

    invoke-direct {p2, p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu$3;-><init>(Lcn/codemao/android/sketch/view/menu/ColorMenu;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->initSize()V

    return-void
.end method

.method static synthetic access$002(Lcn/codemao/android/sketch/view/menu/ColorMenu;I)I
    .registers 2

    .line 47
    iput p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->lastCompletelyVisibleItemPosition:I

    return p1
.end method

.method static synthetic access$102(Lcn/codemao/android/sketch/view/menu/ColorMenu;I)I
    .registers 2

    .line 47
    iput p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->firstVisibleItemPosition:I

    return p1
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/view/menu/ColorMenu;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->refreshMask()V

    return-void
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/view/menu/ColorMenu;)Lcn/codemao/android/sketch/view/paint/SketchControll;
    .registers 1

    .line 47
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    return-object p0
.end method

.method static synthetic access$400(Lcn/codemao/android/sketch/view/menu/ColorMenu;)Landroid/widget/PopupWindow;
    .registers 1

    .line 47
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->popupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private initSize()V
    .registers 4

    .line 206
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v0

    iget-boolean v0, v0, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz v0, :cond_6c

    .line 207
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->iv_mask_top:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42600000  # 56.0f

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 208
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->iv_mask_top:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 209
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->iv_mask_bottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 210
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->iv_mask_bottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 211
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42100000  # 36.0f

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 212
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 215
    :cond_6c
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ll_color:Landroid/view/View;

    iget v1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->translationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$getColorPop$0()V
    .registers 4

    .line 246
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    .line 247
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->clickStraw:Z

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 248
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getPenPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 249
    iget-object v2, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v2, v0, v1, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->changeColor(IZZ)V

    .line 252
    :cond_17
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->clickStraw:Z

    return-void
.end method

.method private pickColor()V
    .registers 4

    .line 278
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/CircleColorView;->showGou(Z)V

    .line 279
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->colorChooseAdapter:Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->reset()V

    .line 281
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/CircleColorView;->getColor()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->changeColor(IZZ)V

    return-void
.end method

.method private refreshMask()V
    .registers 5

    .line 219
    iget v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->firstVisibleItemPosition:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->isOver:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->setTopMaskVisible(Z)V

    .line 220
    iget v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->lastCompletelyVisibleItemPosition:I

    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->colors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq v0, v3, :cond_20

    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->isOver:Z

    if-nez v0, :cond_20

    const/4 v1, 0x1

    :cond_20
    invoke-direct {p0, v1}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->setBottomMaskVisible(Z)V

    return-void
.end method

.method private setBottomMaskVisible(Z)V
    .registers 3

    .line 229
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->iv_mask_bottom:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    const/4 p1, 0x4

    :goto_7
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setTopMaskVisible(Z)V
    .registers 3

    .line 225
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->iv_mask_top:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    const/4 p1, 0x4

    :goto_7
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showDownAnim()V
    .registers 3

    .line 391
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ll_color:Landroid/view/View;

    iget v1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->translationY:F

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animVer(Landroid/view/View;F)V

    .line 392
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->iv_sure:Landroid/view/View;

    iget v1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->translationY:F

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animVer(Landroid/view/View;F)V

    return-void
.end method

.method private showPop()V
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 294
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 295
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 296
    aget v0, v0, v3

    .line 298
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->getColorPop()Landroid/widget/PopupWindow;

    move-result-object v3

    iget-object v4, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x43bc0000  # 376.0f

    invoke-static {v5, v6}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x428c0000  # 70.0f

    invoke-static {v5, v6}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private showUpAnim()V
    .registers 3

    .line 374
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ll_color:Landroid/view/View;

    iget v1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->translationY:F

    neg-float v1, v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animVer(Landroid/view/View;F)V

    .line 375
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->iv_sure:Landroid/view/View;

    iget v1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->translationY:F

    neg-float v1, v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animVer(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public bindCanvas(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    .line 154
    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    .line 155
    new-instance v0, Lcn/codemao/android/sketch/view/menu/ColorMenu$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu$$ExternalSyntheticLambda1;-><init>(Lcn/codemao/android/sketch/view/menu/ColorMenu;)V

    invoke-interface {p1, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addCanvasStrawColorLintener(Lcn/codemao/android/sketch/listener/CanvasStrawColorLintener;)V

    .line 156
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addCanvasScaleListener(Lcn/codemao/android/sketch/listener/CanvasScaleListener;)V

    .line 157
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addCanvasTranslateListener(Lcn/codemao/android/sketch/listener/CanvasTranslateListener;)V

    .line 158
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addChangePaintListener(Lcn/codemao/android/sketch/listener/ChangePaintListener;)V

    .line 159
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    new-instance v0, Lcn/codemao/android/sketch/view/menu/ColorMenu$4;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu$4;-><init>(Lcn/codemao/android/sketch/view/menu/ColorMenu;)V

    invoke-interface {p1, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addCanvasVariableWather(Lcn/codemao/android/sketch/listener/CanvasVariableWather;)V

    .line 184
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->colorChooseAdapter:Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;

    invoke-virtual {p1, p0}, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->setOnItemClickListener(Lcn/codemao/android/sketch/listener/OnItemClickListener;)V

    .line 185
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->colorChooseAdapter:Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->setSelectIndex(I)V

    return-void
.end method

.method public changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V
    .registers 3

    if-eqz p1, :cond_2d

    .line 352
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x7

    if-eq p1, v0, :cond_11

    const/16 v0, 0xa

    if-eq p1, v0, :cond_11

    goto :goto_28

    :cond_11
    const/16 p1, 0x8

    .line 356
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3d

    .line 359
    :cond_17
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ll_color:Landroid/view/View;

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->translationY:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_28

    .line 360
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->showUpAnim()V

    :cond_28
    :goto_28
    const/4 p1, 0x0

    .line 362
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3d

    .line 368
    :cond_2d
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ll_color:Landroid/view/View;

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3d

    .line 369
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->showDownAnim()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 190
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->isStrawColorModel()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    return p1

    .line 194
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getColorPop()Landroid/widget/PopupWindow;
    .registers 6

    .line 239
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_4d

    .line 240
    new-instance v0, Lcn/codemao/android/sketch/view/PickColorView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/view/PickColorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->pickColorView:Lcn/codemao/android/sketch/view/PickColorView;

    .line 241
    invoke-virtual {v0, p0}, Lcn/codemao/android/sketch/view/PickColorView;->setAction(Lcn/codemao/android/sketch/view/PickColorView$PickColorAction;)V

    .line 242
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->pickColorView:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43bc0000  # 376.0f

    invoke-static {v2, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42d80000  # 108.0f

    invoke-static {v3, v4}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->popupWindow:Landroid/widget/PopupWindow;

    .line 243
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 245
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Lcn/codemao/android/sketch/view/menu/ColorMenu$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/sketch/view/menu/ColorMenu;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 254
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 256
    :cond_4d
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getTranslationY()F
    .registers 2

    .line 235
    iget v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->translationY:F

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 262
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 263
    :cond_7
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->fl_colorful:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_22

    .line 264
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CircleColorView;->isDrawColor()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CircleColorView;->isShowGou()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 265
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->pickColor()V

    return-void

    .line 269
    :cond_1f
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->showPop()V

    :cond_22
    return-void
.end method

.method public onClick(Landroid/view/View;I)V
    .registers 4

    .line 343
    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcn/codemao/android/sketch/view/CircleColorView;->showGou(Z)V

    .line 344
    check-cast p1, Lcn/codemao/android/sketch/view/CircleColorView;

    .line 345
    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CircleColorView;->getColor()I

    move-result p1

    invoke-interface {p2, p1, v0, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->changeColor(IZZ)V

    return-void
.end method

.method public onClickStraw()V
    .registers 2

    .line 330
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->startStrawColor()V

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->clickStraw:Z

    .line 332
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->getColorPop()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onPickColor(IZ)V
    .registers 5

    .line 306
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/CircleColorView;->setColor(I)V

    .line 307
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/CircleColorView;->showGou(Z)V

    .line 308
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->colorChooseAdapter:Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->reset()V

    .line 310
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->ccv_colorful:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/CircleColorView;->getColor()I

    move-result v1

    invoke-interface {p1, v1, v0, p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->changeColor(IZZ)V

    return-void
.end method

.method public onScale(FLandroid/graphics/RectF;)V
    .registers 3

    .line 410
    iget p1, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->isOver:Z

    .line 411
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->refreshMask()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 201
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    return-void
.end method

.method public onStrawColor(I)V
    .registers 3

    const/4 v0, 0x1

    .line 319
    invoke-virtual {p0, p1, v0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->onPickColor(IZ)V

    .line 320
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->getColorPop()Landroid/widget/PopupWindow;

    .line 321
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->pickColorView:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/PickColorView;->setSelectColor(I)V

    return-void
.end method

.method public onTranslate(FFLandroid/graphics/RectF;)V
    .registers 4

    .line 416
    iget p1, p3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu;->isOver:Z

    .line 417
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->refreshMask()V

    return-void
.end method
