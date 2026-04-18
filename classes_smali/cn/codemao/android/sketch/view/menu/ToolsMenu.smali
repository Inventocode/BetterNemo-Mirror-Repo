.class public Lcn/codemao/android/sketch/view/menu/ToolsMenu;
.super Landroid/widget/FrameLayout;
.source "ToolsMenu.java"

# interfaces
.implements Lcn/codemao/android/sketch/listener/ChangePaintListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcn/codemao/android/sketch/listener/CanvasTranslateListener;
.implements Lcn/codemao/android/sketch/listener/CanvasScaleListener;


# instance fields
.field private autoShowFirst:Z

.field private canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

.field private dp14:I

.field private dp2:I

.field private dp25:I

.field private dp51:I

.field private dp6:I

.field private fifureAdapter:Lcn/codemao/android/sketch/adapter/FigureAdapter;

.field private figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

.field private fl_shape:Landroid/view/View;

.field private fl_tool:Landroid/view/View;

.field private iFigureSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/codemao/android/sketch/view/figure/IFigure;",
            ">;"
        }
    .end annotation
.end field

.field private iStrokes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/codemao/android/sketch/view/strokes/IStroke;",
            ">;"
        }
    .end annotation
.end field

.field private ivCloseFigure:Landroid/view/View;

.field private iv_mask_color_bottom:Landroid/view/View;

.field private iv_mask_color_top:Landroid/view/View;

.field private iv_mask_tool_bottom:Landroid/view/View;

.field private iv_mask_tool_top:Landroid/view/View;

.field private paintAdapter:Lcn/codemao/android/sketch/adapter/PaintAdapter;

.field private penPaints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/paint/IPaint;",
            ">;"
        }
    .end annotation
.end field

.field private rv_shapes:Landroidx/recyclerview/widget/RecyclerView;

.field private rv_tools:Landroidx/recyclerview/widget/RecyclerView;

.field private scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

.field private shapeFirstPos:I

.field private shapeLastPos:I

.field private shapeOver:Z

.field private showToolMask:Z

.field private toolFirstPos:I

.field private toolLastPos:I

.field private toolOver:Z


