.class public Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureVisible;
.super Ljava/lang/Object;
.source "ExposureVisible.java"


# instance fields
.field private final mVisible:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureVisible;->mVisible:Ljava/util/HashMap;

    return-void
.end method

.method private isParentVisible(Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 63
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 65
    :cond_8
    instance-of v1, p1, Landroid/view/View;

    if-nez v1, :cond_e

    const/4 p1, 0x1

    return p1

    .line 68
    :cond_e
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureVisible;->isViewSelfVisible(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v0

    .line 71
    :cond_1d
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_8

    return v0
.end method

.method private isViewSelfVisible(Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 9

    const-string v0, "SA.ExposureVisible"

    const/4 v1, 0x0

    if-eqz p1, :cond_c0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_f

    goto/16 :goto_c0

    .line 40
    :cond_f
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureVisible;->mVisible:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_4f

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p2

    .line 44
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureVisible;->mVisible:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 46
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 49
    :goto_53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isDecorView(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5f

    return v3

    .line 52
    :cond_5f
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_8f

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_8f

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-lez v2, :cond_8f

    if-nez p2, :cond_77

    goto :goto_8f

    .line 56
    :cond_77
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_87

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result p2

    if-nez p2, :cond_8d

    :cond_87
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8e

    :cond_8d
    const/4 v1, 0x1

    :cond_8e
    return v1

    .line 53
    :cond_8f
    :goto_8f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isViewSelfVisible，width = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "，alpha = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_c0
    :goto_c0
    const-string p1, "view.getWindowVisibility() == View.GONE"

    .line 36
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public cleanVisible()V
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureVisible;->mVisible:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public isVisible(Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureVisible;->isViewSelfVisible(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return v0

    .line 28
    :cond_8
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureVisible;->isParentVisible(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_f

    return v0

    .line 31
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    return p1
.end method
