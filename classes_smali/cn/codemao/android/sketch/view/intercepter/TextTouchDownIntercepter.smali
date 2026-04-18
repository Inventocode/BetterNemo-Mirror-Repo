.class public Lcn/codemao/android/sketch/view/intercepter/TextTouchDownIntercepter;
.super Lcn/codemao/android/sketch/view/intercepter/TouchDownIntercepter;
.source "TextTouchDownIntercepter.java"


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/IPaint;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/intercepter/TouchDownIntercepter;-><init>(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    return-void
.end method


# virtual methods
.method public intercept(Lcn/codemao/android/sketch/view/paint/IPaint;FF)Z
    .registers 8

    .line 24
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/intercepter/TouchDownIntercepter;->getmPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    return v1

    .line 26
    :cond_8
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/intercepter/TouchDownIntercepter;->getmPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    if-eqz p1, :cond_40

    .line 27
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_40

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_40

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_40

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_40

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result p1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_3f

    goto :goto_40

    :cond_3f
    return v1

    .line 28
    :cond_40
    :goto_40
    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object p1

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmTextList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcn/codemao/android/sketch/RectHelper;->checkClickTextRect(FFLjava/util/List;)Z

    move-result p1

    return p1
.end method
