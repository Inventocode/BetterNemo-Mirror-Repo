.class Lcn/codemao/android/sketch/view/paint/TextPaint$1;
.super Ljava/lang/Object;
.source "TextPaint.java"

# interfaces
.implements Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$ListenTextAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/paint/TextPaint;->doMotionEventUp(FFLandroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/paint/TextPaint;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/paint/TextPaint;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/TextPaint$1;->this$0:Lcn/codemao/android/sketch/view/paint/TextPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onText(Ljava/lang/String;)V
    .registers 7

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 202
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/TextPaint$1;->this$0:Lcn/codemao/android/sketch/view/paint/TextPaint;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    if-eqz v0, :cond_75

    .line 203
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/TextPaint$1;->this$0:Lcn/codemao/android/sketch/view/paint/TextPaint;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmText()Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/TextPaint$1;->this$0:Lcn/codemao/android/sketch/view/paint/TextPaint;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object v1

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    .line 206
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f

    return-void

    .line 207
    :cond_3f
    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/TextPaint$1;->this$0:Lcn/codemao/android/sketch/view/paint/TextPaint;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v2

    invoke-interface {v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object v2

    iget-object v2, v2, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v2, p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setmText(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/TextPaint$1;->this$0:Lcn/codemao/android/sketch/view/paint/TextPaint;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v2

    invoke-interface {v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object v2

    new-instance v3, Lcn/codemao/android/sketch/action/ModifyTextAction;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/paint/TextPaint$1;->this$0:Lcn/codemao/android/sketch/view/paint/TextPaint;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v4

    invoke-interface {v4}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object v4

    iget-object v4, v4, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-direct {v3, v4, v0, p1, v1}, Lcn/codemao/android/sketch/action/ModifyTextAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;Ljava/lang/String;Ljava/lang/String;F)V

    invoke-virtual {v2, v3}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    .line 209
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/TextPaint$1;->this$0:Lcn/codemao/android/sketch/view/paint/TextPaint;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    :cond_75
    return-void
.end method
