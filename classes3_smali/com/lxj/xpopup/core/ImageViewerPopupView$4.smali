.class Lcom/lxj/xpopup/core/ImageViewerPopupView$4;
.super Ljava/lang/Object;
.source "ImageViewerPopupView.java"

# interfaces
.implements Lcom/lxj/xpopup/util/XPermission$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/ImageViewerPopupView;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 461
    iput-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$4;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .registers 1

    return-void
.end method

.method public onGranted()V
    .registers 5

    .line 464
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$4;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$4;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v2, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->imageLoader:Lcom/lxj/xpopup/interfaces/XPopupImageLoader;

    iget-object v3, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->urls:Ljava/util/List;

    invoke-virtual {v1}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->getRealPosition()I

    move-result v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->saveBmpToAlbum(Landroid/content/Context;Lcom/lxj/xpopup/interfaces/XPopupImageLoader;Ljava/lang/Object;)V

    return-void
.end method
