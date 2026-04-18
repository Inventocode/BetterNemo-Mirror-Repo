.class Lcom/codemao/creativecenter/utils/CreativeImageUtils$1;
.super Ljava/lang/Object;
.source "CreativeImageUtils.java"

# interfaces
.implements Lcom/smarx/notchlib/INotchScreen$NotchScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/CreativeImageUtils;->takeBlurScreenShot(Landroid/app/Activity;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$self:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/ImageView;)V
    .registers 3

    .line 30
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativeImageUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/CreativeImageUtils$1;->val$self:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;)V
    .registers 9

    .line 34
    :try_start_0
    iget-boolean v0, p1, Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;->hasNotch:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 35
    :goto_13
    iget-object v3, p0, Lcom/codemao/creativecenter/utils/CreativeImageUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 36
    invoke-virtual {v3, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 37
    invoke-virtual {v3}, Landroid/view/View;->buildDrawingCache()V

    .line 38
    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2a

    return-void

    :cond_2a
    if-eqz v0, :cond_79

    .line 45
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeImageUtils$1;->val$self:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 46
    iget-object v4, p0, Lcom/codemao/creativecenter/utils/CreativeImageUtils$1;->val$self:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    if-eqz v0, :cond_3c

    if-nez v4, :cond_40

    .line 48
    :cond_3c
    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_WIDTH:I

    .line 49
    sget v4, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    :cond_40
    if-eqz v0, :cond_44

    if-nez v4, :cond_50

    .line 52
    :cond_44
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeImageUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 53
    iget-object v4, p0, Lcom/codemao/creativecenter/utils/CreativeImageUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    .line 56
    :cond_50
    iget-object p1, p1, Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int v5, p1, v0

    .line 57
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_67

    .line 58
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    .line 60
    :cond_67
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, v1, :cond_78

    .line 62
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_78
    move-object v1, p1

    :cond_79
    const/16 p1, 0x19

    .line 65
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeImageUtils$1;->val$self:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/CreativeImageUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1, p1, v0, v2}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->blurByRenderScript(Landroid/graphics/Bitmap;ILandroid/widget/ImageView;Landroid/content/Context;)V

    .line 67
    invoke-virtual {v3}, Landroid/view/View;->destroyDrawingCache()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8a
    return-void
.end method
