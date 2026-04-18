.class public final synthetic Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;Landroid/graphics/Bitmap;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda3;->f$0:Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;

    iput-object p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda3;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda3;->f$0:Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda3;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->$r8$lambda$LqF-p9ZUdzgOmuVdZsmdeSfaZeU(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method
