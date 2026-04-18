.class Lcn/codemao/android/sketch/SketchActivity2$2;
.super Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;
.source "SketchActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/SketchActivity2;->delayInitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/SketchActivity2;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/SketchActivity2;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity2$2;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-direct {p0}, Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onProgress(Lcn/codemao/android/sketch/view/VerticalSeekBar;I)V
    .registers 4

    .line 266
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;->onProgress(Lcn/codemao/android/sketch/view/VerticalSeekBar;I)V

    const/4 p1, 0x4

    if-ge p2, p1, :cond_7

    const/4 p2, 0x4

    .line 269
    :cond_7
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity2$2;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity2;->access$000(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/SketchViewV5;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->getCurIPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object p1

    if-nez p1, :cond_14

    return-void

    .line 272
    :cond_14
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity2$2;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity2;->access$000(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/SketchViewV5;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getScaledSize(I)I

    move-result p1

    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity2$2;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {p2}, Lcn/codemao/android/sketch/SketchActivity2;->access$000(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/SketchViewV5;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result p2

    add-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x3f000000  # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 273
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity2$2;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {p2}, Lcn/codemao/android/sketch/SketchActivity2;->access$1000(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity2$2;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {p2}, Lcn/codemao/android/sketch/SketchActivity2;->access$1000(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 275
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity2$2;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity2;->access$1100(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/CircleColorView;

    move-result-object p1

    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity2$2;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {p2}, Lcn/codemao/android/sketch/SketchActivity2;->access$1000(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 278
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity2$2;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {p2}, Lcn/codemao/android/sketch/SketchActivity2;->access$000(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/SketchViewV5;

    move-result-object p2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getCurIPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object p2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result p2

    if-eqz p2, :cond_66

    const/16 v0, 0x8

    if-eq p2, v0, :cond_64

    goto :goto_74

    :cond_64
    const/4 p1, -0x1

    goto :goto_74

    .line 283
    :cond_66
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity2$2;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity2;->access$000(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/SketchViewV5;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->getCurPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 287
    :goto_74
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity2$2;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {p2}, Lcn/codemao/android/sketch/SketchActivity2;->access$1100(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/CircleColorView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/codemao/android/sketch/view/CircleColorView;->setColor(I)V

    return-void
.end method
