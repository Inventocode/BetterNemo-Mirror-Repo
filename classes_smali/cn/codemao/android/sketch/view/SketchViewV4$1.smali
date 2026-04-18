.class Lcn/codemao/android/sketch/view/SketchViewV4$1;
.super Ljava/lang/Object;
.source "SketchViewV4.java"

# interfaces
.implements Lcn/codemao/android/sketch/utils/TimerHelper$TimeProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/SketchViewV4;->startFigureAnimition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lcn/codemao/android/sketch/view/SketchViewV4;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/SketchViewV4;)V
    .registers 2

    .line 1783
    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1;->this$0:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1784
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1;->i:I

    return-void
.end method


# virtual methods
.method public process()V
    .registers 5

    .line 1788
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1;->this$0:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->access$000(Lcn/codemao/android/sketch/view/SketchViewV4;)Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1;->this$0:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->access$000(Lcn/codemao/android/sketch/view/SketchViewV4;)Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v0, :cond_59

    .line 1789
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1;->this$0:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->access$000(Lcn/codemao/android/sketch/view/SketchViewV4;)Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    const v1, 0x3fa7ae14  # 1.31f

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1;->this$0:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1;->this$0:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    .line 1790
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1;->this$0:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/sketch/view/SketchViewV4$1$1;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/view/SketchViewV4$1$1;-><init>(Lcn/codemao/android/sketch/view/SketchViewV4$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1796
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1;->i:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_59

    .line 1798
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1;->this$0:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->access$100(Lcn/codemao/android/sketch/view/SketchViewV4;)Lcn/codemao/android/sketch/utils/TimerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/TimerHelper;->stopTime()V

    .line 1799
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1;->this$0:Lcn/codemao/android/sketch/view/SketchViewV4;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->access$202(Lcn/codemao/android/sketch/view/SketchViewV4;Z)Z

    .line 1800
    iput v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1;->i:I

    :cond_59
    return-void
.end method
