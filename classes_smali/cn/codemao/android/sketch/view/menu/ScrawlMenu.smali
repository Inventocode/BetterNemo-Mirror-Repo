.class public Lcn/codemao/android/sketch/view/menu/ScrawlMenu;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ScrawlMenu.java"

# interfaces
.implements Lcn/codemao/android/sketch/listener/ChangePaintListener;


# instance fields
.field private dp18:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/menu/ScrawlMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x41900000  # 18.0f

    .line 42
    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/menu/ScrawlMenu;->dp18:I

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/view/menu/ScrawlMenu;)I
    .registers 1

    .line 28
    iget p0, p0, Lcn/codemao/android/sketch/view/menu/ScrawlMenu;->dp18:I

    return p0
.end method


# virtual methods
.method public bindSkectroller(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 2

    .line 46
    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addChangePaintListener(Lcn/codemao/android/sketch/listener/ChangePaintListener;)V

    return-void
.end method

.method public changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 51
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_f

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_14

    :cond_f
    const/16 p1, 0x8

    .line 54
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_14
    return-void
.end method

.method public registerStrokes(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcn/codemao/android/sketch/view/strokes/IStroke;",
            ">;)V"
        }
    .end annotation

    .line 60
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 62
    new-instance v0, Lcn/codemao/android/sketch/view/menu/ScrawlMenu$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/view/menu/ScrawlMenu$1;-><init>(Lcn/codemao/android/sketch/view/menu/ScrawlMenu;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 69
    new-instance v0, Lcn/codemao/android/sketch/adapter/StrokeAdapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/codemao/android/sketch/adapter/StrokeAdapter;-><init>(Landroid/util/SparseArray;Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