# direct methods
.method public static synthetic $r8$lambda$uwFl-BR8KUdiHwvDvbNomozCu64(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V
    .registers 1

    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->lambda$init$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance p2, Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-direct {p2}, Lcn/codemao/android/sketch/view/paint/FigurePaint;-><init>()V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    .line 78
    new-instance p2, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    invoke-direct {p2}, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;-><init>()V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    .line 80
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    .line 82
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    .line 126
    sget p2, Lcn/codemao/android/sketch/R$layout;->view_menu_tools:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p2, 0x40800000  # 4.0f

    .line 127
    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    .line 128
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object p3

    iget-boolean p3, p3, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz p3, :cond_36

    const p3, 0x400e147b  # 2.22f

    goto :goto_38

    :cond_36
    const/high16 p3, 0x40000000  # 2.0f

    :goto_38
    invoke-static {p1, p3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->dp2:I

    .line 129
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object p3

    iget-boolean p3, p3, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz p3, :cond_4a

    const p3, 0x402ae148  # 2.67f

    goto :goto_4c

    :cond_4a
    const/high16 p3, 0x40c00000  # 6.0f

    :goto_4c
    invoke-static {p1, p3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->dp6:I

    .line 130
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object p3

    iget-boolean p3, p3, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz p3, :cond_5e

    const p3, 0x4178cccd  # 15.55f

    goto :goto_60

    :cond_5e
    const/high16 p3, 0x41600000  # 14.0f

    :goto_60
    invoke-static {p1, p3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->dp14:I

    const/high16 p3, 0x41c80000  # 25.0f

    .line 131
    invoke-static {p1, p3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->dp25:I

    .line 132
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object p3

    iget-boolean p3, p3, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz p3, :cond_79

    const/high16 p3, 0x42780000  # 62.0f

    goto :goto_7b

    :cond_79
    const/high16 p3, 0x424c0000  # 51.0f

    :goto_7b
    invoke-static {p1, p3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->dp51:I

    .line 134
    sget p3, Lcn/codemao/android/sketch/R$id;->rv_tools:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->rv_tools:Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    sget p3, Lcn/codemao/android/sketch/R$id;->rv_shapes:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->rv_shapes:Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    sget p3, Lcn/codemao/android/sketch/R$id;->iv_mask_tool_top:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iv_mask_tool_top:Landroid/view/View;

    .line 138
    sget p3, Lcn/codemao/android/sketch/R$id;->iv_mask_tool_bottom:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iv_mask_tool_bottom:Landroid/view/View;

    .line 139
    sget p3, Lcn/codemao/android/sketch/R$id;->iv_mask_color_bottom:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iv_mask_color_bottom:Landroid/view/View;

    .line 140
    sget p3, Lcn/codemao/android/sketch/R$id;->iv_mask_color_top:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iv_mask_color_top:Landroid/view/View;

    .line 142
    sget p3, Lcn/codemao/android/sketch/R$id;->fl_tool:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_tool:Landroid/view/View;

    .line 143
    sget p3, Lcn/codemao/android/sketch/R$id;->fl_shape:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_shape:Landroid/view/View;

    .line 144
    sget p3, Lcn/codemao/android/sketch/R$id;->iv_close_figure:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->ivCloseFigure:Landroid/view/View;

    .line 145
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->rv_tools:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$1;

    invoke-direct {v0, p0, p2}, Lcn/codemao/android/sketch/view/menu/ToolsMenu$1;-><init>(Lcn/codemao/android/sketch/view/menu/ToolsMenu;I)V

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 159
    new-instance p2, Lcn/codemao/android/sketch/adapter/PaintAdapter;

    iget-object p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcn/codemao/android/sketch/adapter/PaintAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->paintAdapter:Lcn/codemao/android/sketch/adapter/PaintAdapter;

    .line 162
    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->rv_tools:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 163
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 164
    iget-object p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->rv_tools:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 165
    iget-object p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->rv_tools:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->paintAdapter:Lcn/codemao/android/sketch/adapter/PaintAdapter;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 167
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p2

    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->showToolMask:Z

    if-eqz p2, :cond_110

    .line 170
    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->rv_tools:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcn/codemao/android/sketch/view/menu/ToolsMenu$2;

    invoke-direct {p3, p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu$2;-><init>(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 184
    :cond_110
    new-instance p2, Lcn/codemao/android/sketch/adapter/FigureAdapter;

    iget-object p3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcn/codemao/android/sketch/adapter/FigureAdapter;-><init>(Landroid/util/SparseArray;Landroid/content/Context;)V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fifureAdapter:Lcn/codemao/android/sketch/adapter/FigureAdapter;

    .line 186
    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->rv_shapes:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 188
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->rv_shapes:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcn/codemao/android/sketch/view/menu/ToolsMenu$3;

    invoke-direct {p2, p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu$3;-><init>(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 208
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->rv_shapes:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fifureAdapter:Lcn/codemao/android/sketch/adapter/FigureAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 209
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->rv_shapes:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcn/codemao/android/sketch/view/menu/ToolsMenu$4;

    invoke-direct {p2, p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu$4;-><init>(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 220
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->initSize()V

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I
    .registers 1

    .line 74
    iget p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->toolFirstPos:I

    return p0
.end method

.method static synthetic access$002(Lcn/codemao/android/sketch/view/menu/ToolsMenu;I)I
    .registers 2

    .line 74
    iput p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->toolFirstPos:I

    return p1
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I
    .registers 1

    .line 74
    iget p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->toolLastPos:I

    return p0
.end method

.method static synthetic access$1000(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/view/View;
    .registers 1

    .line 74
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iv_mask_tool_top:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcn/codemao/android/sketch/view/menu/ToolsMenu;I)I
    .registers 2

    .line 74
    iput p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->toolLastPos:I

    return p1
.end method

.method static synthetic access$1100(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Ljava/util/List;
    .registers 1

    .line 74
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/view/View;
    .registers 1

    .line 74
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iv_mask_tool_bottom:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Z
    .registers 1

    .line 74
    iget-boolean p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->shapeOver:Z

    return p0
.end method

.method static synthetic access$1400(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/view/View;
    .registers 1

    .line 74
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iv_mask_color_top:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/util/SparseArray;
    .registers 1

    .line 74
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/view/View;
    .registers 1

    .line 74
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iv_mask_color_bottom:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/view/View;
    .registers 1

    .line 74
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_tool:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->updateStrokeUnitSize()V

    return-void
.end method

.method static synthetic access$1900(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I
    .registers 1

    .line 74
    iget p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->dp25:I

    return p0
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->refreshToolMask()V

    return-void
.end method

.method static synthetic access$2000(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Lcn/codemao/android/sketch/view/paint/SketchControll;
    .registers 1

    .line 74
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    return-object p0
.end method

.method static synthetic access$2100(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Lcn/codemao/android/sketch/view/paint/FigurePaint;
    .registers 1

    .line 74
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->quiteFigureMode()V

    return-void
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I
    .registers 1

    .line 74
    iget p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->dp2:I

    return p0
.end method

.method static synthetic access$400(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I
    .registers 1

    .line 74
    iget p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->dp6:I

    return p0
.end method

.method static synthetic access$500(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I
    .registers 1

    .line 74
    iget p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->dp14:I

    return p0
.end method

.method static synthetic access$600(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I
    .registers 1

    .line 74
    iget p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->shapeFirstPos:I

    return p0
.end method

.method static synthetic access$602(Lcn/codemao/android/sketch/view/menu/ToolsMenu;I)I
    .registers 2

    .line 74
    iput p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->shapeFirstPos:I

    return p1
.end method

.method static synthetic access$700(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I
    .registers 1

    .line 74
    iget p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->shapeLastPos:I

    return p0
.end method

.method static synthetic access$702(Lcn/codemao/android/sketch/view/menu/ToolsMenu;I)I
    .registers 2

    .line 74
    iput p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->shapeLastPos:I

    return p1
.end method

.method static synthetic access$800(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->refreshShapeMask()V

    return-void
.end method

.method static synthetic access$900(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Z
    .registers 1

    .line 74
    iget-boolean p0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->toolOver:Z

    return p0
.end method

.method private hideShapeLayout()V
    .registers 4

    .line 462
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_shape:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    if-gez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 465
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_tool:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;F)V

    const/4 v0, 0x1

    .line 466
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_shape:Landroid/view/View;

    iget v2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->dp51:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;F)V

    return-void
.end method

.method private initSize()V
    .registers 5

    .line 242
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v0

    iget-boolean v0, v0, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz v0, :cond_80

    .line 243
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_shape:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42780000  # 62.0f

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 244
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_shape:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42200000  # 40.0f

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 245
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_shape:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x41b00000  # 22.0f

    invoke-static {v1, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 246
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->ivCloseFigure:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 247
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->ivCloseFigure:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 248
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->ivCloseFigure:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 249
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->ivCloseFigure:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_80
    return-void
.end method

.method private synthetic lambda$init$0()V
    .registers 4

    .line 397
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/paint/IPaint;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;Z)V

    return-void
.end method

.method private quiteFigureMode()V
    .registers 2

    .line 507
    :try_start_0
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->dropFigureEditList()V

    .line 508
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->hideShapeLayout()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method

.method private refreshShapeMask()V
    .registers 3

    .line 256
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iv_mask_color_top:Landroid/view/View;

    new-instance v1, Lcn/codemao/android/sketch/view/menu/ToolsMenu$6;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu$6;-><init>(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshToolMask()V
    .registers 3

    .line 224
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->showToolMask:Z

    if-nez v0, :cond_5

    return-void

    .line 226
    :cond_5
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iv_mask_tool_top:Landroid/view/View;

    new-instance v1, Lcn/codemao/android/sketch/view/menu/ToolsMenu$5;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu$5;-><init>(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showShapeLayout()V
    .registers 4

    .line 454
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_shape:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    if-lez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x1

    .line 457
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_tool:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;F)V

    const/4 v0, 0x0

    .line 458
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_shape:Landroid/view/View;

    iget v2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->dp51:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;F)V

    return-void
.end method

.method private updateStrokeUnitSize()V
    .registers 3

    const/4 v0, 0x0

    .line 404
    :goto_1
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iStrokes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 405
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iStrokes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/strokes/IStroke;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/strokes/IStroke;->updateUnsize()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method


# virtual methods
.method public changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V
    .registers 4

    if-eqz p1, :cond_d

    .line 427
    :try_start_2
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 428
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->showShapeLayout()V

    goto :goto_10

    .line 430
    :cond_d
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->hideShapeLayout()V

    :goto_10
    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 435
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->rv_tools:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 437
    :cond_1f
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->paintAdapter:Lcn/codemao/android/sketch/adapter/PaintAdapter;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->changePaintAnim(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception p1

    .line 440
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_29
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 415
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->isStrawColorModel()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    return p1

    .line 419
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public init(Lcn/codemao/android/sketch/view/paint/SketchControll;ILcn/codemao/android/sketch/view/menu/ScrawlMenu;Z)V
    .registers 14

    .line 269
    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz p2, :cond_ae

    if-eq p2, v0, :cond_88

    if-eq p2, v1, :cond_47

    if-eq p2, v2, :cond_f

    goto/16 :goto_e4

    .line 289
    :cond_f
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/MirrorPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/MirrorPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/PenPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/PenPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/BrushPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/BrushPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/TextPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/TextPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e4

    .line 280
    :cond_47
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/PenPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/PenPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/BrushPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/BrushPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/TextPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/TextPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/DoodlePaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/DoodlePaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e4

    .line 297
    :cond_88
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/PenPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/PenPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/TextPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/TextPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/ClipPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/ClipPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e4

    .line 272
    :cond_ae
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/PenPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/PenPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/BrushPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/BrushPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    new-instance v4, Lcn/codemao/android/sketch/view/paint/TextPaint;

    invoke-direct {v4}, Lcn/codemao/android/sketch/view/paint/TextPaint;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :goto_e4
    iget-object v3, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->penPaints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ea
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/paint/IPaint;

    .line 305
    invoke-virtual {v4, p1, p2}, Lcn/codemao/android/sketch/view/paint/IPaint;->bindSketchControll(Lcn/codemao/android/sketch/view/paint/SketchControll;I)V

    goto :goto_ea

    :cond_fa
    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz p2, :cond_102

    if-eq p2, v1, :cond_102

    if-ne p2, v2, :cond_19b

    .line 310
    :cond_102
    iget-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    new-instance v6, Lcn/codemao/android/sketch/view/figure/LineFigure;

    iget-object v7, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-direct {v6, v7}, Lcn/codemao/android/sketch/view/figure/LineFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 311
    iget-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    new-instance v6, Lcn/codemao/android/sketch/view/figure/RoundRectFigure;

    iget-object v7, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-direct {v6, v7}, Lcn/codemao/android/sketch/view/figure/RoundRectFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    iget-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    new-instance v6, Lcn/codemao/android/sketch/view/figure/HalfCircleFigure;

    iget-object v7, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-direct {v6, v7}, Lcn/codemao/android/sketch/view/figure/HalfCircleFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    iget-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    new-instance v6, Lcn/codemao/android/sketch/view/figure/RectFigure;

    iget-object v7, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-direct {v6, v7}, Lcn/codemao/android/sketch/view/figure/RectFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iget-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    new-instance v6, Lcn/codemao/android/sketch/view/figure/OvalFigure;

    iget-object v7, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-direct {v6, v7}, Lcn/codemao/android/sketch/view/figure/OvalFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    iget-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    const/4 v6, 0x5

    new-instance v7, Lcn/codemao/android/sketch/view/figure/MoonFigure;

    iget-object v8, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-direct {v7, v8}, Lcn/codemao/android/sketch/view/figure/MoonFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    iget-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    const/4 v6, 0x6

    new-instance v7, Lcn/codemao/android/sketch/view/figure/TriangleFigure;

    iget-object v8, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-direct {v7, v8}, Lcn/codemao/android/sketch/view/figure/TriangleFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    iget-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    const/4 v6, 0x7

    new-instance v7, Lcn/codemao/android/sketch/view/figure/StarFigure;

    iget-object v8, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-direct {v7, v8}, Lcn/codemao/android/sketch/view/figure/StarFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    iget-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    const/16 v6, 0x8

    new-instance v7, Lcn/codemao/android/sketch/view/figure/PentagonFigure;

    iget-object v8, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-direct {v7, v8}, Lcn/codemao/android/sketch/view/figure/PentagonFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    iget-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    const/16 v6, 0x9

    new-instance v7, Lcn/codemao/android/sketch/view/figure/HeartFigure;

    iget-object v8, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-direct {v7, v8}, Lcn/codemao/android/sketch/view/figure/HeartFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    iget-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    const/16 v6, 0xa

    new-instance v7, Lcn/codemao/android/sketch/view/figure/TrapezoidFigure;

    iget-object v8, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-direct {v7, v8}, Lcn/codemao/android/sketch/view/figure/TrapezoidFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    iget-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fifureAdapter:Lcn/codemao/android/sketch/adapter/FigureAdapter;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 323
    iget-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    iget-object v6, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iFigureSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Lcn/codemao/android/sketch/view/paint/FigurePaint;->setiFigureSparseArray(Landroid/util/SparseArray;)V

    .line 327
    :cond_19b
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iStrokes:Landroid/util/SparseArray;

    .line 328
    new-instance v6, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;

    iget-object v7, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    invoke-direct {v6, v7}, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;-><init>(Lcn/codemao/android/sketch/view/paint/ScrawlPaint;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    iget-object v4, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iStrokes:Landroid/util/SparseArray;

    new-instance v5, Lcn/codemao/android/sketch/view/strokes/FireworkStroke;

    iget-object v6, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    invoke-direct {v5, v6}, Lcn/codemao/android/sketch/view/strokes/FireworkStroke;-><init>(Lcn/codemao/android/sketch/view/paint/ScrawlPaint;)V

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iStrokes:Landroid/util/SparseArray;

    new-instance v4, Lcn/codemao/android/sketch/view/strokes/SkyStroke;

    iget-object v5, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    invoke-direct {v4, v5}, Lcn/codemao/android/sketch/view/strokes/SkyStroke;-><init>(Lcn/codemao/android/sketch/view/paint/ScrawlPaint;)V

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iStrokes:Landroid/util/SparseArray;

    new-instance v1, Lcn/codemao/android/sketch/view/strokes/KaTongStroke;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    invoke-direct {v1, v4}, Lcn/codemao/android/sketch/view/strokes/KaTongStroke;-><init>(Lcn/codemao/android/sketch/view/paint/ScrawlPaint;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iStrokes:Landroid/util/SparseArray;

    new-instance v1, Lcn/codemao/android/sketch/view/strokes/HeartStroke;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    invoke-direct {v1, v4}, Lcn/codemao/android/sketch/view/strokes/HeartStroke;-><init>(Lcn/codemao/android/sketch/view/paint/ScrawlPaint;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iStrokes:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->setmStrokes(Landroid/util/SparseArray;)V

    .line 334
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->iStrokes:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Lcn/codemao/android/sketch/view/menu/ScrawlMenu;->registerStrokes(Landroid/util/SparseArray;)V

    .line 337
    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addChangePaintListener(Lcn/codemao/android/sketch/listener/ChangePaintListener;)V

    .line 340
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    new-instance p3, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;

    invoke-direct {p3, p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;-><init>(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V

    invoke-interface {p1, p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addCanvasVariableWather(Lcn/codemao/android/sketch/listener/CanvasVariableWather;)V

    .line 387
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->updateStrokeUnitSize()V

    .line 389
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->paintAdapter:Lcn/codemao/android/sketch/adapter/PaintAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 390
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addCanvasTranslateListener(Lcn/codemao/android/sketch/listener/CanvasTranslateListener;)V

    .line 391
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->canvas:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addCanvasScaleListener(Lcn/codemao/android/sketch/listener/CanvasScaleListener;)V

    if-ne p2, v2, :cond_20d

    .line 392
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->autoShowFirst:Z

    if-eqz p1, :cond_218

    :cond_20d
    if-eqz p4, :cond_210

    return-void

    .line 396
    :cond_210
    new-instance p1, Lcn/codemao/android/sketch/view/menu/ToolsMenu$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_218
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 472
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 476
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 477
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_close_figure:I

    if-ne p1, v0, :cond_4b

    .line 478
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "show_quite"

    invoke-static {p1, v0}, Lcn/codemao/android/sketch/utils/SpUtil;->getBooleanDefaultTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 479
    new-instance p1, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 480
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcn/codemao/android/sketch/xpopup/XPopup$Builder;

    move-result-object p1

    .line 481
    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcn/codemao/android/sketch/xpopup/XPopup$Builder;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;

    .line 482
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcn/codemao/android/sketch/view/menu/ToolsMenu$8;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu$8;-><init>(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->setOnDismissListener(Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$OnDissMissListener;)Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->asCustom(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;)Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    move-result-object p1

    .line 498
    invoke-virtual {p1}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->show()Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    goto :goto_4b

    .line 500
    :cond_48
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->quiteFigureMode()V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public onScale(FLandroid/graphics/RectF;)V
    .registers 6

    .line 524
    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_tool:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->toolOver:Z

    .line 525
    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_shape:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->shapeOver:Z

    .line 526
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->refreshShapeMask()V

    .line 527
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->refreshToolMask()V

    return-void
.end method

.method public onTranslate(FFLandroid/graphics/RectF;)V
    .registers 6

    .line 516
    iget p1, p3, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_tool:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->toolOver:Z

    .line 517
    iget p1, p3, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->fl_shape:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->shapeOver:Z

    .line 518
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->refreshShapeMask()V

    .line 519
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->refreshToolMask()V

    return-void
.end method

.method public setAutoShowFirst(Z)V
    .registers 2

    .line 410
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->autoShowFirst:Z

    return-void
.end method
