.class public Lcn/codemao/android/sketch/view/paint/TextPaint;
.super Lcn/codemao/android/sketch/view/paint/IPaint;
.source "TextPaint.java"

# interfaces
.implements Lcn/codemao/android/sketch/listener/CanvasPenUpdateListener;


# instance fields
.field private lastFrom:Z

.field private mStartAngle:F

.field private textMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;-><init>()V

    .line 45
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 7

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 302
    :cond_7
    new-instance v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v2

    invoke-interface {v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v3

    const/16 v4, 0x18

    invoke-interface {v3, v4}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/codemao/android/sketch/model/StickerTextInfo;-><init>(Ljava/lang/String;FFF)V

    .line 303
    invoke-virtual {v0, p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setiPaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    .line 304
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setIsTextInputing(Z)V

    .line 305
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->insertTextList(Lcn/codemao/android/sketch/model/StickerTextInfo;)V

    return-void
.end method

.method public bindSketchControll(Lcn/codemao/android/sketch/view/paint/SketchControll;I)V
    .registers 3

    .line 293
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/view/paint/IPaint;->bindSketchControll(Lcn/codemao/android/sketch/view/paint/SketchControll;I)V

    .line 294
    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addCanvasPenUpdateListener(Lcn/codemao/android/sketch/listener/CanvasPenUpdateListener;)V

    .line 295
    new-instance p2, Lcn/codemao/android/sketch/view/intercepter/TextTouchDownIntercepter;

    invoke-direct {p2, p0}, Lcn/codemao/android/sketch/view/intercepter/TextTouchDownIntercepter;-><init>(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    invoke-interface {p1, p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addTouchDownIntercepter(Lcn/codemao/android/sketch/view/intercepter/TouchDownIntercepter;)V

    return-void
.end method

.method public canAnim()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public clearTextContent()V
    .registers 6

    .line 321
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object v0

    .line 322
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmTextList()Ljava/util/List;

    move-result-object v1

    .line 323
    iget-object v2, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 325
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object v1

    new-instance v2, Lcn/codemao/android/sketch/action/CreateTextAction;

    iget-object v3, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcn/codemao/android/sketch/action/CreateTextAction;-><init>(Lcn/codemao/android/sketch/model/StickerTextInfo;Z)V

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    .line 327
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectTextInfo;->reset()V

    .line 328
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->invalidate()V

    return-void
.end method

.method public copyTextView()V
    .registers 5

    .line 310
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectTextInfo;->hasSelected()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 312
    iget-object v1, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->copy()Lcn/codemao/android/sketch/model/StickerTextInfo;

    move-result-object v1

    .line 313
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v2

    invoke-interface {v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmTextList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/SelectTextInfo;->updateSelInfo(Lcn/codemao/android/sketch/model/StickerTextInfo;)V

    .line 315
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object v0

    new-instance v2, Lcn/codemao/android/sketch/action/CreateTextAction;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcn/codemao/android/sketch/action/CreateTextAction;-><init>(Lcn/codemao/android/sketch/model/StickerTextInfo;Z)V

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    .line 316
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->invalidate()V

    :cond_36
    return-void
.end method

.method protected doMotionEventDown(FFLandroid/graphics/Canvas;)V
    .registers 4

    .line 131
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventDown(FFLandroid/graphics/Canvas;)V

    .line 133
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->checkTextTouchType(FF)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/paint/TextPaint;->textMode:I

    .line 134
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/SelectTextInfo;->hasSelected()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 135
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object p1

    iget-object p1, p1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmRotateAngle()F

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/paint/TextPaint;->mStartAngle:F

    :cond_2b
    return-void
.end method

.method protected doMotionEventMove(FFLandroid/graphics/Canvas;)V
    .registers 6

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventMove(FFLandroid/graphics/Canvas;)V

    .line 147
    iget p3, p0, Lcn/codemao/android/sketch/view/paint/TextPaint;->textMode:I

    const/16 v0, 0x7d3

    const/16 v1, 0x7531

    if-eq p3, v1, :cond_10

    const v1, 0x493ea

    if-ne p3, v1, :cond_12

    .line 148
    :cond_10
    iput v0, p0, Lcn/codemao/android/sketch/view/paint/TextPaint;->textMode:I

    .line 152
    :cond_12
    iget p3, p0, Lcn/codemao/android/sketch/view/paint/TextPaint;->textMode:I

    if-ne p3, v0, :cond_2b

    .line 153
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object p3

    .line 154
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->lastX:F

    sub-float/2addr p1, v0

    .line 155
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->lastY:F

    sub-float/2addr p2, v0

    .line 156
    iget-object p3, p3, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, p1, p2}, Lcn/codemao/android/sketch/view/paint/TextPaint;->moveFigure(Lcn/codemao/android/sketch/model/BaseStickerInfo;ZFF)V

    goto :goto_42

    :cond_2b
    const/16 v0, 0x7533

    if-ne p3, v0, :cond_42

    .line 160
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object p3

    .line 161
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->lastX:F

    sub-float/2addr p1, v0

    .line 162
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->lastY:F

    sub-float/2addr p2, v0

    .line 163
    iget-object p3, p3, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {p0, p3, p1, p2}, Lcn/codemao/android/sketch/view/paint/TextPaint;->rotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    :cond_42
    :goto_42
    return-void
.end method

.method protected doMotionEventUp(FFLandroid/graphics/Canvas;)V
    .registers 13

    .line 171
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventUp(FFLandroid/graphics/Canvas;)V

    .line 176
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setIsTextInputing(Z)V

    .line 181
    iget p3, p0, Lcn/codemao/android/sketch/view/paint/TextPaint;->textMode:I

    const/16 v0, 0x7d3

    if-eq p3, v0, :cond_c5

    const/16 v0, 0x7538

    if-eq p3, v0, :cond_c1

    const v0, 0x493ea

    if-eq p3, v0, :cond_5c

    const/16 v0, 0x7533

    if-eq p3, v0, :cond_29

    const/16 p1, 0x7534

    if-eq p3, p1, :cond_24

    goto/16 :goto_e5

    .line 186
    :cond_24
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/TextPaint;->clearTextContent()V

    goto/16 :goto_e5

    .line 226
    :cond_29
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p3

    new-instance v8, Lcn/codemao/android/sketch/action/RotateAndScaleAction;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object v0

    iget-object v1, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    iget v4, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->startX:F

    iget v5, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->startY:F

    iget v6, p0, Lcn/codemao/android/sketch/view/paint/TextPaint;->mStartAngle:F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmRotateAngle()F

    move-result v7

    move-object v0, v8

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcn/codemao/android/sketch/action/RotateAndScaleAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFFFFF)V

    invoke-virtual {p3, v8}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    goto/16 :goto_e5

    .line 189
    :cond_5c
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_63

    return-void

    .line 190
    :cond_63
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setIsTextInputing(Z)V

    .line 191
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->invalidate()V

    .line 192
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/SelectTextInfo;->hasSelected()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 194
    new-instance p1, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p2

    invoke-interface {p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcn/codemao/android/sketch/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object p2, Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;

    .line 196
    invoke-virtual {p1, p2}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->popupAnimation(Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;)Lcn/codemao/android/sketch/xpopup/XPopup$Builder;

    move-result-object p1

    new-instance p2, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;

    .line 197
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p3, Lcn/codemao/android/sketch/view/paint/TextPaint$1;

    invoke-direct {p3, p0}, Lcn/codemao/android/sketch/view/paint/TextPaint$1;-><init>(Lcn/codemao/android/sketch/view/paint/TextPaint;)V

    .line 198
    invoke-virtual {p2, p3}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->listenText(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$ListenTextAction;)Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;

    move-result-object p2

    .line 197
    invoke-virtual {p1, p2}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->asCustom(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;)Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->show()Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    goto :goto_e5

    .line 183
    :cond_c1
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/TextPaint;->copyTextView()V

    goto :goto_e5

    .line 222
    :cond_c5
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p3

    new-instance v0, Lcn/codemao/android/sketch/action/FigureMoveAction;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object v1

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    iget v2, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->startX:F

    sub-float/2addr v2, p1

    iget p1, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->startY:F

    sub-float/2addr p1, p2

    invoke-direct {v0, v1, v2, p1}, Lcn/codemao/android/sketch/action/FigureMoveAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    invoke-virtual {p3, v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    .line 235
    :cond_e5
    :goto_e5
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->invalidate()V

    return-void
.end method

.method public getMode()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 49
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_text:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 54
    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icon_text:I

    return v0
.end method

.method public moveFigure(Lcn/codemao/android/sketch/model/BaseStickerInfo;ZFF)V
    .registers 5

    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Lcn/codemao/android/sketch/view/paint/IPaint;->moveFigure(Lcn/codemao/android/sketch/model/BaseStickerInfo;ZFF)V

    if-eqz p1, :cond_12

    .line 256
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 257
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/graphics/RectF;->offset(FF)V

    .line 259
    :cond_12
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->invalidate()V

    return-void
.end method

.method public onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V
    .registers 5

    .line 240
    invoke-super {p0, p1, p2, p3, p4}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V

    .line 242
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    neg-float p2, p2

    neg-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V
    .registers 6

    .line 247
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V

    .line 248
    move-object p3, p1

    check-cast p3, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 249
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    .line 250
    invoke-virtual {p3, p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setScale(F)V

    return-void
.end method

.method public onChanged(Landroid/graphics/Paint;Lcn/codemao/android/sketch/view/paint/IPaint;Z)V
    .registers 7

    if-ne p2, p0, :cond_56

    .line 335
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p2

    invoke-interface {p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/SelectTextInfo;->hasSelected()Z

    move-result p2

    if-eqz p2, :cond_56

    .line 337
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p2

    invoke-interface {p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object p2

    iget-object p2, p2, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    if-eqz p3, :cond_27

    .line 340
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/paint/TextPaint;->lastFrom:Z

    if-nez v0, :cond_32

    const/4 v0, 0x1

    .line 341
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/paint/TextPaint;->lastFrom:Z

    .line 342
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getCurColor()I

    goto :goto_32

    .line 345
    :cond_27
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/paint/TextPaint;->lastFrom:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/paint/TextPaint;->lastFrom:Z

    goto :goto_32

    .line 348
    :cond_2f
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getCurColor()I

    :cond_32
    :goto_32
    if-nez p3, :cond_4c

    .line 354
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p3

    new-instance v0, Lcn/codemao/android/sketch/action/ModifyTextColorAction;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getCurColor()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-direct {v0, p2, v1, v2}, Lcn/codemao/android/sketch/action/ModifyTextColorAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;II)V

    invoke-virtual {p3, v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    .line 356
    :cond_4c
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p2, p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->updateColor(I)V

    .line 362
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->invalidate()V

    :cond_56
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V
    .registers 10

    .line 70
    check-cast p2, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 71
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getStrings()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_91

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getStrings()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_14

    goto/16 :goto_91

    .line 87
    :cond_14
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->reSizeText()V

    .line 89
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcn/codemao/android/sketch/RectHelper;->updateHelpRect(Lcn/codemao/android/sketch/model/StickerTextInfo;)V

    .line 92
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    .line 94
    iget p4, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr p4, v0

    .line 99
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmRotateAngle()F

    move-result v0

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 106
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/sketch/RectHelper;->drawTextBackGround(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerTextInfo;)V

    .line 109
    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    const/4 v0, 0x0

    .line 111
    :goto_60
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getStrings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_91

    .line 115
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-int/lit8 v2, v0, 0x1

    mul-int v3, p4, v2

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 121
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getStrings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    int-to-float v4, p3

    sub-float/2addr v1, v4

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v0, v2

    goto :goto_60

    :cond_91
    :goto_91
    return-void
.end method

.method public rotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V
    .registers 5

    .line 265
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->rotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    .line 266
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/codemao/android/sketch/RectHelper;->updateRotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    .line 267
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->invalidate()V

    return-void
.end method

.method public whenChangeMyMode(Landroid/content/Context;Z)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 274
    :cond_3
    new-instance p2, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;

    invoke-direct {p2, p1}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;

    .line 275
    invoke-virtual {p2, v0}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->popupAnimation(Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;)Lcn/codemao/android/sketch/xpopup/XPopup$Builder;

    move-result-object p2

    new-instance v0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;

    invoke-direct {v0, p1}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcn/codemao/android/sketch/view/paint/TextPaint$2;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/view/paint/TextPaint$2;-><init>(Lcn/codemao/android/sketch/view/paint/TextPaint;)V

    .line 277
    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->listenText(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$ListenTextAction;)Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;

    move-result-object p1

    .line 276
    invoke-virtual {p2, p1}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->asCustom(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;)Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->show()Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    return-void
.end method
