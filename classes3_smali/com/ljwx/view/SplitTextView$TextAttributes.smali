.class final Lcom/ljwx/view/SplitTextView$TextAttributes;
.super Ljava/lang/Object;
.source "SplitTextView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/view/SplitTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextAttributes"
.end annotation


# instance fields
.field private baselineDiff:F

.field private bold:Z

.field private color:I

.field private lineHeight:F

.field private paint:Landroid/text/TextPaint;

.field private size:F

.field private text:Ljava/lang/String;

.field private textWidth:F

.field final synthetic this$0:Lcom/ljwx/view/SplitTextView;


# direct methods
.method public constructor <init>(Lcom/ljwx/view/SplitTextView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 347
    iput-object p1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->this$0:Lcom/ljwx/view/SplitTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    invoke-static {p1}, Lcom/ljwx/view/SplitTextView;->access$defaultColor(Lcom/ljwx/view/SplitTextView;)I

    move-result v0

    iput v0, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->color:I

    .line 362
    invoke-static {p1}, Lcom/ljwx/view/SplitTextView;->access$defaultSize(Lcom/ljwx/view/SplitTextView;)F

    move-result v0

    iput v0, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->size:F

    .line 367
    invoke-static {p1}, Lcom/ljwx/view/SplitTextView;->access$defaultBold(Lcom/ljwx/view/SplitTextView;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->bold:Z

    .line 387
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->paint:Landroid/text/TextPaint;

    .line 390
    invoke-virtual {p0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->initPaint()V

    return-void
.end method


# virtual methods
.method public final getBaselineDiff()F
    .registers 2

    .line 382
    iget v0, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->baselineDiff:F

    return v0
.end method

.method public final getLineHeight()F
    .registers 2

    .line 377
    iget v0, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->lineHeight:F

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->paint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->text:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public final getTextWidth()F
    .registers 2

    .line 372
    iget v0, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->textWidth:F

    return v0
.end method

.method public final initPaint()V
    .registers 3

    .line 397
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->paint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->color:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 398
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->paint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->size:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 399
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->paint:Landroid/text/TextPaint;

    iget-boolean v1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->bold:Z

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 400
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iget-object v1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->baselineDiff:F

    return-void
.end method

.method public final setBold(Z)V
    .registers 2

    .line 367
    iput-boolean p1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->bold:Z

    return-void
.end method

.method public final setColor(I)V
    .registers 2

    .line 357
    iput p1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->color:I

    return-void
.end method

.method public final setSize(F)V
    .registers 2

    .line 362
    iput p1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->size:F

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .registers 4

    .line 409
    iput-object p1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->text:Ljava/lang/String;

    if-eqz p1, :cond_d

    .line 410
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    if-eqz v0, :cond_16

    const/4 p1, 0x0

    .line 411
    iput p1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->textWidth:F

    .line 412
    iput p1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->lineHeight:F

    goto :goto_2e

    .line 414
    :cond_16
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->textWidth:F

    .line 415
    iget-object p1, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 416
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/ljwx/view/SplitTextView$TextAttributes;->lineHeight:F

    :goto_2e
    return-void
.end method
