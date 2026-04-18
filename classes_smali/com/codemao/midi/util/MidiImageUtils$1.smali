.class Lcom/codemao/midi/util/MidiImageUtils$1;
.super Ljava/lang/Object;
.source "MidiImageUtils.java"

# interfaces
.implements Lcom/smarx/notchlib/INotchScreen$NotchScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/util/MidiImageUtils;->takeBlurScreenShot(Landroid/app/Activity;Landroid/widget/ImageView;)V
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

    .line 29
    iput-object p1, p0, Lcom/codemao/midi/util/MidiImageUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/codemao/midi/util/MidiImageUtils$1;->val$self:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;)V
    .registers 9

    .line 32
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

    .line 33
    :goto_13
    iget-object v3, p0, Lcom/codemao/midi/util/MidiImageUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 34
    invoke-virtual {v3, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 35
    invoke-virtual {v3}, Landroid/view/View;->buildDrawingCache()V

    .line 36
    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_76

    .line 40
    iget-object v0, p0, Lcom/codemao/midi/util/MidiImageUtils$1;->val$self:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 41
    iget-object v4, p0, Lcom/codemao/midi/util/MidiImageUtils$1;->val$self:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    if-eqz v0, :cond_39

    if-nez v4, :cond_3d

    .line 43
    :cond_39
    sget v0, Lcom/codemao/midi/MidiConstants;->SYSTEM_WIDTH:I

    .line 44
    sget v4, Lcom/codemao/midi/MidiConstants;->SYSTEM_HEIGHT:I

    :cond_3d
    if-eqz v0, :cond_41

    if-nez v4, :cond_4d

    .line 47
    :cond_41
    iget-object v0, p0, Lcom/codemao/midi/util/MidiImageUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/codemao/midi/util/MidiScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 48
    iget-object v4, p0, Lcom/codemao/midi/util/MidiImageUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/codemao/midi/util/MidiScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    .line 51
    :cond_4d
    iget-object p1, p1, Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int v5, p1, v0

    .line 52
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_64

    .line 53
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    .line 55
    :cond_64
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, v1, :cond_75

    .line 57
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_75
    move-object v1, p1

    :cond_76
    const/16 p1, 0x19

    .line 60
    iget-object v0, p0, Lcom/codemao/midi/util/MidiImageUtils$1;->val$self:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/codemao/midi/util/MidiImageUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1, p1, v0, v2}, Lcom/codemao/midi/util/MidiImageUtils;->blurByRenderScript(Landroid/graphics/Bitmap;ILandroid/widget/ImageView;Landroid/content/Context;)V

    .line 62
    invoke-virtual {v3}, Landroid/view/View;->destroyDrawingCache()V

    return-void
.end method
